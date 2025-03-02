package com.google.android.exoplayer.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.ChunkIndex;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.extractor.mp4.Atom;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.util.Arrays;
import java.util.List;
import java.util.Stack;

/* loaded from: classes.dex */
public class FragmentedMp4Extractor implements Extractor {
    private static final int FLAG_SIDELOADED = 4;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    private static final String TAG = "FragmentedMp4Extractor";
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final Stack<Atom.ContainerAtom> containerAtoms;
    private TrackBundle currentTrackBundle;
    private final ParsableByteArray encryptionSignalByte;
    private long endOfMdatPosition;
    private final byte[] extendedTypeScratch;
    private ExtractorOutput extractorOutput;
    private final int flags;
    private boolean haveOutputSeekMap;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private final Track sideloadedTrack;
    private final SparseArray<TrackBundle> trackBundles;
    private static final int SAMPLE_GROUP_TYPE_seig = Util.getIntegerCodeForString("seig");
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, ClosedCaptionCtrl.MISC_CHAN_1, -94, 68, 108, 66, 124, 100, -115, -12};

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int i) {
        this(i, null);
    }

    public FragmentedMp4Extractor(int i, Track track) {
        this.sideloadedTrack = track;
        this.flags = (track != null ? 4 : 0) | i;
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.encryptionSignalByte = new ParsableByteArray(1);
        this.extendedTypeScratch = new byte[16];
        this.containerAtoms = new Stack<>();
        this.trackBundles = new SparseArray<>();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public final boolean sniff(ExtractorInput extractorInput) {
        return Sniffer.sniffFragmented(extractorInput);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public final void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        if (this.sideloadedTrack != null) {
            TrackBundle trackBundle = new TrackBundle(extractorOutput.track(0));
            trackBundle.init(this.sideloadedTrack, new DefaultSampleValues(0, 0, 0, 0));
            this.trackBundles.put(0, trackBundle);
            this.extractorOutput.endTracks();
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public final void seek() {
        int size = this.trackBundles.size();
        for (int i = 0; i < size; i++) {
            this.trackBundles.valueAt(i).reset();
        }
        this.containerAtoms.clear();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public final void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        while (true) {
            switch (this.parserState) {
                case 0:
                    if (!readAtomHeader(extractorInput)) {
                        return -1;
                    }
                    break;
                case 1:
                    readAtomPayload(extractorInput);
                    break;
                case 2:
                    readEncryptionData(extractorInput);
                    break;
                default:
                    if (!readSample(extractorInput)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) {
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.data, 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        if (this.atomSize == 1) {
            extractorInput.readFully(this.atomHeader.data, 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        }
        long position = extractorInput.getPosition() - this.atomHeaderBytesRead;
        if (this.atomType == Atom.TYPE_moof) {
            int size = this.trackBundles.size();
            for (int i = 0; i < size; i++) {
                TrackFragment trackFragment = this.trackBundles.valueAt(i).fragment;
                trackFragment.auxiliaryDataPosition = position;
                trackFragment.dataPosition = position;
            }
        }
        if (this.atomType == Atom.TYPE_mdat) {
            this.currentTrackBundle = null;
            this.endOfMdatPosition = this.atomSize + position;
            if (!this.haveOutputSeekMap) {
                this.extractorOutput.seekMap(SeekMap.UNSEEKABLE);
                this.haveOutputSeekMap = true;
            }
            this.parserState = 2;
            return true;
        }
        if (shouldParseContainerAtom(this.atomType)) {
            long position2 = (extractorInput.getPosition() + this.atomSize) - 8;
            this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, position2));
            if (this.atomSize == this.atomHeaderBytesRead) {
                processAtomEnded(position2);
            } else {
                enterReadingAtomHeaderState();
            }
        } else if (shouldParseLeafAtom(this.atomType)) {
            if (this.atomHeaderBytesRead != 8) {
                throw new ParserException("Leaf atom defines extended atom size (unsupported).");
            }
            if (this.atomSize > 2147483647L) {
                throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
            }
            this.atomData = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.data, 0, this.atomData.data, 0, 8);
            this.parserState = 1;
        } else {
            if (this.atomSize > 2147483647L) {
                throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private void readAtomPayload(ExtractorInput extractorInput) {
        int i = ((int) this.atomSize) - this.atomHeaderBytesRead;
        if (this.atomData != null) {
            extractorInput.readFully(this.atomData.data, 8, i);
            onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i);
        }
        processAtomEnded(extractorInput.getPosition());
    }

    private void processAtomEnded(long j) {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    private void onLeafAtomRead(Atom.LeafAtom leafAtom, long j) {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
            return;
        }
        if (leafAtom.type == Atom.TYPE_sidx) {
            this.extractorOutput.seekMap(parseSidx(leafAtom.data, j));
            this.haveOutputSeekMap = true;
        } else if (leafAtom.type == Atom.TYPE_emsg) {
            parseEmsg(leafAtom.data, j);
        }
    }

    private void onContainerAtomRead(Atom.ContainerAtom containerAtom) {
        if (containerAtom.type == Atom.TYPE_moov) {
            onMoovContainerAtomRead(containerAtom);
        } else if (containerAtom.type == Atom.TYPE_moof) {
            onMoofContainerAtomRead(containerAtom);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(containerAtom);
        }
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom containerAtom) {
        Track parseTrak;
        Assertions.checkState(this.sideloadedTrack == null, "Unexpected moov box.");
        DrmInitData.Mapped drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        if (drmInitDataFromAtoms != null) {
            this.extractorOutput.drmInitData(drmInitDataFromAtoms);
        }
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mvex);
        SparseArray sparseArray = new SparseArray();
        long j = -1;
        int size = containerAtomOfType.leafChildren.size();
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = containerAtomOfType.leafChildren.get(i);
            if (leafAtom.type == Atom.TYPE_trex) {
                Pair<Integer, DefaultSampleValues> parseTrex = parseTrex(leafAtom.data);
                sparseArray.put(((Integer) parseTrex.first).intValue(), parseTrex.second);
            } else if (leafAtom.type == Atom.TYPE_mehd) {
                j = parseMehd(leafAtom.data);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = containerAtom.containerChildren.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == Atom.TYPE_trak && (parseTrak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), j, false)) != null) {
                sparseArray2.put(parseTrak.f5938id, parseTrak);
            }
        }
        int size3 = sparseArray2.size();
        if (this.trackBundles.size() == 0) {
            for (int i3 = 0; i3 < size3; i3++) {
                this.trackBundles.put(((Track) sparseArray2.valueAt(i3)).f5938id, new TrackBundle(this.extractorOutput.track(i3)));
            }
            this.extractorOutput.endTracks();
        } else {
            Assertions.checkState(this.trackBundles.size() == size3);
        }
        for (int i4 = 0; i4 < size3; i4++) {
            Track track = (Track) sparseArray2.valueAt(i4);
            this.trackBundles.get(track.f5938id).init(track, (DefaultSampleValues) sparseArray.get(track.f5938id));
        }
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom containerAtom) {
        parseMoof(containerAtom, this.trackBundles, this.flags, this.extendedTypeScratch);
        DrmInitData.Mapped drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        if (drmInitDataFromAtoms != null) {
            this.extractorOutput.drmInitData(drmInitDataFromAtoms);
        }
    }

    private static Pair<Integer, DefaultSampleValues> parseTrex(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return Pair.create(Integer.valueOf(parsableByteArray.readInt()), new DefaultSampleValues(parsableByteArray.readUnsignedIntToInt() - 1, parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readInt()));
    }

    private static long parseMehd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
    }

    private static void parseMoof(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i, byte[] bArr) {
        int size = containerAtom.containerChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == Atom.TYPE_traf) {
                parseTraf(containerAtom2, sparseArray, i, bArr);
            }
        }
    }

    private static void parseTraf(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i, byte[] bArr) {
        if (containerAtom.getChildAtomOfTypeCount(Atom.TYPE_trun) != 1) {
            throw new ParserException("Trun count in traf != 1 (unsupported).");
        }
        TrackBundle parseTfhd = parseTfhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tfhd).data, sparseArray, i);
        if (parseTfhd != null) {
            TrackFragment trackFragment = parseTfhd.fragment;
            long j = trackFragment.nextFragmentDecodeTime;
            parseTfhd.reset();
            if (containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt) != null && (i & 2) == 0) {
                j = parseTfdt(containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt).data);
            }
            parseTrun(parseTfhd, j, i, containerAtom.getLeafAtomOfType(Atom.TYPE_trun).data);
            Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_saiz);
            if (leafAtomOfType != null) {
                parseSaiz(parseTfhd.track.sampleDescriptionEncryptionBoxes[trackFragment.header.sampleDescriptionIndex], leafAtomOfType.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_saio);
            if (leafAtomOfType2 != null) {
                parseSaio(leafAtomOfType2.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_senc);
            if (leafAtomOfType3 != null) {
                parseSenc(leafAtomOfType3.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_sbgp);
            Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_sgpd);
            if (leafAtomOfType4 != null && leafAtomOfType5 != null) {
                parseSgpd(leafAtomOfType4.data, leafAtomOfType5.data, trackFragment);
            }
            int size = containerAtom.leafChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i2);
                if (leafAtom.type == Atom.TYPE_uuid) {
                    parseUuid(leafAtom.data, trackFragment, bArr);
                }
            }
        }
    }

    private static void parseSaiz(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        int i;
        int i2 = trackEncryptionBox.initializationVectorSize;
        parsableByteArray.setPosition(8);
        if ((Atom.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt != trackFragment.length) {
            throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.length);
        }
        if (readUnsignedByte == 0) {
            boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
            int i3 = 0;
            i = 0;
            while (i3 < readUnsignedIntToInt) {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                int i4 = i + readUnsignedByte2;
                zArr[i3] = readUnsignedByte2 > i2;
                i3++;
                i = i4;
            }
        } else {
            boolean z = readUnsignedByte > i2;
            i = (readUnsignedByte * readUnsignedIntToInt) + 0;
            Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
        }
        trackFragment.initEncryptionData(i);
    }

    private static void parseSaio(ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if ((Atom.parseFullAtomFlags(readInt) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt != 1) {
            throw new ParserException("Unexpected saio entry count: " + readUnsignedIntToInt);
        }
        trackFragment.auxiliaryDataPosition = (Atom.parseFullAtomVersion(readInt) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong()) + trackFragment.auxiliaryDataPosition;
    }

    private static TrackBundle parseTfhd(ParsableByteArray parsableByteArray, SparseArray<TrackBundle> sparseArray, int i) {
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        int readInt = parsableByteArray.readInt();
        if ((i & 4) != 0) {
            readInt = 0;
        }
        TrackBundle trackBundle = sparseArray.get(readInt);
        if (trackBundle == null) {
            return null;
        }
        if ((parseFullAtomFlags & 1) != 0) {
            long readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            trackBundle.fragment.dataPosition = readUnsignedLongToLong;
            trackBundle.fragment.auxiliaryDataPosition = readUnsignedLongToLong;
        }
        DefaultSampleValues defaultSampleValues = trackBundle.defaultSampleValues;
        trackBundle.fragment.header = new DefaultSampleValues((parseFullAtomFlags & 2) != 0 ? parsableByteArray.readUnsignedIntToInt() - 1 : defaultSampleValues.sampleDescriptionIndex, (parseFullAtomFlags & 8) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration, (parseFullAtomFlags & 16) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size, (parseFullAtomFlags & 32) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.flags);
        return trackBundle;
    }

    private static long parseTfdt(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    private static void parseTrun(TrackBundle trackBundle, long j, int i, ParsableByteArray parsableByteArray) {
        long j2;
        int readInt;
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        Track track = trackBundle.track;
        TrackFragment trackFragment = trackBundle.fragment;
        DefaultSampleValues defaultSampleValues = trackFragment.header;
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if ((parseFullAtomFlags & 1) != 0) {
            trackFragment.dataPosition += parsableByteArray.readInt();
        }
        boolean z = (parseFullAtomFlags & 4) != 0;
        int i2 = defaultSampleValues.flags;
        if (z) {
            i2 = parsableByteArray.readUnsignedIntToInt();
        }
        boolean z2 = (parseFullAtomFlags & 256) != 0;
        boolean z3 = (parseFullAtomFlags & 512) != 0;
        boolean z4 = (parseFullAtomFlags & 1024) != 0;
        boolean z5 = (parseFullAtomFlags & 2048) != 0;
        if (track.editListDurations == null || track.editListDurations.length != 1 || track.editListDurations[0] != 0) {
            j2 = 0;
        } else {
            j2 = Util.scaleLargeTimestamp(track.editListMediaTimes[0], 1000L, track.timescale);
        }
        trackFragment.initTables(readUnsignedIntToInt);
        int[] iArr = trackFragment.sampleSizeTable;
        int[] iArr2 = trackFragment.sampleCompositionTimeOffsetTable;
        long[] jArr = trackFragment.sampleDecodingTimeTable;
        boolean[] zArr = trackFragment.sampleIsSyncFrameTable;
        long j3 = track.timescale;
        boolean z6 = track.type == Track.TYPE_vide && (i & 1) != 0;
        int i3 = 0;
        long j4 = j;
        while (i3 < readUnsignedIntToInt) {
            int readUnsignedIntToInt2 = z2 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration;
            int readUnsignedIntToInt3 = z3 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size;
            if (i3 == 0 && z) {
                readInt = i2;
            } else {
                readInt = z4 ? parsableByteArray.readInt() : defaultSampleValues.flags;
            }
            if (z5) {
                iArr2[i3] = (int) ((parsableByteArray.readInt() * 1000) / j3);
            } else {
                iArr2[i3] = 0;
            }
            jArr[i3] = Util.scaleLargeTimestamp(j4, 1000L, j3) - j2;
            iArr[i3] = readUnsignedIntToInt3;
            zArr[i3] = ((readInt >> 16) & 1) == 0 && (!z6 || i3 == 0);
            j4 += readUnsignedIntToInt2;
            i3++;
        }
        trackFragment.nextFragmentDecodeTime = j4;
    }

    private static void parseUuid(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(parsableByteArray, 16, trackFragment);
        }
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, int i, TrackFragment trackFragment) {
        parsableByteArray.setPosition(i + 8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if ((parseFullAtomFlags & 1) != 0) {
            throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (parseFullAtomFlags & 2) != 0;
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt != trackFragment.length) {
            throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.length);
        }
        Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
        trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
        trackFragment.fillEncryptionData(parsableByteArray);
    }

    private static void parseSgpd(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, TrackFragment trackFragment) {
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == SAMPLE_GROUP_TYPE_seig) {
            if (Atom.parseFullAtomVersion(readInt) == 1) {
                parsableByteArray.skipBytes(4);
            }
            if (parsableByteArray.readInt() != 1) {
                throw new ParserException("Entry count in sbgp != 1 (unsupported).");
            }
            parsableByteArray2.setPosition(8);
            int readInt2 = parsableByteArray2.readInt();
            if (parsableByteArray2.readInt() == SAMPLE_GROUP_TYPE_seig) {
                int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt2);
                if (parseFullAtomVersion == 1) {
                    if (parsableByteArray2.readUnsignedInt() == 0) {
                        throw new ParserException("Variable length decription in sgpd found (unsupported)");
                    }
                } else if (parseFullAtomVersion >= 2) {
                    parsableByteArray2.skipBytes(4);
                }
                if (parsableByteArray2.readUnsignedInt() != 1) {
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                parsableByteArray2.skipBytes(2);
                boolean z = parsableByteArray2.readUnsignedByte() == 1;
                if (z) {
                    int readUnsignedByte = parsableByteArray2.readUnsignedByte();
                    byte[] bArr = new byte[16];
                    parsableByteArray2.readBytes(bArr, 0, bArr.length);
                    trackFragment.definesEncryptionData = true;
                    trackFragment.trackEncryptionBox = new TrackEncryptionBox(z, readUnsignedByte, bArr);
                }
            }
        }
    }

    protected void parseEmsg(ParsableByteArray parsableByteArray, long j) {
    }

    private static ChunkIndex parseSidx(ParsableByteArray parsableByteArray, long j) {
        long readUnsignedLongToLong;
        long readUnsignedLongToLong2;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedInt() + j;
        } else {
            readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong() + j;
        }
        parsableByteArray.skipBytes(2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[readUnsignedShort];
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        long[] jArr3 = new long[readUnsignedShort];
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedLongToLong, C1167C.MICROS_PER_SECOND, readUnsignedInt);
        int i = 0;
        long j2 = readUnsignedLongToLong2;
        while (i < readUnsignedShort) {
            int readInt = parsableByteArray.readInt();
            if ((Integer.MIN_VALUE & readInt) != 0) {
                throw new ParserException("Unhandled indirect reference");
            }
            long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
            iArr[i] = readInt & Integer.MAX_VALUE;
            jArr[i] = j2;
            jArr3[i] = scaleLargeTimestamp;
            readUnsignedLongToLong += readUnsignedInt2;
            long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(readUnsignedLongToLong, C1167C.MICROS_PER_SECOND, readUnsignedInt);
            jArr2[i] = scaleLargeTimestamp2 - jArr3[i];
            parsableByteArray.skipBytes(4);
            j2 += iArr[i];
            i++;
            scaleLargeTimestamp = scaleLargeTimestamp2;
        }
        return new ChunkIndex(iArr, jArr, jArr2, jArr3);
    }

    private void readEncryptionData(ExtractorInput extractorInput) {
        TrackBundle trackBundle;
        TrackBundle trackBundle2 = null;
        long j = Long.MAX_VALUE;
        int size = this.trackBundles.size();
        int i = 0;
        while (i < size) {
            TrackFragment trackFragment = this.trackBundles.valueAt(i).fragment;
            if (!trackFragment.sampleEncryptionDataNeedsFill || trackFragment.auxiliaryDataPosition >= j) {
                trackBundle = trackBundle2;
            } else {
                j = trackFragment.auxiliaryDataPosition;
                trackBundle = this.trackBundles.valueAt(i);
            }
            i++;
            trackBundle2 = trackBundle;
        }
        if (trackBundle2 == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j - extractorInput.getPosition());
        if (position < 0) {
            throw new ParserException("Offset to encryption data was negative.");
        }
        extractorInput.skipFully(position);
        trackBundle2.fragment.fillEncryptionData(extractorInput);
    }

    private boolean readSample(ExtractorInput extractorInput) {
        if (this.parserState == 3) {
            if (this.currentTrackBundle == null) {
                this.currentTrackBundle = getNextFragmentRun(this.trackBundles);
                if (this.currentTrackBundle == null) {
                    int position = (int) (this.endOfMdatPosition - extractorInput.getPosition());
                    if (position < 0) {
                        throw new ParserException("Offset to end of mdat was negative.");
                    }
                    extractorInput.skipFully(position);
                    enterReadingAtomHeaderState();
                    return false;
                }
                int position2 = (int) (this.currentTrackBundle.fragment.dataPosition - extractorInput.getPosition());
                if (position2 < 0) {
                    throw new ParserException("Offset to sample data was negative.");
                }
                extractorInput.skipFully(position2);
            }
            this.sampleSize = this.currentTrackBundle.fragment.sampleSizeTable[this.currentTrackBundle.currentSampleIndex];
            if (this.currentTrackBundle.fragment.definesEncryptionData) {
                this.sampleBytesWritten = appendSampleEncryptionData(this.currentTrackBundle);
                this.sampleSize += this.sampleBytesWritten;
            } else {
                this.sampleBytesWritten = 0;
            }
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        TrackFragment trackFragment = this.currentTrackBundle.fragment;
        Track track = this.currentTrackBundle.track;
        TrackOutput trackOutput = this.currentTrackBundle.output;
        int i = this.currentTrackBundle.currentSampleIndex;
        if (track.nalUnitLengthFieldLength != -1) {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i2 = track.nalUnitLengthFieldLength;
            int i3 = 4 - track.nalUnitLengthFieldLength;
            while (this.sampleBytesWritten < this.sampleSize) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    extractorInput.readFully(this.nalLength.data, i3, i2);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    this.sampleSize += i3;
                } else {
                    int sampleData = trackOutput.sampleData(extractorInput, this.sampleCurrentNalBytesRemaining, false);
                    this.sampleBytesWritten += sampleData;
                    this.sampleCurrentNalBytesRemaining -= sampleData;
                }
            }
        } else {
            while (this.sampleBytesWritten < this.sampleSize) {
                this.sampleBytesWritten = trackOutput.sampleData(extractorInput, this.sampleSize - this.sampleBytesWritten, false) + this.sampleBytesWritten;
            }
        }
        long samplePresentationTime = trackFragment.getSamplePresentationTime(i) * 1000;
        int i4 = (trackFragment.sampleIsSyncFrameTable[i] ? 1 : 0) | (trackFragment.definesEncryptionData ? 2 : 0);
        int i5 = trackFragment.header.sampleDescriptionIndex;
        byte[] bArr2 = null;
        if (trackFragment.definesEncryptionData) {
            bArr2 = trackFragment.trackEncryptionBox != null ? trackFragment.trackEncryptionBox.keyId : track.sampleDescriptionEncryptionBoxes[i5].keyId;
        }
        trackOutput.sampleMetadata(samplePresentationTime, i4, this.sampleSize, 0, bArr2);
        this.currentTrackBundle.currentSampleIndex++;
        if (this.currentTrackBundle.currentSampleIndex == trackFragment.length) {
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    private static TrackBundle getNextFragmentRun(SparseArray<TrackBundle> sparseArray) {
        TrackBundle trackBundle = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        int i = 0;
        while (i < size) {
            TrackBundle valueAt = sparseArray.valueAt(i);
            if (valueAt.currentSampleIndex == valueAt.fragment.length) {
                valueAt = trackBundle;
            } else {
                long j2 = valueAt.fragment.dataPosition;
                if (j2 < j) {
                    j = j2;
                } else {
                    valueAt = trackBundle;
                }
            }
            i++;
            trackBundle = valueAt;
        }
        return trackBundle;
    }

    private int appendSampleEncryptionData(TrackBundle trackBundle) {
        TrackFragment trackFragment = trackBundle.fragment;
        ParsableByteArray parsableByteArray = trackFragment.sampleEncryptionData;
        int i = (trackFragment.trackEncryptionBox != null ? trackFragment.trackEncryptionBox : trackBundle.track.sampleDescriptionEncryptionBoxes[trackFragment.header.sampleDescriptionIndex]).initializationVectorSize;
        boolean z = trackFragment.sampleHasSubsampleEncryptionTable[trackBundle.currentSampleIndex];
        this.encryptionSignalByte.data[0] = (byte) ((z ? 128 : 0) | i);
        this.encryptionSignalByte.setPosition(0);
        TrackOutput trackOutput = trackBundle.output;
        trackOutput.sampleData(this.encryptionSignalByte, 1);
        trackOutput.sampleData(parsableByteArray, i);
        if (!z) {
            return i + 1;
        }
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(-2);
        int i2 = (readUnsignedShort * 6) + 2;
        trackOutput.sampleData(parsableByteArray, i2);
        return i + 1 + i2;
    }

    private static DrmInitData.Mapped getDrmInitDataFromAtoms(List<Atom.LeafAtom> list) {
        DrmInitData.Mapped mapped = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = list.get(i);
            if (leafAtom.type == Atom.TYPE_pssh) {
                if (mapped == null) {
                    mapped = new DrmInitData.Mapped();
                }
                byte[] bArr = leafAtom.data.data;
                if (PsshAtomUtil.parseUuid(bArr) == null) {
                    Log.w(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    mapped.put(PsshAtomUtil.parseUuid(bArr), new DrmInitData.SchemeInitData(MimeTypes.VIDEO_MP4, bArr));
                }
            }
        }
        return mapped;
    }

    private static boolean shouldParseLeafAtom(int i) {
        return i == Atom.TYPE_hdlr || i == Atom.TYPE_mdhd || i == Atom.TYPE_mvhd || i == Atom.TYPE_sidx || i == Atom.TYPE_stsd || i == Atom.TYPE_tfdt || i == Atom.TYPE_tfhd || i == Atom.TYPE_tkhd || i == Atom.TYPE_trex || i == Atom.TYPE_trun || i == Atom.TYPE_pssh || i == Atom.TYPE_saiz || i == Atom.TYPE_saio || i == Atom.TYPE_senc || i == Atom.TYPE_sbgp || i == Atom.TYPE_sgpd || i == Atom.TYPE_uuid || i == Atom.TYPE_elst || i == Atom.TYPE_mehd || i == Atom.TYPE_emsg;
    }

    private static boolean shouldParseContainerAtom(int i) {
        return i == Atom.TYPE_moov || i == Atom.TYPE_trak || i == Atom.TYPE_mdia || i == Atom.TYPE_minf || i == Atom.TYPE_stbl || i == Atom.TYPE_moof || i == Atom.TYPE_traf || i == Atom.TYPE_mvex || i == Atom.TYPE_edts;
    }

    private static final class TrackBundle {
        public int currentSampleIndex;
        public DefaultSampleValues defaultSampleValues;
        public final TrackFragment fragment = new TrackFragment();
        public final TrackOutput output;
        public Track track;

        public TrackBundle(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        public void init(Track track, DefaultSampleValues defaultSampleValues) {
            this.track = (Track) Assertions.checkNotNull(track);
            this.defaultSampleValues = (DefaultSampleValues) Assertions.checkNotNull(defaultSampleValues);
            this.output.format(track.mediaFormat);
            reset();
        }

        public void reset() {
            this.fragment.reset();
            this.currentSampleIndex = 0;
        }
    }
}
