package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class WebvttParserUtil {
    private static final Pattern HEADER = Pattern.compile("^\ufeff?WEBVTT(( |\t).*)?$");

    private WebvttParserUtil() {
    }

    public static void validateWebvttHeaderLine(ParsableByteArray parsableByteArray) {
        String readLine = parsableByteArray.readLine();
        if (readLine == null || !HEADER.matcher(readLine).matches()) {
            throw new ParserException("Expected WEBVTT. Got " + readLine);
        }
    }

    public static long parseTimestampUs(String str) {
        long j = 0;
        String[] split = str.split("\\.", 2);
        for (String str2 : split[0].split(":")) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return (Long.parseLong(split[1]) + (j * 1000)) * 1000;
    }

    public static float parsePercentage(String str) {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("Percentages must end with %");
        }
        return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
    }
}
