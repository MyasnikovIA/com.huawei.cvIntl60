package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzaqc implements zzapl {
    private final zzaps bod;

    private static final class zza<E> extends zzapk<Collection<E>> {
        private final zzapk<E> bpJ;
        private final zzapx<? extends Collection<E>> bpK;

        public zza(zzaos zzaosVar, Type type, zzapk<E> zzapkVar, zzapx<? extends Collection<E>> zzapxVar) {
            this.bpJ = new zzaqm(zzaosVar, zzapkVar, type);
            this.bpK = zzapxVar;
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Collection<E> collection) {
            if (collection == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6624bw();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.bpJ.zza(zzaqrVar, it.next());
            }
            zzaqrVar.mo6625bx();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzj */
        public Collection<E> zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            Collection<E> mo6609bj = this.bpK.mo6609bj();
            zzaqpVar.beginArray();
            while (zzaqpVar.hasNext()) {
                mo6609bj.add(this.bpJ.zzb(zzaqpVar));
            }
            zzaqpVar.endArray();
            return mo6609bj;
        }
    }

    public zzaqc(zzaps zzapsVar) {
        this.bod = zzapsVar;
    }

    @Override // com.google.android.gms.internal.zzapl
    public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
        Type m6629bC = zzaqoVar.m6629bC();
        Class<? super T> m6628bB = zzaqoVar.m6628bB();
        if (!Collection.class.isAssignableFrom(m6628bB)) {
            return null;
        }
        Type zza2 = zzapr.zza(m6629bC, (Class<?>) m6628bB);
        return new zza(zzaosVar, zza2, zzaosVar.zza(zzaqo.zzl(zza2)), this.bod.zzb(zzaqoVar));
    }
}
