package com.google.android.exoplayer.text.eia608;

import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public final class Eia608Parser {
    private static final int COUNTRY_CODE = 181;
    private static final int PAYLOAD_TYPE_CC = 4;
    private static final int PROVIDER_CODE = 49;
    private static final int USER_DATA_TYPE_CODE = 3;
    private static final int USER_ID = 1195456820;
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, IjkMediaMeta.FF_PROFILE_H264_HIGH_422, 231, 247, 209, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 251};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, 205, HttpStatusCodes.STATUS_CODE_NO_CONTENT, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private final ParsableBitArray seiBuffer = new ParsableBitArray();
    private final StringBuilder stringBuilder = new StringBuilder();
    private final ArrayList<ClosedCaption> captions = new ArrayList<>();

    Eia608Parser() {
    }

    boolean canParse(String str) {
        return str.equals(MimeTypes.APPLICATION_EIA608);
    }

    ClosedCaptionList parse(SampleHolder sampleHolder) {
        if (sampleHolder.size < 10) {
            return null;
        }
        this.captions.clear();
        this.stringBuilder.setLength(0);
        this.seiBuffer.reset(sampleHolder.data.array());
        this.seiBuffer.skipBits(67);
        int readBits = this.seiBuffer.readBits(5);
        this.seiBuffer.skipBits(8);
        for (int i = 0; i < readBits; i++) {
            this.seiBuffer.skipBits(5);
            if (!this.seiBuffer.readBit()) {
                this.seiBuffer.skipBits(18);
            } else if (this.seiBuffer.readBits(2) != 0) {
                this.seiBuffer.skipBits(16);
            } else {
                this.seiBuffer.skipBits(1);
                byte readBits2 = (byte) this.seiBuffer.readBits(7);
                this.seiBuffer.skipBits(1);
                byte readBits3 = (byte) this.seiBuffer.readBits(7);
                if (readBits2 != 0 || readBits3 != 0) {
                    if ((readBits2 == 17 || readBits2 == 25) && (readBits3 & 112) == 48) {
                        this.stringBuilder.append(getSpecialChar(readBits3));
                    } else if ((readBits2 == 18 || readBits2 == 26) && (readBits3 & 96) == 32) {
                        backspace();
                        this.stringBuilder.append(getExtendedEsFrChar(readBits3));
                    } else if ((readBits2 == 19 || readBits2 == 27) && (readBits3 & 96) == 32) {
                        backspace();
                        this.stringBuilder.append(getExtendedPtDeChar(readBits3));
                    } else if (readBits2 < 32) {
                        addCtrl(readBits2, readBits3);
                    } else {
                        this.stringBuilder.append(getChar(readBits2));
                        if (readBits3 >= 32) {
                            this.stringBuilder.append(getChar(readBits3));
                        }
                    }
                }
            }
        }
        addBufferedText();
        if (this.captions.isEmpty()) {
            return null;
        }
        ClosedCaption[] closedCaptionArr = new ClosedCaption[this.captions.size()];
        this.captions.toArray(closedCaptionArr);
        return new ClosedCaptionList(sampleHolder.timeUs, sampleHolder.isDecodeOnly(), closedCaptionArr);
    }

    private static char getChar(byte b) {
        return (char) BASIC_CHARACTER_SET[(b & Byte.MAX_VALUE) - 32];
    }

    private static char getSpecialChar(byte b) {
        return (char) SPECIAL_CHARACTER_SET[b & 15];
    }

    private static char getExtendedEsFrChar(byte b) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2];
    }

    private static char getExtendedPtDeChar(byte b) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2];
    }

    private void addBufferedText() {
        if (this.stringBuilder.length() > 0) {
            this.captions.add(new ClosedCaptionText(this.stringBuilder.toString()));
            this.stringBuilder.setLength(0);
        }
    }

    private void addCtrl(byte b, byte b2) {
        addBufferedText();
        this.captions.add(new ClosedCaptionCtrl(b, b2));
    }

    private void backspace() {
        addCtrl(ClosedCaptionCtrl.MISC_CHAN_1, ClosedCaptionCtrl.BACKSPACE);
    }

    public static boolean isSeiMessageEia608(int i, int i2, ParsableByteArray parsableByteArray) {
        if (i != 4 || i2 < 8) {
            return false;
        }
        int position = parsableByteArray.getPosition();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readInt = parsableByteArray.readInt();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(position);
        return readUnsignedByte == COUNTRY_CODE && readUnsignedShort == 49 && readInt == USER_ID && readUnsignedByte2 == 3;
    }
}
