package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;

/* renamed from: com.facebook.aa */
/* loaded from: classes.dex */
class C1039aa {

    /* renamed from: a */
    private final GraphRequest f5360a;

    /* renamed from: b */
    private final Handler f5361b;

    /* renamed from: c */
    private final long f5362c = C1074k.m6184i();

    /* renamed from: d */
    private long f5363d;

    /* renamed from: e */
    private long f5364e;

    /* renamed from: f */
    private long f5365f;

    C1039aa(Handler handler, GraphRequest graphRequest) {
        this.f5360a = graphRequest;
        this.f5361b = handler;
    }

    /* renamed from: a */
    void m5874a(long j) {
        this.f5363d += j;
        if (this.f5363d >= this.f5364e + this.f5362c || this.f5363d >= this.f5365f) {
            m5873a();
        }
    }

    /* renamed from: b */
    void m5875b(long j) {
        this.f5365f += j;
    }

    /* renamed from: a */
    void m5873a() {
        if (this.f5363d > this.f5364e) {
            GraphRequest.InterfaceC0995b m5588g = this.f5360a.m5588g();
            if (this.f5365f > 0 && (m5588g instanceof GraphRequest.InterfaceC0998e)) {
                long j = this.f5363d;
                long j2 = this.f5365f;
                GraphRequest.InterfaceC0998e interfaceC0998e = (GraphRequest.InterfaceC0998e) m5588g;
                if (this.f5361b == null) {
                    interfaceC0998e.m5602a(j, j2);
                } else {
                    this.f5361b.post(new Runnable() { // from class: com.facebook.aa.1

                        /* renamed from: a */
                        final /* synthetic */ GraphRequest.InterfaceC0998e f5366a;

                        /* renamed from: b */
                        final /* synthetic */ long f5367b;

                        /* renamed from: c */
                        final /* synthetic */ long f5368c;

                        AnonymousClass1(GraphRequest.InterfaceC0998e interfaceC0998e2, long j3, long j22) {
                            interfaceC0998e = interfaceC0998e2;
                            j = j3;
                            j2 = j22;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            interfaceC0998e.m5602a(j, j2);
                        }
                    });
                }
                this.f5364e = this.f5363d;
            }
        }
    }

    /* renamed from: com.facebook.aa$1 */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ GraphRequest.InterfaceC0998e f5366a;

        /* renamed from: b */
        final /* synthetic */ long f5367b;

        /* renamed from: c */
        final /* synthetic */ long f5368c;

        AnonymousClass1(GraphRequest.InterfaceC0998e interfaceC0998e2, long j3, long j22) {
            interfaceC0998e = interfaceC0998e2;
            j = j3;
            j2 = j22;
        }

        @Override // java.lang.Runnable
        public void run() {
            interfaceC0998e.m5602a(j, j2);
        }
    }
}
