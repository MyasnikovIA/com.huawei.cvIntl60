package com.p052a.p053a.p057d.p058a.p059a;

import android.net.Uri;

/* renamed from: com.a.a.d.a.a.b */
/* loaded from: classes.dex */
public final class C0744b {
    /* renamed from: a */
    public static boolean m4618a(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: d */
    private static boolean m4621d(Uri uri) {
        return uri.getPathSegments().contains("video");
    }

    /* renamed from: b */
    public static boolean m4619b(Uri uri) {
        return m4618a(uri) && m4621d(uri);
    }

    /* renamed from: c */
    public static boolean m4620c(Uri uri) {
        return m4618a(uri) && !m4621d(uri);
    }

    /* renamed from: a */
    public static boolean m4617a(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }
}
