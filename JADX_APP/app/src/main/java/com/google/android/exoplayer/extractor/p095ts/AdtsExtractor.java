package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* loaded from: classes.dex */
public final class AdtsExtractor implements Extractor {
    private static final int ID3_TAG = Util.getIntegerCodeForString("ID3");
    private static final int MAX_PACKET_SIZE = 200;
    private static final int MAX_SNIFF_BYTES = 8192;
    private AdtsReader adtsReader;
    private final long firstSampleTimestampUs;
    private final ParsableByteArray packetBuffer;
    private boolean startedPacket;

    public AdtsExtractor() {
        this(0L);
    }

    public AdtsExtractor(long j) {
        this.firstSampleTimestampUs = j;
        this.packetBuffer = new ParsableByteArray(200);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.data);
        int i = 0;
        while (true) {
            extractorInput.peekFully(parsableByteArray.data, 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() != ID3_TAG) {
                break;
            }
            int i2 = ((parsableByteArray.data[6] & Byte.MAX_VALUE) << 21) | ((parsableByteArray.data[7] & Byte.MAX_VALUE) << 14) | ((parsableByteArray.data[8] & Byte.MAX_VALUE) << 7) | (parsableByteArray.data[9] & Byte.MAX_VALUE);
            i += i2 + 10;
            extractorInput.advancePeekPosition(i2);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        int i3 = 0;
        int i4 = 0;
        int i5 = i;
        while (true) {
            extractorInput.peekFully(parsableByteArray.data, 0, 2);
            parsableByteArray.setPosition(0);
            if ((parsableByteArray.readUnsignedShort() & 65526) != 65520) {
                extractorInput.resetPeekPosition();
                i5++;
                if (i5 - i >= 8192) {
                    return false;
                }
                extractorInput.advancePeekPosition(i5);
                i3 = 0;
                i4 = 0;
            } else {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                extractorInput.peekFully(parsableByteArray.data, 0, 4);
                parsableBitArray.setPosition(14);
                int readBits = parsableBitArray.readBits(13);
                if (readBits <= 6) {
                    return false;
                }
                extractorInput.advancePeekPosition(readBits - 6);
                i4 += readBits;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.adtsReader = new AdtsReader(extractorOutput.track(0), extractorOutput.track(1));
        extractorOutput.endTracks();
        extractorOutput.seekMap(SeekMap.UNSEEKABLE);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.startedPacket = false;
        this.adtsReader.seek();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int read = extractorInput.read(this.packetBuffer.data, 0, 200);
        if (read == -1) {
            return -1;
        }
        this.packetBuffer.setPosition(0);
        this.packetBuffer.setLimit(read);
        if (!this.startedPacket) {
            this.adtsReader.packetStarted(this.firstSampleTimestampUs, true);
            this.startedPacket = true;
        }
        this.adtsReader.consume(this.packetBuffer);
        return 0;
    }
}
