package com.google.android.gms.internal;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaqb<E> extends zzapk<Object> {
    public static final zzapl bpG = new zzapl() { // from class: com.google.android.gms.internal.zzaqb.1
        C13181() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Type m6629bC = zzaqoVar.m6629bC();
            if (!(m6629bC instanceof GenericArrayType) && (!(m6629bC instanceof Class) || !((Class) m6629bC).isArray())) {
                return null;
            }
            Type zzh = zzapr.zzh(m6629bC);
            return new zzaqb(zzaosVar, zzaosVar.zza(zzaqo.zzl(zzh)), zzapr.zzf(zzh));
        }
    };
    private final Class<E> bpH;
    private final zzapk<E> bpI;

    /* renamed from: com.google.android.gms.internal.zzaqb$1 */
    static class C13181 implements zzapl {
        C13181() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Type m6629bC = zzaqoVar.m6629bC();
            if (!(m6629bC instanceof GenericArrayType) && (!(m6629bC instanceof Class) || !((Class) m6629bC).isArray())) {
                return null;
            }
            Type zzh = zzapr.zzh(m6629bC);
            return new zzaqb(zzaosVar, zzaosVar.zza(zzaqo.zzl(zzh)), zzapr.zzf(zzh));
        }
    }

    public zzaqb(zzaos zzaosVar, zzapk<E> zzapkVar, Class<E> cls) {
        this.bpI = new zzaqm(zzaosVar, zzapkVar, cls);
        this.bpH = cls;
    }

    @Override // com.google.android.gms.internal.zzapk
    public void zza(zzaqr zzaqrVar, Object obj) {
        if (obj == null) {
            zzaqrVar.mo6622bA();
            return;
        }
        zzaqrVar.mo6624bw();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.bpI.zza(zzaqrVar, Array.get(obj, i));
        }
        zzaqrVar.mo6625bx();
    }

    @Override // com.google.android.gms.internal.zzapk
    public Object zzb(zzaqp zzaqpVar) {
        if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
            zzaqpVar.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzaqpVar.beginArray();
        while (zzaqpVar.hasNext()) {
            arrayList.add(this.bpI.zzb(zzaqpVar));
        }
        zzaqpVar.endArray();
        Object newInstance = Array.newInstance((Class<?>) this.bpH, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
