package com.google.android.exoplayer.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class AssetDataSource implements UriDataSource {
    private final AssetManager assetManager;
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener listener;
    private boolean opened;
    private String uriString;

    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        this(context, null);
    }

    public AssetDataSource(Context context, TransferListener transferListener) {
        this.assetManager = context.getAssets();
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) {
        try {
            this.uriString = dataSpec.uri.toString();
            String path = dataSpec.uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            this.uriString = dataSpec.uri.toString();
            this.inputStream = this.assetManager.open(path, 1);
            if (this.inputStream.skip(dataSpec.position) < dataSpec.position) {
                throw new EOFException();
            }
            if (dataSpec.length != -1) {
                this.bytesRemaining = dataSpec.length;
            } else {
                this.bytesRemaining = this.inputStream.available();
                if (this.bytesRemaining == 2147483647L) {
                    this.bytesRemaining = -1L;
                }
            }
            this.opened = true;
            if (this.listener != null) {
                this.listener.onTransferStart();
            }
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
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
            throw new AssetDataSourceException(e);
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
            if (this.inputStream != null) {
                try {
                    this.inputStream.close();
                } catch (IOException e) {
                    throw new AssetDataSourceException(e);
                }
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                if (this.listener != null) {
                    this.listener.onTransferEnd();
                }
            }
        }
    }
}
