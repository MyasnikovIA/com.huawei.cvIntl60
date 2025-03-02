package com.google.android.exoplayer.metadata;

/* loaded from: classes.dex */
public interface MetadataParser<T> {
    boolean canParse(String str);

    T parse(byte[] bArr, int i);
}
