package com.facebook.login;

/* renamed from: com.facebook.login.c */
/* loaded from: classes.dex */
public enum EnumC1102c {
    NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
    NATIVE_ONLY(true, true, false, false, false, true),
    KATANA_ONLY(false, true, false, false, false, false),
    WEB_ONLY(false, false, true, false, true, false),
    WEB_VIEW_ONLY(false, false, true, false, false, false),
    DIALOG_ONLY(false, true, true, false, true, true),
    DEVICE_AUTH(false, false, false, true, false, false);


    /* renamed from: h */
    private final boolean f5719h;

    /* renamed from: i */
    private final boolean f5720i;

    /* renamed from: j */
    private final boolean f5721j;

    /* renamed from: k */
    private final boolean f5722k;

    /* renamed from: l */
    private final boolean f5723l;

    /* renamed from: m */
    private final boolean f5724m;

    EnumC1102c(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f5719h = z;
        this.f5720i = z2;
        this.f5721j = z3;
        this.f5722k = z4;
        this.f5723l = z5;
        this.f5724m = z6;
    }

    /* renamed from: a */
    boolean m6346a() {
        return this.f5719h;
    }

    /* renamed from: b */
    boolean m6347b() {
        return this.f5720i;
    }

    /* renamed from: c */
    boolean m6348c() {
        return this.f5721j;
    }

    /* renamed from: d */
    boolean m6349d() {
        return this.f5722k;
    }

    /* renamed from: e */
    boolean m6350e() {
        return this.f5723l;
    }

    /* renamed from: f */
    boolean m6351f() {
        return this.f5724m;
    }
}
