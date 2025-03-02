package com.google.android.exoplayer.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ContentDataSource implements UriDataSource {
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener listener;
    private boolean opened;
    private final ContentResolver resolver;
    private String uriString;

    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        this(context, null);
    }

    public ContentDataSource(Context context, TransferListener transferListener) {
        this.resolver = context.getContentResolver();
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        try {
            this.uriString = dataSpec.uri.toString();
            this.assetFileDescriptor = this.resolver.openAssetFileDescriptor(dataSpec.uri, "r");
            this.inputStream = new FileInputStream(this.assetFileDescriptor.getFileDescriptor());
            if (this.inputStream.skip(dataSpec.position) < dataSpec.position) {
                throw new EOFException();
            }
            if (dataSpec.length != -1) {
                this.bytesRemaining = dataSpec.length;
            } else {
                this.bytesRemaining = this.inputStream.available();
                if (this.bytesRemaining == 0) {
                    this.bytesRemaining = -1L;
                }
            }
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            if (this.bytesRemaining != -1) {
                i2 = (int) Math.min(this.bytesRemaining, i2);
            }
            int read = this.inputStream.read(bArr, i, i2);
            if (read > 0) {
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= read;
                }
                if (this.listener != null) {
                    this.listener.onBytesTransferred(read);
                    return read;
                }
                return read;
            }
            return read;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
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
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
                this.inputStream = null;
                try {
                    try {
                        if (this.assetFileDescriptor != null) {
                            this.assetFileDescriptor.close();
                        }
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        if (this.listener != null) {
                            this.listener.onTransferEnd();
                        }
                    }
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.inputStream = null;
            try {
                try {
                    if (this.assetFileDescriptor != null) {
                        this.assetFileDescriptor.close();
                    }
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        if (this.listener != null) {
                            this.listener.onTransferEnd();
                        }
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd();
                    }
                }
            }
        }
    }
}
