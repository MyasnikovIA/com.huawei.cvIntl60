package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.webvtt.WebvttCue;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Mp4WebvttParser implements SubtitleParser {
    private static final int BOX_HEADER_SIZE = 8;
    private static final int TYPE_payl = Util.getIntegerCodeForString("payl");
    private static final int TYPE_sttg = Util.getIntegerCodeForString("sttg");
    private static final int TYPE_vttc = Util.getIntegerCodeForString("vttc");
    private final ParsableByteArray sampleData = new ParsableByteArray();
    private final WebvttCue.Builder builder = new WebvttCue.Builder();

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String str) {
        return MimeTypes.APPLICATION_MP4VTT.equals(str);
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public Mp4WebvttSubtitle parse(byte[] bArr, int i, int i2) {
        this.sampleData.reset(bArr, i + i2);
        this.sampleData.setPosition(i);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.bytesLeft() > 0) {
            if (this.sampleData.bytesLeft() < 8) {
                throw new ParserException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int readInt = this.sampleData.readInt();
            if (this.sampleData.readInt() == TYPE_vttc) {
                arrayList.add(parseVttCueBox(this.sampleData, this.builder, readInt - 8));
            } else {
                this.sampleData.skipBytes(readInt - 8);
            }
        }
        return new Mp4WebvttSubtitle(arrayList);
    }

    private static Cue parseVttCueBox(ParsableByteArray parsableByteArray, WebvttCue.Builder builder, int i) {
        builder.reset();
        while (i > 0) {
            if (i < 8) {
                throw new ParserException("Incomplete vtt cue box header found.");
            }
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            int i2 = readInt - 8;
            String str = new String(parsableByteArray.data, parsableByteArray.getPosition(), i2);
            parsableByteArray.skipBytes(i2);
            i = (i - 8) - i2;
            if (readInt2 == TYPE_sttg) {
                WebvttCueParser.parseCueSettingsList(str, builder);
            } else if (readInt2 == TYPE_payl) {
                WebvttCueParser.parseCueText(str.trim(), builder);
            }
        }
        return builder.build();
    }
}
