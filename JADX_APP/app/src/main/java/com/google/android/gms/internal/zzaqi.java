package com.google.android.gms.internal;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaqi extends zzapk<Object> {
    public static final zzapl bpG = new zzapl() { // from class: com.google.android.gms.internal.zzaqi.1
        C13221() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Object.class) {
                return new zzaqi(zzaosVar);
            }
            return null;
        }
    };
    private final zzaos boC;

    /* renamed from: com.google.android.gms.internal.zzaqi$1 */
    static class C13221 implements zzapl {
        C13221() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Object.class) {
                return new zzaqi(zzaosVar);
            }
            return null;
        }
    }

    private zzaqi(zzaos zzaosVar) {
        this.boC = zzaosVar;
    }

    /* synthetic */ zzaqi(zzaos zzaosVar, C13221 c13221) {
        this(zzaosVar);
    }

    @Override // com.google.android.gms.internal.zzapk
    public void zza(zzaqr zzaqrVar, Object obj) {
        if (obj == null) {
            zzaqrVar.mo6622bA();
            return;
        }
        zzapk zzk = this.boC.zzk(obj.getClass());
        if (!(zzk instanceof zzaqi)) {
            zzk.zza(zzaqrVar, obj);
        } else {
            zzaqrVar.mo6626by();
            zzaqrVar.mo6627bz();
        }
    }

    @Override // com.google.android.gms.internal.zzapk
    public Object zzb(zzaqp zzaqpVar) {
        switch (zzaqpVar.mo6619bq()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                zzaqpVar.beginArray();
                while (zzaqpVar.hasNext()) {
                    arrayList.add(zzb(zzaqpVar));
                }
                zzaqpVar.endArray();
                return arrayList;
            case BEGIN_OBJECT:
                zzapw zzapwVar = new zzapw();
                zzaqpVar.beginObject();
                while (zzaqpVar.hasNext()) {
                    zzapwVar.put(zzaqpVar.nextName(), zzb(zzaqpVar));
                }
                zzaqpVar.endObject();
                return zzapwVar;
            case STRING:
                return zzaqpVar.nextString();
            case NUMBER:
                return Double.valueOf(zzaqpVar.nextDouble());
            case BOOLEAN:
                return Boolean.valueOf(zzaqpVar.nextBoolean());
            case NULL:
                zzaqpVar.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
