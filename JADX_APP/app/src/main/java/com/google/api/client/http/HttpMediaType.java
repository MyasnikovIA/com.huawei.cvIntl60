package com.google.api.client.http;

import com.google.android.exoplayer.util.MimeTypes;
import com.google.api.client.util.Preconditions;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class HttpMediaType {
    private static final Pattern FULL_MEDIA_TYPE_REGEX;
    private static final Pattern PARAMETER_REGEX;
    private String cachedBuildResult;
    private static final Pattern TYPE_REGEX = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
    private static final Pattern TOKEN_REGEX = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private String type = MimeTypes.BASE_TYPE_APPLICATION;
    private String subType = "octet-stream";
    private final SortedMap<String, String> parameters = new TreeMap();

    static {
        String valueOf = String.valueOf(String.valueOf("[^\\s/=;\"]+"));
        String valueOf2 = String.valueOf(String.valueOf("[^\\s/=;\"]+"));
        String valueOf3 = String.valueOf(String.valueOf(";.*"));
        FULL_MEDIA_TYPE_REGEX = Pattern.compile(new StringBuilder(valueOf.length() + 14 + valueOf2.length() + valueOf3.length()).append("\\s*(").append(valueOf).append(")/(").append(valueOf2).append(")").append("\\s*(").append(valueOf3).append(")?").toString(), 32);
        String valueOf4 = String.valueOf(String.valueOf("\"([^\"]*)\""));
        String valueOf5 = String.valueOf(String.valueOf("[^\\s;\"]*"));
        String sb = new StringBuilder(valueOf4.length() + 1 + valueOf5.length()).append(valueOf4).append("|").append(valueOf5).toString();
        String valueOf6 = String.valueOf(String.valueOf("[^\\s/=;\"]+"));
        String valueOf7 = String.valueOf(String.valueOf(sb));
        PARAMETER_REGEX = Pattern.compile(new StringBuilder(valueOf6.length() + 12 + valueOf7.length()).append("\\s*;\\s*(").append(valueOf6).append(")").append("=(").append(valueOf7).append(")").toString());
    }

    public HttpMediaType(String str, String str2) {
        setType(str);
        setSubType(str2);
    }

    public HttpMediaType(String str) {
        fromString(str);
    }

    public HttpMediaType setType(String str) {
        Preconditions.checkArgument(TYPE_REGEX.matcher(str).matches(), "Type contains reserved characters");
        this.type = str;
        this.cachedBuildResult = null;
        return this;
    }

    public String getType() {
        return this.type;
    }

    public HttpMediaType setSubType(String str) {
        Preconditions.checkArgument(TYPE_REGEX.matcher(str).matches(), "Subtype contains reserved characters");
        this.subType = str;
        this.cachedBuildResult = null;
        return this;
    }

    public String getSubType() {
        return this.subType;
    }

    private HttpMediaType fromString(String str) {
        Matcher matcher = FULL_MEDIA_TYPE_REGEX.matcher(str);
        Preconditions.checkArgument(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        setType(matcher.group(1));
        setSubType(matcher.group(2));
        String group = matcher.group(3);
        if (group != null) {
            Matcher matcher2 = PARAMETER_REGEX.matcher(group);
            while (matcher2.find()) {
                String group2 = matcher2.group(1);
                String group3 = matcher2.group(3);
                if (group3 == null) {
                    group3 = matcher2.group(2);
                }
                setParameter(group2, group3);
            }
        }
        return this;
    }

    public HttpMediaType setParameter(String str, String str2) {
        if (str2 == null) {
            removeParameter(str);
        } else {
            Preconditions.checkArgument(TOKEN_REGEX.matcher(str).matches(), "Name contains reserved characters");
            this.cachedBuildResult = null;
            this.parameters.put(str.toLowerCase(), str2);
        }
        return this;
    }

    public String getParameter(String str) {
        return this.parameters.get(str.toLowerCase());
    }

    public HttpMediaType removeParameter(String str) {
        this.cachedBuildResult = null;
        this.parameters.remove(str.toLowerCase());
        return this;
    }

    public void clearParameters() {
        this.cachedBuildResult = null;
        this.parameters.clear();
    }

    public Map<String, String> getParameters() {
        return Collections.unmodifiableMap(this.parameters);
    }

    static boolean matchesToken(String str) {
        return TOKEN_REGEX.matcher(str).matches();
    }

    private static String quoteString(String str) {
        String valueOf = String.valueOf(String.valueOf(str.replace("\\", "\\\\").replace("\"", "\\\"")));
        return new StringBuilder(valueOf.length() + 2).append("\"").append(valueOf).append("\"").toString();
    }

    public String build() {
        if (this.cachedBuildResult != null) {
            return this.cachedBuildResult;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.subType);
        if (this.parameters != null) {
            for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                if (!matchesToken(value)) {
                    value = quoteString(value);
                }
                sb.append(value);
            }
        }
        this.cachedBuildResult = sb.toString();
        return this.cachedBuildResult;
    }

    public String toString() {
        return build();
    }

    public boolean equalsIgnoreParameters(HttpMediaType httpMediaType) {
        return httpMediaType != null && getType().equalsIgnoreCase(httpMediaType.getType()) && getSubType().equalsIgnoreCase(httpMediaType.getSubType());
    }

    public static boolean equalsIgnoreParameters(String str, String str2) {
        return (str == null && str2 == null) || !(str == null || str2 == null || !new HttpMediaType(str).equalsIgnoreParameters(new HttpMediaType(str2)));
    }

    public HttpMediaType setCharsetParameter(Charset charset) {
        setParameter("charset", charset == null ? null : charset.name());
        return this;
    }

    public Charset getCharsetParameter() {
        String parameter = getParameter("charset");
        if (parameter == null) {
            return null;
        }
        return Charset.forName(parameter);
    }

    public int hashCode() {
        return build().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HttpMediaType)) {
            return false;
        }
        HttpMediaType httpMediaType = (HttpMediaType) obj;
        return equalsIgnoreParameters(httpMediaType) && this.parameters.equals(httpMediaType.parameters);
    }
}
