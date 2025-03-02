package com.google.android.exoplayer.metadata.id3;

/* loaded from: classes.dex */
public final class GeobFrame extends Id3Frame {

    /* renamed from: ID */
    public static final String f5942ID = "GEOB";
    public final byte[] data;
    public final String description;
    public final String filename;
    public final String mimeType;

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super(f5942ID);
        this.mimeType = str;
        this.filename = str2;
        this.description = str3;
        this.data = bArr;
    }
}
