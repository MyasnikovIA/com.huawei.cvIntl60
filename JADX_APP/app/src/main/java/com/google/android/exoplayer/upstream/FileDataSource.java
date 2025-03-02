package com.google.android.exoplayer.upstream;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class FileDataSource implements UriDataSource {
    private long bytesRemaining;
    private RandomAccessFile file;
    private final TransferListener listener;
    private boolean opened;
    private String uriString;

    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        this(null);
    }

    public FileDataSource(TransferListener transferListener) {
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        try {
            this.uriString = dataSpec.uri.toString();
            this.file = new RandomAccessFile(dataSpec.uri.getPath(), "r");
            this.file.seek(dataSpec.position);
            this.bytesRemaining = dataSpec.length == -1 ? this.file.length() - dataSpec.position : dataSpec.length;
            if (this.bytesRemaining < 0) {
                throw new EOFException();
            }
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int read = this.file.read(bArr, i, (int) Math.min(this.bytesRemaining, i2));
            if (read > 0) {
                this.bytesRemaining -= read;
                if (this.listener != null) {
                    this.listener.onBytesTransferred(read);
                    return read;
                }
                return read;
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer.upstream.UriDataSource
    public String getUri() {
        return this.uriString;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() {
        this.uriString = null;
        try {
            if (this.file != null) {
                try {
                    this.file.close();
                } catch (IOException e) {
                    throw new FileDataSourceException(e);
                }
            }
        } finally {
            this.file = null;
            if (this.opened) {
                this.opened = false;
                if (this.listener != null) {
                    this.listener.onTransferEnd();
                }
            }
        }
    }
}
