package com.p052a.p053a.p081j;

import android.support.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.a.a.j.e */
/* loaded from: classes.dex */
public class C0951e<T, Y> {

    /* renamed from: b */
    private final int f4960b;

    /* renamed from: c */
    private int f4961c;

    /* renamed from: a */
    private final LinkedHashMap<T, Y> f4959a = new LinkedHashMap<>(100, 0.75f, true);

    /* renamed from: d */
    private int f4962d = 0;

    public C0951e(int i) {
        this.f4960b = i;
        this.f4961c = i;
    }

    /* renamed from: a */
    protected int mo4738a(Y y) {
        return 1;
    }

    /* renamed from: a */
    protected void mo4742a(T t, Y y) {
    }

    /* renamed from: b */
    public synchronized int m5400b() {
        return this.f4962d;
    }

    @Nullable
    /* renamed from: b */
    public synchronized Y m5401b(T t) {
        return this.f4959a.get(t);
    }

    /* renamed from: b */
    public synchronized Y m5402b(T t, Y y) {
        Y put;
        if (mo4738a(y) >= this.f4961c) {
            mo4742a(t, y);
            put = null;
        } else {
            put = this.f4959a.put(t, y);
            if (y != null) {
                this.f4962d += mo4738a(y);
            }
            if (put != null) {
                this.f4962d -= mo4738a(put);
            }
            m5398c();
        }
        return put;
    }

    @Nullable
    /* renamed from: c */
    public synchronized Y m5404c(T t) {
        Y remove;
        remove = this.f4959a.remove(t);
        if (remove != null) {
            this.f4962d -= mo4738a(remove);
        }
        return remove;
    }

    /* renamed from: a */
    public void m5399a() {
        m5403b(0);
    }

    /* renamed from: b */
    protected synchronized void m5403b(int i) {
        while (this.f4962d > i) {
            Map.Entry<T, Y> next = this.f4959a.entrySet().iterator().next();
            Y value = next.getValue();
            this.f4962d -= mo4738a(value);
            T key = next.getKey();
            this.f4959a.remove(key);
            mo4742a(key, value);
        }
    }

    /* renamed from: c */
    private void m5398c() {
        m5403b(this.f4961c);
    }
}
