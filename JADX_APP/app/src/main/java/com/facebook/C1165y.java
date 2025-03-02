package com.facebook;

import android.os.Handler;
import com.facebook.C1110o;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.facebook.y */
/* loaded from: classes.dex */
class C1165y extends FilterOutputStream implements InterfaceC1166z {

    /* renamed from: a */
    private final Map<GraphRequest, C1039aa> f5924a;

    /* renamed from: b */
    private final C1110o f5925b;

    /* renamed from: c */
    private final long f5926c;

    /* renamed from: d */
    private long f5927d;

    /* renamed from: e */
    private long f5928e;

    /* renamed from: f */
    private long f5929f;

    /* renamed from: g */
    private C1039aa f5930g;

    C1165y(OutputStream outputStream, C1110o c1110o, Map<GraphRequest, C1039aa> map, long j) {
        super(outputStream);
        this.f5925b = c1110o;
        this.f5924a = map;
        this.f5929f = j;
        this.f5926c = C1074k.m6184i();
    }

    /* renamed from: a */
    private void m6587a(long j) {
        if (this.f5930g != null) {
            this.f5930g.m5874a(j);
        }
        this.f5927d += j;
        if (this.f5927d >= this.f5928e + this.f5926c || this.f5927d >= this.f5929f) {
            m6586a();
        }
    }

    /* renamed from: a */
    private void m6586a() {
        if (this.f5927d > this.f5928e) {
            for (C1110o.a aVar : this.f5925b.m6406e()) {
                if (aVar instanceof C1110o.b) {
                    Handler m6404c = this.f5925b.m6404c();
                    C1110o.b bVar = (C1110o.b) aVar;
                    if (m6404c == null) {
                        bVar.m6412a(this.f5925b, this.f5927d, this.f5929f);
                    } else {
                        m6404c.post(new Runnable() { // from class: com.facebook.y.1

                            /* renamed from: a */
                            final /* synthetic */ C1110o.b f5931a;

                            AnonymousClass1(C1110o.b bVar2) {
                                bVar = bVar2;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                bVar.m6412a(C1165y.this.f5925b, C1165y.this.f5927d, C1165y.this.f5929f);
                            }
                        });
                    }
                }
            }
            this.f5928e = this.f5927d;
        }
    }

    /* renamed from: com.facebook.y$1 */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ C1110o.b f5931a;

        AnonymousClass1(C1110o.b bVar2) {
            bVar = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            bVar.m6412a(C1165y.this.f5925b, C1165y.this.f5927d, C1165y.this.f5929f);
        }
    }

    @Override // com.facebook.InterfaceC1166z
    /* renamed from: a */
    public void mo6583a(GraphRequest graphRequest) {
        this.f5930g = graphRequest != null ? this.f5924a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        this.out.write(bArr);
        m6587a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        m6587a(i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.out.write(i);
        m6587a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        Iterator<C1039aa> it = this.f5924a.values().iterator();
        while (it.hasNext()) {
            it.next().m5873a();
        }
        m6586a();
    }
}
