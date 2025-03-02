package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.ParserException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class HlsParserUtil {
    private static final String BOOLEAN_NO = "NO";
    private static final String BOOLEAN_YES = "YES";

    private HlsParserUtil() {
    }

    public static String parseStringAttr(String str, Pattern pattern, String str2) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        throw new ParserException("Couldn't match " + str2 + " tag in " + str);
    }

    public static int parseIntAttr(String str, Pattern pattern, String str2) {
        return Integer.parseInt(parseStringAttr(str, pattern, str2));
    }

    public static double parseDoubleAttr(String str, Pattern pattern, String str2) {
        return Double.parseDouble(parseStringAttr(str, pattern, str2));
    }

    public static String parseOptionalStringAttr(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static boolean parseOptionalBooleanAttr(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return BOOLEAN_YES.equals(matcher.group(1));
        }
        return false;
    }

    public static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(" + BOOLEAN_YES + "|" + BOOLEAN_NO + ")");
    }
}
