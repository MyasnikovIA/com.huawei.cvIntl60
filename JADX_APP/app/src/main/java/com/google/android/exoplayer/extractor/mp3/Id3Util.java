package com.google.android.exoplayer.extractor.mp3;

import android.util.Pair;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.GaplessInfo;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
final class Id3Util {
    private static final int MAXIMUM_METADATA_SIZE = 3145728;
    private static final int ID3_TAG = Util.getIntegerCodeForString("ID3");
    private static final Charset[] CHARSET_BY_ENCODING = {Charset.forName("ISO-8859-1"), Charset.forName("UTF-16LE"), Charset.forName("UTF-16BE"), Charset.forName(C1167C.UTF8_NAME)};

    public static GaplessInfo parseId3(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        GaplessInfo gaplessInfo = null;
        int i = 0;
        while (true) {
            extractorInput.peekFully(parsableByteArray.data, 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() == ID3_TAG) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
                if (gaplessInfo == null && canParseMetadata(readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readSynchSafeInt)) {
                    byte[] bArr = new byte[readSynchSafeInt];
                    extractorInput.peekFully(bArr, 0, readSynchSafeInt);
                    gaplessInfo = parseGaplessInfo(new ParsableByteArray(bArr), readUnsignedByte, readUnsignedByte3);
                } else {
                    extractorInput.advancePeekPosition(readSynchSafeInt);
                }
                i += readSynchSafeInt + 10;
            } else {
                extractorInput.resetPeekPosition();
                extractorInput.advancePeekPosition(i);
                return gaplessInfo;
            }
        }
    }

    private static boolean canParseMetadata(int i, int i2, int i3, int i4) {
        return i2 != 255 && i >= 2 && i <= 4 && i4 <= MAXIMUM_METADATA_SIZE && (i != 2 || ((i3 & 63) == 0 && (i3 & 64) == 0)) && ((i != 3 || (i3 & 31) == 0) && (i != 4 || (i3 & 15) == 0));
    }

    private static GaplessInfo parseGaplessInfo(ParsableByteArray parsableByteArray, int i, int i2) {
        GaplessInfo createFromComment;
        int readUnsignedIntToInt;
        unescape(parsableByteArray, i, i2);
        parsableByteArray.setPosition(0);
        if (i == 3 && (i2 & 64) != 0) {
            if (parsableByteArray.bytesLeft() >= 4 && (readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) <= parsableByteArray.bytesLeft()) {
                if (readUnsignedIntToInt >= 6) {
                    parsableByteArray.skipBytes(2);
                    int readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
                    parsableByteArray.setPosition(4);
                    parsableByteArray.setLimit(parsableByteArray.limit() - readUnsignedIntToInt2);
                    if (parsableByteArray.bytesLeft() < readUnsignedIntToInt) {
                        return null;
                    }
                }
                parsableByteArray.skipBytes(readUnsignedIntToInt);
            }
            return null;
        }
        if (i == 4 && (i2 & 64) != 0) {
            if (parsableByteArray.bytesLeft() < 4) {
                return null;
            }
            int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
            if (readSynchSafeInt < 6 || readSynchSafeInt > parsableByteArray.bytesLeft() + 4) {
                return null;
            }
            parsableByteArray.setPosition(readSynchSafeInt);
        }
        while (true) {
            Pair<String, String> findNextComment = findNextComment(i, parsableByteArray);
            if (findNextComment == null) {
                return null;
            }
            if (((String) findNextComment.first).length() > 3 && (createFromComment = GaplessInfo.createFromComment(((String) findNextComment.first).substring(3), (String) findNextComment.second)) != null) {
                return createFromComment;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        r2 = r10.readUnsignedByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        if (r2 < 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x000e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r2 >= com.google.android.exoplayer.extractor.mp3.Id3Util.CHARSET_BY_ENCODING.length) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        r0 = r10.readString(r0 - 1, com.google.android.exoplayer.extractor.mp3.Id3Util.CHARSET_BY_ENCODING[r2]).split("\u0000");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (r0.length != 2) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        r0 = android.util.Pair.create(r0[0], r0[1]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b0, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.util.Pair<java.lang.String, java.lang.String> findNextComment(int r9, com.google.android.exoplayer.util.ParsableByteArray r10) {
        /*
            r8 = 2
            r3 = 1
            r4 = 0
            r7 = 4
            r1 = 0
        L5:
            if (r9 != r8) goto L5e
            int r0 = r10.bytesLeft()
            r2 = 6
            if (r0 >= r2) goto Lf
        Le:
            return r1
        Lf:
            r0 = 3
            java.lang.String r2 = "US-ASCII"
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)
            java.lang.String r2 = r10.readString(r0, r2)
            java.lang.String r0 = "\u0000\u0000\u0000"
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto Le
            int r0 = r10.readUnsignedInt24()
            if (r0 == 0) goto Le
            int r5 = r10.bytesLeft()
            if (r0 > r5) goto Le
            java.lang.String r5 = "COM"
            boolean r2 = r2.equals(r5)
            if (r2 == 0) goto La4
        L36:
            int r2 = r10.readUnsignedByte()
            if (r2 < 0) goto Le
            java.nio.charset.Charset[] r5 = com.google.android.exoplayer.extractor.mp3.Id3Util.CHARSET_BY_ENCODING
            int r5 = r5.length
            if (r2 >= r5) goto Le
            java.nio.charset.Charset[] r5 = com.google.android.exoplayer.extractor.mp3.Id3Util.CHARSET_BY_ENCODING
            r2 = r5[r2]
            int r0 = r0 + (-1)
            java.lang.String r0 = r10.readString(r0, r2)
            java.lang.String r2 = "\u0000"
            java.lang.String[] r0 = r0.split(r2)
            int r2 = r0.length
            if (r2 != r8) goto Lb0
            r1 = r0[r4]
            r0 = r0[r3]
            android.util.Pair r0 = android.util.Pair.create(r1, r0)
        L5c:
            r1 = r0
            goto Le
        L5e:
            int r0 = r10.bytesLeft()
            r2 = 10
            if (r0 < r2) goto Le
            java.lang.String r0 = "US-ASCII"
            java.nio.charset.Charset r0 = java.nio.charset.Charset.forName(r0)
            java.lang.String r5 = r10.readString(r7, r0)
            java.lang.String r0 = "\u0000\u0000\u0000\u0000"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto Le
            if (r9 != r7) goto La9
            int r0 = r10.readSynchSafeInt()
        L7e:
            if (r0 == 0) goto Le
            int r2 = r10.bytesLeft()
            int r2 = r2 + (-2)
            if (r0 > r2) goto Le
            int r2 = r10.readUnsignedShort()
            if (r9 != r7) goto L92
            r6 = r2 & 12
            if (r6 != 0) goto L99
        L92:
            r6 = 3
            if (r9 != r6) goto Lae
            r2 = r2 & 192(0xc0, float:2.69E-43)
            if (r2 == 0) goto Lae
        L99:
            r2 = r3
        L9a:
            if (r2 != 0) goto La4
            java.lang.String r2 = "COMM"
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L36
        La4:
            r10.skipBytes(r0)
            goto L5
        La9:
            int r0 = r10.readUnsignedIntToInt()
            goto L7e
        Lae:
            r2 = r4
            goto L9a
        Lb0:
            r0 = r1
            goto L5c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.extractor.mp3.Id3Util.findNextComment(int, com.google.android.exoplayer.util.ParsableByteArray):android.util.Pair");
    }

    private static boolean unescape(ParsableByteArray parsableByteArray, int i, int i2) {
        if (i != 4) {
            if ((i2 & 128) != 0) {
                byte[] bArr = parsableByteArray.data;
                int length = bArr.length;
                for (int i3 = 0; i3 + 1 < length; i3++) {
                    if ((bArr[i3] & 255) == 255 && bArr[i3 + 1] == 0) {
                        System.arraycopy(bArr, i3 + 2, bArr, i3 + 1, (length - i3) - 2);
                        length--;
                    }
                }
                parsableByteArray.setLimit(length);
            }
        } else if (canUnescapeVersion4(parsableByteArray, false)) {
            unescapeVersion4(parsableByteArray, false);
        } else {
            if (!canUnescapeVersion4(parsableByteArray, true)) {
                return false;
            }
            unescapeVersion4(parsableByteArray, true);
        }
        return true;
    }

    private static boolean canUnescapeVersion4(ParsableByteArray parsableByteArray, boolean z) {
        parsableByteArray.setPosition(0);
        while (parsableByteArray.bytesLeft() >= 10 && parsableByteArray.readInt() != 0) {
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            if (!z) {
                if ((8421504 & readUnsignedInt) != 0) {
                    return false;
                }
                readUnsignedInt = (((readUnsignedInt >> 24) & 127) << 21) | (readUnsignedInt & 127) | (((readUnsignedInt >> 8) & 127) << 7) | (((readUnsignedInt >> 16) & 127) << 14);
            }
            if (readUnsignedInt > parsableByteArray.bytesLeft() - 2) {
                return false;
            }
            if ((parsableByteArray.readUnsignedShort() & 1) != 0 && parsableByteArray.bytesLeft() < 4) {
                return false;
            }
            parsableByteArray.skipBytes((int) readUnsignedInt);
        }
        return true;
    }

    private static void unescapeVersion4(ParsableByteArray parsableByteArray, boolean z) {
        int i;
        int i2;
        int i3;
        parsableByteArray.setPosition(0);
        byte[] bArr = parsableByteArray.data;
        while (parsableByteArray.bytesLeft() >= 10 && parsableByteArray.readInt() != 0) {
            int readUnsignedIntToInt = z ? parsableByteArray.readUnsignedIntToInt() : parsableByteArray.readSynchSafeInt();
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            if ((readUnsignedShort & 1) != 0) {
                int position = parsableByteArray.getPosition();
                System.arraycopy(bArr, position + 4, bArr, position, parsableByteArray.bytesLeft() - 4);
                i2 = readUnsignedIntToInt - 4;
                i = readUnsignedShort & (-2);
                parsableByteArray.setLimit(parsableByteArray.limit() - 4);
            } else {
                i = readUnsignedShort;
                i2 = readUnsignedIntToInt;
            }
            if ((i & 2) != 0) {
                int position2 = parsableByteArray.getPosition() + 1;
                int i4 = 0;
                int i5 = position2;
                int i6 = position2;
                while (i4 + 1 < i2) {
                    if ((bArr[i6 - 1] & 255) == 255 && bArr[i6] == 0) {
                        i6++;
                        i2--;
                    }
                    bArr[i5] = bArr[i6];
                    i4++;
                    i5++;
                    i6++;
                }
                parsableByteArray.setLimit(parsableByteArray.limit() - (i6 - i5));
                System.arraycopy(bArr, i6, bArr, i5, parsableByteArray.bytesLeft() - i6);
                i3 = i & (-3);
            } else {
                i3 = i;
            }
            if (i3 != readUnsignedShort || z) {
                int position3 = parsableByteArray.getPosition() - 6;
                writeSyncSafeInteger(bArr, position3, i2);
                bArr[position3 + 4] = (byte) (i3 >> 8);
                bArr[position3 + 5] = (byte) (i3 & 255);
            }
            parsableByteArray.skipBytes(i2);
        }
    }

    private static void writeSyncSafeInteger(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) ((i2 >> 21) & 127);
        bArr[i + 1] = (byte) ((i2 >> 14) & 127);
        bArr[i + 2] = (byte) ((i2 >> 7) & 127);
        bArr[i + 3] = (byte) (i2 & 127);
    }

    private Id3Util() {
    }
}
