package android.arch.lifecycle;

import android.arch.lifecycle.AbstractC0136c;
import android.arch.p033a.p035b.C0128a;
import android.arch.p033a.p035b.C0129b;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: android.arch.lifecycle.f */
/* loaded from: classes.dex */
public class C0139f extends AbstractC0136c {

    /* renamed from: c */
    private final WeakReference<InterfaceC0138e> f1005c;

    /* renamed from: a */
    private C0128a<InterfaceC0137d, a> f1003a = new C0128a<>();

    /* renamed from: d */
    private int f1006d = 0;

    /* renamed from: e */
    private boolean f1007e = false;

    /* renamed from: f */
    private boolean f1008f = false;

    /* renamed from: g */
    private ArrayList<AbstractC0136c.b> f1009g = new ArrayList<>();

    /* renamed from: b */
    private AbstractC0136c.b f1004b = AbstractC0136c.b.INITIALIZED;

    public C0139f(@NonNull InterfaceC0138e interfaceC0138e) {
        this.f1005c = new WeakReference<>(interfaceC0138e);
    }

    @MainThread
    /* renamed from: a */
    public void m1328a(@NonNull AbstractC0136c.b bVar) {
        m1318b(bVar);
    }

    /* renamed from: a */
    public void m1327a(@NonNull AbstractC0136c.a aVar) {
        m1318b(m1317b(aVar));
    }

    /* renamed from: b */
    private void m1318b(AbstractC0136c.b bVar) {
        if (this.f1004b != bVar) {
            this.f1004b = bVar;
            if (this.f1007e || this.f1006d != 0) {
                this.f1008f = true;
                return;
            }
            this.f1007e = true;
            m1325d();
            this.f1007e = false;
        }
    }

    /* renamed from: b */
    private boolean m1320b() {
        if (this.f1003a.m1279a() == 0) {
            return true;
        }
        AbstractC0136c.b bVar = this.f1003a.m1283d().getValue().f1012a;
        AbstractC0136c.b bVar2 = this.f1003a.m1284e().getValue().f1012a;
        return bVar == bVar2 && this.f1004b == bVar2;
    }

    /* renamed from: c */
    private AbstractC0136c.b m1321c(InterfaceC0137d interfaceC0137d) {
        Map.Entry<InterfaceC0137d, a> m1277d = this.f1003a.m1277d(interfaceC0137d);
        return m1315a(m1315a(this.f1004b, m1277d != null ? m1277d.getValue().f1012a : null), !this.f1009g.isEmpty() ? this.f1009g.get(this.f1009g.size() - 1) : null);
    }

    @Override // android.arch.lifecycle.AbstractC0136c
    /* renamed from: a */
    public void mo1312a(@NonNull InterfaceC0137d interfaceC0137d) {
        InterfaceC0138e interfaceC0138e;
        a aVar = new a(interfaceC0137d, this.f1004b == AbstractC0136c.b.DESTROYED ? AbstractC0136c.b.DESTROYED : AbstractC0136c.b.INITIALIZED);
        if (this.f1003a.mo1274a(interfaceC0137d, aVar) == null && (interfaceC0138e = this.f1005c.get()) != null) {
            boolean z = this.f1006d != 0 || this.f1007e;
            AbstractC0136c.b m1321c = m1321c(interfaceC0137d);
            this.f1006d++;
            while (aVar.f1012a.compareTo(m1321c) < 0 && this.f1003a.m1276c(interfaceC0137d)) {
                m1323c(aVar.f1012a);
                aVar.m1329a(interfaceC0138e, m1326e(aVar.f1012a));
                m1322c();
                m1321c = m1321c(interfaceC0137d);
            }
            if (!z) {
                m1325d();
            }
            this.f1006d--;
        }
    }

    /* renamed from: c */
    private void m1322c() {
        this.f1009g.remove(this.f1009g.size() - 1);
    }

    /* renamed from: c */
    private void m1323c(AbstractC0136c.b bVar) {
        this.f1009g.add(bVar);
    }

    @Override // android.arch.lifecycle.AbstractC0136c
    /* renamed from: b */
    public void mo1313b(@NonNull InterfaceC0137d interfaceC0137d) {
        this.f1003a.mo1275b(interfaceC0137d);
    }

    @Override // android.arch.lifecycle.AbstractC0136c
    @NonNull
    /* renamed from: a */
    public AbstractC0136c.b mo1311a() {
        return this.f1004b;
    }

    /* renamed from: b */
    static AbstractC0136c.b m1317b(AbstractC0136c.a aVar) {
        switch (aVar) {
            case ON_CREATE:
            case ON_STOP:
                return AbstractC0136c.b.CREATED;
            case ON_START:
            case ON_PAUSE:
                return AbstractC0136c.b.STARTED;
            case ON_RESUME:
                return AbstractC0136c.b.RESUMED;
            case ON_DESTROY:
                return AbstractC0136c.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    /* renamed from: d */
    private static AbstractC0136c.a m1324d(AbstractC0136c.b bVar) {
        switch (bVar) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return AbstractC0136c.a.ON_DESTROY;
            case STARTED:
                return AbstractC0136c.a.ON_STOP;
            case RESUMED:
                return AbstractC0136c.a.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    /* renamed from: e */
    private static AbstractC0136c.a m1326e(AbstractC0136c.b bVar) {
        switch (bVar) {
            case INITIALIZED:
            case DESTROYED:
                return AbstractC0136c.a.ON_CREATE;
            case CREATED:
                return AbstractC0136c.a.ON_START;
            case STARTED:
                return AbstractC0136c.a.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m1316a(InterfaceC0138e interfaceC0138e) {
        C0129b<InterfaceC0137d, a>.d c = this.f1003a.m1282c();
        while (c.hasNext() && !this.f1008f) {
            Map.Entry next = c.next();
            a aVar = (a) next.getValue();
            while (aVar.f1012a.compareTo(this.f1004b) < 0 && !this.f1008f && this.f1003a.m1276c(next.getKey())) {
                m1323c(aVar.f1012a);
                aVar.m1329a(interfaceC0138e, m1326e(aVar.f1012a));
                m1322c();
            }
        }
    }

    /* renamed from: b */
    private void m1319b(InterfaceC0138e interfaceC0138e) {
        Iterator<Map.Entry<InterfaceC0137d, a>> b = this.f1003a.m1281b();
        while (b.hasNext() && !this.f1008f) {
            Map.Entry<InterfaceC0137d, a> next = b.next();
            a value = next.getValue();
            while (value.f1012a.compareTo(this.f1004b) > 0 && !this.f1008f && this.f1003a.m1276c(next.getKey())) {
                AbstractC0136c.a m1324d = m1324d(value.f1012a);
                m1323c(m1317b(m1324d));
                value.m1329a(interfaceC0138e, m1324d);
                m1322c();
            }
        }
    }

    /* renamed from: d */
    private void m1325d() {
        InterfaceC0138e interfaceC0138e = this.f1005c.get();
        if (interfaceC0138e == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!m1320b()) {
            this.f1008f = false;
            if (this.f1004b.compareTo(this.f1003a.m1283d().getValue().f1012a) < 0) {
                m1319b(interfaceC0138e);
            }
            Map.Entry<InterfaceC0137d, a> e = this.f1003a.m1284e();
            if (!this.f1008f && e != null && this.f1004b.compareTo(e.getValue().f1012a) > 0) {
                m1316a(interfaceC0138e);
            }
        }
        this.f1008f = false;
    }

    /* renamed from: a */
    static AbstractC0136c.b m1315a(@NonNull AbstractC0136c.b bVar, @Nullable AbstractC0136c.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    /* renamed from: android.arch.lifecycle.f$a */
    static class a {

        /* renamed from: a */
        AbstractC0136c.b f1012a;

        /* renamed from: b */
        GenericLifecycleObserver f1013b;

        a(InterfaceC0137d interfaceC0137d, AbstractC0136c.b bVar) {
            this.f1013b = C0141h.m1331a(interfaceC0137d);
            this.f1012a = bVar;
        }

        /* renamed from: a */
        void m1329a(InterfaceC0138e interfaceC0138e, AbstractC0136c.a aVar) {
            AbstractC0136c.b m1317b = C0139f.m1317b(aVar);
            this.f1012a = C0139f.m1315a(this.f1012a, m1317b);
            this.f1013b.mo1291a(interfaceC0138e, aVar);
            this.f1012a = m1317b;
        }
    }
}
