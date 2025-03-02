package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzapj<T> extends zzapk<T> {
    private final zzapg<T> boA;
    private final zzaox<T> boB;
    private final zzaos boC;
    private final zzaqo<T> boD;
    private final zzapl boE;
    private zzapk<T> bol;

    private static class zza implements zzapl {
        private final zzapg<?> boA;
        private final zzaox<?> boB;
        private final zzaqo<?> boF;
        private final boolean boG;
        private final Class<?> boH;

        private zza(Object obj, zzaqo<?> zzaqoVar, boolean z, Class<?> cls) {
            this.boA = obj instanceof zzapg ? (zzapg) obj : null;
            this.boB = obj instanceof zzaox ? (zzaox) obj : null;
            zzapq.zzbt((this.boA == null && this.boB == null) ? false : true);
            this.boF = zzaqoVar;
            this.boG = z;
            this.boH = cls;
        }

        /* synthetic */ zza(Object obj, zzaqo zzaqoVar, boolean z, Class cls, C12961 c12961) {
            this(obj, zzaqoVar, z, cls);
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (this.boF != null ? this.boF.equals(zzaqoVar) || (this.boG && this.boF.m6629bC() == zzaqoVar.m6628bB()) : this.boH.isAssignableFrom(zzaqoVar.m6628bB())) {
                return new zzapj(this.boA, this.boB, zzaosVar, zzaqoVar, this);
            }
            return null;
        }
    }

    private zzapj(zzapg<T> zzapgVar, zzaox<T> zzaoxVar, zzaos zzaosVar, zzaqo<T> zzaqoVar, zzapl zzaplVar) {
        this.boA = zzapgVar;
        this.boB = zzaoxVar;
        this.boC = zzaosVar;
        this.boD = zzaqoVar;
        this.boE = zzaplVar;
    }

    /* synthetic */ zzapj(zzapg zzapgVar, zzaox zzaoxVar, zzaos zzaosVar, zzaqo zzaqoVar, zzapl zzaplVar, C12961 c12961) {
        this(zzapgVar, zzaoxVar, zzaosVar, zzaqoVar, zzaplVar);
    }

    /* renamed from: bg */
    private zzapk<T> m6605bg() {
        zzapk<T> zzapkVar = this.bol;
        if (zzapkVar != null) {
            return zzapkVar;
        }
        zzapk<T> zza2 = this.boC.zza(this.boE, this.boD);
        this.bol = zza2;
        return zza2;
    }

    public static zzapl zza(zzaqo<?> zzaqoVar, Object obj) {
        return new zza(obj, zzaqoVar, false, null);
    }

    public static zzapl zzb(zzaqo<?> zzaqoVar, Object obj) {
        return new zza(obj, zzaqoVar, zzaqoVar.m6629bC() == zzaqoVar.m6628bB(), null);
    }

    @Override // com.google.android.gms.internal.zzapk
    public void zza(zzaqr zzaqrVar, T t) {
        if (this.boA == null) {
            m6605bg().zza(zzaqrVar, t);
        } else if (t == null) {
            zzaqrVar.mo6622bA();
        } else {
            zzapz.zzb(this.boA.zza(t, this.boD.m6629bC(), this.boC.boj), zzaqrVar);
        }
    }

    @Override // com.google.android.gms.internal.zzapk
    public T zzb(zzaqp zzaqpVar) {
        if (this.boB == null) {
            return m6605bg().zzb(zzaqpVar);
        }
        zzaoy zzh = zzapz.zzh(zzaqpVar);
        if (zzh.m6597aY()) {
            return null;
        }
        try {
            return this.boB.zzb(zzh, this.boD.m6629bC(), this.boC.boi);
        } catch (zzapc e) {
            throw e;
        } catch (Exception e2) {
            throw new zzapc(e2);
        }
    }
}
