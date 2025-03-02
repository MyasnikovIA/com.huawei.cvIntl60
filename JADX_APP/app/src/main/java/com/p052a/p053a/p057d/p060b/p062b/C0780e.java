package com.p052a.p053a.p057d.p060b.p062b;

import android.util.Log;
import com.p052a.p053a.p054a.C0726a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a;
import java.io.File;
import java.io.IOException;

/* renamed from: com.a.a.d.b.b.e */
/* loaded from: classes.dex */
public class C0780e implements InterfaceC0776a {

    /* renamed from: a */
    private static C0780e f4261a = null;

    /* renamed from: c */
    private final File f4263c;

    /* renamed from: d */
    private final int f4264d;

    /* renamed from: f */
    private C0726a f4266f;

    /* renamed from: e */
    private final C0778c f4265e = new C0778c();

    /* renamed from: b */
    private final C0785j f4262b = new C0785j();

    /* renamed from: a */
    public static synchronized InterfaceC0776a m4737a(File file, int i) {
        C0780e c0780e;
        synchronized (C0780e.class) {
            if (f4261a == null) {
                f4261a = new C0780e(file, i);
            }
            c0780e = f4261a;
        }
        return c0780e;
    }

    protected C0780e(File file, int i) {
        this.f4263c = file;
        this.f4264d = i;
    }

    /* renamed from: a */
    private synchronized C0726a m4736a() {
        if (this.f4266f == null) {
            this.f4266f = C0726a.m4454a(this.f4263c, 1, 1, this.f4264d);
        }
        return this.f4266f;
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a
    /* renamed from: a */
    public File mo4727a(InterfaceC0884h interfaceC0884h) {
        String m4765a = this.f4262b.m4765a(interfaceC0884h);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + m4765a + " for for Key: " + interfaceC0884h);
        }
        try {
            C0726a.d m4472a = m4736a().m4472a(m4765a);
            if (m4472a == null) {
                return null;
            }
            return m4472a.m4497a(0);
        } catch (IOException e) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
            return null;
        }
    }

    @Override // com.p052a.p053a.p057d.p060b.p062b.InterfaceC0776a
    /* renamed from: a */
    public void mo4728a(InterfaceC0884h interfaceC0884h, InterfaceC0776a.b bVar) {
        C0726a m4736a;
        String m4765a = this.f4262b.m4765a(interfaceC0884h);
        this.f4265e.m4731a(m4765a);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + m4765a + " for for Key: " + interfaceC0884h);
            }
            try {
                m4736a = m4736a();
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            if (m4736a.m4472a(m4765a) == null) {
                C0726a.b m4474b = m4736a.m4474b(m4765a);
                if (m4474b == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + m4765a);
                }
                try {
                    if (bVar.mo4730a(m4474b.m4479a(0))) {
                        m4474b.m4480a();
                    }
                } finally {
                    m4474b.m4482c();
                }
            }
        } finally {
            this.f4265e.m4732b(m4765a);
        }
    }
}
