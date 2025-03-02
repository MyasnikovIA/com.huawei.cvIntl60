package com.google.android.exoplayer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class SampleHolder {
    public static final int BUFFER_REPLACEMENT_MODE_DIRECT = 2;
    public static final int BUFFER_REPLACEMENT_MODE_DISABLED = 0;
    public static final int BUFFER_REPLACEMENT_MODE_NORMAL = 1;
    private final int bufferReplacementMode;
    public final CryptoInfo cryptoInfo = new CryptoInfo();
    public ByteBuffer data;
    public int flags;
    public int size;
    public long timeUs;

    public SampleHolder(int i) {
        this.bufferReplacementMode = i;
    }

    public void ensureSpaceForWrite(int i) {
        if (this.data == null) {
            this.data = createReplacementBuffer(i);
            return;
        }
        int capacity = this.data.capacity();
        int position = this.data.position();
        int i2 = position + i;
        if (capacity < i2) {
            ByteBuffer createReplacementBuffer = createReplacementBuffer(i2);
            if (position > 0) {
                this.data.position(0);
                this.data.limit(position);
                createReplacementBuffer.put(this.data);
            }
            this.data = createReplacementBuffer;
        }
    }

    public boolean isEncrypted() {
        return (this.flags & 2) != 0;
    }

    public boolean isDecodeOnly() {
        return (this.flags & C1167C.SAMPLE_FLAG_DECODE_ONLY) != 0;
    }

    public boolean isSyncFrame() {
        return (this.flags & 1) != 0;
    }

    public void clearData() {
        if (this.data != null) {
            this.data.clear();
        }
    }

    private ByteBuffer createReplacementBuffer(int i) {
        if (this.bufferReplacementMode == 1) {
            return ByteBuffer.allocate(i);
        }
        if (this.bufferReplacementMode == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        throw new IllegalStateException("Buffer too small (" + (this.data == null ? 0 : this.data.capacity()) + " < " + i + ")");
    }
}
