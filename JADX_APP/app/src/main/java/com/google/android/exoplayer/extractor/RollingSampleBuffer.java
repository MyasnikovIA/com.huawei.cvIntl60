package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.upstream.Allocation;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
final class RollingSampleBuffer {
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private Allocation lastAllocation;
    private int lastAllocationOffset;
    private long totalBytesDropped;
    private long totalBytesWritten;
    private final InfoQueue infoQueue = new InfoQueue();
    private final LinkedBlockingDeque<Allocation> dataQueue = new LinkedBlockingDeque<>();
    private final SampleExtrasHolder extrasHolder = new SampleExtrasHolder();
    private final ParsableByteArray scratch = new ParsableByteArray(32);

    public RollingSampleBuffer(Allocator allocator) {
        this.allocator = allocator;
        this.allocationLength = allocator.getIndividualAllocationLength();
        this.lastAllocationOffset = this.allocationLength;
    }

    public void clear() {
        this.infoQueue.clear();
        this.allocator.release((Allocation[]) this.dataQueue.toArray(new Allocation[this.dataQueue.size()]));
        this.dataQueue.clear();
        this.totalBytesDropped = 0L;
        this.totalBytesWritten = 0L;
        this.lastAllocation = null;
        this.lastAllocationOffset = this.allocationLength;
    }

    public int getWriteIndex() {
        return this.infoQueue.getWriteIndex();
    }

    public void discardUpstreamSamples(int i) {
        this.totalBytesWritten = this.infoQueue.discardUpstreamSamples(i);
        dropUpstreamFrom(this.totalBytesWritten);
    }

    private void dropUpstreamFrom(long j) {
        int i = (int) (j - this.totalBytesDropped);
        int i2 = i / this.allocationLength;
        int i3 = i % this.allocationLength;
        int size = (this.dataQueue.size() - i2) - 1;
        int i4 = i3 == 0 ? size + 1 : size;
        for (int i5 = 0; i5 < i4; i5++) {
            this.allocator.release(this.dataQueue.removeLast());
        }
        this.lastAllocation = this.dataQueue.peekLast();
        this.lastAllocationOffset = i3 == 0 ? this.allocationLength : i3;
    }

    public int getReadIndex() {
        return this.infoQueue.getReadIndex();
    }

    public boolean peekSample(SampleHolder sampleHolder) {
        return this.infoQueue.peekSample(sampleHolder, this.extrasHolder);
    }

    public void skipSample() {
        dropDownstreamTo(this.infoQueue.moveToNextSample());
    }

    public boolean skipToKeyframeBefore(long j) {
        long skipToKeyframeBefore = this.infoQueue.skipToKeyframeBefore(j);
        if (skipToKeyframeBefore == -1) {
            return false;
        }
        dropDownstreamTo(skipToKeyframeBefore);
        return true;
    }

    public boolean readSample(SampleHolder sampleHolder) {
        if (!this.infoQueue.peekSample(sampleHolder, this.extrasHolder)) {
            return false;
        }
        if (sampleHolder.isEncrypted()) {
            readEncryptionData(sampleHolder, this.extrasHolder);
        }
        sampleHolder.ensureSpaceForWrite(sampleHolder.size);
        readData(this.extrasHolder.offset, sampleHolder.data, sampleHolder.size);
        dropDownstreamTo(this.infoQueue.moveToNextSample());
        return true;
    }

    private void readEncryptionData(SampleHolder sampleHolder, SampleExtrasHolder sampleExtrasHolder) {
        int i;
        long j;
        long j2 = sampleExtrasHolder.offset;
        readData(j2, this.scratch.data, 1);
        long j3 = 1 + j2;
        byte b = this.scratch.data[0];
        boolean z = (b & 128) != 0;
        int i2 = b & Byte.MAX_VALUE;
        if (sampleHolder.cryptoInfo.f5933iv == null) {
            sampleHolder.cryptoInfo.f5933iv = new byte[16];
        }
        readData(j3, sampleHolder.cryptoInfo.f5933iv, i2);
        long j4 = j3 + i2;
        if (z) {
            readData(j4, this.scratch.data, 2);
            this.scratch.setPosition(0);
            i = this.scratch.readUnsignedShort();
            j = j4 + 2;
        } else {
            i = 1;
            j = j4;
        }
        int[] iArr = sampleHolder.cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < i) {
            iArr = new int[i];
        }
        int[] iArr2 = sampleHolder.cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 == null || iArr2.length < i) {
            iArr2 = new int[i];
        }
        if (z) {
            int i3 = i * 6;
            ensureCapacity(this.scratch, i3);
            readData(j, this.scratch.data, i3);
            j += i3;
            this.scratch.setPosition(0);
            for (int i4 = 0; i4 < i; i4++) {
                iArr[i4] = this.scratch.readUnsignedShort();
                iArr2[i4] = this.scratch.readUnsignedIntToInt();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = sampleHolder.size - ((int) (j - sampleExtrasHolder.offset));
        }
        sampleHolder.cryptoInfo.set(i, iArr, iArr2, sampleExtrasHolder.encryptionKeyId, sampleHolder.cryptoInfo.f5933iv, 1);
        int i5 = (int) (j - sampleExtrasHolder.offset);
        sampleExtrasHolder.offset += i5;
        sampleHolder.size -= i5;
    }

    private void readData(long j, ByteBuffer byteBuffer, int i) {
        while (i > 0) {
            dropDownstreamTo(j);
            int i2 = (int) (j - this.totalBytesDropped);
            int min = Math.min(i, this.allocationLength - i2);
            Allocation peek = this.dataQueue.peek();
            byteBuffer.put(peek.data, peek.translateOffset(i2), min);
            j += min;
            i -= min;
        }
    }

    private void readData(long j, byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i) {
            dropDownstreamTo(j);
            int i3 = (int) (j - this.totalBytesDropped);
            int min = Math.min(i - i2, this.allocationLength - i3);
            Allocation peek = this.dataQueue.peek();
            System.arraycopy(peek.data, peek.translateOffset(i3), bArr, i2, min);
            j += min;
            i2 += min;
        }
    }

    private void dropDownstreamTo(long j) {
        int i = ((int) (j - this.totalBytesDropped)) / this.allocationLength;
        for (int i2 = 0; i2 < i; i2++) {
            this.allocator.release(this.dataQueue.remove());
            this.totalBytesDropped += this.allocationLength;
        }
    }

    private static void ensureCapacity(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.limit() < i) {
            parsableByteArray.reset(new byte[i], i);
        }
    }

    public long getWritePosition() {
        return this.totalBytesWritten;
    }

    public int appendData(DataSource dataSource, int i, boolean z) {
        int read = dataSource.read(this.lastAllocation.data, this.lastAllocation.translateOffset(this.lastAllocationOffset), prepareForAppend(i));
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.lastAllocationOffset += read;
        this.totalBytesWritten += read;
        return read;
    }

    public int appendData(ExtractorInput extractorInput, int i, boolean z) {
        int read = extractorInput.read(this.lastAllocation.data, this.lastAllocation.translateOffset(this.lastAllocationOffset), prepareForAppend(i));
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.lastAllocationOffset += read;
        this.totalBytesWritten += read;
        return read;
    }

    public void appendData(ParsableByteArray parsableByteArray, int i) {
        while (i > 0) {
            int prepareForAppend = prepareForAppend(i);
            parsableByteArray.readBytes(this.lastAllocation.data, this.lastAllocation.translateOffset(this.lastAllocationOffset), prepareForAppend);
            this.lastAllocationOffset += prepareForAppend;
            this.totalBytesWritten += prepareForAppend;
            i -= prepareForAppend;
        }
    }

    public void commitSample(long j, int i, long j2, int i2, byte[] bArr) {
        this.infoQueue.commitSample(j, i, j2, i2, bArr);
    }

    private int prepareForAppend(int i) {
        if (this.lastAllocationOffset == this.allocationLength) {
            this.lastAllocationOffset = 0;
            this.lastAllocation = this.allocator.allocate();
            this.dataQueue.add(this.lastAllocation);
        }
        return Math.min(i, this.allocationLength - this.lastAllocationOffset);
    }

    private static final class InfoQueue {
        private static final int SAMPLE_CAPACITY_INCREMENT = 1000;
        private int absoluteReadIndex;
        private int queueSize;
        private int relativeReadIndex;
        private int relativeWriteIndex;
        private int capacity = 1000;
        private long[] offsets = new long[this.capacity];
        private long[] timesUs = new long[this.capacity];
        private int[] flags = new int[this.capacity];
        private int[] sizes = new int[this.capacity];
        private byte[][] encryptionKeys = new byte[this.capacity][];

        public void clear() {
            this.absoluteReadIndex = 0;
            this.relativeReadIndex = 0;
            this.relativeWriteIndex = 0;
            this.queueSize = 0;
        }

        public int getWriteIndex() {
            return this.absoluteReadIndex + this.queueSize;
        }

        public long discardUpstreamSamples(int i) {
            int writeIndex = getWriteIndex() - i;
            Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.queueSize);
            if (writeIndex == 0) {
                if (this.absoluteReadIndex == 0) {
                    return 0L;
                }
                return this.sizes[r0] + this.offsets[(this.relativeWriteIndex == 0 ? this.capacity : this.relativeWriteIndex) - 1];
            }
            this.queueSize -= writeIndex;
            this.relativeWriteIndex = ((this.relativeWriteIndex + this.capacity) - writeIndex) % this.capacity;
            return this.offsets[this.relativeWriteIndex];
        }

        public int getReadIndex() {
            return this.absoluteReadIndex;
        }

        public synchronized boolean peekSample(SampleHolder sampleHolder, SampleExtrasHolder sampleExtrasHolder) {
            boolean z;
            if (this.queueSize == 0) {
                z = false;
            } else {
                sampleHolder.timeUs = this.timesUs[this.relativeReadIndex];
                sampleHolder.size = this.sizes[this.relativeReadIndex];
                sampleHolder.flags = this.flags[this.relativeReadIndex];
                sampleExtrasHolder.offset = this.offsets[this.relativeReadIndex];
                sampleExtrasHolder.encryptionKeyId = this.encryptionKeys[this.relativeReadIndex];
                z = true;
            }
            return z;
        }

        public synchronized long moveToNextSample() {
            long j;
            this.queueSize--;
            int i = this.relativeReadIndex;
            this.relativeReadIndex = i + 1;
            this.absoluteReadIndex++;
            if (this.relativeReadIndex == this.capacity) {
                this.relativeReadIndex = 0;
            }
            if (this.queueSize > 0) {
                j = this.offsets[this.relativeReadIndex];
            } else {
                j = this.offsets[i] + this.sizes[i];
            }
            return j;
        }

        public synchronized long skipToKeyframeBefore(long j) {
            long j2 = -1;
            synchronized (this) {
                if (this.queueSize != 0 && j >= this.timesUs[this.relativeReadIndex]) {
                    if (j <= this.timesUs[(this.relativeWriteIndex == 0 ? this.capacity : this.relativeWriteIndex) - 1]) {
                        int i = 0;
                        int i2 = this.relativeReadIndex;
                        int i3 = -1;
                        while (i2 != this.relativeWriteIndex && this.timesUs[i2] <= j) {
                            if ((this.flags[i2] & 1) != 0) {
                                i3 = i;
                            }
                            i2 = (i2 + 1) % this.capacity;
                            i++;
                        }
                        if (i3 != -1) {
                            this.queueSize -= i3;
                            this.relativeReadIndex = (this.relativeReadIndex + i3) % this.capacity;
                            this.absoluteReadIndex += i3;
                            j2 = this.offsets[this.relativeReadIndex];
                        }
                    }
                }
            }
            return j2;
        }

        public synchronized void commitSample(long j, int i, long j2, int i2, byte[] bArr) {
            this.timesUs[this.relativeWriteIndex] = j;
            this.offsets[this.relativeWriteIndex] = j2;
            this.sizes[this.relativeWriteIndex] = i2;
            this.flags[this.relativeWriteIndex] = i;
            this.encryptionKeys[this.relativeWriteIndex] = bArr;
            this.queueSize++;
            if (this.queueSize == this.capacity) {
                int i3 = this.capacity + 1000;
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr = new int[i3];
                int[] iArr2 = new int[i3];
                byte[][] bArr2 = new byte[i3][];
                int i4 = this.capacity - this.relativeReadIndex;
                System.arraycopy(this.offsets, this.relativeReadIndex, jArr, 0, i4);
                System.arraycopy(this.timesUs, this.relativeReadIndex, jArr2, 0, i4);
                System.arraycopy(this.flags, this.relativeReadIndex, iArr, 0, i4);
                System.arraycopy(this.sizes, this.relativeReadIndex, iArr2, 0, i4);
                System.arraycopy(this.encryptionKeys, this.relativeReadIndex, bArr2, 0, i4);
                int i5 = this.relativeReadIndex;
                System.arraycopy(this.offsets, 0, jArr, i4, i5);
                System.arraycopy(this.timesUs, 0, jArr2, i4, i5);
                System.arraycopy(this.flags, 0, iArr, i4, i5);
                System.arraycopy(this.sizes, 0, iArr2, i4, i5);
                System.arraycopy(this.encryptionKeys, 0, bArr2, i4, i5);
                this.offsets = jArr;
                this.timesUs = jArr2;
                this.flags = iArr;
                this.sizes = iArr2;
                this.encryptionKeys = bArr2;
                this.relativeReadIndex = 0;
                this.relativeWriteIndex = this.capacity;
                this.queueSize = this.capacity;
                this.capacity = i3;
            } else {
                this.relativeWriteIndex++;
                if (this.relativeWriteIndex == this.capacity) {
                    this.relativeWriteIndex = 0;
                }
            }
        }
    }

    private static final class SampleExtrasHolder {
        public byte[] encryptionKeyId;
        public long offset;

        private SampleExtrasHolder() {
        }

        /* synthetic */ SampleExtrasHolder(C12031 c12031) {
            this();
        }
    }
}
