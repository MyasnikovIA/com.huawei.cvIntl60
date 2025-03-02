package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzaqh implements zzapl {
    private final zzaps bod;
    private final boolean bpS;

    private final class zza<K, V> extends zzapk<Map<K, V>> {
        private final zzapx<? extends Map<K, V>> bpK;
        private final zzapk<K> bpT;
        private final zzapk<V> bpU;

        public zza(zzaos zzaosVar, Type type, zzapk<K> zzapkVar, Type type2, zzapk<V> zzapkVar2, zzapx<? extends Map<K, V>> zzapxVar) {
            this.bpT = new zzaqm(zzaosVar, zzapkVar, type);
            this.bpU = new zzaqm(zzaosVar, zzapkVar2, type2);
            this.bpK = zzapxVar;
        }

        private String zze(zzaoy zzaoyVar) {
            if (!zzaoyVar.m6596aX()) {
                if (zzaoyVar.m6597aY()) {
                    return "null";
                }
                throw new AssertionError();
            }
            zzape m6600bb = zzaoyVar.m6600bb();
            if (m6600bb.m6603be()) {
                return String.valueOf(m6600bb.mo6592aT());
            }
            if (m6600bb.m6602bd()) {
                return Boolean.toString(m6600bb.getAsBoolean());
            }
            if (m6600bb.m6604bf()) {
                return m6600bb.mo6593aU();
            }
            throw new AssertionError();
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Map<K, V> map) {
            int i = 0;
            if (map == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            if (!zzaqh.this.bpS) {
                zzaqrVar.mo6626by();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    zzaqrVar.zzus(String.valueOf(entry.getKey()));
                    this.bpU.zza(zzaqrVar, entry.getValue());
                }
                zzaqrVar.mo6627bz();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                zzaoy zzcn = this.bpT.zzcn(entry2.getKey());
                arrayList.add(zzcn);
                arrayList2.add(entry2.getValue());
                z = (zzcn.m6594aV() || zzcn.m6595aW()) | z;
            }
            if (!z) {
                zzaqrVar.mo6626by();
                while (i < arrayList.size()) {
                    zzaqrVar.zzus(zze((zzaoy) arrayList.get(i)));
                    this.bpU.zza(zzaqrVar, arrayList2.get(i));
                    i++;
                }
                zzaqrVar.mo6627bz();
                return;
            }
            zzaqrVar.mo6624bw();
            while (i < arrayList.size()) {
                zzaqrVar.mo6624bw();
                zzapz.zzb((zzaoy) arrayList.get(i), zzaqrVar);
                this.bpU.zza(zzaqrVar, arrayList2.get(i));
                zzaqrVar.mo6625bx();
                i++;
            }
            zzaqrVar.mo6625bx();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzl */
        public Map<K, V> zzb(zzaqp zzaqpVar) {
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            if (mo6619bq == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            Map<K, V> mo6609bj = this.bpK.mo6609bj();
            if (mo6619bq != zzaqq.BEGIN_ARRAY) {
                zzaqpVar.beginObject();
                while (zzaqpVar.hasNext()) {
                    zzapu.bph.zzi(zzaqpVar);
                    K zzb = this.bpT.zzb(zzaqpVar);
                    if (mo6609bj.put(zzb, this.bpU.zzb(zzaqpVar)) != null) {
                        String valueOf = String.valueOf(zzb);
                        throw new zzaph(new StringBuilder(String.valueOf(valueOf).length() + 15).append("duplicate key: ").append(valueOf).toString());
                    }
                }
                zzaqpVar.endObject();
                return mo6609bj;
            }
            zzaqpVar.beginArray();
            while (zzaqpVar.hasNext()) {
                zzaqpVar.beginArray();
                K zzb2 = this.bpT.zzb(zzaqpVar);
                if (mo6609bj.put(zzb2, this.bpU.zzb(zzaqpVar)) != null) {
                    String valueOf2 = String.valueOf(zzb2);
                    throw new zzaph(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("duplicate key: ").append(valueOf2).toString());
                }
                zzaqpVar.endArray();
            }
            zzaqpVar.endArray();
            return mo6609bj;
        }
    }

    public zzaqh(zzaps zzapsVar, boolean z) {
        this.bod = zzapsVar;
        this.bpS = z;
    }

    private zzapk<?> zza(zzaos zzaosVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? zzaqn.bqo : zzaosVar.zza(zzaqo.zzl(type));
    }

    @Override // com.google.android.gms.internal.zzapl
    public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
        Type m6629bC = zzaqoVar.m6629bC();
        if (!Map.class.isAssignableFrom(zzaqoVar.m6628bB())) {
            return null;
        }
        Type[] zzb = zzapr.zzb(m6629bC, zzapr.zzf(m6629bC));
        return new zza(zzaosVar, zzb[0], zza(zzaosVar, zzb[0]), zzb[1], zzaosVar.zza(zzaqo.zzl(zzb[1])), this.bod.zzb(zzaqoVar));
    }
}
