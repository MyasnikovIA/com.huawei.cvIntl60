package com.google.android.exoplayer.extractor.flv;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class VideoTagPayloadReader extends TagPayloadReader {
    private static final int AVC_PACKET_TYPE_AVC_NALU = 1;
    private static final int AVC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    private static final int VIDEO_CODEC_AVC = 7;
    private static final int VIDEO_FRAME_KEYFRAME = 1;
    private static final int VIDEO_FRAME_VIDEO_INFO = 5;
    private int frameType;
    private boolean hasOutputFormat;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int nalUnitLengthFieldLength;

    public VideoTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
    }

    @Override // com.google.android.exoplayer.extractor.flv.TagPayloadReader
    public void seek() {
    }

    @Override // com.google.android.exoplayer.extractor.flv.TagPayloadReader
    protected boolean parseHeader(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = (readUnsignedByte >> 4) & 15;
        int i2 = readUnsignedByte & 15;
        if (i2 != 7) {
            throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
        }
        this.frameType = i;
        return i != 5;
    }

    @Override // com.google.android.exoplayer.extractor.flv.TagPayloadReader
    protected void parsePayload(ParsableByteArray parsableByteArray, long j) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        long readUnsignedInt24 = j + (parsableByteArray.readUnsignedInt24() * 1000);
        if (readUnsignedByte == 0 && !this.hasOutputFormat) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(new byte[parsableByteArray.bytesLeft()]);
            parsableByteArray.readBytes(parsableByteArray2.data, 0, parsableByteArray.bytesLeft());
            AvcSequenceHeaderData parseAvcCodecPrivate = parseAvcCodecPrivate(parsableByteArray2);
            this.nalUnitLengthFieldLength = parseAvcCodecPrivate.nalUnitLengthFieldLength;
            this.output.format(MediaFormat.createVideoFormat(null, MimeTypes.VIDEO_H264, -1, -1, getDurationUs(), parseAvcCodecPrivate.width, parseAvcCodecPrivate.height, parseAvcCodecPrivate.initializationData, -1, parseAvcCodecPrivate.pixelWidthAspectRatio));
            this.hasOutputFormat = true;
            return;
        }
        if (readUnsignedByte == 1) {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i = 4 - this.nalUnitLengthFieldLength;
            int i2 = 0;
            while (parsableByteArray.bytesLeft() > 0) {
                parsableByteArray.readBytes(this.nalLength.data, i, this.nalUnitLengthFieldLength);
                this.nalLength.setPosition(0);
                int readUnsignedIntToInt = this.nalLength.readUnsignedIntToInt();
                this.nalStartCode.setPosition(0);
                this.output.sampleData(this.nalStartCode, 4);
                this.output.sampleData(parsableByteArray, readUnsignedIntToInt);
                i2 = i2 + 4 + readUnsignedIntToInt;
            }
            this.output.sampleMetadata(readUnsignedInt24, this.frameType == 1 ? 1 : 0, i2, 0, null);
        }
    }

    private AvcSequenceHeaderData parseAvcCodecPrivate(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        parsableByteArray.setPosition(4);
        int readUnsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
        Assertions.checkState(readUnsignedByte != 3);
        ArrayList arrayList = new ArrayList();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
        for (int i3 = 0; i3 < readUnsignedByte2; i3++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
        for (int i4 = 0; i4 < readUnsignedByte3; i4++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        float f = 1.0f;
        if (readUnsignedByte2 > 0) {
            ParsableBitArray parsableBitArray = new ParsableBitArray((byte[]) arrayList.get(0));
            parsableBitArray.setPosition((readUnsignedByte + 1) * 8);
            NalUnitUtil.SpsData parseSpsNalUnit = NalUnitUtil.parseSpsNalUnit(parsableBitArray);
            i2 = parseSpsNalUnit.width;
            i = parseSpsNalUnit.height;
            f = parseSpsNalUnit.pixelWidthAspectRatio;
        } else {
            i = -1;
            i2 = -1;
        }
        return new AvcSequenceHeaderData(arrayList, readUnsignedByte, i2, i, f);
    }

    private static final class AvcSequenceHeaderData {
        public final int height;
        public final List<byte[]> initializationData;
        public final int nalUnitLengthFieldLength;
        public final float pixelWidthAspectRatio;
        public final int width;

        public AvcSequenceHeaderData(List<byte[]> list, int i, int i2, int i3, float f) {
            this.initializationData = list;
            this.nalUnitLengthFieldLength = i;
            this.pixelWidthAspectRatio = f;
            this.width = i2;
            this.height = i3;
        }
    }
}
