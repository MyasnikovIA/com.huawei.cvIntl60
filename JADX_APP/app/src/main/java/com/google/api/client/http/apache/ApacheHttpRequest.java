package com.google.api.client.http.apache;

import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.util.Preconditions;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
final class ApacheHttpRequest extends LowLevelHttpRequest {
    private final HttpClient httpClient;
    private final HttpRequestBase request;

    ApacheHttpRequest(HttpClient httpClient, HttpRequestBase httpRequestBase) {
        this.httpClient = httpClient;
        this.request = httpRequestBase;
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void addHeader(String str, String str2) {
        this.request.addHeader(str, str2);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setTimeout(int i, int i2) {
        HttpParams params = this.request.getParams();
        ConnManagerParams.setTimeout(params, i);
        HttpConnectionParams.setConnectionTimeout(params, i);
        HttpConnectionParams.setSoTimeout(params, i2);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public LowLevelHttpResponse execute() {
        if (getStreamingContent() != null) {
            Preconditions.checkArgument(this.request instanceof HttpEntityEnclosingRequest, "Apache HTTP client does not support %s requests with content.", this.request.getRequestLine().getMethod());
            ContentEntity contentEntity = new ContentEntity(getContentLength(), getStreamingContent());
            contentEntity.setContentEncoding(getContentEncoding());
            contentEntity.setContentType(getContentType());
            ((HttpEntityEnclosingRequest) this.request).setEntity(contentEntity);
        }
        return new ApacheHttpResponse(this.request, this.httpClient.execute(this.request));
    }
}
