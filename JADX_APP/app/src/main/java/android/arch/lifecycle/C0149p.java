package android.arch.lifecycle;

import java.util.HashMap;
import java.util.Iterator;

/* renamed from: android.arch.lifecycle.p */
/* loaded from: classes.dex */
public class C0149p {

    /* renamed from: a */
    private final HashMap<String, AbstractC0147n> f1020a = new HashMap<>();

    /* renamed from: a */
    final void m1351a(String str, AbstractC0147n abstractC0147n) {
        AbstractC0147n put = this.f1020a.put(str, abstractC0147n);
        if (put != null) {
            put.onCleared();
        }
    }

    /* renamed from: a */
    final AbstractC0147n m1349a(String str) {
        return this.f1020a.get(str);
    }

    /* renamed from: a */
    public final void m1350a() {
        Iterator<AbstractC0147n> it = this.f1020a.values().iterator();
        while (it.hasNext()) {
            it.next().onCleared();
        }
        this.f1020a.clear();
    }
}
