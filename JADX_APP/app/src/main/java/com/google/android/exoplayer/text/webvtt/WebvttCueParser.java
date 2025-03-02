package com.google.android.exoplayer.text.webvtt;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import com.google.android.exoplayer.text.webvtt.WebvttCue;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class WebvttCueParser {
    private static final char CHAR_AMPERSAND = '&';
    private static final char CHAR_GREATER_THAN = '>';
    private static final char CHAR_LESS_THAN = '<';
    private static final char CHAR_SEMI_COLON = ';';
    private static final char CHAR_SLASH = '/';
    private static final char CHAR_SPACE = ' ';
    private static final String ENTITY_AMPERSAND = "amp";
    private static final String ENTITY_GREATER_THAN = "gt";
    private static final String ENTITY_LESS_THAN = "lt";
    private static final String ENTITY_NON_BREAK_SPACE = "nbsp";
    private static final String SPACE = " ";
    private static final int STYLE_BOLD = 1;
    private static final int STYLE_ITALIC = 2;
    private static final String TAG = "WebvttCueParser";
    private static final String TAG_BOLD = "b";
    private static final String TAG_CLASS = "c";
    private static final String TAG_ITALIC = "i";
    private static final String TAG_LANG = "lang";
    private static final String TAG_UNDERLINE = "u";
    private static final String TAG_VOICE = "v";
    private final StringBuilder textBuilder = new StringBuilder();
    public static final Pattern CUE_HEADER_PATTERN = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern COMMENT = Pattern.compile("^NOTE(( |\t).*)?$");
    private static final Pattern CUE_SETTING_PATTERN = Pattern.compile("(\\S+?):(\\S+)");

    boolean parseNextValidCue(ParsableByteArray parsableByteArray, WebvttCue.Builder builder) {
        Matcher findNextCueHeader;
        do {
            findNextCueHeader = findNextCueHeader(parsableByteArray);
            if (findNextCueHeader == null) {
                return false;
            }
        } while (!parseCue(findNextCueHeader, parsableByteArray, builder, this.textBuilder));
        return true;
    }

    static void parseCueSettingsList(String str, WebvttCue.Builder builder) {
        Matcher matcher = CUE_SETTING_PATTERN.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    parseLineAttribute(group2, builder);
                } else if ("align".equals(group)) {
                    builder.setTextAlignment(parseTextAlignment(group2));
                } else if ("position".equals(group)) {
                    parsePositionAttribute(group2, builder);
                } else if ("size".equals(group)) {
                    builder.setWidth(WebvttParserUtil.parsePercentage(group2));
                } else {
                    Log.w(TAG, "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException e) {
                Log.w(TAG, "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    public static Matcher findNextCueHeader(ParsableByteArray parsableByteArray) {
        String readLine;
        while (true) {
            String readLine2 = parsableByteArray.readLine();
            if (readLine2 == null) {
                return null;
            }
            if (COMMENT.matcher(readLine2).matches()) {
                do {
                    readLine = parsableByteArray.readLine();
                    if (readLine != null) {
                    }
                } while (!readLine.isEmpty());
            } else {
                Matcher matcher = CUE_HEADER_PATTERN.matcher(readLine2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    static void parseCueText(String str, WebvttCue.Builder builder) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Stack stack = new Stack();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case '&':
                    int indexOf = str.indexOf(59, i + 1);
                    int indexOf2 = str.indexOf(32, i + 1);
                    if (indexOf == -1) {
                        indexOf = indexOf2;
                    } else if (indexOf2 != -1) {
                        indexOf = Math.min(indexOf, indexOf2);
                    }
                    if (indexOf != -1) {
                        applyEntity(str.substring(i + 1, indexOf), spannableStringBuilder);
                        if (indexOf == indexOf2) {
                            spannableStringBuilder.append((CharSequence) SPACE);
                        }
                        i = indexOf + 1;
                        break;
                    } else {
                        spannableStringBuilder.append(charAt);
                        i++;
                        break;
                    }
                case '<':
                    if (i + 1 >= str.length()) {
                        i++;
                        break;
                    } else {
                        boolean z = str.charAt(i + 1) == '/';
                        int findEndOfTag = findEndOfTag(str, i + 1);
                        boolean z2 = str.charAt(findEndOfTag + (-2)) == '/';
                        String[] strArr = tokenizeTag(str.substring((z ? 2 : 1) + i, z2 ? findEndOfTag - 2 : findEndOfTag - 1));
                        if (strArr != null) {
                            if (!isSupportedTag(strArr[0])) {
                                i = findEndOfTag;
                                break;
                            } else if (z) {
                                while (!stack.isEmpty()) {
                                    StartTag startTag = (StartTag) stack.pop();
                                    applySpansForTag(startTag, spannableStringBuilder);
                                    if (startTag.name.equals(strArr[0])) {
                                        i = findEndOfTag;
                                        break;
                                    }
                                }
                                i = findEndOfTag;
                            } else if (!z2) {
                                stack.push(new StartTag(strArr[0], spannableStringBuilder.length()));
                                i = findEndOfTag;
                                break;
                            }
                        }
                        i = findEndOfTag;
                        break;
                    }
                default:
                    spannableStringBuilder.append(charAt);
                    i++;
                    break;
            }
        }
        while (!stack.isEmpty()) {
            applySpansForTag((StartTag) stack.pop(), spannableStringBuilder);
        }
        builder.setText(spannableStringBuilder);
    }

    private static boolean parseCue(Matcher matcher, ParsableByteArray parsableByteArray, WebvttCue.Builder builder, StringBuilder sb) {
        try {
            builder.setStartTime(WebvttParserUtil.parseTimestampUs(matcher.group(1))).setEndTime(WebvttParserUtil.parseTimestampUs(matcher.group(2)));
            parseCueSettingsList(matcher.group(3), builder);
            sb.setLength(0);
            while (true) {
                String readLine = parsableByteArray.readLine();
                if (readLine == null || readLine.isEmpty()) {
                    break;
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(readLine.trim());
            }
            parseCueText(sb.toString(), builder);
            return true;
        } catch (NumberFormatException e) {
            Log.w(TAG, "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    private static void parseLineAttribute(String str, WebvttCue.Builder builder) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            builder.setLineAnchor(parsePositionAnchor(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            builder.setLineAnchor(Integer.MIN_VALUE);
        }
        if (str.endsWith("%")) {
            builder.setLine(WebvttParserUtil.parsePercentage(str)).setLineType(0);
        } else {
            builder.setLine(Integer.parseInt(str)).setLineType(1);
        }
    }

    private static void parsePositionAttribute(String str, WebvttCue.Builder builder) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            builder.setPositionAnchor(parsePositionAnchor(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            builder.setPositionAnchor(Integer.MIN_VALUE);
        }
        builder.setPosition(WebvttParserUtil.parsePercentage(str));
    }

    private static int parsePositionAnchor(String str) {
        switch (str) {
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            default:
                Log.w(TAG, "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static Layout.Alignment parseTextAlignment(String str) {
        switch (str) {
            case "start":
            case "left":
                return Layout.Alignment.ALIGN_NORMAL;
            case "center":
            case "middle":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            default:
                Log.w(TAG, "Invalid alignment value: " + str);
                return null;
        }
    }

    private static int findEndOfTag(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static void applyEntity(String str, SpannableStringBuilder spannableStringBuilder) {
        switch (str) {
            case "lt":
                spannableStringBuilder.append(CHAR_LESS_THAN);
                break;
            case "gt":
                spannableStringBuilder.append(CHAR_GREATER_THAN);
                break;
            case "nbsp":
                spannableStringBuilder.append(CHAR_SPACE);
                break;
            case "amp":
                spannableStringBuilder.append(CHAR_AMPERSAND);
                break;
            default:
                Log.w(TAG, "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static boolean isSupportedTag(String str) {
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "lang":
            case "u":
            case "v":
                return true;
            default:
                return false;
        }
    }

    private static void applySpansForTag(StartTag startTag, SpannableStringBuilder spannableStringBuilder) {
        switch (startTag.name) {
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), startTag.position, spannableStringBuilder.length(), 33);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), startTag.position, spannableStringBuilder.length(), 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), startTag.position, spannableStringBuilder.length(), 33);
                break;
        }
    }

    private static String[] tokenizeTag(String str) {
        String trim = str.replace("\\s+", SPACE).trim();
        if (trim.length() == 0) {
            return null;
        }
        if (trim.contains(SPACE)) {
            trim = trim.substring(0, trim.indexOf(SPACE));
        }
        return trim.split("\\.");
    }

    private static final class StartTag {
        public final String name;
        public final int position;

        public StartTag(String str, int i) {
            this.position = i;
            this.name = str;
        }
    }
}
