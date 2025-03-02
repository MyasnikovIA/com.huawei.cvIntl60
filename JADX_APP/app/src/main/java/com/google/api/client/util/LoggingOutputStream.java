package com.google.api.client.util;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class LoggingOutputStream extends FilterOutputStream {
    private final LoggingByteArrayOutputStream logStream;

    public LoggingOutputStream(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.logStream = new LoggingByteArrayOutputStream(logger, level, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.out.write(i);
        this.logStream.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        this.logStream.write(bArr, i, i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.logStream.close();
        super.close();
    }

    public final LoggingByteArrayOutputStream getLogStream() {
        return this.logStream;
    }
}
