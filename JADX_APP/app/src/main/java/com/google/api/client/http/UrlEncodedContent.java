package com.google.api.client.http;

import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Types;
import com.google.api.client.util.escape.CharEscapers;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class UrlEncodedContent extends AbstractHttpContent {
    private Object data;

    public UrlEncodedContent(Object obj) {
        super(UrlEncodedParser.MEDIA_TYPE);
        setData(obj);
    }

    @Override // com.google.api.client.http.HttpContent, com.google.api.client.util.StreamingContent
    public void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, getCharset()));
        boolean z = true;
        Iterator<Map.Entry<String, Object>> it = Data.mapOf(this.data).entrySet().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Map.Entry<String, Object> next = it.next();
                Object value = next.getValue();
                if (value != null) {
                    String escapeUri = CharEscapers.escapeUri(next.getKey());
                    Class<?> cls = value.getClass();
                    if ((value instanceof Iterable) || cls.isArray()) {
                        Iterator it2 = Types.iterableOf(value).iterator();
                        while (it2.hasNext()) {
                            z2 = appendParam(z2, bufferedWriter, escapeUri, it2.next());
                        }
                    } else {
                        z2 = appendParam(z2, bufferedWriter, escapeUri, value);
                    }
                }
                z = z2;
            } else {
                bufferedWriter.flush();
                return;
            }
        }
    }

    @Override // com.google.api.client.http.AbstractHttpContent
    public UrlEncodedContent setMediaType(HttpMediaType httpMediaType) {
        super.setMediaType(httpMediaType);
        return this;
    }

    public final Object getData() {
        return this.data;
    }

    public UrlEncodedContent setData(Object obj) {
        this.data = Preconditions.checkNotNull(obj);
        return this;
    }

    public static UrlEncodedContent getContent(HttpRequest httpRequest) {
        HttpContent content = httpRequest.getContent();
        if (content != null) {
            return (UrlEncodedContent) content;
        }
        UrlEncodedContent urlEncodedContent = new UrlEncodedContent(new HashMap());
        httpRequest.setContent(urlEncodedContent);
        return urlEncodedContent;
    }

    private static boolean appendParam(boolean z, Writer writer, String str, Object obj) {
        if (obj != null && !Data.isNull(obj)) {
            if (z) {
                z = false;
            } else {
                writer.write("&");
            }
            writer.write(str);
            String escapeUri = CharEscapers.escapeUri(obj instanceof Enum ? FieldInfo.m6682of((Enum<?>) obj).getName() : obj.toString());
            if (escapeUri.length() != 0) {
                writer.write("=");
                writer.write(escapeUri);
            }
        }
        return z;
    }
}
