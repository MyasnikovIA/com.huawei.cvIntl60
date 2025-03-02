package com.google.android.exoplayer.metadata.id3;

/* loaded from: classes.dex */
public final class TxxxFrame extends Id3Frame {

    /* renamed from: ID */
    public static final String f5945ID = "TXXX";
    public final String description;
    public final String value;

    public TxxxFrame(String str, String str2) {
        super(f5945ID);
        this.description = str;
        this.value = str2;
    }
}
