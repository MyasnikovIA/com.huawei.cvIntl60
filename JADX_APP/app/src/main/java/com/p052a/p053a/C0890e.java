package com.p052a.p053a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.widget.ImageView;
import com.p052a.p053a.p057d.p060b.C0794i;
import com.p052a.p053a.p077h.C0937d;
import com.p052a.p053a.p077h.p078a.C0927e;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import java.util.Iterator;
import java.util.Map;

@TargetApi(14)
/* renamed from: com.a.a.e */
/* loaded from: classes.dex */
public class C0890e extends ContextWrapper {

    /* renamed from: a */
    @VisibleForTesting
    static final AbstractC0956k<?, ?> f4746a = new C0729b();

    /* renamed from: b */
    private final Handler f4747b;

    /* renamed from: c */
    private final C0921h f4748c;

    /* renamed from: d */
    private final C0927e f4749d;

    /* renamed from: e */
    private final C0937d f4750e;

    /* renamed from: f */
    private final Map<Class<?>, AbstractC0956k<?, ?>> f4751f;

    /* renamed from: g */
    private final C0794i f4752g;

    /* renamed from: h */
    private final int f4753h;

    public C0890e(Context context, C0921h c0921h, C0927e c0927e, C0937d c0937d, Map<Class<?>, AbstractC0956k<?, ?>> map, C0794i c0794i, int i) {
        super(context.getApplicationContext());
        this.f4748c = c0921h;
        this.f4749d = c0927e;
        this.f4750e = c0937d;
        this.f4751f = map;
        this.f4752g = c0794i;
        this.f4753h = i;
        this.f4747b = new Handler(Looper.getMainLooper());
    }

    /* renamed from: a */
    public C0937d m5118a() {
        return this.f4750e;
    }

    @NonNull
    /* renamed from: a */
    public <T> AbstractC0956k<?, T> m5119a(Class<T> cls) {
        AbstractC0956k<?, T> abstractC0956k;
        AbstractC0956k<?, T> abstractC0956k2 = (AbstractC0956k) this.f4751f.get(cls);
        if (abstractC0956k2 == null) {
            Iterator<Map.Entry<Class<?>, AbstractC0956k<?, ?>>> it = this.f4751f.entrySet().iterator();
            while (true) {
                abstractC0956k = abstractC0956k2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC0956k<?, ?>> next = it.next();
                abstractC0956k2 = next.getKey().isAssignableFrom(cls) ? (AbstractC0956k) next.getValue() : abstractC0956k;
            }
            abstractC0956k2 = abstractC0956k;
        }
        if (abstractC0956k2 == null) {
            return (AbstractC0956k<?, T>) f4746a;
        }
        return abstractC0956k2;
    }

    /* renamed from: a */
    public <X> InterfaceC0930h<X> m5117a(ImageView imageView, Class<X> cls) {
        return this.f4749d.m5238a(imageView, cls);
    }

    /* renamed from: b */
    public C0794i m5120b() {
        return this.f4752g;
    }

    /* renamed from: c */
    public C0921h m5121c() {
        return this.f4748c;
    }

    /* renamed from: d */
    public int m5122d() {
        return this.f4753h;
    }
}
