package com.google.zxing.client.result;

import com.google.android.exoplayer.C1167C;
import com.google.zxing.Result;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern EQUALS = Pattern.compile("=");
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
    private static final Pattern COMMA = Pattern.compile(",");
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile("[;,]");

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField("FN", massagedText, true, false);
        if (matchVCardPrefixedField == null) {
            matchVCardPrefixedField = matchVCardPrefixedField("N", massagedText, true, false);
            formatNames(matchVCardPrefixedField);
        }
        List<List<String>> list = matchVCardPrefixedField;
        List<String> matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NICKNAME", massagedText, true, false);
        String[] split = matchSingleVCardPrefixedField == null ? null : COMMA.split(matchSingleVCardPrefixedField.get(0));
        List<List<String>> matchVCardPrefixedField2 = matchVCardPrefixedField("TEL", massagedText, true, false);
        List<List<String>> matchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", massagedText, true, false);
        List<String> matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("NOTE", massagedText, false, false);
        List<List<String>> matchVCardPrefixedField4 = matchVCardPrefixedField("ADR", massagedText, true, true);
        List<String> matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("ORG", massagedText, true, true);
        List<String> matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("BDAY", massagedText, true, false);
        List<String> list2 = (matchSingleVCardPrefixedField4 == null || isLikeVCardDate(matchSingleVCardPrefixedField4.get(0))) ? matchSingleVCardPrefixedField4 : null;
        List<String> matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("TITLE", massagedText, true, false);
        List<List<String>> matchVCardPrefixedField5 = matchVCardPrefixedField("URL", massagedText, true, false);
        List<String> matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("IMPP", massagedText, true, false);
        List<String> matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText, true, false);
        String[] split2 = matchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split(matchSingleVCardPrefixedField7.get(0));
        if (split2 != null && split2.length != 2) {
            split2 = null;
        }
        return new AddressBookParsedResult(toPrimaryValues(list), split, null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField6), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField3), toPrimaryValue(list2), toPrimaryValue(matchSingleVCardPrefixedField5), toPrimaryValues(matchVCardPrefixedField5), split2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00d3, code lost:
    
        r0 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.util.List<java.util.List<java.lang.String>> matchVCardPrefixedField(java.lang.CharSequence r12, java.lang.String r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.VCardResultParser.matchVCardPrefixedField(java.lang.CharSequence, java.lang.String, boolean, boolean):java.util.List");
    }

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char charAt2 = charSequence.charAt(i);
            switch (charAt2) {
                case '\n':
                case '\r':
                    break;
                case '=':
                    if (i < length - 2 && (charAt = charSequence.charAt(i + 1)) != '\r' && charAt != '\n') {
                        char charAt3 = charSequence.charAt(i + 2);
                        int parseHexDigit = parseHexDigit(charAt);
                        int parseHexDigit2 = parseHexDigit(charAt3);
                        if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                            byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                        }
                        i += 2;
                        break;
                    }
                    break;
                default:
                    maybeAppendFragment(byteArrayOutputStream, str, sb);
                    sb.append(charAt2);
                    break;
            }
            i++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, Charset.forName(C1167C.UTF8_NAME));
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException e) {
                    str2 = new String(byteArray, Charset.forName(C1167C.UTF8_NAME));
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z, z2);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchVCardPrefixedField.get(0);
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    str = null;
                    break;
                }
                str = list.get(i2);
                int indexOf = str.indexOf(61);
                if (indexOf >= 0) {
                    if (!"TYPE".equalsIgnoreCase(str.substring(0, indexOf))) {
                        i = i2 + 1;
                    } else {
                        str = str.substring(indexOf + 1);
                        break;
                    }
                }
            }
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4) {
                    int indexOf = str.indexOf(59, i2);
                    if (indexOf >= 0) {
                        strArr[i] = str.substring(i2, indexOf);
                        i++;
                        i2 = indexOf + 1;
                    }
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static void maybeAppendComponent(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] != null && !strArr[i].isEmpty()) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(strArr[i]);
        }
    }
}
