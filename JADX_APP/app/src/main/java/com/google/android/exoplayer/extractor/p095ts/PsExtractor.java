package com.google.android.exoplayer.extractor.p095ts;

import android.support.v4.view.InputDeviceCompat;
import android.util.SparseArray;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
public final class PsExtractor implements Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    private static final long MAX_SEARCH_LENGTH = 1048576;
    private static final int MPEG_PROGRAM_END_CODE = 441;
    private static final int PACKET_START_CODE_PREFIX = 1;
    private static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    private static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    private boolean foundAllTracks;
    private boolean foundAudioTrack;
    private boolean foundVideoTrack;
    private ExtractorOutput output;
    private final ParsableByteArray psPacketBuffer;
    private final SparseArray<PesReader> psPayloadReaders;
    private final PtsTimestampAdjuster ptsTimestampAdjuster;

    public PsExtractor() {
        this(new PtsTimestampAdjuster(0L));
    }

    public PsExtractor(PtsTimestampAdjuster ptsTimestampAdjuster) {
        this.ptsTimestampAdjuster = ptsTimestampAdjuster;
        this.psPacketBuffer = new ParsableByteArray(4096);
        this.psPayloadReaders = new SparseArray<>();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        byte[] bArr = new byte[14];
        extractorInput.peekFully(bArr, 0, 14);
        if (PACK_START_CODE != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        return 1 == ((bArr[2] & 255) | (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)));
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
            if (i2 < this.psPayloadReaders.size()) {
                this.psPayloadReaders.valueAt(i2).seek();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        if (!extractorInput.peekFully(this.psPacketBuffer.data, 0, 4, true)) {
            return -1;
        }
        this.psPacketBuffer.setPosition(0);
        int readInt = this.psPacketBuffer.readInt();
        if (readInt == MPEG_PROGRAM_END_CODE) {
            return -1;
        }
        if (readInt == PACK_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 10);
            this.psPacketBuffer.setPosition(0);
            this.psPacketBuffer.skipBytes(9);
            extractorInput.skipFully((this.psPacketBuffer.readUnsignedByte() & 7) + 14);
            return 0;
        }
        if (readInt == SYSTEM_HEADER_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
            this.psPacketBuffer.setPosition(0);
            extractorInput.skipFully(this.psPacketBuffer.readUnsignedShort() + 6);
            return 0;
        }
        if (((readInt & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            extractorInput.skipFully(1);
            return 0;
        }
        int i = readInt & 255;
        PesReader pesReader = this.psPayloadReaders.get(i);
        if (!this.foundAllTracks) {
            if (pesReader == null) {
                ElementaryStreamReader elementaryStreamReader = null;
                if (!this.foundAudioTrack && i == 189) {
                    elementaryStreamReader = new Ac3Reader(this.output.track(i), false);
                    this.foundAudioTrack = true;
                } else if (!this.foundAudioTrack && (i & 224) == 192) {
                    elementaryStreamReader = new MpegAudioReader(this.output.track(i));
                    this.foundAudioTrack = true;
                } else if (!this.foundVideoTrack && (i & VIDEO_STREAM_MASK) == 224) {
                    elementaryStreamReader = new H262Reader(this.output.track(i));
                    this.foundVideoTrack = true;
                }
                if (elementaryStreamReader != null) {
                    pesReader = new PesReader(elementaryStreamReader, this.ptsTimestampAdjuster);
                    this.psPayloadReaders.put(i, pesReader);
                }
            }
            if ((this.foundAudioTrack && this.foundVideoTrack) || extractorInput.getPosition() > 1048576) {
                this.foundAllTracks = true;
                this.output.endTracks();
            }
        }
        extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
        this.psPacketBuffer.setPosition(0);
        int readUnsignedShort = this.psPacketBuffer.readUnsignedShort() + 6;
        if (pesReader == null) {
            extractorInput.skipFully(readUnsignedShort);
        } else {
            if (this.psPacketBuffer.capacity() < readUnsignedShort) {
                this.psPacketBuffer.reset(new byte[readUnsignedShort], readUnsignedShort);
            }
            extractorInput.readFully(this.psPacketBuffer.data, 0, readUnsignedShort);
            this.psPacketBuffer.setPosition(6);
            this.psPacketBuffer.setLimit(readUnsignedShort);
            pesReader.consume(this.psPacketBuffer, this.output);
            this.psPacketBuffer.setLimit(this.psPacketBuffer.capacity());
        }
        return 0;
    }

    private static final class PesReader {
        private static final int PES_SCRATCH_SIZE = 64;
        private boolean dtsFlag;
        private int extendedHeaderLength;
        private final ElementaryStreamReader pesPayloadReader;
        private final ParsableBitArray pesScratch = new ParsableBitArray(new byte[64]);
        private boolean ptsFlag;
        private final PtsTimestampAdjuster ptsTimestampAdjuster;
        private boolean seenFirstDts;
        private long timeUs;

        public PesReader(ElementaryStreamReader elementaryStreamReader, PtsTimestampAdjuster ptsTimestampAdjuster) {
            this.pesPayloadReader = elementaryStreamReader;
            this.ptsTimestampAdjuster = ptsTimestampAdjuster;
        }

        public void seek() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }

        public void consume(ParsableByteArray parsableByteArray, ExtractorOutput extractorOutput) {
            parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
            this.pesScratch.setPosition(0);
            parseHeader();
            parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.setPosition(0);
            parseHeaderExtension();
            this.pesPayloadReader.packetStarted(this.timeUs, true);
            this.pesPayloadReader.consume(parsableByteArray);
            this.pesPayloadReader.packetFinished();
        }

        private void parseHeader() {
            this.pesScratch.skipBits(8);
            this.ptsFlag = this.pesScratch.readBit();
            this.dtsFlag = this.pesScratch.readBit();
            this.pesScratch.skipBits(6);
            this.extendedHeaderLength = this.pesScratch.readBits(8);
        }

        private void parseHeaderExtension() {
            this.timeUs = 0L;
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
