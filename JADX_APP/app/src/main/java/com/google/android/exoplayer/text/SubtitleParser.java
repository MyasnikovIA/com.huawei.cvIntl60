package com.google.android.exoplayer.text;

/* loaded from: classes.dex */
public interface SubtitleParser {
    boolean canParse(String str);

    Subtitle parse(byte[] bArr, int i, int i2);
}
