package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
final class Sniffer {
    private static final int[] COMPATIBLE_BRANDS = {Util.getIntegerCodeForString("isom"), Util.getIntegerCodeForString("iso2"), Util.getIntegerCodeForString("iso3"), Util.getIntegerCodeForString("iso4"), Util.getIntegerCodeForString("iso5"), Util.getIntegerCodeForString("iso6"), Util.getIntegerCodeForString("avc1"), Util.getIntegerCodeForString("hvc1"), Util.getIntegerCodeForString("hev1"), Util.getIntegerCodeForString("mp41"), Util.getIntegerCodeForString("mp42"), Util.getIntegerCodeForString("3g2a"), Util.getIntegerCodeForString("3g2b"), Util.getIntegerCodeForString("3gr6"), Util.getIntegerCodeForString("3gs6"), Util.getIntegerCodeForString("3ge6"), Util.getIntegerCodeForString("3gg6"), Util.getIntegerCodeForString("M4V "), Util.getIntegerCodeForString("M4A "), Util.getIntegerCodeForString("f4v "), Util.getIntegerCodeForString("kddi"), Util.getIntegerCodeForString("M4VP"), Util.getIntegerCodeForString("qt  "), Util.getIntegerCodeForString("MSNV")};
    private static final int SEARCH_LENGTH = 4096;

    public static boolean sniffFragmented(ExtractorInput extractorInput) {
        return sniffInternal(extractorInput, true);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) {
        return sniffInternal(extractorInput, false);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z) {
        long length = extractorInput.getLength();
        if (length == -1 || length > 4096) {
            length = 4096;
        }
        int i = (int) length;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (i2 < i) {
            int i3 = 8;
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int readInt = parsableByteArray.readInt();
            if (readUnsignedInt == 1) {
                i3 = 16;
                extractorInput.peekFully(parsableByteArray.data, 8, 8);
                readUnsignedInt = parsableByteArray.readUnsignedLongToLong();
            }
            if (readUnsignedInt < i3) {
                return false;
            }
            i2 += i3;
            if (readInt != Atom.TYPE_moov) {
                if (readInt != Atom.TYPE_moof && readInt != Atom.TYPE_mvex) {
                    if ((i2 + readUnsignedInt) - i3 >= i) {
                        break;
                    }
                    int i4 = (int) (readUnsignedInt - i3);
                    int i5 = i2 + i4;
                    if (readInt == Atom.TYPE_ftyp) {
                        if (i4 < 8) {
                            return false;
                        }
                        if (parsableByteArray.capacity() < i4) {
                            parsableByteArray.reset(new byte[i4], i4);
                        }
                        extractorInput.peekFully(parsableByteArray.data, 0, i4);
                        int i6 = i4 / 4;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= i6) {
                                break;
                            }
                            if (i7 == 1) {
                                parsableByteArray.skipBytes(4);
                            } else if (isCompatibleBrand(parsableByteArray.readInt())) {
                                z2 = true;
                                break;
                            }
                            i7++;
                        }
                        if (!z2) {
                            return false;
                        }
                    } else if (i4 != 0) {
                        extractorInput.advancePeekPosition(i4);
                    }
                    i2 = i5;
                } else {
                    z3 = true;
                    break;
                }
            }
        }
        return z2 && z == z3;
    }

    private static boolean isCompatibleBrand(int i) {
        if ((i >>> 8) == Util.getIntegerCodeForString("3gp")) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
