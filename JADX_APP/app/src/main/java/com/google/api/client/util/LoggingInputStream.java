package com.google.api.client.util;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class LoggingInputStream extends FilterInputStream {
    private final LoggingByteArrayOutputStream logStream;

    public LoggingInputStream(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.logStream = new LoggingByteArrayOutputStream(logger, level, i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = super.read();
        this.logStream.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.logStream.write(bArr, i, read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.logStream.close();
        super.close();
    }

    public final LoggingByteArrayOutputStream getLogStream() {
        return this.logStream;
    }
}
