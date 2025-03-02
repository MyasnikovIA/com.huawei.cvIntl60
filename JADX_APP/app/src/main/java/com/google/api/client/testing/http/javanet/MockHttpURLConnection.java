package com.google.api.client.testing.http.javanet;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Beta
/* loaded from: classes.dex */
public class MockHttpURLConnection extends HttpURLConnection {
    private boolean doOutputCalled;
    private InputStream errorStream;
    private Map<String, List<String>> headers;
    private InputStream inputStream;
    private OutputStream outputStream;

    @Deprecated
    public static final byte[] INPUT_BUF = new byte[1];

    @Deprecated
    public static final byte[] ERROR_BUF = new byte[5];

    public MockHttpURLConnection(URL url) {
        super(url);
        this.outputStream = new ByteArrayOutputStream(0);
        this.inputStream = null;
        this.errorStream = null;
        this.headers = new LinkedHashMap();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return false;
    }

    @Override // java.net.URLConnection
    public void connect() {
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.responseCode;
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.doOutputCalled = true;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.outputStream != null ? this.outputStream : super.getOutputStream();
    }

    public final boolean doOutputCalled() {
        return this.doOutputCalled;
    }

    public MockHttpURLConnection setOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
        return this;
    }

    public MockHttpURLConnection setResponseCode(int i) {
        Preconditions.checkArgument(i >= -1);
        this.responseCode = i;
        return this;
    }

    public MockHttpURLConnection addHeader(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        if (this.headers.containsKey(str)) {
            this.headers.get(str).add(str2);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str2);
            this.headers.put(str, arrayList);
        }
        return this;
    }

    public MockHttpURLConnection setInputStream(InputStream inputStream) {
        Preconditions.checkNotNull(inputStream);
        if (this.inputStream == null) {
            this.inputStream = inputStream;
        }
        return this;
    }

    public MockHttpURLConnection setErrorStream(InputStream inputStream) {
        Preconditions.checkNotNull(inputStream);
        if (this.errorStream == null) {
            this.errorStream = inputStream;
        }
        return this;
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        if (this.responseCode < 400) {
            return this.inputStream;
        }
        throw new IOException();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.errorStream;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.headers;
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        List<String> list = this.headers.get(str);
        if (list == null) {
            return null;
        }
        return list.get(0);
    }
}
