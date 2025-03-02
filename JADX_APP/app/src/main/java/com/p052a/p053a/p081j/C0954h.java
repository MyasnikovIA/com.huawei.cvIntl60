package com.p052a.p053a.p081j;

import android.text.TextUtils;
import java.util.Collection;

/* renamed from: com.a.a.j.h */
/* loaded from: classes.dex */
public final class C0954h {
    /* renamed from: a */
    public static void m5413a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: a */
    public static <T> T m5409a(T t) {
        return (T) m5410a(t, "Argument must not be null");
    }

    /* renamed from: a */
    public static <T> T m5410a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static String m5411a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    /* renamed from: a */
    public static <T extends Collection<Y>, Y> T m5412a(T t) {
        if (t.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t;
    }
}
