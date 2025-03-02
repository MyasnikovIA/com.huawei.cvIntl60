package com.p052a.p053a.p057d;

import android.support.annotation.Nullable;
import java.io.IOException;

/* renamed from: com.a.a.d.e */
/* loaded from: classes.dex */
public final class C0881e extends IOException {

    /* renamed from: a */
    private final int f4728a;

    public C0881e(int i) {
        this("Http request failed with status code: " + i, i);
    }

    public C0881e(String str) {
        this(str, -1);
    }

    public C0881e(String str, int i) {
        this(str, i, null);
    }

    public C0881e(String str, int i, @Nullable Throwable th) {
        super(str, th);
        this.f4728a = i;
    }
}
