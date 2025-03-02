package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class VINResultParser extends ResultParser {
    private static final Pattern IOQ = Pattern.compile("[IOQ]");
    private static final Pattern AZ09 = Pattern.compile("[A-Z0-9]{17}");

    @Override // com.google.zxing.client.result.ResultParser
    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String trim = IOQ.matcher(result.getText()).replaceAll("").trim();
        if (!AZ09.matcher(trim).matches()) {
            return null;
        }
        try {
            if (!checkChecksum(trim)) {
                return null;
            }
            String substring = trim.substring(0, 3);
            return new VINParsedResult(trim, substring, trim.substring(3, 9), trim.substring(9, 17), countryCode(substring), trim.substring(3, 8), modelYear(trim.charAt(9)), trim.charAt(10), trim.substring(11));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            i += vinPositionWeight(i2 + 1) * vinCharValue(charSequence.charAt(i2));
        }
        return charSequence.charAt(8) == checkChar(i % 11);
    }

    private static int vinCharValue(char c) {
        if (c >= 'A' && c <= 'I') {
            return (c - 'A') + 1;
        }
        if (c >= 'J' && c <= 'R') {
            return (c - 'J') + 1;
        }
        if (c >= 'S' && c <= 'Z') {
            return (c - 'S') + 2;
        }
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        throw new IllegalArgumentException();
    }

    private static int vinPositionWeight(int i) {
        if (i > 0 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i >= 10 && i <= 17) {
            return 19 - i;
        }
        throw new IllegalArgumentException();
    }

    private static char checkChar(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static int modelYear(char c) {
        if (c >= 'E' && c <= 'H') {
            return (c - 'E') + 1984;
        }
        if (c >= 'J' && c <= 'N') {
            return (c - 'J') + 1988;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return (c - 'R') + 1994;
        }
        if (c >= 'V' && c <= 'Y') {
            return (c - 'V') + 1997;
        }
        if (c >= '1' && c <= '9') {
            return (c - '1') + 2001;
        }
        if (c >= 'A' && c <= 'D') {
            return (c - 'A') + 2010;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:3:0x0017 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String countryCode(java.lang.CharSequence r7) {
        /*
            r6 = 69
            r5 = 57
            r4 = 51
            r3 = 82
            r2 = 65
            r0 = 0
            char r0 = r7.charAt(r0)
            r1 = 1
            char r1 = r7.charAt(r1)
            switch(r0) {
                case 49: goto L19;
                case 50: goto L1c;
                case 51: goto L1f;
                case 52: goto L19;
                case 53: goto L19;
                case 57: goto L28;
                case 74: goto L33;
                case 75: goto L3c;
                case 76: goto L45;
                case 77: goto L48;
                case 83: goto L4f;
                case 86: goto L63;
                case 87: goto L77;
                case 88: goto L7a;
                case 90: goto L85;
                default: goto L17;
            }
        L17:
            r0 = 0
        L18:
            return r0
        L19:
            java.lang.String r0 = "US"
            goto L18
        L1c:
            java.lang.String r0 = "CA"
            goto L18
        L1f:
            if (r1 < r2) goto L17
            r0 = 87
            if (r1 > r0) goto L17
            java.lang.String r0 = "MX"
            goto L18
        L28:
            if (r1 < r2) goto L2c
            if (r1 <= r6) goto L30
        L2c:
            if (r1 < r4) goto L17
            if (r1 > r5) goto L17
        L30:
            java.lang.String r0 = "BR"
            goto L18
        L33:
            if (r1 < r2) goto L17
            r0 = 84
            if (r1 > r0) goto L17
            java.lang.String r0 = "JP"
            goto L18
        L3c:
            r0 = 76
            if (r1 < r0) goto L17
            if (r1 > r3) goto L17
            java.lang.String r0 = "KO"
            goto L18
        L45:
            java.lang.String r0 = "CN"
            goto L18
        L48:
            if (r1 < r2) goto L17
            if (r1 > r6) goto L17
            java.lang.String r0 = "IN"
            goto L18
        L4f:
            if (r1 < r2) goto L58
            r0 = 77
            if (r1 > r0) goto L58
            java.lang.String r0 = "UK"
            goto L18
        L58:
            r0 = 78
            if (r1 < r0) goto L17
            r0 = 84
            if (r1 > r0) goto L17
            java.lang.String r0 = "DE"
            goto L18
        L63:
            r0 = 70
            if (r1 < r0) goto L6c
            if (r1 > r3) goto L6c
            java.lang.String r0 = "FR"
            goto L18
        L6c:
            r0 = 83
            if (r1 < r0) goto L17
            r0 = 87
            if (r1 > r0) goto L17
            java.lang.String r0 = "ES"
            goto L18
        L77:
            java.lang.String r0 = "DE"
            goto L18
        L7a:
            r0 = 48
            if (r1 == r0) goto L82
            if (r1 < r4) goto L17
            if (r1 > r5) goto L17
        L82:
            java.lang.String r0 = "RU"
            goto L18
        L85:
            if (r1 < r2) goto L17
            if (r1 > r3) goto L17
            java.lang.String r0 = "IT"
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.VINResultParser.countryCode(java.lang.CharSequence):java.lang.String");
    }
}
