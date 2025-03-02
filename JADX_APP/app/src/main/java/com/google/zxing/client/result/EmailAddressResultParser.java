package com.google.zxing.client.result;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.zxing.Result;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class EmailAddressResultParser extends ResultParser {
    private static final Pattern COMMA = Pattern.compile(",");

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String str2;
        String[] strArr;
        String[] strArr2;
        String str3;
        String massagedText = getMassagedText(result);
        if (massagedText.startsWith("mailto:") || massagedText.startsWith("MAILTO:")) {
            String substring = massagedText.substring(7);
            int indexOf = substring.indexOf(63);
            if (indexOf >= 0) {
                substring = substring.substring(0, indexOf);
            }
            try {
                String urlDecode = urlDecode(substring);
                String[] split = !urlDecode.isEmpty() ? COMMA.split(urlDecode) : null;
                Map<String, String> parseNameValuePairs = parseNameValuePairs(massagedText);
                if (parseNameValuePairs != null) {
                    String[] split2 = (split != null || (str3 = parseNameValuePairs.get("to")) == null) ? split : COMMA.split(str3);
                    String str4 = parseNameValuePairs.get("cc");
                    strArr2 = str4 != null ? COMMA.split(str4) : null;
                    String str5 = parseNameValuePairs.get("bcc");
                    String[] split3 = str5 != null ? COMMA.split(str5) : null;
                    String str6 = parseNameValuePairs.get("subject");
                    str = parseNameValuePairs.get(TtmlNode.TAG_BODY);
                    str2 = str6;
                    strArr = split3;
                    split = split2;
                } else {
                    str = null;
                    str2 = null;
                    strArr = null;
                    strArr2 = null;
                }
                return new EmailAddressParsedResult(split, strArr2, strArr, str2, str);
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        if (EmailDoCoMoResultParser.isBasicallyValidEmailAddress(massagedText)) {
            return new EmailAddressParsedResult(massagedText);
        }
        return null;
    }
}
