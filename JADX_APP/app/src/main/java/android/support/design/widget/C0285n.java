package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;

/* renamed from: android.support.design.widget.n */
/* loaded from: classes.dex */
class C0285n {

    /* renamed from: a */
    private static C0285n f1839a;

    /* renamed from: b */
    private final Object f1840b = new Object();

    /* renamed from: c */
    private final Handler f1841c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.n.1
        AnonymousClass1() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    C0285n.this.m2189a((b) message.obj);
                    return true;
                default:
                    return false;
            }
        }
    });

    /* renamed from: d */
    private b f1842d;

    /* renamed from: e */
    private b f1843e;

    /* renamed from: android.support.design.widget.n$a */
    interface a {
        /* renamed from: a */
        void m2194a();

        /* renamed from: a */
        void m2195a(int i);
    }

    /* renamed from: a */
    static C0285n m2181a() {
        if (f1839a == null) {
            f1839a = new C0285n();
        }
        return f1839a;
    }

    private C0285n() {
    }

    /* renamed from: android.support.design.widget.n$1 */
    class AnonymousClass1 implements Handler.Callback {
        AnonymousClass1() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    C0285n.this.m2189a((b) message.obj);
                    return true;
                default:
                    return false;
            }
        }
    }

    /* renamed from: a */
    public void m2188a(a aVar, int i) {
        synchronized (this.f1840b) {
            if (m2185f(aVar)) {
                m2182a(this.f1842d, i);
            } else if (m2186g(aVar)) {
                m2182a(this.f1843e, i);
            }
        }
    }

    /* renamed from: a */
    public void m2187a(a aVar) {
        synchronized (this.f1840b) {
            if (m2185f(aVar)) {
                this.f1842d = null;
                if (this.f1843e != null) {
                    m2183b();
                }
            }
        }
    }

    /* renamed from: b */
    public void m2190b(a aVar) {
        synchronized (this.f1840b) {
            if (m2185f(aVar)) {
                m2184b(this.f1842d);
            }
        }
    }

    /* renamed from: c */
    public void m2191c(a aVar) {
        synchronized (this.f1840b) {
            if (m2185f(aVar) && !this.f1842d.f1847c) {
                this.f1842d.f1847c = true;
                this.f1841c.removeCallbacksAndMessages(this.f1842d);
            }
        }
    }

    /* renamed from: d */
    public void m2192d(a aVar) {
        synchronized (this.f1840b) {
            if (m2185f(aVar) && this.f1842d.f1847c) {
                this.f1842d.f1847c = false;
                m2184b(this.f1842d);
            }
        }
    }

    /* renamed from: e */
    public boolean m2193e(a aVar) {
        boolean z;
        synchronized (this.f1840b) {
            z = m2185f(aVar) || m2186g(aVar);
        }
        return z;
    }

    /* renamed from: android.support.design.widget.n$b */
    private static class b {

        /* renamed from: a */
        final WeakReference<a> f1845a;

        /* renamed from: b */
        int f1846b;

        /* renamed from: c */
        boolean f1847c;

        /* renamed from: a */
        boolean m2196a(a aVar) {
            return aVar != null && this.f1845a.get() == aVar;
        }
    }

    /* renamed from: b */
    private void m2183b() {
        if (this.f1843e != null) {
            this.f1842d = this.f1843e;
            this.f1843e = null;
            a aVar = this.f1842d.f1845a.get();
            if (aVar != null) {
                aVar.m2194a();
            } else {
                this.f1842d = null;
            }
        }
    }

    /* renamed from: a */
    private boolean m2182a(b bVar, int i) {
        a aVar = bVar.f1845a.get();
        if (aVar == null) {
            return false;
        }
        this.f1841c.removeCallbacksAndMessages(bVar);
        aVar.m2195a(i);
        return true;
    }

    /* renamed from: f */
    private boolean m2185f(a aVar) {
        return this.f1842d != null && this.f1842d.m2196a(aVar);
    }

    /* renamed from: g */
    private boolean m2186g(a aVar) {
        return this.f1843e != null && this.f1843e.m2196a(aVar);
    }

    /* renamed from: b */
    private void m2184b(b bVar) {
        if (bVar.f1846b != -2) {
            int i = 2750;
            if (bVar.f1846b > 0) {
                i = bVar.f1846b;
            } else if (bVar.f1846b == -1) {
                i = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.f1841c.removeCallbacksAndMessages(bVar);
            this.f1841c.sendMessageDelayed(Message.obtain(this.f1841c, 0, bVar), i);
        }
    }

    /* renamed from: a */
    void m2189a(b bVar) {
        synchronized (this.f1840b) {
            if (this.f1842d == bVar || this.f1843e == bVar) {
                m2182a(bVar, 2);
            }
        }
    }
}
