package com.google.api.client.http;

import com.google.api.client.util.StreamingContent;

/* loaded from: classes.dex */
public abstract class LowLevelHttpRequest {
    private String contentEncoding;
    private long contentLength = -1;
    private String contentType;
    private StreamingContent streamingContent;

    public abstract void addHeader(String str, String str2);

    public abstract LowLevelHttpResponse execute();

    public final void setContentLength(long j) {
        this.contentLength = j;
    }

    public final long getContentLength() {
        return this.contentLength;
    }

    public final void setContentEncoding(String str) {
        this.contentEncoding = str;
    }

    public final String getContentEncoding() {
        return this.contentEncoding;
    }

    public final void setContentType(String str) {
        this.contentType = str;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final void setStreamingContent(StreamingContent streamingContent) {
        this.streamingContent = streamingContent;
    }

    public final StreamingContent getStreamingContent() {
        return this.streamingContent;
    }

    public void setTimeout(int i, int i2) {
    }
}
