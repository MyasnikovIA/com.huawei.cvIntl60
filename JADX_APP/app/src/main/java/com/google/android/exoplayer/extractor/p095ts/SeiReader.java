package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.Eia608Parser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
final class SeiReader {
    private final TrackOutput output;

    public SeiReader(TrackOutput trackOutput) {
        this.output = trackOutput;
        trackOutput.format(MediaFormat.createTextFormat(null, MimeTypes.APPLICATION_EIA608, -1, -1L, null));
    }

    public void consume(long j, ParsableByteArray parsableByteArray) {
        int readUnsignedByte;
        int readUnsignedByte2;
        while (parsableByteArray.bytesLeft() > 1) {
            int i = 0;
            do {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                i += readUnsignedByte;
            } while (readUnsignedByte == 255);
            int i2 = 0;
            do {
                readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                i2 += readUnsignedByte2;
            } while (readUnsignedByte2 == 255);
            if (Eia608Parser.isSeiMessageEia608(i, i2, parsableByteArray)) {
                this.output.sampleData(parsableByteArray, i2);
                this.output.sampleMetadata(j, 1, i2, 0, null);
            } else {
                parsableByteArray.skipBytes(i2);
            }
        }
    }
}
