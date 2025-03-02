package com.google.android.exoplayer.metadata.id3;

/* loaded from: classes.dex */
public final class ApicFrame extends Id3Frame {

    /* renamed from: ID */
    public static final String f5941ID = "APIC";
    public final String description;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super(f5941ID);
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i;
        this.pictureData = bArr;
    }
}
