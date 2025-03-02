package com.google.android.exoplayer.extractor;

/* loaded from: classes.dex */
public interface ExtractorInput {
    void advancePeekPosition(int i);

    boolean advancePeekPosition(int i, boolean z);

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i, int i2);

    boolean peekFully(byte[] bArr, int i, int i2, boolean z);

    int read(byte[] bArr, int i, int i2);

    void readFully(byte[] bArr, int i, int i2);

    boolean readFully(byte[] bArr, int i, int i2, boolean z);

    void resetPeekPosition();

    int skip(int i);

    void skipFully(int i);

    boolean skipFully(int i, boolean z);
}
