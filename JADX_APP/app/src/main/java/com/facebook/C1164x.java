package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.x */
/* loaded from: classes.dex */
class C1164x extends OutputStream implements InterfaceC1166z {

    /* renamed from: a */
    private final Map<GraphRequest, C1039aa> f5919a = new HashMap();

    /* renamed from: b */
    private final Handler f5920b;

    /* renamed from: c */
    private GraphRequest f5921c;

    /* renamed from: d */
    private C1039aa f5922d;

    /* renamed from: e */
    private int f5923e;

    C1164x(Handler handler) {
        this.f5920b = handler;
    }

    @Override // com.facebook.InterfaceC1166z
    /* renamed from: a */
    public void mo6583a(GraphRequest graphRequest) {
        this.f5921c = graphRequest;
        this.f5922d = graphRequest != null ? this.f5919a.get(graphRequest) : null;
    }

    /* renamed from: a */
    int m6581a() {
        return this.f5923e;
    }

    /* renamed from: b */
    Map<GraphRequest, C1039aa> m6584b() {
        return this.f5919a;
    }

    /* renamed from: a */
    void m6582a(long j) {
        if (this.f5922d == null) {
            this.f5922d = new C1039aa(this.f5920b, this.f5921c);
            this.f5919a.put(this.f5921c, this.f5922d);
        }
        this.f5922d.m5875b(j);
        this.f5923e = (int) (this.f5923e + j);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        m6582a(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        m6582a(i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m6582a(1L);
    }
}
