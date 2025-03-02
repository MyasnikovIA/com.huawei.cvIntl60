package com.google.android.exoplayer.extractor;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class GaplessInfo {
    private static final String GAPLESS_COMMENT_ID = "iTunSMPB";
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public final int encoderDelay;
    public final int encoderPadding;

    public static GaplessInfo createFromComment(String str, String str2) {
        if (!GAPLESS_COMMENT_ID.equals(str)) {
            return null;
        }
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(str2);
        if (!matcher.find()) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt == 0 && parseInt2 == 0) {
                return null;
            }
            return new GaplessInfo(parseInt, parseInt2);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static GaplessInfo createFromXingHeaderValue(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 == 0 && i3 == 0) {
            return null;
        }
        return new GaplessInfo(i2, i3);
    }

    private GaplessInfo(int i, int i2) {
        this.encoderDelay = i;
        this.encoderPadding = i2;
    }
}
