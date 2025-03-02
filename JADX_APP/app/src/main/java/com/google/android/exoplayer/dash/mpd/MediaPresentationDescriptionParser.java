package com.google.android.exoplayer.dash.mpd;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.dash.mpd.SegmentBase;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParserUtil;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class MediaPresentationDescriptionParser extends DefaultHandler implements UriLoadable.Parser<MediaPresentationDescription> {
    private static final Pattern FRAME_RATE_PATTERN = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private static final String TAG = "MediaPresentationDescriptionParser";
    private final String contentId;
    private final XmlPullParserFactory xmlParserFactory;

    public MediaPresentationDescriptionParser() {
        this(null);
    }

    public MediaPresentationDescriptionParser(String str) {
        this.contentId = str;
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
    public MediaPresentationDescription parse(String str, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() != 2 || !"MPD".equals(newPullParser.getName())) {
                throw new ParserException("inputStream does not contain a valid media presentation description");
            }
            return parseMediaPresentationDescription(newPullParser, str);
        } catch (ParseException e) {
            throw new ParserException(e);
        } catch (XmlPullParserException e2) {
            throw new ParserException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.google.android.exoplayer.dash.mpd.MediaPresentationDescription parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser r33, java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.dash.mpd.MediaPresentationDescriptionParser.parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser, java.lang.String):com.google.android.exoplayer.dash.mpd.MediaPresentationDescription");
    }

    protected MediaPresentationDescription buildMediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, UtcTimingElement utcTimingElement, String str, List<Period> list) {
        return new MediaPresentationDescription(j, j2, j3, z, j4, j5, utcTimingElement, str, list);
    }

    protected UtcTimingElement parseUtcTiming(XmlPullParser xmlPullParser) {
        return buildUtcTimingElement(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    protected UtcTimingElement buildUtcTimingElement(String str, String str2) {
        return new UtcTimingElement(str, str2);
    }

    protected Pair<Period, Long> parsePeriod(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        long parseDuration = parseDuration(xmlPullParser, TtmlNode.START, j);
        long parseDuration2 = parseDuration(xmlPullParser, "duration", -1L);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        SegmentBase segmentBase = null;
        String str2 = str;
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z) {
                    str2 = parseBaseUrl(xmlPullParser, str2);
                    z = true;
                }
            } else if (ParserUtil.isStartTag(xmlPullParser, "AdaptationSet")) {
                arrayList.add(parseAdaptationSet(xmlPullParser, str2, segmentBase));
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                segmentBase = parseSegmentBase(xmlPullParser, str2, null);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                segmentBase = parseSegmentList(xmlPullParser, str2, null);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                segmentBase = parseSegmentTemplate(xmlPullParser, str2, null);
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, "Period"));
        return Pair.create(buildPeriod(attributeValue, parseDuration, arrayList), Long.valueOf(parseDuration2));
    }

    protected Period buildPeriod(String str, long j, List<AdaptationSet> list) {
        return new Period(str, j, list);
    }

    protected AdaptationSet parseAdaptationSet(XmlPullParser xmlPullParser, String str, SegmentBase segmentBase) {
        boolean z;
        int i;
        int parseInt = parseInt(xmlPullParser, TtmlNode.ATTR_ID, -1);
        int parseContentType = parseContentType(xmlPullParser);
        String attributeValue = xmlPullParser.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "codecs");
        int parseInt2 = parseInt(xmlPullParser, "width", -1);
        int parseInt3 = parseInt(xmlPullParser, "height", -1);
        float parseFrameRate = parseFrameRate(xmlPullParser, -1.0f);
        int i2 = -1;
        int parseInt4 = parseInt(xmlPullParser, "audioSamplingRate", -1);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "lang");
        ContentProtectionsBuilder contentProtectionsBuilder = new ContentProtectionsBuilder();
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        SegmentBase segmentBase2 = segmentBase;
        String str2 = str;
        while (true) {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z2) {
                    str2 = parseBaseUrl(xmlPullParser, str2);
                    z = true;
                    i = parseContentType;
                }
                z = z2;
                i = parseContentType;
            } else if (ParserUtil.isStartTag(xmlPullParser, "ContentProtection")) {
                ContentProtection parseContentProtection = parseContentProtection(xmlPullParser);
                if (parseContentProtection != null) {
                    contentProtectionsBuilder.addAdaptationSetProtection(parseContentProtection);
                }
                z = z2;
                i = parseContentType;
            } else if (ParserUtil.isStartTag(xmlPullParser, "ContentComponent")) {
                attributeValue3 = checkLanguageConsistency(attributeValue3, xmlPullParser.getAttributeValue(null, "lang"));
                i = checkContentTypeConsistency(parseContentType, parseContentType(xmlPullParser));
                z = z2;
            } else if (ParserUtil.isStartTag(xmlPullParser, "Representation")) {
                Representation parseRepresentation = parseRepresentation(xmlPullParser, str2, attributeValue, attributeValue2, parseInt2, parseInt3, parseFrameRate, i2, parseInt4, attributeValue3, segmentBase2, contentProtectionsBuilder);
                contentProtectionsBuilder.endRepresentation();
                i = checkContentTypeConsistency(parseContentType, getContentType(parseRepresentation));
                arrayList.add(parseRepresentation);
                z = z2;
            } else if (ParserUtil.isStartTag(xmlPullParser, "AudioChannelConfiguration")) {
                i2 = parseAudioChannelConfiguration(xmlPullParser);
                z = z2;
                i = parseContentType;
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                segmentBase2 = parseSegmentBase(xmlPullParser, str2, (SegmentBase.SingleSegmentBase) segmentBase2);
                z = z2;
                i = parseContentType;
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                segmentBase2 = parseSegmentList(xmlPullParser, str2, (SegmentBase.SegmentList) segmentBase2);
                z = z2;
                i = parseContentType;
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                segmentBase2 = parseSegmentTemplate(xmlPullParser, str2, (SegmentBase.SegmentTemplate) segmentBase2);
                z = z2;
                i = parseContentType;
            } else {
                if (ParserUtil.isStartTag(xmlPullParser)) {
                    parseAdaptationSetChild(xmlPullParser);
                }
                z = z2;
                i = parseContentType;
            }
            if (ParserUtil.isEndTag(xmlPullParser, "AdaptationSet")) {
                return buildAdaptationSet(parseInt, i, arrayList, contentProtectionsBuilder.build());
            }
            z2 = z;
            parseContentType = i;
        }
    }

    protected AdaptationSet buildAdaptationSet(int i, int i2, List<Representation> list, List<ContentProtection> list2) {
        return new AdaptationSet(i, i2, list, list2);
    }

    protected int parseContentType(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 0;
        }
        return MimeTypes.BASE_TYPE_TEXT.equals(attributeValue) ? 2 : -1;
    }

    protected int getContentType(Representation representation) {
        String str = representation.format.mimeType;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (MimeTypes.isVideo(str)) {
            return 0;
        }
        if (MimeTypes.isAudio(str)) {
            return 1;
        }
        if (MimeTypes.isText(str) || MimeTypes.APPLICATION_TTML.equals(str)) {
            return 2;
        }
        if (!MimeTypes.APPLICATION_MP4.equals(str)) {
            return -1;
        }
        String str2 = representation.format.codecs;
        return ("stpp".equals(str2) || "wvtt".equals(str2)) ? 2 : -1;
    }

    protected ContentProtection parseContentProtection(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        boolean z = false;
        DrmInitData.SchemeInitData schemeInitData = null;
        UUID uuid = null;
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "cenc:pssh") && xmlPullParser.next() == 4) {
                z = true;
                schemeInitData = new DrmInitData.SchemeInitData(MimeTypes.VIDEO_MP4, Base64.decode(xmlPullParser.getText(), 0));
                uuid = PsshAtomUtil.parseUuid(schemeInitData.data);
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, "ContentProtection"));
        if (!z || uuid != null) {
            return buildContentProtection(attributeValue, uuid, schemeInitData);
        }
        Log.w(TAG, "Skipped unsupported ContentProtection element");
        return null;
    }

    protected ContentProtection buildContentProtection(String str, UUID uuid, DrmInitData.SchemeInitData schemeInitData) {
        return new ContentProtection(str, uuid, schemeInitData);
    }

    protected void parseAdaptationSetChild(XmlPullParser xmlPullParser) {
    }

    protected Representation parseRepresentation(XmlPullParser xmlPullParser, String str, String str2, String str3, int i, int i2, float f, int i3, int i4, String str4, SegmentBase segmentBase, ContentProtectionsBuilder contentProtectionsBuilder) {
        ContentProtection parseContentProtection;
        SegmentBase parseSegmentTemplate;
        String attributeValue = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        int parseInt = parseInt(xmlPullParser, "bandwidth");
        String parseString = parseString(xmlPullParser, "mimeType", str2);
        String parseString2 = parseString(xmlPullParser, "codecs", str3);
        int parseInt2 = parseInt(xmlPullParser, "width", i);
        int parseInt3 = parseInt(xmlPullParser, "height", i2);
        float parseFrameRate = parseFrameRate(xmlPullParser, f);
        int parseInt4 = parseInt(xmlPullParser, "audioSamplingRate", i4);
        boolean z = false;
        int i5 = i3;
        SegmentBase segmentBase2 = segmentBase;
        String str5 = str;
        while (true) {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z) {
                    str5 = parseBaseUrl(xmlPullParser, str5);
                    z = true;
                    parseSegmentTemplate = segmentBase2;
                }
                parseSegmentTemplate = segmentBase2;
            } else if (ParserUtil.isStartTag(xmlPullParser, "AudioChannelConfiguration")) {
                i5 = parseAudioChannelConfiguration(xmlPullParser);
                parseSegmentTemplate = segmentBase2;
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                parseSegmentTemplate = parseSegmentBase(xmlPullParser, str5, (SegmentBase.SingleSegmentBase) segmentBase2);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                parseSegmentTemplate = parseSegmentList(xmlPullParser, str5, (SegmentBase.SegmentList) segmentBase2);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                parseSegmentTemplate = parseSegmentTemplate(xmlPullParser, str5, (SegmentBase.SegmentTemplate) segmentBase2);
            } else {
                if (ParserUtil.isStartTag(xmlPullParser, "ContentProtection") && (parseContentProtection = parseContentProtection(xmlPullParser)) != null) {
                    contentProtectionsBuilder.addAdaptationSetProtection(parseContentProtection);
                }
                parseSegmentTemplate = segmentBase2;
            }
            if (ParserUtil.isEndTag(xmlPullParser, "Representation")) {
                break;
            }
            segmentBase2 = parseSegmentTemplate;
        }
        Format buildFormat = buildFormat(attributeValue, parseString, parseInt2, parseInt3, parseFrameRate, i5, parseInt4, parseInt, str4, parseString2);
        String str6 = this.contentId;
        if (parseSegmentTemplate == null) {
            parseSegmentTemplate = new SegmentBase.SingleSegmentBase(str5);
        }
        return buildRepresentation(str6, -1, buildFormat, parseSegmentTemplate);
    }

    protected Format buildFormat(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, String str4) {
        return new Format(str, str2, i, i2, f, i3, i4, i5, str3, str4);
    }

    protected Representation buildRepresentation(String str, int i, Format format, SegmentBase segmentBase) {
        return Representation.newInstance(str, i, format, segmentBase);
    }

    protected SegmentBase.SingleSegmentBase parseSegmentBase(XmlPullParser xmlPullParser, String str, SegmentBase.SingleSegmentBase singleSegmentBase) {
        long j;
        long parseLong = parseLong(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1L);
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0L);
        long j2 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0L;
        long j3 = singleSegmentBase != null ? singleSegmentBase.indexLength : -1L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            j2 = Long.parseLong(split[0]);
            j = (Long.parseLong(split[1]) - j2) + 1;
        } else {
            j = j3;
        }
        RangedUri rangedUri = singleSegmentBase != null ? singleSegmentBase.initialization : null;
        while (true) {
            xmlPullParser.next();
            RangedUri parseInitialization = ParserUtil.isStartTag(xmlPullParser, "Initialization") ? parseInitialization(xmlPullParser, str) : rangedUri;
            if (ParserUtil.isEndTag(xmlPullParser, "SegmentBase")) {
                return buildSingleSegmentBase(parseInitialization, parseLong, parseLong2, str, j2, j);
            }
            rangedUri = parseInitialization;
        }
    }

    protected SegmentBase.SingleSegmentBase buildSingleSegmentBase(RangedUri rangedUri, long j, long j2, String str, long j3, long j4) {
        return new SegmentBase.SingleSegmentBase(rangedUri, j, j2, str, j3, j4);
    }

    protected SegmentBase.SegmentList parseSegmentList(XmlPullParser xmlPullParser, String str, SegmentBase.SegmentList segmentList) {
        List<SegmentBase.SegmentTimelineElement> list;
        RangedUri rangedUri;
        List<RangedUri> list2;
        RangedUri rangedUri2;
        long parseLong = parseLong(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1L);
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0L);
        long parseLong3 = parseLong(xmlPullParser, "duration", segmentList != null ? segmentList.duration : -1L);
        int parseInt = parseInt(xmlPullParser, "startNumber", segmentList != null ? segmentList.startNumber : 1);
        List<RangedUri> list3 = null;
        List<SegmentBase.SegmentTimelineElement> list4 = null;
        RangedUri rangedUri3 = null;
        while (true) {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                list = list4;
                rangedUri = parseInitialization(xmlPullParser, str);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                list = parseSegmentTimeline(xmlPullParser);
                rangedUri = rangedUri3;
            } else {
                if (ParserUtil.isStartTag(xmlPullParser, "SegmentURL")) {
                    if (list3 == null) {
                        list3 = new ArrayList<>();
                    }
                    list3.add(parseSegmentUrl(xmlPullParser, str));
                }
                list = list4;
                rangedUri = rangedUri3;
            }
            if (ParserUtil.isEndTag(xmlPullParser, "SegmentList")) {
                break;
            }
            list4 = list;
            rangedUri3 = rangedUri;
        }
        if (segmentList != null) {
            rangedUri2 = rangedUri != null ? rangedUri : segmentList.initialization;
            if (list == null) {
                list = segmentList.segmentTimeline;
            }
            if (list3 == null) {
                list3 = segmentList.mediaSegments;
            }
            list2 = list3;
        } else {
            list2 = list3;
            rangedUri2 = rangedUri;
        }
        return buildSegmentList(rangedUri2, parseLong, parseLong2, parseInt, parseLong3, list, list2);
    }

    protected SegmentBase.SegmentList buildSegmentList(RangedUri rangedUri, long j, long j2, int i, long j3, List<SegmentBase.SegmentTimelineElement> list, List<RangedUri> list2) {
        return new SegmentBase.SegmentList(rangedUri, j, j2, i, j3, list, list2);
    }

    protected SegmentBase.SegmentTemplate parseSegmentTemplate(XmlPullParser xmlPullParser, String str, SegmentBase.SegmentTemplate segmentTemplate) {
        List<SegmentBase.SegmentTimelineElement> list;
        long parseLong = parseLong(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1L);
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0L);
        long parseLong3 = parseLong(xmlPullParser, "duration", segmentTemplate != null ? segmentTemplate.duration : -1L);
        int parseInt = parseInt(xmlPullParser, "startNumber", segmentTemplate != null ? segmentTemplate.startNumber : 1);
        UrlTemplate parseUrlTemplate = parseUrlTemplate(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        UrlTemplate parseUrlTemplate2 = parseUrlTemplate(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        RangedUri rangedUri = null;
        List<SegmentBase.SegmentTimelineElement> list2 = null;
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                rangedUri = parseInitialization(xmlPullParser, str);
            } else if (ParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                list2 = parseSegmentTimeline(xmlPullParser);
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, "SegmentTemplate"));
        if (segmentTemplate != null) {
            if (rangedUri == null) {
                rangedUri = segmentTemplate.initialization;
            }
            if (list2 == null) {
                list2 = segmentTemplate.segmentTimeline;
            }
            list = list2;
        } else {
            list = list2;
        }
        return buildSegmentTemplate(rangedUri, parseLong, parseLong2, parseInt, parseLong3, list, parseUrlTemplate2, parseUrlTemplate, str);
    }

    protected SegmentBase.SegmentTemplate buildSegmentTemplate(RangedUri rangedUri, long j, long j2, int i, long j3, List<SegmentBase.SegmentTimelineElement> list, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, String str) {
        return new SegmentBase.SegmentTemplate(rangedUri, j, j2, i, j3, list, urlTemplate, urlTemplate2, str);
    }

    protected List<SegmentBase.SegmentTimelineElement> parseSegmentTimeline(XmlPullParser xmlPullParser) {
        ArrayList arrayList = new ArrayList();
        long j = 0;
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, "S")) {
                j = parseLong(xmlPullParser, "t", j);
                long parseLong = parseLong(xmlPullParser, "d");
                int parseInt = parseInt(xmlPullParser, "r", 0) + 1;
                for (int i = 0; i < parseInt; i++) {
                    arrayList.add(buildSegmentTimelineElement(j, parseLong));
                    j += parseLong;
                }
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    protected SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long j, long j2) {
        return new SegmentBase.SegmentTimelineElement(j, j2);
    }

    protected UrlTemplate parseUrlTemplate(XmlPullParser xmlPullParser, String str, UrlTemplate urlTemplate) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return UrlTemplate.compile(attributeValue);
        }
        return urlTemplate;
    }

    protected RangedUri parseInitialization(XmlPullParser xmlPullParser, String str) {
        return parseRangedUrl(xmlPullParser, str, "sourceURL", "range");
    }

    protected RangedUri parseSegmentUrl(XmlPullParser xmlPullParser, String str) {
        return parseRangedUrl(xmlPullParser, str, "media", "mediaRange");
    }

    protected RangedUri parseRangedUrl(XmlPullParser xmlPullParser, String str, String str2, String str3) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str2);
        long j = 0;
        long j2 = -1;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str3);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j = Long.parseLong(split[0]);
            if (split.length == 2) {
                j2 = 1 + (Long.parseLong(split[1]) - j);
            }
        }
        return buildRangedUri(str, attributeValue, j, j2);
    }

    protected RangedUri buildRangedUri(String str, String str2, long j, long j2) {
        return new RangedUri(str, str2, j, j2);
    }

    protected int parseAudioChannelConfiguration(XmlPullParser xmlPullParser) {
        int i;
        if ("urn:mpeg:dash:23003:3:audio_channel_configuration:2011".equals(parseString(xmlPullParser, "schemeIdUri", null))) {
            i = parseInt(xmlPullParser, "value");
        } else {
            i = -1;
        }
        do {
            xmlPullParser.next();
        } while (!ParserUtil.isEndTag(xmlPullParser, "AudioChannelConfiguration"));
        return i;
    }

    private static String checkLanguageConsistency(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 != null) {
            Assertions.checkState(str.equals(str2));
            return str;
        }
        return str;
    }

    private static int checkContentTypeConsistency(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 != -1) {
            Assertions.checkState(i == i2);
            return i;
        }
        return i;
    }

    protected static float parseFrameRate(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = FRAME_RATE_PATTERN.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                if (!TextUtils.isEmpty(matcher.group(2))) {
                    return parseInt / Integer.parseInt(r0);
                }
                return parseInt;
            }
            return f;
        }
        return f;
    }

    protected static long parseDuration(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDuration(attributeValue);
    }

    protected static long parseDateTime(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDateTime(attributeValue);
    }

    protected static String parseBaseUrl(XmlPullParser xmlPullParser, String str) {
        xmlPullParser.next();
        return UriUtil.resolve(str, xmlPullParser.getText());
    }

    protected static int parseInt(XmlPullParser xmlPullParser, String str) {
        return parseInt(xmlPullParser, str, -1);
    }

    protected static int parseInt(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    protected static long parseLong(XmlPullParser xmlPullParser, String str) {
        return parseLong(xmlPullParser, str, -1L);
    }

    protected static long parseLong(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    protected static String parseString(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    protected static final class ContentProtectionsBuilder implements Comparator<ContentProtection> {
        private ArrayList<ContentProtection> adaptationSetProtections;
        private ArrayList<ContentProtection> currentRepresentationProtections;
        private ArrayList<ContentProtection> representationProtections;
        private boolean representationProtectionsSet;

        protected ContentProtectionsBuilder() {
        }

        public void addAdaptationSetProtection(ContentProtection contentProtection) {
            if (this.adaptationSetProtections == null) {
                this.adaptationSetProtections = new ArrayList<>();
            }
            maybeAddContentProtection(this.adaptationSetProtections, contentProtection);
        }

        public void addRepresentationProtection(ContentProtection contentProtection) {
            if (this.currentRepresentationProtections == null) {
                this.currentRepresentationProtections = new ArrayList<>();
            }
            maybeAddContentProtection(this.currentRepresentationProtections, contentProtection);
        }

        public void endRepresentation() {
            if (!this.representationProtectionsSet) {
                if (this.currentRepresentationProtections != null) {
                    Collections.sort(this.currentRepresentationProtections, this);
                }
                this.representationProtections = this.currentRepresentationProtections;
                this.representationProtectionsSet = true;
            } else if (this.currentRepresentationProtections == null) {
                Assertions.checkState(this.representationProtections == null);
            } else {
                Collections.sort(this.currentRepresentationProtections, this);
                Assertions.checkState(this.currentRepresentationProtections.equals(this.representationProtections));
            }
            this.currentRepresentationProtections = null;
        }

        public ArrayList<ContentProtection> build() {
            if (this.adaptationSetProtections == null) {
                return this.representationProtections;
            }
            if (this.representationProtections == null) {
                return this.adaptationSetProtections;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.representationProtections.size()) {
                    maybeAddContentProtection(this.adaptationSetProtections, this.representationProtections.get(i2));
                    i = i2 + 1;
                } else {
                    return this.adaptationSetProtections;
                }
            }
        }

        private void maybeAddContentProtection(List<ContentProtection> list, ContentProtection contentProtection) {
            if (!list.contains(contentProtection)) {
                for (int i = 0; i < list.size(); i++) {
                    Assertions.checkState(!list.get(i).schemeUriId.equals(contentProtection.schemeUriId));
                }
                list.add(contentProtection);
            }
        }

        @Override // java.util.Comparator
        public int compare(ContentProtection contentProtection, ContentProtection contentProtection2) {
            return contentProtection.schemeUriId.compareTo(contentProtection2.schemeUriId);
        }
    }
}
