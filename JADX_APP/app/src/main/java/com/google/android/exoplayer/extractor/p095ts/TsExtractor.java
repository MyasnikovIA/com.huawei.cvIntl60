package com.google.android.exoplayer.extractor.p095ts;

import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer.extractor.DummyTrackOutput;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public final class TsExtractor implements Extractor {
    private static final int BASE_EMBEDDED_TRACK_ID = 8192;
    private static final int BUFFER_PACKET_COUNT = 5;
    private static final int BUFFER_SIZE = 940;
    private static final String TAG = "TsExtractor";
    private static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    private static final int TS_STREAM_TYPE_AAC = 15;
    private static final int TS_STREAM_TYPE_AC3 = 129;
    private static final int TS_STREAM_TYPE_DTS = 138;
    private static final int TS_STREAM_TYPE_E_AC3 = 135;
    private static final int TS_STREAM_TYPE_H262 = 2;
    private static final int TS_STREAM_TYPE_H264 = 27;
    private static final int TS_STREAM_TYPE_H265 = 36;
    private static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    private static final int TS_STREAM_TYPE_ID3 = 21;
    private static final int TS_STREAM_TYPE_MPA = 3;
    private static final int TS_STREAM_TYPE_MPA_LSF = 4;
    private static final int TS_SYNC_BYTE = 71;
    public static final int WORKAROUND_ALLOW_NON_IDR_KEYFRAMES = 1;
    public static final int WORKAROUND_DETECT_ACCESS_UNITS = 8;
    public static final int WORKAROUND_IGNORE_AAC_STREAM = 2;
    public static final int WORKAROUND_IGNORE_H264_STREAM = 4;
    public static final int WORKAROUND_MAP_BY_TYPE = 16;
    private final SparseIntArray continuityCounters;
    Id3Reader id3Reader;
    private int nextEmbeddedTrackId;
    private ExtractorOutput output;
    private final PtsTimestampAdjuster ptsTimestampAdjuster;
    final SparseBooleanArray trackIds;
    private final ParsableByteArray tsPacketBuffer;
    final SparseArray<TsPayloadReader> tsPayloadReaders;
    private final ParsableBitArray tsScratch;
    private final int workaroundFlags;
    private static final long AC3_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("AC-3");
    private static final long E_AC3_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("EAC3");
    private static final long HEVC_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("HEVC");

    static /* synthetic */ int access$208(TsExtractor tsExtractor) {
        int i = tsExtractor.nextEmbeddedTrackId;
        tsExtractor.nextEmbeddedTrackId = i + 1;
        return i;
    }

    public TsExtractor() {
        this(new PtsTimestampAdjuster(0L));
    }

    public TsExtractor(PtsTimestampAdjuster ptsTimestampAdjuster) {
        this(ptsTimestampAdjuster, 0);
    }

    public TsExtractor(PtsTimestampAdjuster ptsTimestampAdjuster, int i) {
        this.ptsTimestampAdjuster = ptsTimestampAdjuster;
        this.workaroundFlags = i;
        this.tsPacketBuffer = new ParsableByteArray(BUFFER_SIZE);
        this.tsScratch = new ParsableBitArray(new byte[3]);
        this.tsPayloadReaders = new SparseArray<>();
        this.tsPayloadReaders.put(0, new PatReader());
        this.trackIds = new SparseBooleanArray();
        this.nextEmbeddedTrackId = 8192;
        this.continuityCounters = new SparseIntArray();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        r2 = r2 + 1;
     */
    @Override // com.google.android.exoplayer.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean sniff(com.google.android.exoplayer.extractor.ExtractorInput r7) {
        /*
            r6 = this;
            r0 = 0
            com.google.android.exoplayer.util.ParsableByteArray r1 = r6.tsPacketBuffer
            byte[] r3 = r1.data
            r1 = 940(0x3ac, float:1.317E-42)
            r7.peekFully(r3, r0, r1)
            r2 = r0
        Lb:
            r1 = 188(0xbc, float:2.63E-43)
            if (r2 >= r1) goto L17
            r1 = r0
        L10:
            r4 = 5
            if (r1 != r4) goto L18
            r7.skipFully(r2)
            r0 = 1
        L17:
            return r0
        L18:
            int r4 = r1 * 188
            int r4 = r4 + r2
            r4 = r3[r4]
            r5 = 71
            if (r4 == r5) goto L25
            int r1 = r2 + 1
            r2 = r1
            goto Lb
        L25:
            int r1 = r1 + 1
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.extractor.p095ts.TsExtractor.sniff(com.google.android.exoplayer.extractor.ExtractorInput):boolean");
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.seekMap(SeekMap.UNSEEKABLE);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.ptsTimestampAdjuster.reset();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.tsPayloadReaders.size()) {
                this.tsPayloadReaders.valueAt(i2).seek();
                i = i2 + 1;
            } else {
                this.tsPacketBuffer.reset();
                this.continuityCounters.clear();
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        TsPayloadReader tsPayloadReader;
        byte[] bArr = this.tsPacketBuffer.data;
        if (940 - this.tsPacketBuffer.getPosition() < TS_PACKET_SIZE) {
            int bytesLeft = this.tsPacketBuffer.bytesLeft();
            if (bytesLeft > 0) {
                System.arraycopy(bArr, this.tsPacketBuffer.getPosition(), bArr, 0, bytesLeft);
            }
            this.tsPacketBuffer.reset(bArr, bytesLeft);
        }
        while (this.tsPacketBuffer.bytesLeft() < TS_PACKET_SIZE) {
            int limit = this.tsPacketBuffer.limit();
            int read = extractorInput.read(bArr, limit, 940 - limit);
            if (read == -1) {
                return -1;
            }
            this.tsPacketBuffer.setLimit(limit + read);
        }
        int limit2 = this.tsPacketBuffer.limit();
        int position = this.tsPacketBuffer.getPosition();
        while (position < limit2 && bArr[position] != 71) {
            position++;
        }
        this.tsPacketBuffer.setPosition(position);
        int i = position + TS_PACKET_SIZE;
        if (i > limit2) {
            return 0;
        }
        this.tsPacketBuffer.skipBytes(1);
        this.tsPacketBuffer.readBytes(this.tsScratch, 3);
        if (this.tsScratch.readBit()) {
            this.tsPacketBuffer.setPosition(i);
            return 0;
        }
        boolean readBit = this.tsScratch.readBit();
        this.tsScratch.skipBits(1);
        int readBits = this.tsScratch.readBits(13);
        this.tsScratch.skipBits(2);
        boolean readBit2 = this.tsScratch.readBit();
        boolean readBit3 = this.tsScratch.readBit();
        int readBits2 = this.tsScratch.readBits(4);
        int i2 = this.continuityCounters.get(readBits, readBits2 - 1);
        this.continuityCounters.put(readBits, readBits2);
        if (i2 == readBits2) {
            this.tsPacketBuffer.setPosition(i);
            return 0;
        }
        boolean z = readBits2 != (i2 + 1) % 16;
        if (readBit2) {
            this.tsPacketBuffer.skipBytes(this.tsPacketBuffer.readUnsignedByte());
        }
        if (readBit3 && (tsPayloadReader = this.tsPayloadReaders.get(readBits)) != null) {
            if (z) {
                tsPayloadReader.seek();
            }
            this.tsPacketBuffer.setLimit(i);
            tsPayloadReader.consume(this.tsPacketBuffer, readBit, this.output);
            Assertions.checkState(this.tsPacketBuffer.getPosition() <= i);
            this.tsPacketBuffer.setLimit(limit2);
        }
        this.tsPacketBuffer.setPosition(i);
        return 0;
    }

    private static abstract class TsPayloadReader {
        public abstract void consume(ParsableByteArray parsableByteArray, boolean z, ExtractorOutput extractorOutput);

        public abstract void seek();

        private TsPayloadReader() {
        }

        /* synthetic */ TsPayloadReader(C12061 c12061) {
            this();
        }
    }

    private class PatReader extends TsPayloadReader {
        private int crc;
        private final ParsableBitArray patScratch;
        private int sectionBytesRead;
        private final ParsableByteArray sectionData;
        private int sectionLength;

        public PatReader() {
            super();
            this.sectionData = new ParsableByteArray();
            this.patScratch = new ParsableBitArray(new byte[4]);
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray parsableByteArray, boolean z, ExtractorOutput extractorOutput) {
            if (z) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
                parsableByteArray.readBytes(this.patScratch, 3);
                this.patScratch.skipBits(12);
                this.sectionLength = this.patScratch.readBits(12);
                this.sectionBytesRead = 0;
                this.crc = Util.crc(this.patScratch.data, 0, 3, -1);
                this.sectionData.reset(this.sectionLength);
            }
            int min = Math.min(parsableByteArray.bytesLeft(), this.sectionLength - this.sectionBytesRead);
            parsableByteArray.readBytes(this.sectionData.data, this.sectionBytesRead, min);
            this.sectionBytesRead = min + this.sectionBytesRead;
            if (this.sectionBytesRead >= this.sectionLength && Util.crc(this.sectionData.data, 0, this.sectionLength, this.crc) == 0) {
                this.sectionData.skipBytes(5);
                int i = (this.sectionLength - 9) / 4;
                for (int i2 = 0; i2 < i; i2++) {
                    this.sectionData.readBytes(this.patScratch, 4);
                    int readBits = this.patScratch.readBits(16);
                    this.patScratch.skipBits(3);
                    if (readBits == 0) {
                        this.patScratch.skipBits(13);
                    } else {
                        TsExtractor.this.tsPayloadReaders.put(this.patScratch.readBits(13), TsExtractor.this.new PmtReader());
                    }
                }
            }
        }
    }

    private class PmtReader extends TsPayloadReader {
        private int crc;
        private final ParsableBitArray pmtScratch;
        private int sectionBytesRead;
        private final ParsableByteArray sectionData;
        private int sectionLength;

        public PmtReader() {
            super();
            this.pmtScratch = new ParsableBitArray(new byte[5]);
            this.sectionData = new ParsableByteArray();
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray parsableByteArray, boolean z, ExtractorOutput extractorOutput) {
            ElementaryStreamReader id3Reader;
            if (z) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
                parsableByteArray.readBytes(this.pmtScratch, 3);
                this.pmtScratch.skipBits(12);
                this.sectionLength = this.pmtScratch.readBits(12);
                this.sectionBytesRead = 0;
                this.crc = Util.crc(this.pmtScratch.data, 0, 3, -1);
                this.sectionData.reset(this.sectionLength);
            }
            int min = Math.min(parsableByteArray.bytesLeft(), this.sectionLength - this.sectionBytesRead);
            parsableByteArray.readBytes(this.sectionData.data, this.sectionBytesRead, min);
            this.sectionBytesRead = min + this.sectionBytesRead;
            if (this.sectionBytesRead >= this.sectionLength && Util.crc(this.sectionData.data, 0, this.sectionLength, this.crc) == 0) {
                this.sectionData.skipBytes(7);
                this.sectionData.readBytes(this.pmtScratch, 2);
                this.pmtScratch.skipBits(4);
                int readBits = this.pmtScratch.readBits(12);
                this.sectionData.skipBytes(readBits);
                if ((TsExtractor.this.workaroundFlags & 16) != 0 && TsExtractor.this.id3Reader == null) {
                    TsExtractor.this.id3Reader = new Id3Reader(extractorOutput.track(21));
                }
                int i = ((this.sectionLength - 9) - readBits) - 4;
                while (i > 0) {
                    this.sectionData.readBytes(this.pmtScratch, 5);
                    int readBits2 = this.pmtScratch.readBits(8);
                    this.pmtScratch.skipBits(3);
                    int readBits3 = this.pmtScratch.readBits(13);
                    this.pmtScratch.skipBits(4);
                    int readBits4 = this.pmtScratch.readBits(12);
                    if (readBits2 == 6) {
                        readBits2 = readPrivateDataStreamType(this.sectionData, readBits4);
                    } else {
                        this.sectionData.skipBytes(readBits4);
                    }
                    int i2 = i - (readBits4 + 5);
                    int i3 = (TsExtractor.this.workaroundFlags & 16) != 0 ? readBits2 : readBits3;
                    if (TsExtractor.this.trackIds.get(i3)) {
                        i = i2;
                    } else {
                        switch (readBits2) {
                            case 2:
                                id3Reader = new H262Reader(extractorOutput.track(i3));
                                break;
                            case 3:
                                id3Reader = new MpegAudioReader(extractorOutput.track(i3));
                                break;
                            case 4:
                                id3Reader = new MpegAudioReader(extractorOutput.track(i3));
                                break;
                            case 15:
                                if ((TsExtractor.this.workaroundFlags & 2) == 0) {
                                    id3Reader = new AdtsReader(extractorOutput.track(i3), new DummyTrackOutput());
                                    break;
                                } else {
                                    id3Reader = null;
                                    break;
                                }
                            case 21:
                                if ((TsExtractor.this.workaroundFlags & 16) != 0) {
                                    id3Reader = TsExtractor.this.id3Reader;
                                    break;
                                } else {
                                    id3Reader = new Id3Reader(extractorOutput.track(TsExtractor.access$208(TsExtractor.this)));
                                    break;
                                }
                            case 27:
                                if ((TsExtractor.this.workaroundFlags & 4) == 0) {
                                    id3Reader = new H264Reader(extractorOutput.track(i3), new SeiReader(extractorOutput.track(TsExtractor.access$208(TsExtractor.this))), (TsExtractor.this.workaroundFlags & 1) != 0, (TsExtractor.this.workaroundFlags & 8) != 0);
                                    break;
                                } else {
                                    id3Reader = null;
                                    break;
                                }
                            case 36:
                                id3Reader = new H265Reader(extractorOutput.track(i3), new SeiReader(extractorOutput.track(TsExtractor.access$208(TsExtractor.this))));
                                break;
                            case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
                                id3Reader = new Ac3Reader(extractorOutput.track(i3), false);
                                break;
                            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                            case TsExtractor.TS_STREAM_TYPE_DTS /* 138 */:
                                id3Reader = new DtsReader(extractorOutput.track(i3));
                                break;
                            case TsExtractor.TS_STREAM_TYPE_E_AC3 /* 135 */:
                                id3Reader = new Ac3Reader(extractorOutput.track(i3), true);
                                break;
                            default:
                                id3Reader = null;
                                break;
                        }
                        if (id3Reader != null) {
                            TsExtractor.this.trackIds.put(i3, true);
                            TsExtractor.this.tsPayloadReaders.put(readBits3, new PesReader(id3Reader, TsExtractor.this.ptsTimestampAdjuster));
                        }
                        i = i2;
                    }
                }
                extractorOutput.endTracks();
            }
        }

        private int readPrivateDataStreamType(ParsableByteArray parsableByteArray, int i) {
            int i2 = -1;
            int position = parsableByteArray.getPosition() + i;
            while (true) {
                if (parsableByteArray.getPosition() >= position) {
                    break;
                }
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                if (readUnsignedByte == 5) {
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    if (readUnsignedInt == TsExtractor.AC3_FORMAT_IDENTIFIER) {
                        i2 = TsExtractor.TS_STREAM_TYPE_AC3;
                    } else if (readUnsignedInt == TsExtractor.E_AC3_FORMAT_IDENTIFIER) {
                        i2 = TsExtractor.TS_STREAM_TYPE_E_AC3;
                    } else if (readUnsignedInt == TsExtractor.HEVC_FORMAT_IDENTIFIER) {
                        i2 = 36;
                    }
                } else {
                    if (readUnsignedByte == 106) {
                        i2 = TsExtractor.TS_STREAM_TYPE_AC3;
                    } else if (readUnsignedByte == 122) {
                        i2 = TsExtractor.TS_STREAM_TYPE_E_AC3;
                    } else if (readUnsignedByte == 123) {
                        i2 = TsExtractor.TS_STREAM_TYPE_DTS;
                    }
                    parsableByteArray.skipBytes(readUnsignedByte2);
                }
            }
            parsableByteArray.setPosition(position);
            return i2;
        }
    }

    private static final class PesReader extends TsPayloadReader {
        private static final int HEADER_SIZE = 9;
        private static final int MAX_HEADER_EXTENSION_SIZE = 10;
        private static final int PES_SCRATCH_SIZE = 10;
        private static final int STATE_FINDING_HEADER = 0;
        private static final int STATE_READING_BODY = 3;
        private static final int STATE_READING_HEADER = 1;
        private static final int STATE_READING_HEADER_EXTENSION = 2;
        private int bytesRead;
        private boolean dataAlignmentIndicator;
        private boolean dtsFlag;
        private int extendedHeaderLength;
        private int payloadSize;
        private final ElementaryStreamReader pesPayloadReader;
        private final ParsableBitArray pesScratch;
        private boolean ptsFlag;
        private final PtsTimestampAdjuster ptsTimestampAdjuster;
        private boolean seenFirstDts;
        private int state;
        private long timeUs;

        public PesReader(ElementaryStreamReader elementaryStreamReader, PtsTimestampAdjuster ptsTimestampAdjuster) {
            super();
            this.pesPayloadReader = elementaryStreamReader;
            this.ptsTimestampAdjuster = ptsTimestampAdjuster;
            this.pesScratch = new ParsableBitArray(new byte[10]);
            this.state = 0;
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
            this.state = 0;
            this.bytesRead = 0;
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray parsableByteArray, boolean z, ExtractorOutput extractorOutput) {
            if (z) {
                switch (this.state) {
                    case 2:
                        Log.w(TsExtractor.TAG, "Unexpected start indicator reading extended header");
                        break;
                    case 3:
                        if (this.payloadSize != -1) {
                            Log.w(TsExtractor.TAG, "Unexpected start indicator: expected " + this.payloadSize + " more bytes");
                        }
                        this.pesPayloadReader.packetFinished();
                        break;
                }
                setState(1);
            }
            while (parsableByteArray.bytesLeft() > 0) {
                switch (this.state) {
                    case 0:
                        parsableByteArray.skipBytes(parsableByteArray.bytesLeft());
                        break;
                    case 1:
                        if (!continueRead(parsableByteArray, this.pesScratch.data, 9)) {
                            break;
                        } else {
                            setState(parseHeader() ? 2 : 0);
                            break;
                        }
                    case 2:
                        if (continueRead(parsableByteArray, this.pesScratch.data, Math.min(10, this.extendedHeaderLength)) && continueRead(parsableByteArray, null, this.extendedHeaderLength)) {
                            parseHeaderExtension();
                            this.pesPayloadReader.packetStarted(this.timeUs, this.dataAlignmentIndicator);
                            setState(3);
                            break;
                        }
                        break;
                    case 3:
                        int bytesLeft = parsableByteArray.bytesLeft();
                        int i = this.payloadSize == -1 ? 0 : bytesLeft - this.payloadSize;
                        if (i > 0) {
                            bytesLeft -= i;
                            parsableByteArray.setLimit(parsableByteArray.getPosition() + bytesLeft);
                        }
                        this.pesPayloadReader.consume(parsableByteArray);
                        if (this.payloadSize == -1) {
                            break;
                        } else {
                            this.payloadSize -= bytesLeft;
                            if (this.payloadSize != 0) {
                                break;
                            } else {
                                this.pesPayloadReader.packetFinished();
                                setState(1);
                                break;
                            }
                        }
                }
            }
        }

        private void setState(int i) {
            this.state = i;
            this.bytesRead = 0;
        }

        private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
            int min = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
            if (min <= 0) {
                return true;
            }
            if (bArr == null) {
                parsableByteArray.skipBytes(min);
            } else {
                parsableByteArray.readBytes(bArr, this.bytesRead, min);
            }
            this.bytesRead = min + this.bytesRead;
            return this.bytesRead == i;
        }

        private boolean parseHeader() {
            this.pesScratch.setPosition(0);
            int readBits = this.pesScratch.readBits(24);
            if (readBits != 1) {
                Log.w(TsExtractor.TAG, "Unexpected start code prefix: " + readBits);
                this.payloadSize = -1;
                return false;
            }
            this.pesScratch.skipBits(8);
            int readBits2 = this.pesScratch.readBits(16);
            this.pesScratch.skipBits(5);
            this.dataAlignmentIndicator = this.pesScratch.readBit();
            this.pesScratch.skipBits(2);
            this.ptsFlag = this.pesScratch.readBit();
            this.dtsFlag = this.pesScratch.readBit();
            this.pesScratch.skipBits(6);
            this.extendedHeaderLength = this.pesScratch.readBits(8);
            if (readBits2 == 0) {
                this.payloadSize = -1;
            } else {
                this.payloadSize = ((readBits2 + 6) - 9) - this.extendedHeaderLength;
            }
            return true;
        }

        private void parseHeaderExtension() {
            this.pesScratch.setPosition(0);
            this.timeUs = -1L;
            if (this.ptsFlag) {
                this.pesScratch.skipBits(4);
                this.pesScratch.skipBits(1);
                this.pesScratch.skipBits(1);
                long readBits = (this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15);
                this.pesScratch.skipBits(1);
                if (!this.seenFirstDts && this.dtsFlag) {
                    this.pesScratch.skipBits(4);
                    this.pesScratch.skipBits(1);
                    this.pesScratch.skipBits(1);
                    this.pesScratch.skipBits(1);
                    this.ptsTimestampAdjuster.adjustTimestamp((this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15));
                    this.seenFirstDts = true;
                }
                this.timeUs = this.ptsTimestampAdjuster.adjustTimestamp(readBits);
            }
        }
    }
}
