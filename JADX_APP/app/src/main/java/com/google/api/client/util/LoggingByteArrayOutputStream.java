package com.google.api.client.util;

import com.google.android.exoplayer.C1167C;
import java.io.ByteArrayOutputStream;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class LoggingByteArrayOutputStream extends ByteArrayOutputStream {
    private int bytesWritten;
    private boolean closed;
    private final Logger logger;
    private final Level loggingLevel;
    private final int maximumBytesToLog;

    public LoggingByteArrayOutputStream(Logger logger, Level level, int i) {
        this.logger = (Logger) Preconditions.checkNotNull(logger);
        this.loggingLevel = (Level) Preconditions.checkNotNull(level);
        Preconditions.checkArgument(i >= 0);
        this.maximumBytesToLog = i;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        Preconditions.checkArgument(!this.closed);
        this.bytesWritten++;
        if (this.count < this.maximumBytesToLog) {
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        Preconditions.checkArgument(!this.closed);
        this.bytesWritten += i2;
        if (this.count < this.maximumBytesToLog) {
            int i3 = this.count + i2;
            if (i3 > this.maximumBytesToLog) {
                i2 += this.maximumBytesToLog - i3;
            }
            super.write(bArr, i, i2);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.closed) {
            if (this.bytesWritten != 0) {
                StringBuilder append = new StringBuilder().append("Total: ");
                appendBytes(append, this.bytesWritten);
                if (this.count != 0 && this.count < this.bytesWritten) {
                    append.append(" (logging first ");
                    appendBytes(append, this.count);
                    append.append(")");
                }
                this.logger.config(append.toString());
                if (this.count != 0) {
                    this.logger.log(this.loggingLevel, toString(C1167C.UTF8_NAME).replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                }
            }
            this.closed = true;
        }
    }

    public final int getMaximumBytesToLog() {
        return this.maximumBytesToLog;
    }

    public final synchronized int getBytesWritten() {
        return this.bytesWritten;
    }

    private static void appendBytes(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
        } else {
            sb.append(NumberFormat.getInstance().format(i)).append(" bytes");
        }
    }
}
