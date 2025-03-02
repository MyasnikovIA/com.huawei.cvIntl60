package com.google.android.exoplayer.extractor.p095ts;

import android.util.Log;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Collections;

/* loaded from: classes.dex */
final class H265Reader extends ElementaryStreamReader {
    private static final int BLA_W_LP = 16;
    private static final int CRA_NUT = 21;
    private static final int PPS_NUT = 34;
    private static final int PREFIX_SEI_NUT = 39;
    private static final int RASL_R = 9;
    private static final int SPS_NUT = 33;
    private static final int SUFFIX_SEI_NUT = 40;
    private static final String TAG = "H265Reader";
    private static final int VPS_NUT = 32;
    private boolean hasOutputFormat;
    private long pesTimeUs;
    private final NalUnitTargetBuffer pps;
    private final boolean[] prefixFlags;
    private final NalUnitTargetBuffer prefixSei;
    private final SampleReader sampleReader;
    private final SeiReader seiReader;
    private final ParsableByteArray seiWrapper;
    private final NalUnitTargetBuffer sps;
    private final NalUnitTargetBuffer suffixSei;
    private long totalBytesWritten;
    private final NalUnitTargetBuffer vps;

    public H265Reader(TrackOutput trackOutput, SeiReader seiReader) {
        super(trackOutput);
        this.seiReader = seiReader;
        this.prefixFlags = new boolean[3];
        this.vps = new NalUnitTargetBuffer(32, 128);
        this.sps = new NalUnitTargetBuffer(33, 128);
        this.pps = new NalUnitTargetBuffer(34, 128);
        this.prefixSei = new NalUnitTargetBuffer(39, 128);
        this.suffixSei = new NalUnitTargetBuffer(40, 128);
        this.sampleReader = new SampleReader(trackOutput);
        this.seiWrapper = new ParsableByteArray();
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.vps.reset();
        this.sps.reset();
        this.pps.reset();
        this.prefixSei.reset();
        this.suffixSei.reset();
        this.sampleReader.reset();
        this.totalBytesWritten = 0L;
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetStarted(long j, boolean z) {
        this.pesTimeUs = j;
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit();
            byte[] bArr = parsableByteArray.data;
            this.totalBytesWritten += parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            while (position < limit) {
                int findNalUnit = NalUnitUtil.findNalUnit(bArr, position, limit, this.prefixFlags);
                if (findNalUnit == limit) {
                    nalUnitData(bArr, position, limit);
                    return;
                }
                int h265NalUnitType = NalUnitUtil.getH265NalUnitType(bArr, findNalUnit);
                int i = findNalUnit - position;
                if (i > 0) {
                    nalUnitData(bArr, position, findNalUnit);
                }
                int i2 = limit - findNalUnit;
                long j = this.totalBytesWritten - i2;
                endNalUnit(j, i2, i < 0 ? -i : 0, this.pesTimeUs);
                startNalUnit(j, i2, h265NalUnitType, this.pesTimeUs);
                position = findNalUnit + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private void startNalUnit(long j, int i, int i2, long j2) {
        if (this.hasOutputFormat) {
            this.sampleReader.startNalUnit(j, i, i2, j2);
        } else {
            this.vps.startNalUnit(i2);
            this.sps.startNalUnit(i2);
            this.pps.startNalUnit(i2);
        }
        this.prefixSei.startNalUnit(i2);
        this.suffixSei.startNalUnit(i2);
    }

    private void nalUnitData(byte[] bArr, int i, int i2) {
        if (this.hasOutputFormat) {
            this.sampleReader.readNalUnitData(bArr, i, i2);
        } else {
            this.vps.appendToNalUnit(bArr, i, i2);
            this.sps.appendToNalUnit(bArr, i, i2);
            this.pps.appendToNalUnit(bArr, i, i2);
        }
        this.prefixSei.appendToNalUnit(bArr, i, i2);
        this.suffixSei.appendToNalUnit(bArr, i, i2);
    }

    private void endNalUnit(long j, int i, int i2, long j2) {
        if (this.hasOutputFormat) {
            this.sampleReader.endNalUnit(j, i);
        } else {
            this.vps.endNalUnit(i2);
            this.sps.endNalUnit(i2);
            this.pps.endNalUnit(i2);
            if (this.vps.isCompleted() && this.sps.isCompleted() && this.pps.isCompleted()) {
                this.output.format(parseMediaFormat(this.vps, this.sps, this.pps));
                this.hasOutputFormat = true;
            }
        }
        if (this.prefixSei.endNalUnit(i2)) {
            this.seiWrapper.reset(this.prefixSei.nalData, NalUnitUtil.unescapeStream(this.prefixSei.nalData, this.prefixSei.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j2, this.seiWrapper);
        }
        if (this.suffixSei.endNalUnit(i2)) {
            this.seiWrapper.reset(this.suffixSei.nalData, NalUnitUtil.unescapeStream(this.suffixSei.nalData, this.suffixSei.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j2, this.seiWrapper);
        }
    }

    private static MediaFormat parseMediaFormat(NalUnitTargetBuffer nalUnitTargetBuffer, NalUnitTargetBuffer nalUnitTargetBuffer2, NalUnitTargetBuffer nalUnitTargetBuffer3) {
        float f;
        byte[] bArr = new byte[nalUnitTargetBuffer.nalLength + nalUnitTargetBuffer2.nalLength + nalUnitTargetBuffer3.nalLength];
        System.arraycopy(nalUnitTargetBuffer.nalData, 0, bArr, 0, nalUnitTargetBuffer.nalLength);
        System.arraycopy(nalUnitTargetBuffer2.nalData, 0, bArr, nalUnitTargetBuffer.nalLength, nalUnitTargetBuffer2.nalLength);
        System.arraycopy(nalUnitTargetBuffer3.nalData, 0, bArr, nalUnitTargetBuffer.nalLength + nalUnitTargetBuffer2.nalLength, nalUnitTargetBuffer3.nalLength);
        NalUnitUtil.unescapeStream(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength);
        ParsableBitArray parsableBitArray = new ParsableBitArray(nalUnitTargetBuffer2.nalData);
        parsableBitArray.skipBits(44);
        int readBits = parsableBitArray.readBits(3);
        parsableBitArray.skipBits(1);
        parsableBitArray.skipBits(88);
        parsableBitArray.skipBits(8);
        int i = 0;
        for (int i2 = 0; i2 < readBits; i2++) {
            if (parsableBitArray.readBit()) {
                i += 89;
            }
            if (parsableBitArray.readBit()) {
                i += 8;
            }
        }
        parsableBitArray.skipBits(i);
        if (readBits > 0) {
            parsableBitArray.skipBits((8 - readBits) * 2);
        }
        parsableBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt = parsableBitArray.readUnsignedExpGolombCodedInt();
        if (readUnsignedExpGolombCodedInt == 3) {
            parsableBitArray.skipBits(1);
        }
        int readUnsignedExpGolombCodedInt2 = parsableBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt3 = parsableBitArray.readUnsignedExpGolombCodedInt();
        if (parsableBitArray.readBit()) {
            int readUnsignedExpGolombCodedInt4 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt5 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt6 = parsableBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt7 = parsableBitArray.readUnsignedExpGolombCodedInt();
            readUnsignedExpGolombCodedInt2 -= ((readUnsignedExpGolombCodedInt == 1 || readUnsignedExpGolombCodedInt == 2) ? 2 : 1) * (readUnsignedExpGolombCodedInt4 + readUnsignedExpGolombCodedInt5);
            readUnsignedExpGolombCodedInt3 -= (readUnsignedExpGolombCodedInt == 1 ? 2 : 1) * (readUnsignedExpGolombCodedInt6 + readUnsignedExpGolombCodedInt7);
        }
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt8 = parsableBitArray.readUnsignedExpGolombCodedInt();
        for (int i3 = parsableBitArray.readBit() ? 0 : readBits; i3 <= readBits; i3++) {
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.readUnsignedExpGolombCodedInt();
        }
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        parsableBitArray.readUnsignedExpGolombCodedInt();
        if (parsableBitArray.readBit() && parsableBitArray.readBit()) {
            skipScalingList(parsableBitArray);
        }
        parsableBitArray.skipBits(2);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(8);
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.readUnsignedExpGolombCodedInt();
            parsableBitArray.skipBits(1);
        }
        skipShortTermRefPicSets(parsableBitArray);
        if (parsableBitArray.readBit()) {
            for (int i4 = 0; i4 < parsableBitArray.readUnsignedExpGolombCodedInt(); i4++) {
                parsableBitArray.skipBits(readUnsignedExpGolombCodedInt8 + 4 + 1);
            }
        }
        parsableBitArray.skipBits(2);
        float f2 = 1.0f;
        if (parsableBitArray.readBit() && parsableBitArray.readBit()) {
            int readBits2 = parsableBitArray.readBits(8);
            if (readBits2 == 255) {
                int readBits3 = parsableBitArray.readBits(16);
                int readBits4 = parsableBitArray.readBits(16);
                if (readBits3 != 0 && readBits4 != 0) {
                    f2 = readBits3 / readBits4;
                }
                f = f2;
            } else if (readBits2 < NalUnitUtil.ASPECT_RATIO_IDC_VALUES.length) {
                f = NalUnitUtil.ASPECT_RATIO_IDC_VALUES[readBits2];
            } else {
                Log.w(TAG, "Unexpected aspect_ratio_idc value: " + readBits2);
            }
            return MediaFormat.createVideoFormat(null, MimeTypes.VIDEO_H265, -1, -1, -1L, readUnsignedExpGolombCodedInt2, readUnsignedExpGolombCodedInt3, Collections.singletonList(bArr), -1, f);
        }
        f = 1.0f;
        return MediaFormat.createVideoFormat(null, MimeTypes.VIDEO_H265, -1, -1, -1L, readUnsignedExpGolombCodedInt2, readUnsignedExpGolombCodedInt3, Collections.singletonList(bArr), -1, f);
    }

    private static void skipScalingList(ParsableBitArray parsableBitArray) {
        int i = 0;
        while (i < 4) {
            for (int i2 = 0; i2 < 6; i2 = (i == 3 ? 3 : 1) + i2) {
                if (!parsableBitArray.readBit()) {
                    parsableBitArray.readUnsignedExpGolombCodedInt();
                } else {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        parsableBitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i3 = 0; i3 < min; i3++) {
                        parsableBitArray.readSignedExpGolombCodedInt();
                    }
                }
            }
            i++;
        }
    }

    private static void skipShortTermRefPicSets(ParsableBitArray parsableBitArray) {
        int readUnsignedExpGolombCodedInt = parsableBitArray.readUnsignedExpGolombCodedInt();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < readUnsignedExpGolombCodedInt) {
            boolean readBit = i != 0 ? parsableBitArray.readBit() : z;
            if (readBit) {
                parsableBitArray.skipBits(1);
                parsableBitArray.readUnsignedExpGolombCodedInt();
                for (int i3 = 0; i3 <= i2; i3++) {
                    if (parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(1);
                    }
                }
            } else {
                int readUnsignedExpGolombCodedInt2 = parsableBitArray.readUnsignedExpGolombCodedInt();
                int readUnsignedExpGolombCodedInt3 = parsableBitArray.readUnsignedExpGolombCodedInt();
                i2 = readUnsignedExpGolombCodedInt2 + readUnsignedExpGolombCodedInt3;
                for (int i4 = 0; i4 < readUnsignedExpGolombCodedInt2; i4++) {
                    parsableBitArray.readUnsignedExpGolombCodedInt();
                    parsableBitArray.skipBits(1);
                }
                for (int i5 = 0; i5 < readUnsignedExpGolombCodedInt3; i5++) {
                    parsableBitArray.readUnsignedExpGolombCodedInt();
                    parsableBitArray.skipBits(1);
                }
            }
            i++;
            z = readBit;
        }
    }

    private static final class SampleReader {
        private static final int FIRST_SLICE_FLAG_OFFSET = 2;
        private boolean isFirstParameterSet;
        private boolean isFirstSlice;
        private boolean lookingForFirstSliceFlag;
        private int nalUnitBytesRead;
        private boolean nalUnitHasKeyframeData;
        private long nalUnitStartPosition;
        private long nalUnitTimeUs;
        private final TrackOutput output;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private boolean writingParameterSets;

        public SampleReader(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        public void reset() {
            this.lookingForFirstSliceFlag = false;
            this.isFirstSlice = false;
            this.isFirstParameterSet = false;
            this.readingSample = false;
            this.writingParameterSets = false;
        }

        public void startNalUnit(long j, int i, int i2, long j2) {
            this.isFirstSlice = false;
            this.isFirstParameterSet = false;
            this.nalUnitTimeUs = j2;
            this.nalUnitBytesRead = 0;
            this.nalUnitStartPosition = j;
            if (i2 >= 32) {
                if (!this.writingParameterSets && this.readingSample) {
                    outputSample(i);
                    this.readingSample = false;
                }
                if (i2 <= 34) {
                    this.isFirstParameterSet = !this.writingParameterSets;
                    this.writingParameterSets = true;
                }
            }
            this.nalUnitHasKeyframeData = i2 >= 16 && i2 <= 21;
            this.lookingForFirstSliceFlag = this.nalUnitHasKeyframeData || i2 <= 9;
        }

        public void readNalUnitData(byte[] bArr, int i, int i2) {
            if (this.lookingForFirstSliceFlag) {
                int i3 = (i + 2) - this.nalUnitBytesRead;
                if (i3 < i2) {
                    this.isFirstSlice = (bArr[i3] & 128) != 0;
                    this.lookingForFirstSliceFlag = false;
                } else {
                    this.nalUnitBytesRead += i2 - i;
                }
            }
        }

        public void endNalUnit(long j, int i) {
            if (this.writingParameterSets && this.isFirstSlice) {
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.writingParameterSets = false;
            } else if (this.isFirstParameterSet || this.isFirstSlice) {
                if (this.readingSample) {
                    outputSample(((int) (j - this.nalUnitStartPosition)) + i);
                }
                this.samplePosition = this.nalUnitStartPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.readingSample = true;
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
            }
        }

        private void outputSample(int i) {
            this.output.sampleMetadata(this.sampleTimeUs, this.sampleIsKeyframe ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i, null);
        }
    }
}
