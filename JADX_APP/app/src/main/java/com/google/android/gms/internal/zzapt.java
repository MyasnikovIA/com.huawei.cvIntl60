package com.google.android.gms.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzapt implements zzapl, Cloneable {
    public static final zzapt boW = new zzapt();
    private double boX = -1.0d;
    private int boY = 136;
    private boolean boZ = true;
    private List<zzaoo> bpa = Collections.emptyList();
    private List<zzaoo> bpb = Collections.emptyList();

    /* renamed from: com.google.android.gms.internal.zzapt$1 */
    class C13091<T> extends zzapk<T> {
        private zzapk<T> bol;
        final /* synthetic */ boolean bpc;
        final /* synthetic */ boolean bpd;
        final /* synthetic */ zzaos bpe;
        final /* synthetic */ zzaqo bpf;

        C13091(boolean z, boolean z2, zzaos zzaosVar, zzaqo zzaqoVar) {
            zza2 = z;
            zza = z2;
            zzaosVar = zzaosVar;
            zzaqoVar = zzaqoVar;
        }

        /* renamed from: bg */
        private zzapk<T> m6611bg() {
            zzapk<T> zzapkVar = this.bol;
            if (zzapkVar != null) {
                return zzapkVar;
            }
            zzapk<T> zza = zzaosVar.zza(zzapt.this, zzaqoVar);
            this.bol = zza;
            return zza;
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, T t) {
            if (zza) {
                zzaqrVar.mo6622bA();
            } else {
                m6611bg().zza(zzaqrVar, t);
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        public T zzb(zzaqp zzaqpVar) {
            if (!zza2) {
                return m6611bg().zzb(zzaqpVar);
            }
            zzaqpVar.skipValue();
            return null;
        }
    }

    private boolean zza(zzapo zzapoVar) {
        return zzapoVar == null || zzapoVar.m6607bi() <= this.boX;
    }

    private boolean zza(zzapo zzapoVar, zzapp zzappVar) {
        return zza(zzapoVar) && zza(zzappVar);
    }

    private boolean zza(zzapp zzappVar) {
        return zzappVar == null || zzappVar.m6608bi() > this.boX;
    }

    private boolean zzm(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean zzn(Class<?> cls) {
        return cls.isMemberClass() && !zzo(cls);
    }

    private boolean zzo(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    /* renamed from: bk */
    public zzapt clone() {
        try {
            return (zzapt) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    @Override // com.google.android.gms.internal.zzapl
    public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
        Class<? super T> m6628bB = zzaqoVar.m6628bB();
        boolean zza = zza((Class<?>) m6628bB, true);
        boolean zza2 = zza((Class<?>) m6628bB, false);
        if (zza || zza2) {
            return new zzapk<T>() { // from class: com.google.android.gms.internal.zzapt.1
                private zzapk<T> bol;
                final /* synthetic */ boolean bpc;
                final /* synthetic */ boolean bpd;
                final /* synthetic */ zzaos bpe;
                final /* synthetic */ zzaqo bpf;

                C13091(boolean zza22, boolean zza3, zzaos zzaosVar2, zzaqo zzaqoVar2) {
                    zza2 = zza22;
                    zza = zza3;
                    zzaosVar = zzaosVar2;
                    zzaqoVar = zzaqoVar2;
                }

                /* renamed from: bg */
                private zzapk<T> m6611bg() {
                    zzapk<T> zzapkVar = this.bol;
                    if (zzapkVar != null) {
                        return zzapkVar;
                    }
                    zzapk<T> zza3 = zzaosVar.zza(zzapt.this, zzaqoVar);
                    this.bol = zza3;
                    return zza3;
                }

                @Override // com.google.android.gms.internal.zzapk
                public void zza(zzaqr zzaqrVar, T t) {
                    if (zza) {
                        zzaqrVar.mo6622bA();
                    } else {
                        m6611bg().zza(zzaqrVar, t);
                    }
                }

                @Override // com.google.android.gms.internal.zzapk
                public T zzb(zzaqp zzaqpVar) {
                    if (!zza2) {
                        return m6611bg().zzb(zzaqpVar);
                    }
                    zzaqpVar.skipValue();
                    return null;
                }
            };
        }
        return null;
    }

    public zzapt zza(zzaoo zzaooVar, boolean z, boolean z2) {
        zzapt clone = clone();
        if (z) {
            clone.bpa = new ArrayList(this.bpa);
            clone.bpa.add(zzaooVar);
        }
        if (z2) {
            clone.bpb = new ArrayList(this.bpb);
            clone.bpb.add(zzaooVar);
        }
        return clone;
    }

    public boolean zza(Class<?> cls, boolean z) {
        if (this.boX != -1.0d && !zza((zzapo) cls.getAnnotation(zzapo.class), (zzapp) cls.getAnnotation(zzapp.class))) {
            return true;
        }
        if ((this.boZ || !zzn(cls)) && !zzm(cls)) {
            Iterator<zzaoo> it = (z ? this.bpa : this.bpb).iterator();
            while (it.hasNext()) {
                if (it.next().zzh(cls)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public boolean zza(Field field, boolean z) {
        if ((this.boY & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.boX == -1.0d || zza((zzapo) field.getAnnotation(zzapo.class), (zzapp) field.getAnnotation(zzapp.class))) && !field.isSynthetic()) {
            if ((this.boZ || !zzn(field.getType())) && !zzm(field.getType())) {
                List<zzaoo> list = z ? this.bpa : this.bpb;
                if (!list.isEmpty()) {
                    zzaop zzaopVar = new zzaop(field);
                    Iterator<zzaoo> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().zza(zzaopVar)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public zzapt zzg(int... iArr) {
        zzapt clone = clone();
        clone.boY = 0;
        for (int i : iArr) {
            clone.boY = i | clone.boY;
        }
        return clone;
    }
}
