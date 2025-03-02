package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Queue;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class HlsPlaylistParser implements UriLoadable.Parser<HlsPlaylist> {
    private static final String AUDIO_TYPE = "AUDIO";
    private static final String BANDWIDTH_ATTR = "BANDWIDTH";
    private static final String BYTERANGE_TAG = "#EXT-X-BYTERANGE";
    private static final String CLOSED_CAPTIONS_TYPE = "CLOSED-CAPTIONS";
    private static final String CODECS_ATTR = "CODECS";
    private static final String DISCONTINUITY_SEQUENCE_TAG = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String DISCONTINUITY_TAG = "#EXT-X-DISCONTINUITY";
    private static final String ENDLIST_TAG = "#EXT-X-ENDLIST";
    private static final String INSTREAM_ID_ATTR = "INSTREAM-ID";
    private static final String IV_ATTR = "IV";
    private static final String KEY_TAG = "#EXT-X-KEY";
    private static final String LANGUAGE_ATTR = "LANGUAGE";
    private static final String MEDIA_DURATION_TAG = "#EXTINF";
    private static final String MEDIA_SEQUENCE_TAG = "#EXT-X-MEDIA-SEQUENCE";
    private static final String MEDIA_TAG = "#EXT-X-MEDIA";
    private static final String METHOD_AES128 = "AES-128";
    private static final String METHOD_ATTR = "METHOD";
    private static final String METHOD_NONE = "NONE";
    private static final String NAME_ATTR = "NAME";
    private static final String RESOLUTION_ATTR = "RESOLUTION";
    private static final String STREAM_INF_TAG = "#EXT-X-STREAM-INF";
    private static final String SUBTITLES_TYPE = "SUBTITLES";
    private static final String TARGET_DURATION_TAG = "#EXT-X-TARGETDURATION";
    private static final String TYPE_ATTR = "TYPE";
    private static final String URI_ATTR = "URI";
    private static final String VERSION_TAG = "#EXT-X-VERSION";
    private static final String VIDEO_TYPE = "VIDEO";
    private static final Pattern BANDWIDTH_ATTR_REGEX = Pattern.compile("BANDWIDTH=(\\d+)\\b");
    private static final Pattern CODECS_ATTR_REGEX = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern RESOLUTION_ATTR_REGEX = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern MEDIA_DURATION_REGEX = Pattern.compile("#EXTINF:([\\d.]+)\\b");
    private static final Pattern MEDIA_SEQUENCE_REGEX = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern TARGET_DURATION_REGEX = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern VERSION_REGEX = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern BYTERANGE_REGEX = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern METHOD_ATTR_REGEX = Pattern.compile("METHOD=(NONE|AES-128)");
    private static final Pattern URI_ATTR_REGEX = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern IV_ATTR_REGEX = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern TYPE_ATTR_REGEX = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern LANGUAGE_ATTR_REGEX = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern NAME_ATTR_REGEX = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern INSTREAM_ID_ATTR_REGEX = Pattern.compile("INSTREAM-ID=\"(.+?)\"");

    @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
    public HlsPlaylist parse(String str, InputStream inputStream) {
        String trim;
        HlsPlaylist parseMasterPlaylist;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        LinkedList linkedList = new LinkedList();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    trim = readLine.trim();
                    if (!trim.isEmpty()) {
                        if (trim.startsWith(STREAM_INF_TAG)) {
                            linkedList.add(trim);
                            parseMasterPlaylist = parseMasterPlaylist(new LineIterator(linkedList, bufferedReader), str);
                            break;
                        }
                        if (trim.startsWith(TARGET_DURATION_TAG) || trim.startsWith(MEDIA_SEQUENCE_TAG) || trim.startsWith(MEDIA_DURATION_TAG) || trim.startsWith(KEY_TAG) || trim.startsWith(BYTERANGE_TAG) || trim.equals(DISCONTINUITY_TAG) || trim.equals(DISCONTINUITY_SEQUENCE_TAG) || trim.equals(ENDLIST_TAG)) {
                            break;
                        }
                        linkedList.add(trim);
                    }
                } else {
                    bufferedReader.close();
                    throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                }
            } finally {
                bufferedReader.close();
            }
        }
        linkedList.add(trim);
        parseMasterPlaylist = parseMediaPlaylist(new LineIterator(linkedList, bufferedReader), str);
        return parseMasterPlaylist;
    }

    private static HlsMasterPlaylist parseMasterPlaylist(LineIterator lineIterator, String str) {
        String str2;
        String str3;
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        String str4 = null;
        boolean z = false;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i3 = -1;
        int i4 = -1;
        int i5 = 0;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(MEDIA_TAG)) {
                String parseStringAttr = HlsParserUtil.parseStringAttr(next, TYPE_ATTR_REGEX, TYPE_ATTR);
                if (CLOSED_CAPTIONS_TYPE.equals(parseStringAttr)) {
                    if ("CC1".equals(HlsParserUtil.parseStringAttr(next, INSTREAM_ID_ATTR_REGEX, INSTREAM_ID_ATTR))) {
                        str5 = HlsParserUtil.parseOptionalStringAttr(next, LANGUAGE_ATTR_REGEX);
                    }
                    str2 = str5;
                    str3 = str6;
                } else if (SUBTITLES_TYPE.equals(parseStringAttr)) {
                    arrayList3.add(new Variant(HlsParserUtil.parseStringAttr(next, URI_ATTR_REGEX, URI_ATTR), new Format(HlsParserUtil.parseStringAttr(next, NAME_ATTR_REGEX, NAME_ATTR), MimeTypes.APPLICATION_M3U8, -1, -1, -1.0f, -1, -1, -1, HlsParserUtil.parseOptionalStringAttr(next, LANGUAGE_ATTR_REGEX), str4)));
                    str2 = str5;
                    str3 = str6;
                } else if (AUDIO_TYPE.equals(parseStringAttr)) {
                    String parseOptionalStringAttr = HlsParserUtil.parseOptionalStringAttr(next, LANGUAGE_ATTR_REGEX);
                    String parseOptionalStringAttr2 = HlsParserUtil.parseOptionalStringAttr(next, URI_ATTR_REGEX);
                    if (parseOptionalStringAttr2 != null) {
                        arrayList2.add(new Variant(parseOptionalStringAttr2, new Format(HlsParserUtil.parseStringAttr(next, NAME_ATTR_REGEX, NAME_ATTR), MimeTypes.APPLICATION_M3U8, -1, -1, -1.0f, -1, -1, -1, parseOptionalStringAttr, str4)));
                        str2 = str5;
                        str3 = str6;
                    } else {
                        str2 = str5;
                        str3 = parseOptionalStringAttr;
                    }
                } else {
                    str2 = str5;
                    str3 = str6;
                }
                str5 = str2;
                str6 = str3;
            } else if (next.startsWith(STREAM_INF_TAG)) {
                int parseIntAttr = HlsParserUtil.parseIntAttr(next, BANDWIDTH_ATTR_REGEX, BANDWIDTH_ATTR);
                str4 = HlsParserUtil.parseOptionalStringAttr(next, CODECS_ATTR_REGEX);
                String parseOptionalStringAttr3 = HlsParserUtil.parseOptionalStringAttr(next, NAME_ATTR_REGEX);
                String parseOptionalStringAttr4 = HlsParserUtil.parseOptionalStringAttr(next, RESOLUTION_ATTR_REGEX);
                if (parseOptionalStringAttr4 != null) {
                    String[] split = parseOptionalStringAttr4.split("x");
                    i = Integer.parseInt(split[0]);
                    if (i <= 0) {
                        i = -1;
                    }
                    i2 = Integer.parseInt(split[1]);
                    if (i2 <= 0) {
                        i2 = -1;
                    }
                } else {
                    i = -1;
                    i2 = -1;
                }
                z = true;
                str7 = parseOptionalStringAttr3;
                i3 = i2;
                i4 = i;
                i5 = parseIntAttr;
            } else if (!next.startsWith("#") && z) {
                arrayList.add(new Variant(next, new Format(str7 == null ? Integer.toString(arrayList.size()) : str7, MimeTypes.APPLICATION_M3U8, i4, i3, -1.0f, -1, -1, i5, null, str4)));
                str4 = null;
                z = false;
                str7 = null;
                i3 = -1;
                i4 = -1;
                i5 = 0;
            }
        }
        return new HlsMasterPlaylist(str, arrayList, arrayList2, arrayList3, str6, str5);
    }

    private static HlsMediaPlaylist parseMediaPlaylist(LineIterator lineIterator, String str) {
        String str2;
        String str3;
        String hexString;
        int i = 0;
        ArrayList arrayList = new ArrayList();
        double d = 0.0d;
        int i2 = 0;
        long j = 0;
        long j2 = 0;
        long j3 = -1;
        boolean z = false;
        String str4 = null;
        String str5 = null;
        int i3 = 0;
        boolean z2 = true;
        int i4 = 1;
        int i5 = 0;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(TARGET_DURATION_TAG)) {
                i5 = HlsParserUtil.parseIntAttr(next, TARGET_DURATION_REGEX, TARGET_DURATION_TAG);
            } else if (next.startsWith(MEDIA_SEQUENCE_TAG)) {
                int parseIntAttr = HlsParserUtil.parseIntAttr(next, MEDIA_SEQUENCE_REGEX, MEDIA_SEQUENCE_TAG);
                i3 = parseIntAttr;
                i = parseIntAttr;
            } else if (next.startsWith(VERSION_TAG)) {
                i4 = HlsParserUtil.parseIntAttr(next, VERSION_REGEX, VERSION_TAG);
            } else if (next.startsWith(MEDIA_DURATION_TAG)) {
                d = HlsParserUtil.parseDoubleAttr(next, MEDIA_DURATION_REGEX, MEDIA_DURATION_TAG);
            } else if (next.startsWith(KEY_TAG)) {
                boolean equals = "AES-128".equals(HlsParserUtil.parseStringAttr(next, METHOD_ATTR_REGEX, METHOD_ATTR));
                if (equals) {
                    String parseStringAttr = HlsParserUtil.parseStringAttr(next, URI_ATTR_REGEX, URI_ATTR);
                    str3 = HlsParserUtil.parseOptionalStringAttr(next, IV_ATTR_REGEX);
                    str2 = parseStringAttr;
                } else {
                    str2 = null;
                    str3 = null;
                }
                str5 = str3;
                str4 = str2;
                z = equals;
            } else if (next.startsWith(BYTERANGE_TAG)) {
                String[] split = HlsParserUtil.parseStringAttr(next, BYTERANGE_REGEX, BYTERANGE_TAG).split("@");
                j3 = Long.parseLong(split[0]);
                j2 = split.length > 1 ? Long.parseLong(split[1]) : j2;
            } else if (next.startsWith(DISCONTINUITY_SEQUENCE_TAG)) {
                i2 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
            } else if (next.equals(DISCONTINUITY_TAG)) {
                i2++;
            } else if (!next.startsWith("#")) {
                if (!z) {
                    hexString = null;
                } else {
                    hexString = str5 != null ? str5 : Integer.toHexString(i3);
                }
                int i6 = i3 + 1;
                long j4 = j3 == -1 ? 0L : j2;
                arrayList.add(new HlsMediaPlaylist.Segment(next, d, i2, j, z, str4, hexString, j4, j3));
                j += (long) (1000000.0d * d);
                d = 0.0d;
                long j5 = j3 != -1 ? j4 + j3 : j4;
                j3 = -1;
                i3 = i6;
                j2 = j5;
            } else if (next.equals(ENDLIST_TAG)) {
                z2 = false;
            }
        }
        return new HlsMediaPlaylist(str, i, i5, i4, z2, Collections.unmodifiableList(arrayList));
    }

    private static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = this.extraLines.poll();
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine != null) {
                    this.next = this.next.trim();
                } else {
                    return false;
                }
            } while (this.next.isEmpty());
            return true;
        }

        public String next() {
            if (!hasNext()) {
                return null;
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }
}
