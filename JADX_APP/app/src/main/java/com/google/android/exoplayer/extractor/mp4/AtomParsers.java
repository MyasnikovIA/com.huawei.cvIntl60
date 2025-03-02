package com.google.android.exoplayer.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.GaplessInfo;
import com.google.android.exoplayer.extractor.mp4.Atom;
import com.google.android.exoplayer.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import com.google.android.exoplayer.util.Ac3Util;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class AtomParsers {

    private interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, boolean z) {
        long scaleLargeTimestamp;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int parseHdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (parseHdlr != Track.TYPE_soun && parseHdlr != Track.TYPE_vide && parseHdlr != Track.TYPE_text && parseHdlr != Track.TYPE_sbtl && parseHdlr != Track.TYPE_subt) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long j2 = j == -1 ? parseTkhd.duration : j;
        long parseMvhd = parseMvhd(leafAtom.data);
        if (j2 == -1) {
            scaleLargeTimestamp = -1;
        } else {
            scaleLargeTimestamp = Util.scaleLargeTimestamp(j2, C1167C.MICROS_PER_SECOND, parseMvhd);
        }
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> parseMdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData parseStsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, parseTkhd.f5937id, scaleLargeTimestamp, parseTkhd.rotationDegrees, (String) parseMdhd.second, z);
        Pair<long[], long[]> parseEdts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
        if (parseStsd.mediaFormat == null) {
            return null;
        }
        return new Track(parseTkhd.f5937id, parseHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, scaleLargeTimestamp, parseStsd.mediaFormat, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, (long[]) parseEdts.first, (long[]) parseEdts.second);
    }

    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom) {
        SampleSizeBox stz2SampleSizeBox;
        long[] jArr;
        int[] iArr;
        int i;
        long[] jArr2;
        int[] iArr2;
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        boolean z2 = false;
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            z2 = true;
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z2);
        parsableByteArray3.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt2 = parsableByteArray3.readUnsignedIntToInt();
        int readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            i8 = parsableByteArray5.readUnsignedIntToInt();
        }
        int i10 = -1;
        int i11 = 0;
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            i11 = parsableByteArray4.readUnsignedIntToInt();
            if (i11 > 0) {
                i10 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                parsableByteArray4 = null;
            }
        }
        int i12 = 0;
        if (!(stz2SampleSizeBox.isFixedSampleSize() && MimeTypes.AUDIO_RAW.equals(track.mediaFormat.mimeType) && readUnsignedIntToInt == 0 && i8 == 0 && i11 == 0)) {
            long[] jArr3 = new long[sampleCount];
            int[] iArr3 = new int[sampleCount];
            long[] jArr4 = new long[sampleCount];
            int[] iArr4 = new int[sampleCount];
            long j = 0;
            long j2 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = i11;
            int i16 = i10;
            while (i14 < sampleCount) {
                while (i13 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    j2 = chunkIterator.offset;
                    i13 = chunkIterator.numSamples;
                }
                if (parsableByteArray5 != null) {
                    i4 = i9;
                    i5 = i8;
                    while (i7 == 0 && i5 > 0) {
                        i7 = parsableByteArray5.readUnsignedIntToInt();
                        i4 = parsableByteArray5.readInt();
                        i5--;
                    }
                    i7--;
                } else {
                    i4 = i9;
                    i5 = i8;
                }
                jArr3[i14] = j2;
                iArr3[i14] = stz2SampleSizeBox.readNextSampleSize();
                if (iArr3[i14] > i12) {
                    i12 = iArr3[i14];
                }
                jArr4[i14] = i4 + j;
                iArr4[i14] = parsableByteArray4 == null ? 1 : 0;
                if (i14 == i16) {
                    iArr4[i14] = 1;
                    int i17 = i15 - 1;
                    if (i17 > 0) {
                        i15 = i17;
                        i16 = parsableByteArray4.readUnsignedIntToInt() - 1;
                    } else {
                        i15 = i17;
                    }
                }
                j += readUnsignedIntToInt3;
                int i18 = readUnsignedIntToInt2 - 1;
                if (i18 != 0 || readUnsignedIntToInt <= 0) {
                    i6 = i18;
                } else {
                    int readUnsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt();
                    readUnsignedIntToInt--;
                    readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
                    i6 = readUnsignedIntToInt4;
                }
                j2 += iArr3[i14];
                i13--;
                i14++;
                i9 = i4;
                i8 = i5;
                readUnsignedIntToInt2 = i6;
            }
            Assertions.checkArgument(i7 == 0);
            while (i8 > 0) {
                Assertions.checkArgument(parsableByteArray5.readUnsignedIntToInt() == 0);
                parsableByteArray5.readInt();
                i8--;
            }
            Assertions.checkArgument(i15 == 0);
            Assertions.checkArgument(readUnsignedIntToInt2 == 0);
            Assertions.checkArgument(i13 == 0);
            Assertions.checkArgument(readUnsignedIntToInt == 0);
            iArr2 = iArr4;
            jArr2 = jArr4;
            i = i12;
            iArr = iArr3;
            jArr = jArr3;
        } else {
            long[] jArr5 = new long[chunkIterator.length];
            int[] iArr5 = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                jArr5[chunkIterator.index] = chunkIterator.offset;
                iArr5[chunkIterator.index] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results rechunk = FixedSampleSizeRechunker.rechunk(stz2SampleSizeBox.readNextSampleSize(), jArr5, iArr5, readUnsignedIntToInt3);
            jArr = rechunk.offsets;
            iArr = rechunk.sizes;
            i = rechunk.maximumSize;
            jArr2 = rechunk.timestamps;
            iArr2 = rechunk.flags;
        }
        if (track.editListDurations == null) {
            Util.scaleLargeTimestampsInPlace(jArr2, C1167C.MICROS_PER_SECOND, track.timescale);
            return new TrackSampleTable(jArr, iArr, i, jArr2, iArr2);
        }
        if (track.editListDurations.length == 1 && track.editListDurations[0] == 0) {
            for (int i19 = 0; i19 < jArr2.length; i19++) {
                jArr2[i19] = Util.scaleLargeTimestamp(jArr2[i19] - track.editListMediaTimes[0], C1167C.MICROS_PER_SECOND, track.timescale);
            }
            return new TrackSampleTable(jArr, iArr, i, jArr2, iArr2);
        }
        int i20 = 0;
        int i21 = 0;
        boolean z3 = false;
        int i22 = 0;
        while (true) {
            z = z3;
            int i23 = i21;
            i2 = i20;
            if (i22 >= track.editListDurations.length) {
                break;
            }
            long j3 = track.editListMediaTimes[i22];
            if (j3 != -1) {
                long scaleLargeTimestamp = Util.scaleLargeTimestamp(track.editListDurations[i22], track.timescale, track.movieTimescale);
                int binarySearchCeil = Util.binarySearchCeil(jArr2, j3, true, true);
                i21 = Util.binarySearchCeil(jArr2, scaleLargeTimestamp + j3, true, false);
                i20 = i2 + (i21 - binarySearchCeil);
                z3 = (i23 != binarySearchCeil) | z;
            } else {
                z3 = z;
                i21 = i23;
                i20 = i2;
            }
            i22++;
        }
        boolean z4 = z | (i2 != sampleCount);
        long[] jArr6 = z4 ? new long[i2] : jArr;
        int[] iArr6 = z4 ? new int[i2] : iArr;
        if (z4) {
            i = 0;
        }
        int[] iArr7 = z4 ? new int[i2] : iArr2;
        long[] jArr7 = new long[i2];
        int i24 = 0;
        int i25 = 0;
        long j4 = 0;
        while (i24 < track.editListDurations.length) {
            long j5 = track.editListMediaTimes[i24];
            long j6 = track.editListDurations[i24];
            if (j5 != -1) {
                long scaleLargeTimestamp2 = j5 + Util.scaleLargeTimestamp(j6, track.timescale, track.movieTimescale);
                int binarySearchCeil2 = Util.binarySearchCeil(jArr2, j5, true, true);
                int binarySearchCeil3 = Util.binarySearchCeil(jArr2, scaleLargeTimestamp2, true, false);
                if (z4) {
                    int i26 = binarySearchCeil3 - binarySearchCeil2;
                    System.arraycopy(jArr, binarySearchCeil2, jArr6, i25, i26);
                    System.arraycopy(iArr, binarySearchCeil2, iArr6, i25, i26);
                    System.arraycopy(iArr2, binarySearchCeil2, iArr7, i25, i26);
                }
                int i27 = i25;
                for (int i28 = binarySearchCeil2; i28 < binarySearchCeil3; i28++) {
                    jArr7[i27] = Util.scaleLargeTimestamp(jArr2[i28] - j5, C1167C.MICROS_PER_SECOND, track.timescale) + Util.scaleLargeTimestamp(j4, C1167C.MICROS_PER_SECOND, track.movieTimescale);
                    if (z4 && iArr6[i27] > i) {
                        i = iArr[i28];
                    }
                    i27++;
                }
                i3 = i27;
            } else {
                i3 = i25;
            }
            i24++;
            i25 = i3;
            j4 = j6 + j4;
        }
        boolean z5 = false;
        for (int i29 = 0; i29 < iArr7.length && !z5; i29++) {
            z5 |= (iArr7[i29] & 1) != 0;
        }
        if (!z5) {
            throw new ParserException("The edited sample sequence does not contain a sync sample.");
        }
        return new TrackSampleTable(jArr6, iArr6, i, jArr7, iArr7);
    }

    public static GaplessInfo parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(parsableByteArray.getPosition() - 8);
                parsableByteArray.setLimit(parsableByteArray.getPosition() + readInt);
                return parseMetaAtom(parsableByteArray);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static GaplessInfo parseMetaAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(12);
        ParsableByteArray parsableByteArray2 = new ParsableByteArray();
        while (parsableByteArray.bytesLeft() >= 8) {
            int readInt = parsableByteArray.readInt() - 8;
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray2.reset(parsableByteArray.data, parsableByteArray.getPosition() + readInt);
                parsableByteArray2.setPosition(parsableByteArray.getPosition());
                GaplessInfo parseIlst = parseIlst(parsableByteArray2);
                if (parseIlst != null) {
                    return parseIlst;
                }
            }
            parsableByteArray.skipBytes(readInt);
        }
        return null;
    }

    private static GaplessInfo parseIlst(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_DASHES) {
                String str = null;
                String str2 = null;
                String str3 = null;
                while (parsableByteArray.getPosition() < position) {
                    int readInt = parsableByteArray.readInt() - 12;
                    int readInt2 = parsableByteArray.readInt();
                    parsableByteArray.skipBytes(4);
                    if (readInt2 == Atom.TYPE_mean) {
                        str3 = parsableByteArray.readString(readInt);
                    } else if (readInt2 == Atom.TYPE_name) {
                        str2 = parsableByteArray.readString(readInt);
                    } else if (readInt2 == Atom.TYPE_data) {
                        parsableByteArray.skipBytes(4);
                        str = parsableByteArray.readString(readInt - 4);
                    } else {
                        parsableByteArray.skipBytes(readInt);
                    }
                }
                if (str2 != null && str != null && "com.apple.iTunes".equals(str3)) {
                    return GaplessInfo.createFromComment(str2, str);
                }
            } else {
                parsableByteArray.setPosition(position);
            }
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long readUnsignedInt;
        int i;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        boolean z = true;
        int position = parsableByteArray.getPosition();
        int i2 = parseFullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            if (parsableByteArray.data[position + i3] != -1) {
                z = false;
                break;
            }
            i3++;
        }
        if (z) {
            parsableByteArray.skipBytes(i2);
            readUnsignedInt = -1;
        } else {
            readUnsignedInt = parseFullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (readUnsignedInt == 0) {
                readUnsignedInt = -1;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == (-65536) && readInt5 == 0) {
            i = 90;
        } else if (readInt2 == 0 && readInt3 == (-65536) && readInt4 == 65536 && readInt5 == 0) {
            i = 270;
        } else {
            i = (readInt2 == (-65536) && readInt3 == 0 && readInt4 == 0 && readInt5 == (-65536)) ? 180 : 0;
        }
        return new TkhdData(readInt, readUnsignedInt, i);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 4 : 8);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(readUnsignedInt), "" + ((char) (((readUnsignedShort >> 10) & 31) + 96)) + ((char) (((readUnsignedShort >> 5) & 31) + 96)) + ((char) ((readUnsignedShort & 31) + 96)));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, long j, int i2, String str, boolean z) {
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i3 = 0; i3 < readInt; i3++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            Assertions.checkArgument(readInt2 > 0, "childAtomSize should be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == Atom.TYPE_avc1 || readInt3 == Atom.TYPE_avc3 || readInt3 == Atom.TYPE_encv || readInt3 == Atom.TYPE_mp4v || readInt3 == Atom.TYPE_hvc1 || readInt3 == Atom.TYPE_hev1 || readInt3 == Atom.TYPE_s263 || readInt3 == Atom.TYPE_vp08 || readInt3 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, j, i2, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_mp4a || readInt3 == Atom.TYPE_enca || readInt3 == Atom.TYPE_ac_3 || readInt3 == Atom.TYPE_ec_3 || readInt3 == Atom.TYPE_dtsc || readInt3 == Atom.TYPE_dtse || readInt3 == Atom.TYPE_dtsh || readInt3 == Atom.TYPE_dtsl || readInt3 == Atom.TYPE_samr || readInt3 == Atom.TYPE_sawb || readInt3 == Atom.TYPE_lpcm || readInt3 == Atom.TYPE_sowt) {
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, j, str, z, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_TTML) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TTML, -1, j, str);
            } else if (readInt3 == Atom.TYPE_tx3g) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TX3G, -1, j, str);
            } else if (readInt3 == Atom.TYPE_wvtt) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_MP4VTT, -1, j, str);
            } else if (readInt3 == Atom.TYPE_stpp) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TTML, -1, j, str, 0L);
            }
            parsableByteArray.setPosition(position + readInt2);
        }
        return stsdData;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, long j, int i5, StsdData stsdData, int i6) {
        parsableByteArray.setPosition(i2 + 8);
        parsableByteArray.skipBytes(24);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        boolean z = false;
        float f = 1.0f;
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        if (i == Atom.TYPE_encv) {
            parseSampleEntryEncryptionData(parsableByteArray, i2, i3, stsdData, i6);
            parsableByteArray.setPosition(position);
        }
        List<byte[]> list = null;
        String str = null;
        byte[] bArr = null;
        int i7 = -1;
        while (true) {
            int i8 = position;
            if (i8 - i2 < i3) {
                parsableByteArray.setPosition(i8);
                int position2 = parsableByteArray.getPosition();
                int readInt = parsableByteArray.readInt();
                if (readInt != 0 || parsableByteArray.getPosition() - i2 != i3) {
                    Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
                    int readInt2 = parsableByteArray.readInt();
                    if (readInt2 == Atom.TYPE_avcC) {
                        Assertions.checkState(str == null);
                        str = MimeTypes.VIDEO_H264;
                        AvcCData parseAvcCFromParent = parseAvcCFromParent(parsableByteArray, position2);
                        list = parseAvcCFromParent.initializationData;
                        stsdData.nalUnitLengthFieldLength = parseAvcCFromParent.nalUnitLengthFieldLength;
                        if (!z) {
                            f = parseAvcCFromParent.pixelWidthAspectRatio;
                        }
                    } else if (readInt2 == Atom.TYPE_hvcC) {
                        Assertions.checkState(str == null);
                        Pair<List<byte[]>, Integer> parseHvcCFromParent = parseHvcCFromParent(parsableByteArray, position2);
                        List<byte[]> list2 = (List) parseHvcCFromParent.first;
                        stsdData.nalUnitLengthFieldLength = ((Integer) parseHvcCFromParent.second).intValue();
                        str = MimeTypes.VIDEO_H265;
                        list = list2;
                    } else if (readInt2 == Atom.TYPE_d263) {
                        Assertions.checkState(str == null);
                        str = MimeTypes.VIDEO_H263;
                    } else if (readInt2 == Atom.TYPE_esds) {
                        Assertions.checkState(str == null);
                        Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                        String str2 = (String) parseEsdsFromParent.first;
                        list = Collections.singletonList(parseEsdsFromParent.second);
                        str = str2;
                    } else if (readInt2 == Atom.TYPE_pasp) {
                        f = parsePaspFromParent(parsableByteArray, position2);
                        z = true;
                    } else if (readInt2 == Atom.TYPE_vpcC) {
                        Assertions.checkState(str == null);
                        str = i == Atom.TYPE_vp08 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                    } else if (readInt2 == Atom.TYPE_sv3d) {
                        bArr = parseProjFromParent(parsableByteArray, position2, readInt);
                    } else if (readInt2 == Atom.TYPE_st3d) {
                        int readUnsignedByte = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(3);
                        if (readUnsignedByte == 0) {
                            switch (parsableByteArray.readUnsignedByte()) {
                                case 0:
                                    i7 = 0;
                                    break;
                                case 1:
                                    i7 = 1;
                                    break;
                                case 2:
                                    i7 = 2;
                                    break;
                            }
                        }
                    }
                    position = i8 + readInt;
                }
            }
        }
        if (str != null) {
            stsdData.mediaFormat = MediaFormat.createVideoFormat(Integer.toString(i4), str, -1, -1, j, readUnsignedShort, readUnsignedShort2, list, i5, f, bArr, i7);
        }
    }

    private static AvcCData parseAvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        int readUnsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
        if (readUnsignedByte == 3) {
            throw new IllegalStateException();
        }
        ArrayList arrayList = new ArrayList();
        float f = 1.0f;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
        for (int i2 = 0; i2 < readUnsignedByte2; i2++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
        for (int i3 = 0; i3 < readUnsignedByte3; i3++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        if (readUnsignedByte2 > 0) {
            ParsableBitArray parsableBitArray = new ParsableBitArray((byte[]) arrayList.get(0));
            parsableBitArray.setPosition((readUnsignedByte + 1) * 8);
            f = NalUnitUtil.parseSpsNalUnit(parsableBitArray).pixelWidthAspectRatio;
        }
        return new AvcCData(arrayList, readUnsignedByte, f);
    }

    private static Pair<List<byte[]>, Integer> parseHvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 21);
        int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        int position = parsableByteArray.getPosition();
        int i2 = 0;
        int i3 = 0;
        while (i2 < readUnsignedByte2) {
            parsableByteArray.skipBytes(1);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            int i4 = i3;
            for (int i5 = 0; i5 < readUnsignedShort; i5++) {
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                i4 += readUnsignedShort2 + 4;
                parsableByteArray.skipBytes(readUnsignedShort2);
            }
            i2++;
            i3 = i4;
        }
        parsableByteArray.setPosition(position);
        byte[] bArr = new byte[i3];
        int i6 = 0;
        for (int i7 = 0; i7 < readUnsignedByte2; i7++) {
            parsableByteArray.skipBytes(1);
            int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
            for (int i8 = 0; i8 < readUnsignedShort3; i8++) {
                int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, bArr, i6, NalUnitUtil.NAL_START_CODE.length);
                int length = i6 + NalUnitUtil.NAL_START_CODE.length;
                System.arraycopy(parsableByteArray.data, parsableByteArray.getPosition(), bArr, length, readUnsignedShort4);
                i6 = length + readUnsignedShort4;
                parsableByteArray.skipBytes(readUnsignedShort4);
            }
        }
        return Pair.create(i3 == 0 ? null : Collections.singletonList(bArr), Integer.valueOf(readUnsignedByte + 1));
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            jArr[i] = parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = parseFullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, long j, String str, boolean z, StsdData stsdData, int i5) {
        int i6;
        int readUnsignedFixedPoint1616;
        int i7;
        byte[] bArr;
        parsableByteArray.setPosition(i2 + 8);
        if (z) {
            parsableByteArray.skipBytes(8);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            i6 = readUnsignedShort;
        } else {
            parsableByteArray.skipBytes(16);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            readUnsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (i6 == 1) {
                parsableByteArray.skipBytes(16);
                i7 = readUnsignedShort2;
            } else {
                i7 = readUnsignedShort2;
            }
        } else if (i6 == 2) {
            parsableByteArray.skipBytes(16);
            readUnsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            i7 = readUnsignedIntToInt;
        } else {
            return;
        }
        int position = parsableByteArray.getPosition();
        if (i == Atom.TYPE_enca) {
            i = parseSampleEntryEncryptionData(parsableByteArray, i2, i3, stsdData, i5);
            parsableByteArray.setPosition(position);
        }
        String str2 = null;
        if (i == Atom.TYPE_ac_3) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (i == Atom.TYPE_ec_3) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (i == Atom.TYPE_dtsc) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (i == Atom.TYPE_dtsh || i == Atom.TYPE_dtsl) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (i == Atom.TYPE_dtse) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (i == Atom.TYPE_samr) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else if (i == Atom.TYPE_sawb) {
            str2 = MimeTypes.AUDIO_AMR_WB;
        } else if (i == Atom.TYPE_lpcm || i == Atom.TYPE_sowt) {
            str2 = MimeTypes.AUDIO_RAW;
        }
        byte[] bArr2 = null;
        int i8 = readUnsignedFixedPoint1616;
        int i9 = i7;
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_esds || (z && readInt2 == Atom.TYPE_wave)) {
                int findEsdsPosition = readInt2 == Atom.TYPE_esds ? position : findEsdsPosition(parsableByteArray, position, readInt);
                if (findEsdsPosition != -1) {
                    Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, findEsdsPosition);
                    str2 = (String) parseEsdsFromParent.first;
                    bArr = (byte[]) parseEsdsFromParent.second;
                    if (MimeTypes.AUDIO_AAC.equals(str2)) {
                        Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr);
                        i8 = ((Integer) parseAacAudioSpecificConfig.first).intValue();
                        i9 = ((Integer) parseAacAudioSpecificConfig.second).intValue();
                    }
                } else {
                    bArr = bArr2;
                }
                bArr2 = bArr;
            } else if (readInt2 == Atom.TYPE_dac3) {
                parsableByteArray.setPosition(position + 8);
                stsdData.mediaFormat = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), j, str);
            } else if (readInt2 == Atom.TYPE_dec3) {
                parsableByteArray.setPosition(position + 8);
                stsdData.mediaFormat = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), j, str);
            } else if (readInt2 == Atom.TYPE_ddts) {
                stsdData.mediaFormat = MediaFormat.createAudioFormat(Integer.toString(i4), str2, -1, -1, j, i9, i8, null, str);
            }
            position += readInt;
        }
        if (stsdData.mediaFormat == null && str2 != null) {
            stsdData.mediaFormat = MediaFormat.createAudioFormat(Integer.toString(i4), str2, -1, -1, j, i9, i8, bArr2 == null ? null : Collections.singletonList(bArr2), str, MimeTypes.AUDIO_RAW.equals(str2) ? 2 : -1);
        }
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        String str = null;
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        switch (parsableByteArray.readUnsignedByte()) {
            case 32:
                str = MimeTypes.VIDEO_MP4V;
                break;
            case 33:
                str = MimeTypes.VIDEO_H264;
                break;
            case 35:
                str = MimeTypes.VIDEO_H265;
                break;
            case 64:
            case 102:
            case 103:
            case 104:
                str = MimeTypes.AUDIO_AAC;
                break;
            case 107:
                return Pair.create(MimeTypes.AUDIO_MPEG, null);
            case 165:
                str = MimeTypes.AUDIO_AC3;
                break;
            case 166:
                str = MimeTypes.AUDIO_E_AC3;
                break;
            case 169:
            case 172:
                return Pair.create(MimeTypes.AUDIO_DTS, null);
            case 170:
            case 171:
                return Pair.create(MimeTypes.AUDIO_DTS_HD, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int parseExpandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[parseExpandableClassSize];
        parsableByteArray.readBytes(bArr, 0, parseExpandableClassSize);
        return Pair.create(str, bArr);
    }

    private static int parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2, StsdData stsdData, int i3) {
        int position = parsableByteArray.getPosition();
        while (true) {
            int i4 = position;
            if (i4 - i >= i2) {
                return 0;
            }
            parsableByteArray.setPosition(i4);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf) {
                Pair<Integer, TrackEncryptionBox> parseSinfFromParent = parseSinfFromParent(parsableByteArray, i4, readInt);
                Integer num = (Integer) parseSinfFromParent.first;
                Assertions.checkArgument(num != null, "frma atom is mandatory");
                stsdData.trackEncryptionBoxes[i3] = (TrackEncryptionBox) parseSinfFromParent.second;
                return num.intValue();
            }
            position = i4 + readInt;
        }
    }

    private static Pair<Integer, TrackEncryptionBox> parseSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        Integer num = null;
        TrackEncryptionBox trackEncryptionBox = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_frma) {
                num = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                parsableByteArray.readInt();
                parsableByteArray.readInt();
            } else if (readInt2 == Atom.TYPE_schi) {
                trackEncryptionBox = parseSchiFromParent(parsableByteArray, i3, readInt);
            }
            i3 = readInt + i3;
        }
        return Pair.create(num, trackEncryptionBox);
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                parsableByteArray.skipBytes(6);
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                byte[] bArr = new byte[16];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                return new TrackEncryptionBox(z, readUnsignedByte, bArr);
            }
            i3 += readInt;
        }
        return null;
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                return Arrays.copyOfRange(parsableByteArray.data, i3, readInt + i3);
            }
            i3 += readInt;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    private AtomParsers() {
    }

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private static final class TkhdData {
        private final long duration;

        /* renamed from: id */
        private final int f5937id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.f5937id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private static final class StsdData {
        public MediaFormat mediaFormat;
        public int nalUnitLengthFieldLength = -1;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    private static final class AvcCData {
        public final List<byte[]> initializationData;
        public final int nalUnitLengthFieldLength;
        public final float pixelWidthAspectRatio;

        public AvcCData(List<byte[]> list, int i, float f) {
            this.initializationData = list;
            this.nalUnitLengthFieldLength = i;
            this.pixelWidthAspectRatio = f;
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fixedSampleSize = this.data.readUnsignedIntToInt();
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            return this.fixedSampleSize == 0 ? this.data.readUnsignedIntToInt() : this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            if (this.fieldSize == 8) {
                return this.data.readUnsignedByte();
            }
            if (this.fieldSize == 16) {
                return this.data.readUnsignedShort();
            }
            int i = this.sampleIndex;
            this.sampleIndex = i + 1;
            if (i % 2 == 0) {
                this.currentByte = this.data.readUnsignedByte();
                return (this.currentByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
            }
            return this.currentByte & 15;
        }

        @Override // com.google.android.exoplayer.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return false;
        }
    }
}
