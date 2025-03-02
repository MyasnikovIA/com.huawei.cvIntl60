package com.google.api.client.http;

import com.google.api.client.util.StreamingContent;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public class GZipEncoding implements HttpEncoding {
    @Override // com.google.api.client.http.HttpEncoding
    public String getName() {
        return "gzip";
    }

    /* renamed from: com.google.api.client.http.GZipEncoding$1 */
    class C14391 extends BufferedOutputStream {
        C14391(OutputStream outputStream) {
            super(outputStream);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                flush();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.api.client.http.HttpEncoding
    public void encode(StreamingContent streamingContent, OutputStream outputStream) {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(outputStream) { // from class: com.google.api.client.http.GZipEncoding.1
            C14391(OutputStream outputStream2) {
                super(outputStream2);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    flush();
                } catch (IOException e) {
                }
            }
        });
        streamingContent.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}
