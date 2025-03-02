package com.google.android.exoplayer.dash.mpd;

import java.util.Locale;

/* loaded from: classes.dex */
public final class UrlTemplate {
    private static final String BANDWIDTH = "Bandwidth";
    private static final int BANDWIDTH_ID = 3;
    private static final String DEFAULT_FORMAT_TAG = "%01d";
    private static final String ESCAPED_DOLLAR = "$$";
    private static final String NUMBER = "Number";
    private static final int NUMBER_ID = 2;
    private static final String REPRESENTATION = "RepresentationID";
    private static final int REPRESENTATION_ID = 1;
    private static final String TIME = "Time";
    private static final int TIME_ID = 4;
    private final int identifierCount;
    private final String[] identifierFormatTags;
    private final int[] identifiers;
    private final String[] urlPieces;

    public static UrlTemplate compile(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new UrlTemplate(strArr, iArr, strArr2, parseTemplate(str, strArr, iArr, strArr2));
    }

    private UrlTemplate(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.urlPieces = strArr;
        this.identifiers = iArr;
        this.identifierFormatTags = strArr2;
        this.identifierCount = i;
    }

    public String buildUri(String str, int i, int i2, long j) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < this.identifierCount; i3++) {
            sb.append(this.urlPieces[i3]);
            if (this.identifiers[i3] == 1) {
                sb.append(str);
            } else if (this.identifiers[i3] == 2) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Integer.valueOf(i)));
            } else if (this.identifiers[i3] == 3) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Integer.valueOf(i2)));
            } else if (this.identifiers[i3] == 4) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Long.valueOf(j)));
            }
        }
        sb.append(this.urlPieces[this.identifierCount]);
        return sb.toString();
    }

    private static int parseTemplate(String str, String[] strArr, int[] iArr, String[] strArr2) {
        strArr[0] = "";
        int i = 0;
        int i2 = 0;
        while (i2 < str.length()) {
            int indexOf = str.indexOf("$", i2);
            if (indexOf == -1) {
                strArr[i] = strArr[i] + str.substring(i2);
                i2 = str.length();
            } else if (indexOf != i2) {
                strArr[i] = strArr[i] + str.substring(i2, indexOf);
                i2 = indexOf;
            } else if (str.startsWith(ESCAPED_DOLLAR, i2)) {
                strArr[i] = strArr[i] + "$";
                i2 += 2;
            } else {
                int indexOf2 = str.indexOf("$", i2 + 1);
                String substring = str.substring(i2 + 1, indexOf2);
                if (substring.equals(REPRESENTATION)) {
                    iArr[i] = 1;
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    String str2 = DEFAULT_FORMAT_TAG;
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith("d")) {
                            str2 = str2 + "d";
                        }
                        substring = substring.substring(0, indexOf3);
                    }
                    if (substring.equals(NUMBER)) {
                        iArr[i] = 2;
                    } else if (substring.equals(BANDWIDTH)) {
                        iArr[i] = 3;
                    } else if (substring.equals(TIME)) {
                        iArr[i] = 4;
                    } else {
                        throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i] = str2;
                }
                i++;
                strArr[i] = "";
                i2 = indexOf2 + 1;
            }
        }
        return i;
    }
}
