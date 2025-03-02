package com.google.android.gms.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzaqj implements zzapl {
    private final zzaps bod;
    private final zzapt bom;
    private final zzaor boo;

    /* renamed from: com.google.android.gms.internal.zzaqj$1 */
    class C13241 extends zzb {
        final zzapk<?> bpX;
        final /* synthetic */ zzaos bpY;
        final /* synthetic */ Field bpZ;
        final /* synthetic */ zzaqo bqa;
        final /* synthetic */ boolean bqb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13241(String str, boolean z, boolean z2, zzaos zzaosVar, Field field, zzaqo zzaqoVar, boolean z3) {
            super(str, z, z2);
            zzaosVar = zzaosVar;
            field = field;
            zzaqoVar = zzaqoVar;
            zzk = z3;
            this.bpX = zzaqj.this.zza(zzaosVar, field, (zzaqo<?>) zzaqoVar);
        }

        @Override // com.google.android.gms.internal.zzaqj.zzb
        void zza(zzaqp zzaqpVar, Object obj) {
            Object zzb = this.bpX.zzb(zzaqpVar);
            if (zzb == null && zzk) {
                return;
            }
            field.set(obj, zzb);
        }

        @Override // com.google.android.gms.internal.zzaqj.zzb
        void zza(zzaqr zzaqrVar, Object obj) {
            new zzaqm(zzaosVar, this.bpX, zzaqoVar.m6629bC()).zza(zzaqrVar, field.get(obj));
        }

        @Override // com.google.android.gms.internal.zzaqj.zzb
        public boolean zzcs(Object obj) {
            return this.bqe && field.get(obj) != obj;
        }
    }

    public static final class zza<T> extends zzapk<T> {
        private final zzapx<T> bpK;
        private final Map<String, zzb> bqd;

        private zza(zzapx<T> zzapxVar, Map<String, zzb> map) {
            this.bpK = zzapxVar;
            this.bqd = map;
        }

        /* synthetic */ zza(zzapx zzapxVar, Map map, C13241 c13241) {
            this(zzapxVar, map);
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, T t) {
            if (t == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6626by();
            try {
                for (zzb zzbVar : this.bqd.values()) {
                    if (zzbVar.zzcs(t)) {
                        zzaqrVar.zzus(zzbVar.name);
                        zzbVar.zza(zzaqrVar, t);
                    }
                }
                zzaqrVar.mo6627bz();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        public T zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            T mo6609bj = this.bpK.mo6609bj();
            try {
                zzaqpVar.beginObject();
                while (zzaqpVar.hasNext()) {
                    zzb zzbVar = this.bqd.get(zzaqpVar.nextName());
                    if (zzbVar == null || !zzbVar.bqf) {
                        zzaqpVar.skipValue();
                    } else {
                        zzbVar.zza(zzaqpVar, mo6609bj);
                    }
                }
                zzaqpVar.endObject();
                return mo6609bj;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new zzaph(e2);
            }
        }
    }

    static abstract class zzb {
        final boolean bqe;
        final boolean bqf;
        final String name;

        protected zzb(String str, boolean z, boolean z2) {
            this.name = str;
            this.bqe = z;
            this.bqf = z2;
        }

        abstract void zza(zzaqp zzaqpVar, Object obj);

        abstract void zza(zzaqr zzaqrVar, Object obj);

        abstract boolean zzcs(Object obj);
    }

    public zzaqj(zzaps zzapsVar, zzaor zzaorVar, zzapt zzaptVar) {
        this.bod = zzapsVar;
        this.boo = zzaorVar;
        this.bom = zzaptVar;
    }

    public zzapk<?> zza(zzaos zzaosVar, Field field, zzaqo<?> zzaqoVar) {
        zzapk<?> zza2;
        zzapm zzapmVar = (zzapm) field.getAnnotation(zzapm.class);
        return (zzapmVar == null || (zza2 = zzaqe.zza(this.bod, zzaosVar, zzaqoVar, zzapmVar)) == null) ? zzaosVar.zza(zzaqoVar) : zza2;
    }

    private zzb zza(zzaos zzaosVar, Field field, String str, zzaqo<?> zzaqoVar, boolean z, boolean z2) {
        return new zzb(str, z, z2) { // from class: com.google.android.gms.internal.zzaqj.1
            final zzapk<?> bpX;
            final /* synthetic */ zzaos bpY;
            final /* synthetic */ Field bpZ;
            final /* synthetic */ zzaqo bqa;
            final /* synthetic */ boolean bqb;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13241(String str2, boolean z3, boolean z22, zzaos zzaosVar2, Field field2, zzaqo zzaqoVar2, boolean z32) {
                super(str2, z3, z22);
                zzaosVar = zzaosVar2;
                field = field2;
                zzaqoVar = zzaqoVar2;
                zzk = z32;
                this.bpX = zzaqj.this.zza(zzaosVar, field, (zzaqo<?>) zzaqoVar);
            }

            @Override // com.google.android.gms.internal.zzaqj.zzb
            void zza(zzaqp zzaqpVar, Object obj) {
                Object zzb2 = this.bpX.zzb(zzaqpVar);
                if (zzb2 == null && zzk) {
                    return;
                }
                field.set(obj, zzb2);
            }

            @Override // com.google.android.gms.internal.zzaqj.zzb
            void zza(zzaqr zzaqrVar, Object obj) {
                new zzaqm(zzaosVar, this.bpX, zzaqoVar.m6629bC()).zza(zzaqrVar, field.get(obj));
            }

            @Override // com.google.android.gms.internal.zzaqj.zzb
            public boolean zzcs(Object obj) {
                return this.bqe && field.get(obj) != obj;
            }
        };
    }

    static List<String> zza(zzaor zzaorVar, Field field) {
        zzapn zzapnVar = (zzapn) field.getAnnotation(zzapn.class);
        LinkedList linkedList = new LinkedList();
        if (zzapnVar == null) {
            linkedList.add(zzaorVar.zzc(field));
        } else {
            linkedList.add(zzapnVar.value());
            String[] m6606bh = zzapnVar.m6606bh();
            for (String str : m6606bh) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    private Map<String, zzb> zza(zzaos zzaosVar, zzaqo<?> zzaqoVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type m6629bC = zzaqoVar.m6629bC();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean zza2 = zza(field, true);
                boolean zza3 = zza(field, false);
                if (zza2 || zza3) {
                    field.setAccessible(true);
                    Type zza4 = zzapr.zza(zzaqoVar.m6629bC(), cls, field.getGenericType());
                    List<String> zzd = zzd(field);
                    zzb zzbVar = null;
                    int i = 0;
                    while (i < zzd.size()) {
                        String str = zzd.get(i);
                        if (i != 0) {
                            zza2 = false;
                        }
                        zzb zzbVar2 = (zzb) linkedHashMap.put(str, zza(zzaosVar, field, str, zzaqo.zzl(zza4), zza2, zza3));
                        if (zzbVar != null) {
                            zzbVar2 = zzbVar;
                        }
                        i++;
                        zzbVar = zzbVar2;
                    }
                    if (zzbVar != null) {
                        String valueOf = String.valueOf(m6629bC);
                        String str2 = zzbVar.name;
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(str2).length()).append(valueOf).append(" declares multiple JSON fields named ").append(str2).toString());
                    }
                }
            }
            zzaqoVar = zzaqo.zzl(zzapr.zza(zzaqoVar.m6629bC(), cls, cls.getGenericSuperclass()));
            cls = zzaqoVar.m6628bB();
        }
        return linkedHashMap;
    }

    static boolean zza(Field field, boolean z, zzapt zzaptVar) {
        return (zzaptVar.zza(field.getType(), z) || zzaptVar.zza(field, z)) ? false : true;
    }

    private List<String> zzd(Field field) {
        return zza(this.boo, field);
    }

    @Override // com.google.android.gms.internal.zzapl
    public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
        Class<? super T> m6628bB = zzaqoVar.m6628bB();
        if (Object.class.isAssignableFrom(m6628bB)) {
            return new zza(this.bod.zzb(zzaqoVar), zza(zzaosVar, (zzaqo<?>) zzaqoVar, (Class<?>) m6628bB));
        }
        return null;
    }

    public boolean zza(Field field, boolean z) {
        return zza(field, z, this.bom);
    }
}
