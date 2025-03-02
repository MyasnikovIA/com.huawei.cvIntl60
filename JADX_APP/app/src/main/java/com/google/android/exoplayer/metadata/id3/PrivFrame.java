package com.google.android.exoplayer.metadata.id3;

/* loaded from: classes.dex */
public final class PrivFrame extends Id3Frame {

    /* renamed from: ID */
    public static final String f5944ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    public PrivFrame(String str, byte[] bArr) {
        super(f5944ID);
        this.owner = str;
        this.privateData = bArr;
    }
}
