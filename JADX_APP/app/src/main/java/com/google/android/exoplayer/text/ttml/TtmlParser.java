package com.google.android.exoplayer.text.ttml;

import android.text.Layout;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParserUtil;
import com.google.android.exoplayer.util.Util;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public final class TtmlParser implements SubtitleParser {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final String TAG = "TtmlParser";
    private static final String TTP = "http://www.w3.org/ns/ttml#parameter";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    private static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);

    public TtmlParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
            this.xmlParserFactory.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String str) {
        return MimeTypes.APPLICATION_TTML.equals(str);
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public TtmlSubtitle parse(byte[] bArr, int i, int i2) {
        FrameAndTickRate frameAndTickRate;
        TtmlSubtitle ttmlSubtitle = null;
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("", new TtmlRegion());
            newPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            LinkedList linkedList = new LinkedList();
            int i3 = 0;
            int eventType = newPullParser.getEventType();
            FrameAndTickRate frameAndTickRate2 = DEFAULT_FRAME_AND_TICK_RATE;
            for (int i4 = eventType; i4 != 1; i4 = newPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (i4 == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            frameAndTickRate2 = parseFrameAndTickRates(newPullParser);
                        }
                        if (!isSupportedTag(name)) {
                            Log.i(TAG, "Ignoring unsupported tag: " + newPullParser.getName());
                            i3++;
                            frameAndTickRate = frameAndTickRate2;
                        } else if (TtmlNode.TAG_HEAD.equals(name)) {
                            parseHeader(newPullParser, hashMap, hashMap2);
                            frameAndTickRate = frameAndTickRate2;
                        } else {
                            try {
                                TtmlNode parseNode = parseNode(newPullParser, ttmlNode, hashMap2, frameAndTickRate2);
                                linkedList.addLast(parseNode);
                                if (ttmlNode != null) {
                                    ttmlNode.addChild(parseNode);
                                }
                                frameAndTickRate = frameAndTickRate2;
                            } catch (ParserException e) {
                                Log.w(TAG, "Suppressing parser error", e);
                                i3++;
                                frameAndTickRate = frameAndTickRate2;
                            }
                        }
                    } else if (i4 == 4) {
                        ttmlNode.addChild(TtmlNode.buildTextNode(newPullParser.getText()));
                        frameAndTickRate = frameAndTickRate2;
                    } else {
                        if (i4 == 3) {
                            if (newPullParser.getName().equals(TtmlNode.TAG_TT)) {
                                ttmlSubtitle = new TtmlSubtitle((TtmlNode) linkedList.getLast(), hashMap, hashMap2);
                            }
                            linkedList.removeLast();
                        }
                        frameAndTickRate = frameAndTickRate2;
                    }
                    frameAndTickRate2 = frameAndTickRate;
                } else if (i4 == 2) {
                    i3++;
                } else if (i4 == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            return ttmlSubtitle;
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new ParserException("Unable to parse source", e3);
        }
    }

    private FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) {
        int i = 30;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        if (attributeValue != null) {
            i = Integer.parseInt(attributeValue);
        }
        float f = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (attributeValue2.split(" ").length != 2) {
                throw new ParserException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(r1[0]) / Integer.parseInt(r1[1]);
        }
        int i2 = DEFAULT_FRAME_AND_TICK_RATE.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = DEFAULT_FRAME_AND_TICK_RATE.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i * f, i2, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) {
        Pair<String, TtmlRegion> parseRegionAttributes;
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = ParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle parseStyleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    String[] parseStyleIds = parseStyleIds(attributeValue);
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= parseStyleIds.length) {
                            break;
                        }
                        parseStyleAttributes.chain(map.get(parseStyleIds[i2]));
                        i = i2 + 1;
                    }
                }
                if (parseStyleAttributes.getId() != null) {
                    map.put(parseStyleAttributes.getId(), parseStyleAttributes);
                }
            } else if (ParserUtil.isStartTag(xmlPullParser, "region") && (parseRegionAttributes = parseRegionAttributes(xmlPullParser)) != null) {
                map2.put(parseRegionAttributes.first, parseRegionAttributes.second);
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.util.Pair<java.lang.String, com.google.android.exoplayer.text.ttml.TtmlRegion> parseRegionAttributes(org.xmlpull.v1.XmlPullParser r11) {
        /*
            r10 = this;
            r0 = 0
            r9 = 1120403456(0x42c80000, float:100.0)
            r2 = 1
            java.lang.String r1 = "id"
            java.lang.String r5 = com.google.android.exoplayer.util.ParserUtil.getAttributeValue(r11, r1)
            java.lang.String r1 = "origin"
            java.lang.String r3 = com.google.android.exoplayer.util.ParserUtil.getAttributeValue(r11, r1)
            java.lang.String r1 = "extent"
            java.lang.String r6 = com.google.android.exoplayer.util.ParserUtil.getAttributeValue(r11, r1)
            if (r3 == 0) goto L1a
            if (r5 != 0) goto L1b
        L1a:
            return r0
        L1b:
            java.util.regex.Pattern r1 = com.google.android.exoplayer.text.ttml.TtmlParser.PERCENTAGE_COORDINATES
            java.util.regex.Matcher r1 = r1.matcher(r3)
            boolean r4 = r1.matches()
            if (r4 == 0) goto La7
            r4 = 1
            java.lang.String r4 = r1.group(r4)     // Catch: java.lang.NumberFormatException -> L64
            float r4 = java.lang.Float.parseFloat(r4)     // Catch: java.lang.NumberFormatException -> L64
            float r4 = r4 / r9
            r7 = 2
            java.lang.String r1 = r1.group(r7)     // Catch: java.lang.NumberFormatException -> L64
            float r1 = java.lang.Float.parseFloat(r1)     // Catch: java.lang.NumberFormatException -> L64
            float r1 = r1 / r9
            r3 = r1
        L3c:
            if (r6 == 0) goto La5
            java.util.regex.Pattern r1 = com.google.android.exoplayer.text.ttml.TtmlParser.PERCENTAGE_COORDINATES
            java.util.regex.Matcher r1 = r1.matcher(r6)
            boolean r7 = r1.matches()
            if (r7 == 0) goto La5
            r7 = 1
            java.lang.String r1 = r1.group(r7)     // Catch: java.lang.NumberFormatException -> L86
            float r1 = java.lang.Float.parseFloat(r1)     // Catch: java.lang.NumberFormatException -> L86
            float r1 = r1 / r9
        L54:
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 == 0) goto L1a
            android.util.Pair r0 = new android.util.Pair
            com.google.android.exoplayer.text.ttml.TtmlRegion r2 = new com.google.android.exoplayer.text.ttml.TtmlRegion
            r6 = 0
            r2.<init>(r4, r3, r6, r1)
            r0.<init>(r5, r2)
            goto L1a
        L64:
            r1 = move-exception
            java.lang.String r4 = "TtmlParser"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Ignoring region with malformed origin: '"
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.StringBuilder r3 = r7.append(r3)
            java.lang.String r7 = "'"
            java.lang.StringBuilder r3 = r3.append(r7)
            java.lang.String r3 = r3.toString()
            android.util.Log.w(r4, r3, r1)
            r3 = r2
            r4 = r2
            goto L3c
        L86:
            r1 = move-exception
            java.lang.String r7 = "TtmlParser"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Ignoring malformed region extent: '"
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r6 = r8.append(r6)
            java.lang.String r8 = "'"
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            android.util.Log.w(r7, r6, r1)
        La5:
            r1 = r2
            goto L54
        La7:
            r3 = r2
            r4 = r2
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.text.ttml.TtmlParser.parseRegionAttributes(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    private String[] parseStyleIds(String str) {
        return str.split("\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private TtmlStyle parseStyleAttributes(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        char c;
        boolean z;
        char c2;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle ttmlStyle2 = ttmlStyle;
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    if (attributeName.equals(TtmlNode.ATTR_ID)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_COLOR)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyle2 = createIfNull(ttmlStyle2).setId(attributeValue);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    ttmlStyle2 = createIfNull(ttmlStyle2);
                    try {
                        ttmlStyle2.setBackgroundColor(TtmlColorParser.parseColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException e) {
                        Log.w(TAG, "failed parsing background value: '" + attributeValue + "'");
                        break;
                    }
                case 2:
                    ttmlStyle2 = createIfNull(ttmlStyle2);
                    try {
                        ttmlStyle2.setFontColor(TtmlColorParser.parseColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException e2) {
                        Log.w(TAG, "failed parsing color value: '" + attributeValue + "'");
                        break;
                    }
                case 3:
                    ttmlStyle2 = createIfNull(ttmlStyle2).setFontFamily(attributeValue);
                    break;
                case 4:
                    try {
                        ttmlStyle2 = createIfNull(ttmlStyle2);
                        parseFontSize(attributeValue, ttmlStyle2);
                        break;
                    } catch (ParserException e3) {
                        Log.w(TAG, "failed parsing fontSize value: '" + attributeValue + "'");
                        break;
                    }
                case 5:
                    ttmlStyle2 = createIfNull(ttmlStyle2).setBold(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    ttmlStyle2 = createIfNull(ttmlStyle2).setItalic(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    String lowerInvariant = Util.toLowerInvariant(attributeValue);
                    switch (lowerInvariant.hashCode()) {
                        case -1364013995:
                            if (lowerInvariant.equals(TtmlNode.CENTER)) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 100571:
                            if (lowerInvariant.equals("end")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 3317767:
                            if (lowerInvariant.equals(TtmlNode.LEFT)) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 108511772:
                            if (lowerInvariant.equals(TtmlNode.RIGHT)) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 109757538:
                            if (lowerInvariant.equals(TtmlNode.START)) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setTextAlign(Layout.Alignment.ALIGN_NORMAL);
                            break;
                        case 1:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setTextAlign(Layout.Alignment.ALIGN_NORMAL);
                            break;
                        case 2:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setTextAlign(Layout.Alignment.ALIGN_OPPOSITE);
                            break;
                        case 3:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setTextAlign(Layout.Alignment.ALIGN_OPPOSITE);
                            break;
                        case 4:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setTextAlign(Layout.Alignment.ALIGN_CENTER);
                            break;
                    }
                case '\b':
                    String lowerInvariant2 = Util.toLowerInvariant(attributeValue);
                    switch (lowerInvariant2.hashCode()) {
                        case -1461280213:
                            if (lowerInvariant2.equals(TtmlNode.NO_UNDERLINE)) {
                                z = 3;
                                break;
                            }
                            z = -1;
                            break;
                        case -1026963764:
                            if (lowerInvariant2.equals(TtmlNode.UNDERLINE)) {
                                z = 2;
                                break;
                            }
                            z = -1;
                            break;
                        case 913457136:
                            if (lowerInvariant2.equals(TtmlNode.NO_LINETHROUGH)) {
                                z = true;
                                break;
                            }
                            z = -1;
                            break;
                        case 1679736913:
                            if (lowerInvariant2.equals(TtmlNode.LINETHROUGH)) {
                                z = false;
                                break;
                            }
                            z = -1;
                            break;
                        default:
                            z = -1;
                            break;
                    }
                    switch (z) {
                        case false:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setLinethrough(true);
                            break;
                        case true:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setLinethrough(false);
                            break;
                        case true:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setUnderline(true);
                            break;
                        case true:
                            ttmlStyle2 = createIfNull(ttmlStyle2).setUnderline(false);
                            break;
                    }
            }
        }
        return ttmlStyle2;
    }

    private TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.android.exoplayer.text.ttml.TtmlNode parseNode(org.xmlpull.v1.XmlPullParser r18, com.google.android.exoplayer.text.ttml.TtmlNode r19, java.util.Map<java.lang.String, com.google.android.exoplayer.text.ttml.TtmlRegion> r20, com.google.android.exoplayer.text.ttml.TtmlParser.FrameAndTickRate r21) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.text.ttml.TtmlParser.parseNode(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer.text.ttml.TtmlNode, java.util.Map, com.google.android.exoplayer.text.ttml.TtmlParser$FrameAndTickRate):com.google.android.exoplayer.text.ttml.TtmlNode");
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals("region") || str.equals(TtmlNode.TAG_METADATA) || str.equals(TtmlNode.TAG_SMPTE_IMAGE) || str.equals(TtmlNode.TAG_SMPTE_DATA) || str.equals(TtmlNode.TAG_SMPTE_INFORMATION);
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) {
        Matcher matcher;
        String group;
        String[] split = str.split("\\s+");
        if (split.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else if (split.length == 2) {
            matcher = FONT_SIZE.matcher(split[1]);
            Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new ParserException("Invalid number of entries for fontSize: " + split.length + ".");
        }
        if (matcher.matches()) {
            group = matcher.group(3);
            switch (group) {
                case "px":
                    ttmlStyle.setFontSizeUnit(1);
                    break;
                case "em":
                    ttmlStyle.setFontSizeUnit(2);
                    break;
                case "%":
                    ttmlStyle.setFontSizeUnit(3);
                    break;
                default:
                    throw new ParserException("Invalid unit for fontSize: '" + group + "'.");
            }
            ttmlStyle.setFontSize(Float.valueOf(matcher.group(1)).floatValue());
            return;
        }
        throw new ParserException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static long parseTimeExpression(String str, FrameAndTickRate frameAndTickRate) {
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double parseLong = Long.parseLong(matcher.group(3)) + (Long.parseLong(matcher.group(1)) * 3600) + (Long.parseLong(matcher.group(2)) * 60);
            String group = matcher.group(4);
            return (long) (((matcher.group(5) != null ? Long.parseLong(r0) / frameAndTickRate.effectiveFrameRate : 0.0d) + parseLong + (group != null ? Double.parseDouble(group) : 0.0d) + (matcher.group(6) != null ? (Long.parseLong(r4) / frameAndTickRate.subFrameRate) / frameAndTickRate.effectiveFrameRate : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (matcher2.matches()) {
            double parseDouble = Double.parseDouble(matcher2.group(1));
            String group2 = matcher2.group(2);
            if (group2.equals("h")) {
                parseDouble *= 3600.0d;
            } else if (group2.equals("m")) {
                parseDouble *= 60.0d;
            } else if (!group2.equals("s")) {
                if (group2.equals("ms")) {
                    parseDouble /= 1000.0d;
                } else if (group2.equals("f")) {
                    parseDouble /= frameAndTickRate.effectiveFrameRate;
                } else if (group2.equals("t")) {
                    parseDouble /= frameAndTickRate.tickRate;
                }
            }
            return (long) (parseDouble * 1000000.0d);
        }
        throw new ParserException("Malformed time expression: " + str);
    }

    private static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }
}
