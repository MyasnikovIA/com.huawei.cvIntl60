package android.arch.p033a.p035b;

import android.arch.p033a.p035b.C0129b;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.a.b.a */
/* loaded from: classes.dex */
public class C0128a<K, V> extends C0129b<K, V> {

    /* renamed from: a */
    private HashMap<K, C0129b.c<K, V>> f962a = new HashMap<>();

    @Override // android.arch.p033a.p035b.C0129b
    /* renamed from: a */
    protected C0129b.c<K, V> mo1273a(K k) {
        return this.f962a.get(k);
    }

    @Override // android.arch.p033a.p035b.C0129b
    /* renamed from: a */
    public V mo1274a(@NonNull K k, @NonNull V v) {
        C0129b.c<K, V> mo1273a = mo1273a((C0128a<K, V>) k);
        if (mo1273a != null) {
            return mo1273a.f968b;
        }
        this.f962a.put(k, m1280b(k, v));
        return null;
    }

    @Override // android.arch.p033a.p035b.C0129b
    /* renamed from: b */
    public V mo1275b(@NonNull K k) {
        V v = (V) super.mo1275b(k);
        this.f962a.remove(k);
        return v;
    }

    /* renamed from: c */
    public boolean m1276c(K k) {
        return this.f962a.containsKey(k);
    }

    /* renamed from: d */
    public Map.Entry<K, V> m1277d(K k) {
        if (m1276c(k)) {
            return this.f962a.get(k).f970d;
        }
        return null;
    }
}
