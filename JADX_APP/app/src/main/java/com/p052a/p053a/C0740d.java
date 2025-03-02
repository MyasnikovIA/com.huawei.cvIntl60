package com.p052a.p053a;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.p052a.p053a.p057d.p060b.C0794i;
import com.p052a.p053a.p057d.p060b.p061a.C0766f;
import com.p052a.p053a.p057d.p060b.p061a.C0770j;
import com.p052a.p053a.p057d.p060b.p061a.C0771k;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p060b.p062b.C0781f;
import com.p052a.p053a.p057d.p060b.p062b.C0782g;
import com.p052a.p053a.p057d.p060b.p062b.C0784i;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h;
import com.p052a.p053a.p057d.p060b.p063c.C0787a;
import com.p052a.p053a.p074e.C0896f;
import com.p052a.p053a.p074e.C0902l;
import com.p052a.p053a.p074e.InterfaceC0894d;
import com.p052a.p053a.p077h.C0937d;
import java.util.Map;

/* renamed from: com.a.a.d */
/* loaded from: classes.dex */
public final class C0740d {

    /* renamed from: b */
    private C0794i f4139b;

    /* renamed from: c */
    private InterfaceC0765e f4140c;

    /* renamed from: d */
    private InterfaceC0762b f4141d;

    /* renamed from: e */
    private InterfaceC0783h f4142e;

    /* renamed from: f */
    private C0787a f4143f;

    /* renamed from: g */
    private C0787a f4144g;

    /* renamed from: h */
    private InterfaceC0776a.a f4145h;

    /* renamed from: i */
    private C0784i f4146i;

    /* renamed from: j */
    private InterfaceC0894d f4147j;

    /* renamed from: m */
    @Nullable
    private C0902l.a f4150m;

    /* renamed from: a */
    private final Map<Class<?>, AbstractC0956k<?, ?>> f4138a = new ArrayMap();

    /* renamed from: k */
    private int f4148k = 4;

    /* renamed from: l */
    private C0937d f4149l = new C0937d();

    /* renamed from: a */
    C0740d m4607a(@Nullable C0902l.a aVar) {
        this.f4150m = aVar;
        return this;
    }

    /* renamed from: a */
    public ComponentCallbacks2C0735c m4606a(Context context) {
        if (this.f4143f == null) {
            this.f4143f = C0787a.m4772b();
        }
        if (this.f4144g == null) {
            this.f4144g = C0787a.m4769a();
        }
        if (this.f4146i == null) {
            this.f4146i = new C0784i.a(context).m4761a();
        }
        if (this.f4147j == null) {
            this.f4147j = new C0896f();
        }
        if (this.f4140c == null) {
            int m4751b = this.f4146i.m4751b();
            if (m4751b > 0) {
                this.f4140c = new C0771k(m4751b);
            } else {
                this.f4140c = new C0766f();
            }
        }
        if (this.f4141d == null) {
            this.f4141d = new C0770j(this.f4146i.m4752c());
        }
        if (this.f4142e == null) {
            this.f4142e = new C0782g(this.f4146i.m4750a());
        }
        if (this.f4145h == null) {
            this.f4145h = new C0781f(context);
        }
        if (this.f4139b == null) {
            this.f4139b = new C0794i(this.f4142e, this.f4145h, this.f4144g, this.f4143f, C0787a.m4774c());
        }
        return new ComponentCallbacks2C0735c(context, this.f4139b, this.f4142e, this.f4140c, this.f4141d, new C0902l(this.f4150m), this.f4147j, this.f4148k, this.f4149l.m5298g(), this.f4138a);
    }
}
