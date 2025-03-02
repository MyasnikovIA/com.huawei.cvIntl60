package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ExpandedProductResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        String findValue;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = getMassagedText(result);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < massagedText.length()) {
            String findAIvalue = findAIvalue(i, massagedText);
            if (findAIvalue == null) {
                return null;
            }
            int length = i + findAIvalue.length() + 2;
            findValue = findValue(length, massagedText);
            i = length + findValue.length();
            switch (findAIvalue) {
                case "00":
                    str2 = findValue;
                    break;
                case "01":
                    str = findValue;
                    break;
                case "10":
                    str3 = findValue;
                    break;
                case "11":
                    str4 = findValue;
                    break;
                case "13":
                    str5 = findValue;
                    break;
                case "15":
                    str6 = findValue;
                    break;
                case "17":
                    str7 = findValue;
                    break;
                case "3100":
                case "3101":
                case "3102":
                case "3103":
                case "3104":
                case "3105":
                case "3106":
                case "3107":
                case "3108":
                case "3109":
                    str9 = ExpandedProductParsedResult.KILOGRAM;
                    str10 = findAIvalue.substring(3);
                    str8 = findValue;
                    break;
                case "3200":
                case "3201":
                case "3202":
                case "3203":
                case "3204":
                case "3205":
                case "3206":
                case "3207":
                case "3208":
                case "3209":
                    str9 = ExpandedProductParsedResult.POUND;
                    str10 = findAIvalue.substring(3);
                    str8 = findValue;
                    break;
                case "3920":
                case "3921":
                case "3922":
                case "3923":
                    str12 = findAIvalue.substring(3);
                    str11 = findValue;
                    break;
                case "3930":
                case "3931":
                case "3932":
                case "3933":
                    if (findValue.length() < 4) {
                        return null;
                    }
                    str11 = findValue.substring(3);
                    str13 = findValue.substring(0, 3);
                    str12 = findAIvalue.substring(3);
                    break;
                default:
                    hashMap.put(findAIvalue, findValue);
                    break;
            }
        }
        return new ExpandedProductParsedResult(massagedText, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
    }

    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == '(') {
                if (findAIvalue(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
