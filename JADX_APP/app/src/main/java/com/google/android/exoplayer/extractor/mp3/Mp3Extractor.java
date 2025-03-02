package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.GaplessInfo;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.EOFException;

/* loaded from: classes.dex */
public final class Mp3Extractor implements Extractor {
    private static final int HEADER_MASK = -128000;
    private static final int MAX_SNIFF_BYTES = 4096;
    private static final int MAX_SYNC_BYTES = 131072;
    private long basisTimeUs;
    private ExtractorOutput extractorOutput;
    private final long forcedFirstSampleTimestampUs;
    private GaplessInfo gaplessInfo;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final ParsableByteArray scratch;
    private Seeker seeker;
    private final MpegAudioHeader synchronizedHeader;
    private int synchronizedHeaderData;
    private TrackOutput trackOutput;
    private static final int XING_HEADER = Util.getIntegerCodeForString("Xing");
    private static final int INFO_HEADER = Util.getIntegerCodeForString("Info");
    private static final int VBRI_HEADER = Util.getIntegerCodeForString("VBRI");

    interface Seeker extends SeekMap {
        long getDurationUs();

        long getTimeUs(long j);
    }

    public Mp3Extractor() {
        this(-1L);
    }

    public Mp3Extractor(long j) {
        this.forcedFirstSampleTimestampUs = j;
        this.scratch = new ParsableByteArray(4);
        this.synchronizedHeader = new MpegAudioHeader();
        this.basisTimeUs = -1L;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return synchronize(extractorInput, true);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.synchronizedHeaderData = 0;
        this.samplesRead = 0L;
        this.basisTimeUs = -1L;
        this.sampleBytesRemaining = 0;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        if (this.synchronizedHeaderData == 0 && !synchronizeCatchingEndOfInput(extractorInput)) {
            return -1;
        }
        if (this.seeker == null) {
            setupSeeker(extractorInput);
            this.extractorOutput.seekMap(this.seeker);
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat(null, this.synchronizedHeader.mimeType, -1, 4096, this.seeker.getDurationUs(), this.synchronizedHeader.channels, this.synchronizedHeader.sampleRate, null, null);
            if (this.gaplessInfo != null) {
                createAudioFormat = createAudioFormat.copyWithGaplessInfo(this.gaplessInfo.encoderDelay, this.gaplessInfo.encoderPadding);
            }
            this.trackOutput.format(createAudioFormat);
        }
        return readSample(extractorInput);
    }

    private int readSample(ExtractorInput extractorInput) {
        if (this.sampleBytesRemaining == 0) {
            if (!maybeResynchronize(extractorInput)) {
                return -1;
            }
            if (this.basisTimeUs == -1) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != -1) {
                    this.basisTimeUs = (this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L)) + this.basisTimeUs;
                }
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
        }
        int sampleData = this.trackOutput.sampleData(extractorInput, this.sampleBytesRemaining, true);
        if (sampleData == -1) {
            return -1;
        }
        this.sampleBytesRemaining -= sampleData;
        if (this.sampleBytesRemaining > 0) {
            return 0;
        }
        this.trackOutput.sampleMetadata(((this.samplesRead * C1167C.MICROS_PER_SECOND) / this.synchronizedHeader.sampleRate) + this.basisTimeUs, 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private boolean maybeResynchronize(ExtractorInput extractorInput) {
        extractorInput.resetPeekPosition();
        if (!extractorInput.peekFully(this.scratch.data, 0, 4, true)) {
            return false;
        }
        this.scratch.setPosition(0);
        int readInt = this.scratch.readInt();
        if ((readInt & HEADER_MASK) == (this.synchronizedHeaderData & HEADER_MASK) && MpegAudioHeader.getFrameSize(readInt) != -1) {
            MpegAudioHeader.populateHeader(readInt, this.synchronizedHeader);
            return true;
        }
        this.synchronizedHeaderData = 0;
        extractorInput.skipFully(1);
        return synchronizeCatchingEndOfInput(extractorInput);
    }

    private boolean synchronizeCatchingEndOfInput(ExtractorInput extractorInput) {
        try {
            return synchronize(extractorInput, false);
        } catch (EOFException e) {
            return false;
        }
    }

    private boolean synchronize(ExtractorInput extractorInput, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int frameSize;
        extractorInput.resetPeekPosition();
        if (extractorInput.getPosition() == 0) {
            this.gaplessInfo = Id3Util.parseId3(extractorInput);
            int peekPosition = (int) extractorInput.getPeekPosition();
            if (!z) {
                extractorInput.skipFully(peekPosition);
            }
            i = peekPosition;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        while (true) {
            if (z && i4 == 4096) {
                return false;
            }
            if (!z && i4 == 131072) {
                throw new ParserException("Searched too many bytes.");
            }
            if (!extractorInput.peekFully(this.scratch.data, 0, 4, true)) {
                return false;
            }
            this.scratch.setPosition(0);
            int readInt = this.scratch.readInt();
            if ((i2 != 0 && (readInt & HEADER_MASK) != (i2 & HEADER_MASK)) || (frameSize = MpegAudioHeader.getFrameSize(readInt)) == -1) {
                int i5 = i4 + 1;
                if (z) {
                    extractorInput.resetPeekPosition();
                    extractorInput.advancePeekPosition(i + i5);
                    readInt = 0;
                    i3 = 0;
                    i4 = i5;
                } else {
                    extractorInput.skipFully(1);
                    readInt = 0;
                    i3 = 0;
                    i4 = i5;
                }
            } else {
                i3++;
                if (i3 == 1) {
                    MpegAudioHeader.populateHeader(readInt, this.synchronizedHeader);
                } else {
                    if (i3 == 4) {
                        if (z) {
                            extractorInput.skipFully(i + i4);
                        } else {
                            extractorInput.resetPeekPosition();
                        }
                        this.synchronizedHeaderData = i2;
                        return true;
                    }
                    readInt = i2;
                }
                extractorInput.advancePeekPosition(frameSize - 4);
            }
            i2 = readInt;
        }
    }

    private void setupSeeker(ExtractorInput extractorInput) {
        int i = 21;
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.synchronizedHeader.frameSize);
        extractorInput.peekFully(parsableByteArray.data, 0, this.synchronizedHeader.frameSize);
        long position = extractorInput.getPosition();
        long length = extractorInput.getLength();
        if ((this.synchronizedHeader.version & 1) != 0) {
            if (this.synchronizedHeader.channels != 1) {
                i = 36;
            }
        } else if (this.synchronizedHeader.channels == 1) {
            i = 13;
        }
        parsableByteArray.setPosition(i);
        int readInt = parsableByteArray.readInt();
        if (readInt == XING_HEADER || readInt == INFO_HEADER) {
            this.seeker = XingSeeker.create(this.synchronizedHeader, parsableByteArray, position, length);
            if (this.seeker != null && this.gaplessInfo == null) {
                extractorInput.resetPeekPosition();
                extractorInput.advancePeekPosition(i + 141);
                extractorInput.peekFully(this.scratch.data, 0, 3);
                this.scratch.setPosition(0);
                this.gaplessInfo = GaplessInfo.createFromXingHeaderValue(this.scratch.readUnsignedInt24());
            }
            extractorInput.skipFully(this.synchronizedHeader.frameSize);
        } else {
            parsableByteArray.setPosition(36);
            if (parsableByteArray.readInt() == VBRI_HEADER) {
                this.seeker = VbriSeeker.create(this.synchronizedHeader, parsableByteArray, position, length);
                extractorInput.skipFully(this.synchronizedHeader.frameSize);
            }
        }
        if (this.seeker == null) {
            extractorInput.resetPeekPosition();
            extractorInput.peekFully(this.scratch.data, 0, 4);
            this.scratch.setPosition(0);
            MpegAudioHeader.populateHeader(this.scratch.readInt(), this.synchronizedHeader);
            this.seeker = new ConstantBitrateSeeker(extractorInput.getPosition(), this.synchronizedHeader.bitrate, length);
        }
    }
}
