package com.google.android.exoplayer.text.subrip;

import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.LongArray;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class SubripParser implements SubtitleParser {
    private static final String TAG = "SubripParser";
    private final StringBuilder textBuilder = new StringBuilder();
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("(\\S*)\\s*-->\\s*(\\S*)");
    private static final Pattern SUBRIP_TIMESTAMP = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+),(\\d+)");

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String str) {
        return MimeTypes.APPLICATION_SUBRIP.equals(str);
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public SubripSubtitle parse(byte[] bArr, int i, int i2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i + i2);
        parsableByteArray.setPosition(i);
        while (true) {
            String readLine = parsableByteArray.readLine();
            if (readLine != null) {
                if (readLine.length() != 0) {
                    try {
                        Integer.parseInt(readLine);
                        String readLine2 = parsableByteArray.readLine();
                        Matcher matcher = SUBRIP_TIMING_LINE.matcher(readLine2);
                        if (matcher.find()) {
                            longArray.add(parseTimecode(matcher.group(1)));
                            if (TextUtils.isEmpty(matcher.group(2))) {
                                z = false;
                            } else {
                                longArray.add(parseTimecode(matcher.group(2)));
                                z = true;
                            }
                            this.textBuilder.setLength(0);
                            while (true) {
                                String readLine3 = parsableByteArray.readLine();
                                if (TextUtils.isEmpty(readLine3)) {
                                    break;
                                }
                                if (this.textBuilder.length() > 0) {
                                    this.textBuilder.append("<br>");
                                }
                                this.textBuilder.append(readLine3.trim());
                            }
                            arrayList.add(new Cue(Html.fromHtml(this.textBuilder.toString())));
                            if (z) {
                                arrayList.add(null);
                            }
                        } else {
                            Log.w(TAG, "Skipping invalid timing: " + readLine2);
                        }
                    } catch (NumberFormatException e) {
                        Log.w(TAG, "Skipping invalid index: " + readLine);
                    }
                }
            } else {
                Cue[] cueArr = new Cue[arrayList.size()];
                arrayList.toArray(cueArr);
                return new SubripSubtitle(cueArr, longArray.toArray());
            }
        }
    }

    private static long parseTimecode(String str) {
        Matcher matcher = SUBRIP_TIMESTAMP.matcher(str);
        if (!matcher.matches()) {
            throw new NumberFormatException("has invalid format");
        }
        return (Long.parseLong(matcher.group(4)) + (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(2)) * 60 * 1000) + (Long.parseLong(matcher.group(3)) * 1000)) * 1000;
    }
}
