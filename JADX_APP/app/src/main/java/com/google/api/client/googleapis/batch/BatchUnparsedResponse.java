package com.google.api.client.googleapis.batch;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.testing.http.HttpTesting;
import com.google.api.client.util.ByteStreams;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class BatchUnparsedResponse {
    boolean backOffRequired;
    private final String boundary;
    private final InputStream inputStream;
    private final List<BatchRequest.RequestInfo<?, ?>> requestInfos;
    private final boolean retryAllowed;
    boolean hasNext = true;
    List<BatchRequest.RequestInfo<?, ?>> unsuccessfulRequestInfos = new ArrayList();
    private int contentId = 0;

    BatchUnparsedResponse(InputStream inputStream, String str, List<BatchRequest.RequestInfo<?, ?>> list, boolean z) {
        this.boundary = str;
        this.requestInfos = list;
        this.retryAllowed = z;
        this.inputStream = inputStream;
        checkForFinalBoundary(readLine());
    }

    void parseNextResponse() {
        String readLine;
        String readLine2;
        InputStream c14331;
        String readRawLine;
        this.contentId++;
        do {
            readLine = readLine();
            if (readLine == null) {
                break;
            }
        } while (!readLine.equals(""));
        int parseInt = Integer.parseInt(readLine().split(" ")[1]);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long j = -1;
        while (true) {
            readLine2 = readLine();
            if (readLine2 == null || readLine2.equals("")) {
                break;
            }
            String[] split = readLine2.split(": ", 2);
            String str = split[0];
            String str2 = split[1];
            arrayList.add(str);
            arrayList2.add(str2);
            j = "Content-Length".equalsIgnoreCase(str.trim()) ? Long.parseLong(str2) : j;
        }
        if (j == -1) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                readRawLine = readRawLine();
                if (readRawLine == null || readRawLine.startsWith(this.boundary)) {
                    break;
                } else {
                    byteArrayOutputStream.write(readRawLine.getBytes("ISO-8859-1"));
                }
            }
            InputStream trimCrlf = trimCrlf(byteArrayOutputStream.toByteArray());
            readLine2 = trimCrlf(readRawLine);
            c14331 = trimCrlf;
        } else {
            c14331 = new FilterInputStream(ByteStreams.limit(this.inputStream, j)) { // from class: com.google.api.client.googleapis.batch.BatchUnparsedResponse.1
                C14331(InputStream inputStream) {
                    super(inputStream);
                }

                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }
            };
        }
        parseAndCallback(this.requestInfos.get(this.contentId - 1), parseInt, getFakeResponse(parseInt, c14331, arrayList, arrayList2));
        while (true) {
            if (c14331.skip(j) <= 0 && c14331.read() == -1) {
                break;
            }
        }
        if (j != -1) {
            readLine2 = readLine();
        }
        while (readLine2 != null && readLine2.length() == 0) {
            readLine2 = readLine();
        }
        checkForFinalBoundary(readLine2);
    }

    /* renamed from: com.google.api.client.googleapis.batch.BatchUnparsedResponse$1 */
    class C14331 extends FilterInputStream {
        C14331(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <T, E> void parseAndCallback(com.google.api.client.googleapis.batch.BatchRequest.RequestInfo<T, E> r11, int r12, com.google.api.client.http.HttpResponse r13) {
        /*
            r10 = this;
            r0 = 1
            r1 = 0
            com.google.api.client.googleapis.batch.BatchCallback<T, E> r4 = r11.callback
            com.google.api.client.http.HttpHeaders r5 = r13.getHeaders()
            com.google.api.client.http.HttpRequest r2 = r11.request
            com.google.api.client.http.HttpUnsuccessfulResponseHandler r2 = r2.getUnsuccessfulResponseHandler()
            com.google.api.client.http.HttpRequest r3 = r11.request
            com.google.api.client.http.BackOffPolicy r6 = r3.getBackOffPolicy()
            r10.backOffRequired = r1
            boolean r3 = com.google.api.client.http.HttpStatusCodes.isSuccess(r12)
            if (r3 == 0) goto L29
            if (r4 != 0) goto L1f
        L1e:
            return
        L1f:
            java.lang.Class<T> r0 = r11.dataClass
            java.lang.Object r0 = r10.getParsedDataClass(r0, r13, r11)
            r4.onSuccess(r0, r5)
            goto L1e
        L29:
            com.google.api.client.http.HttpRequest r3 = r11.request
            com.google.api.client.http.HttpContent r3 = r3.getContent()
            boolean r7 = r10.retryAllowed
            if (r7 == 0) goto L66
            if (r3 == 0) goto L3b
            boolean r3 = r3.retrySupported()
            if (r3 == 0) goto L66
        L3b:
            r3 = r0
        L3c:
            if (r2 == 0) goto L86
            com.google.api.client.http.HttpRequest r7 = r11.request
            boolean r2 = r2.handleResponse(r7, r13, r3)
        L44:
            if (r2 != 0) goto L78
            com.google.api.client.http.HttpRequest r7 = r11.request
            int r8 = r13.getStatusCode()
            com.google.api.client.http.HttpHeaders r9 = r13.getHeaders()
            boolean r7 = r7.handleRedirect(r8, r9)
            if (r7 == 0) goto L68
        L56:
            if (r3 == 0) goto L7a
            if (r2 != 0) goto L60
            boolean r1 = r10.backOffRequired
            if (r1 != 0) goto L60
            if (r0 == 0) goto L7a
        L60:
            java.util.List<com.google.api.client.googleapis.batch.BatchRequest$RequestInfo<?, ?>> r0 = r10.unsuccessfulRequestInfos
            r0.add(r11)
            goto L1e
        L66:
            r3 = r1
            goto L3c
        L68:
            if (r3 == 0) goto L78
            if (r6 == 0) goto L78
            int r7 = r13.getStatusCode()
            boolean r6 = r6.isBackOffRequired(r7)
            if (r6 == 0) goto L78
            r10.backOffRequired = r0
        L78:
            r0 = r1
            goto L56
        L7a:
            if (r4 == 0) goto L1e
            java.lang.Class<E> r0 = r11.errorClass
            java.lang.Object r0 = r10.getParsedDataClass(r0, r13, r11)
            r4.onFailure(r0, r5)
            goto L1e
        L86:
            r2 = r1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.batch.BatchUnparsedResponse.parseAndCallback(com.google.api.client.googleapis.batch.BatchRequest$RequestInfo, int, com.google.api.client.http.HttpResponse):void");
    }

    private <A, T, E> A getParsedDataClass(Class<A> cls, HttpResponse httpResponse, BatchRequest.RequestInfo<T, E> requestInfo) {
        if (cls == Void.class) {
            return null;
        }
        return (A) requestInfo.request.getParser().parseAndClose(httpResponse.getContent(), httpResponse.getContentCharset(), (Class) cls);
    }

    private HttpResponse getFakeResponse(int i, InputStream inputStream, List<String> list, List<String> list2) {
        HttpRequest buildPostRequest = new FakeResponseHttpTransport(i, inputStream, list, list2).createRequestFactory().buildPostRequest(new GenericUrl(HttpTesting.SIMPLE_URL), null);
        buildPostRequest.setLoggingEnabled(false);
        buildPostRequest.setThrowExceptionOnExecuteError(false);
        return buildPostRequest.execute();
    }

    private String readRawLine() {
        int read = this.inputStream.read();
        if (read == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (read != -1) {
            sb.append((char) read);
            if (read == 10) {
                break;
            }
            read = this.inputStream.read();
        }
        return sb.toString();
    }

    private String readLine() {
        return trimCrlf(readRawLine());
    }

    private static String trimCrlf(String str) {
        if (str.endsWith("\r\n")) {
            return str.substring(0, str.length() - 2);
        }
        if (str.endsWith("\n")) {
            return str.substring(0, str.length() - 1);
        }
        return str;
    }

    private static InputStream trimCrlf(byte[] bArr) {
        int length = bArr.length;
        if (length > 0 && bArr[length - 1] == 10) {
            length--;
        }
        if (length > 0 && bArr[length - 1] == 13) {
            length--;
        }
        return new ByteArrayInputStream(bArr, 0, length);
    }

    private void checkForFinalBoundary(String str) {
        if (str.equals(this.boundary + "--")) {
            this.hasNext = false;
            this.inputStream.close();
        }
    }

    private static class FakeResponseHttpTransport extends HttpTransport {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeResponseHttpTransport(int i, InputStream inputStream, List<String> list, List<String> list2) {
            this.statusCode = i;
            this.partContent = inputStream;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.HttpTransport
        protected LowLevelHttpRequest buildRequest(String str, String str2) {
            return new FakeLowLevelHttpRequest(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    private static class FakeLowLevelHttpRequest extends LowLevelHttpRequest {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpRequest(InputStream inputStream, int i, List<String> list, List<String> list2) {
            this.partContent = inputStream;
            this.statusCode = i;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public void addHeader(String str, String str2) {
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public LowLevelHttpResponse execute() {
            return new FakeLowLevelHttpResponse(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    private static class FakeLowLevelHttpResponse extends LowLevelHttpResponse {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpResponse(InputStream inputStream, int i, List<String> list, List<String> list2) {
            this.headerNames = new ArrayList();
            this.headerValues = new ArrayList();
            this.partContent = inputStream;
            this.statusCode = i;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public InputStream getContent() {
            return this.partContent;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public int getStatusCode() {
            return this.statusCode;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getContentEncoding() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public long getContentLength() {
            return 0L;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getContentType() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getStatusLine() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getReasonPhrase() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public int getHeaderCount() {
            return this.headerNames.size();
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getHeaderName(int i) {
            return this.headerNames.get(i);
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getHeaderValue(int i) {
            return this.headerValues.get(i);
        }
    }
}
