package com.google.android.exoplayer.smoothstreaming;

import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class SmoothStreamingManifestParser implements UriLoadable.Parser<SmoothStreamingManifest> {
    private final XmlPullParserFactory xmlParserFactory;

    public SmoothStreamingManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
    public SmoothStreamingManifest parse(String str, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (SmoothStreamingManifest) new SmoothStreamMediaParser(null, str).parse(newPullParser);
        } catch (XmlPullParserException e) {
            throw new ParserException(e);
        }
    }

    public static class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str);
        }
    }

    private static abstract class ElementParser {
        private final String baseUri;
        private final List<Pair<String, Object>> normalizedAttributes = new LinkedList();
        private final ElementParser parent;
        private final String tag;

        protected abstract Object build();

        public ElementParser(ElementParser elementParser, String str, String str2) {
            this.parent = elementParser;
            this.baseUri = str;
            this.tag = str2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public final Object parse(XmlPullParser xmlPullParser) {
            boolean z = false;
            int i = 0;
            while (true) {
                boolean z2 = z;
                switch (xmlPullParser.getEventType()) {
                    case 1:
                        return null;
                    case 2:
                        String name = xmlPullParser.getName();
                        if (this.tag.equals(name)) {
                            parseStartTag(xmlPullParser);
                            z = true;
                        } else {
                            if (z2) {
                                if (i > 0) {
                                    i++;
                                    z = z2;
                                } else if (handleChildInline(name)) {
                                    parseStartTag(xmlPullParser);
                                    z = z2;
                                } else {
                                    ElementParser newChildParser = newChildParser(this, name, this.baseUri);
                                    if (newChildParser == null) {
                                        i = 1;
                                    } else {
                                        addChild(newChildParser.parse(xmlPullParser));
                                    }
                                    z = z2;
                                }
                            }
                            z = z2;
                        }
                        xmlPullParser.next();
                    case 3:
                        if (z2) {
                            if (i > 0) {
                                i--;
                                z = z2;
                                xmlPullParser.next();
                            } else {
                                String name2 = xmlPullParser.getName();
                                parseEndTag(xmlPullParser);
                                if (!handleChildInline(name2)) {
                                    return build();
                                }
                            }
                        }
                        z = z2;
                        xmlPullParser.next();
                    case 4:
                        if (z2 && i == 0) {
                            parseText(xmlPullParser);
                            z = z2;
                            xmlPullParser.next();
                        }
                        z = z2;
                        xmlPullParser.next();
                    default:
                        z = z2;
                        xmlPullParser.next();
                }
            }
        }

        private ElementParser newChildParser(ElementParser elementParser, String str, String str2) {
            if (TrackElementParser.TAG.equals(str)) {
                return new TrackElementParser(elementParser, str2);
            }
            if (ProtectionElementParser.TAG.equals(str)) {
                return new ProtectionElementParser(elementParser, str2);
            }
            if (StreamElementParser.TAG.equals(str)) {
                return new StreamElementParser(elementParser, str2);
            }
            return null;
        }

        protected final void putNormalizedAttribute(String str, Object obj) {
            this.normalizedAttributes.add(Pair.create(str, obj));
        }

        protected final Object getNormalizedAttribute(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.normalizedAttributes.size()) {
                    Pair<String, Object> pair = this.normalizedAttributes.get(i2);
                    if (!((String) pair.first).equals(str)) {
                        i = i2 + 1;
                    } else {
                        return pair.second;
                    }
                } else {
                    if (this.parent == null) {
                        return null;
                    }
                    return this.parent.getNormalizedAttribute(str);
                }
            }
        }

        protected boolean handleChildInline(String str) {
            return false;
        }

        protected void parseStartTag(XmlPullParser xmlPullParser) {
        }

        protected void parseText(XmlPullParser xmlPullParser) {
        }

        protected void parseEndTag(XmlPullParser xmlPullParser) {
        }

        protected void addChild(Object obj) {
        }

        protected final String parseRequiredString(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected final int parseInt(XmlPullParser xmlPullParser, String str, int i) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            return i;
        }

        protected final int parseRequiredInt(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final long parseLong(XmlPullParser xmlPullParser, String str, long j) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            return j;
        }

        protected final long parseRequiredLong(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final boolean parseBoolean(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return Boolean.parseBoolean(attributeValue);
            }
            return z;
        }
    }

    private static class SmoothStreamMediaParser extends ElementParser {
        private static final String KEY_DURATION = "Duration";
        private static final String KEY_DVR_WINDOW_LENGTH = "DVRWindowLength";
        private static final String KEY_IS_LIVE = "IsLive";
        private static final String KEY_LOOKAHEAD_COUNT = "LookaheadCount";
        private static final String KEY_MAJOR_VERSION = "MajorVersion";
        private static final String KEY_MINOR_VERSION = "MinorVersion";
        private static final String KEY_TIME_SCALE = "TimeScale";
        public static final String TAG = "SmoothStreamingMedia";
        private long duration;
        private long dvrWindowLength;
        private boolean isLive;
        private int lookAheadCount;
        private int majorVersion;
        private int minorVersion;
        private SmoothStreamingManifest.ProtectionElement protectionElement;
        private List<SmoothStreamingManifest.StreamElement> streamElements;
        private long timescale;

        public SmoothStreamMediaParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.lookAheadCount = -1;
            this.protectionElement = null;
            this.streamElements = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            this.majorVersion = parseRequiredInt(xmlPullParser, KEY_MAJOR_VERSION);
            this.minorVersion = parseRequiredInt(xmlPullParser, KEY_MINOR_VERSION);
            this.timescale = parseLong(xmlPullParser, KEY_TIME_SCALE, 10000000L);
            this.duration = parseRequiredLong(xmlPullParser, KEY_DURATION);
            this.dvrWindowLength = parseLong(xmlPullParser, KEY_DVR_WINDOW_LENGTH, 0L);
            this.lookAheadCount = parseInt(xmlPullParser, KEY_LOOKAHEAD_COUNT, -1);
            this.isLive = parseBoolean(xmlPullParser, KEY_IS_LIVE, false);
            putNormalizedAttribute(KEY_TIME_SCALE, Long.valueOf(this.timescale));
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof SmoothStreamingManifest.StreamElement) {
                this.streamElements.add((SmoothStreamingManifest.StreamElement) obj);
            } else if (obj instanceof SmoothStreamingManifest.ProtectionElement) {
                Assertions.checkState(this.protectionElement == null);
                this.protectionElement = (SmoothStreamingManifest.ProtectionElement) obj;
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            SmoothStreamingManifest.StreamElement[] streamElementArr = new SmoothStreamingManifest.StreamElement[this.streamElements.size()];
            this.streamElements.toArray(streamElementArr);
            return new SmoothStreamingManifest(this.majorVersion, this.minorVersion, this.timescale, this.duration, this.dvrWindowLength, this.lookAheadCount, this.isLive, this.protectionElement, streamElementArr);
        }
    }

    private static class ProtectionElementParser extends ElementParser {
        public static final String KEY_SYSTEM_ID = "SystemID";
        public static final String TAG = "Protection";
        public static final String TAG_PROTECTION_HEADER = "ProtectionHeader";
        private boolean inProtectionHeader;
        private byte[] initData;
        private UUID uuid;

        public ProtectionElementParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return TAG_PROTECTION_HEADER.equals(str);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = true;
                this.uuid = UUID.fromString(stripCurlyBraces(xmlPullParser.getAttributeValue(null, KEY_SYSTEM_ID)));
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseText(XmlPullParser xmlPullParser) {
            if (this.inProtectionHeader) {
                this.initData = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseEndTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = false;
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            return new SmoothStreamingManifest.ProtectionElement(this.uuid, PsshAtomUtil.buildPsshAtom(this.uuid, this.initData));
        }

        private static String stripCurlyBraces(String str) {
            if (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') {
                return str.substring(1, str.length() - 1);
            }
            return str;
        }
    }

    private static class StreamElementParser extends ElementParser {
        private static final String KEY_DISPLAY_HEIGHT = "DisplayHeight";
        private static final String KEY_DISPLAY_WIDTH = "DisplayWidth";
        private static final String KEY_FRAGMENT_DURATION = "d";
        private static final String KEY_FRAGMENT_REPEAT_COUNT = "r";
        private static final String KEY_FRAGMENT_START_TIME = "t";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_QUALITY_LEVELS = "QualityLevels";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TIME_SCALE = "TimeScale";
        private static final String KEY_TYPE = "Type";
        private static final String KEY_TYPE_AUDIO = "audio";
        private static final String KEY_TYPE_TEXT = "text";
        private static final String KEY_TYPE_VIDEO = "video";
        private static final String KEY_URL = "Url";
        public static final String TAG = "StreamIndex";
        private static final String TAG_STREAM_FRAGMENT = "c";
        private final String baseUri;
        private int displayHeight;
        private int displayWidth;
        private String language;
        private long lastChunkDuration;
        private int maxHeight;
        private int maxWidth;
        private String name;
        private int qualityLevels;
        private ArrayList<Long> startTimes;
        private String subType;
        private long timescale;
        private final List<SmoothStreamingManifest.TrackElement> tracks;
        private int type;
        private String url;

        public StreamElementParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.baseUri = str;
            this.tracks = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return TAG_STREAM_FRAGMENT.equals(str);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            if (TAG_STREAM_FRAGMENT.equals(xmlPullParser.getName())) {
                parseStreamFragmentStartTag(xmlPullParser);
            } else {
                parseStreamElementStartTag(xmlPullParser);
            }
        }

        private void parseStreamFragmentStartTag(XmlPullParser xmlPullParser) {
            int size = this.startTimes.size();
            long parseLong = parseLong(xmlPullParser, KEY_FRAGMENT_START_TIME, -1L);
            if (parseLong == -1) {
                if (size == 0) {
                    parseLong = 0;
                } else if (this.lastChunkDuration != -1) {
                    parseLong = this.startTimes.get(size - 1).longValue() + this.lastChunkDuration;
                } else {
                    throw new ParserException("Unable to infer start time");
                }
            }
            int i = size + 1;
            this.startTimes.add(Long.valueOf(parseLong));
            this.lastChunkDuration = parseLong(xmlPullParser, KEY_FRAGMENT_DURATION, -1L);
            long parseLong2 = parseLong(xmlPullParser, KEY_FRAGMENT_REPEAT_COUNT, 1L);
            if (parseLong2 > 1 && this.lastChunkDuration == -1) {
                throw new ParserException("Repeated chunk with unspecified duration");
            }
            for (int i2 = 1; i2 < parseLong2; i2++) {
                i++;
                this.startTimes.add(Long.valueOf((this.lastChunkDuration * i2) + parseLong));
            }
        }

        private void parseStreamElementStartTag(XmlPullParser xmlPullParser) {
            this.type = parseType(xmlPullParser);
            putNormalizedAttribute(KEY_TYPE, Integer.valueOf(this.type));
            if (this.type == 2) {
                this.subType = parseRequiredString(xmlPullParser, KEY_SUB_TYPE);
            } else {
                this.subType = xmlPullParser.getAttributeValue(null, KEY_SUB_TYPE);
            }
            this.name = xmlPullParser.getAttributeValue(null, KEY_NAME);
            this.qualityLevels = parseInt(xmlPullParser, KEY_QUALITY_LEVELS, -1);
            this.url = parseRequiredString(xmlPullParser, KEY_URL);
            this.maxWidth = parseInt(xmlPullParser, KEY_MAX_WIDTH, -1);
            this.maxHeight = parseInt(xmlPullParser, KEY_MAX_HEIGHT, -1);
            this.displayWidth = parseInt(xmlPullParser, KEY_DISPLAY_WIDTH, -1);
            this.displayHeight = parseInt(xmlPullParser, KEY_DISPLAY_HEIGHT, -1);
            this.language = xmlPullParser.getAttributeValue(null, KEY_LANGUAGE);
            putNormalizedAttribute(KEY_LANGUAGE, this.language);
            this.timescale = parseInt(xmlPullParser, KEY_TIME_SCALE, -1);
            if (this.timescale == -1) {
                this.timescale = ((Long) getNormalizedAttribute(KEY_TIME_SCALE)).longValue();
            }
            this.startTimes = new ArrayList<>();
        }

        private int parseType(XmlPullParser xmlPullParser) {
            String attributeValue = xmlPullParser.getAttributeValue(null, KEY_TYPE);
            if (attributeValue != null) {
                if ("audio".equalsIgnoreCase(attributeValue)) {
                    return 0;
                }
                if ("video".equalsIgnoreCase(attributeValue)) {
                    return 1;
                }
                if ("text".equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                throw new ParserException("Invalid key value[" + attributeValue + "]");
            }
            throw new MissingFieldException(KEY_TYPE);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof SmoothStreamingManifest.TrackElement) {
                this.tracks.add((SmoothStreamingManifest.TrackElement) obj);
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            SmoothStreamingManifest.TrackElement[] trackElementArr = new SmoothStreamingManifest.TrackElement[this.tracks.size()];
            this.tracks.toArray(trackElementArr);
            return new SmoothStreamingManifest.StreamElement(this.baseUri, this.url, this.type, this.subType, this.timescale, this.name, this.qualityLevels, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, trackElementArr, this.startTimes, this.lastChunkDuration);
        }
    }

    private static class TrackElementParser extends ElementParser {
        private static final String KEY_BITRATE = "Bitrate";
        private static final String KEY_CHANNELS = "Channels";
        private static final String KEY_CODEC_PRIVATE_DATA = "CodecPrivateData";
        private static final String KEY_FOUR_CC = "FourCC";
        private static final String KEY_INDEX = "Index";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_SAMPLING_RATE = "SamplingRate";
        private static final String KEY_TYPE = "Type";
        public static final String TAG = "QualityLevel";
        private int bitrate;
        private int channels;
        private final List<byte[]> csd;
        private int index;
        private String language;
        private int maxHeight;
        private int maxWidth;
        private String mimeType;
        private int samplingRate;

        public TrackElementParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.csd = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            int intValue = ((Integer) getNormalizedAttribute(KEY_TYPE)).intValue();
            this.index = parseInt(xmlPullParser, KEY_INDEX, -1);
            this.bitrate = parseRequiredInt(xmlPullParser, KEY_BITRATE);
            this.language = (String) getNormalizedAttribute(KEY_LANGUAGE);
            if (intValue == 1) {
                this.maxHeight = parseRequiredInt(xmlPullParser, KEY_MAX_HEIGHT);
                this.maxWidth = parseRequiredInt(xmlPullParser, KEY_MAX_WIDTH);
                this.mimeType = fourCCToMimeType(parseRequiredString(xmlPullParser, KEY_FOUR_CC));
            } else {
                this.maxHeight = -1;
                this.maxWidth = -1;
                String attributeValue = xmlPullParser.getAttributeValue(null, KEY_FOUR_CC);
                this.mimeType = attributeValue != null ? fourCCToMimeType(attributeValue) : intValue == 0 ? MimeTypes.AUDIO_AAC : null;
            }
            if (intValue == 0) {
                this.samplingRate = parseRequiredInt(xmlPullParser, KEY_SAMPLING_RATE);
                this.channels = parseRequiredInt(xmlPullParser, KEY_CHANNELS);
            } else {
                this.samplingRate = -1;
                this.channels = -1;
            }
            String attributeValue2 = xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA);
            if (attributeValue2 != null && attributeValue2.length() > 0) {
                byte[] bytesFromHexString = Util.getBytesFromHexString(attributeValue2);
                byte[][] splitNalUnits = CodecSpecificDataUtil.splitNalUnits(bytesFromHexString);
                if (splitNalUnits == null) {
                    this.csd.add(bytesFromHexString);
                    return;
                }
                for (byte[] bArr : splitNalUnits) {
                    this.csd.add(bArr);
                }
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            byte[][] bArr;
            byte[][] bArr2 = (byte[][]) null;
            if (this.csd.isEmpty()) {
                bArr = bArr2;
            } else {
                bArr = new byte[this.csd.size()][];
                this.csd.toArray(bArr);
            }
            return new SmoothStreamingManifest.TrackElement(this.index, this.bitrate, this.mimeType, bArr, this.maxWidth, this.maxHeight, this.samplingRate, this.channels, this.language);
        }

        private static String fourCCToMimeType(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return MimeTypes.VIDEO_H264;
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML")) {
                return MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return MimeTypes.AUDIO_OPUS;
            }
            return null;
        }
    }
}
