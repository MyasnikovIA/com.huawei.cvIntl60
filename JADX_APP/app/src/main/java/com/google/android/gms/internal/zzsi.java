package com.google.android.gms.internal;

import android.os.Binder;

/* loaded from: classes.dex */
public abstract class zzsi<T> {

    /* renamed from: BN */
    private T f6862BN = null;
    protected final String zzbcn;
    protected final T zzbco;
    private static final Object zzaox = new Object();

    /* renamed from: BL */
    private static zza f6860BL = null;

    /* renamed from: BM */
    private static int f6861BM = 0;
    private static String READ_PERMISSION = "com.google.android.providers.gsf.permission.READ_GSERVICES";

    /* renamed from: com.google.android.gms.internal.zzsi$1 */
    final class C13891 extends zzsi<Boolean> {
        C13891(String str, Boolean bool) {
            super(str, bool);
        }

        @Override // com.google.android.gms.internal.zzsi
        /* renamed from: zzhj */
        public Boolean zzhi(String str) {
            return zzsi.zzauh().zza(this.zzbcn, (Boolean) this.zzbco);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzsi$2 */
    final class C13902 extends zzsi<Long> {
        C13902(String str, Long l) {
            super(str, l);
        }

        @Override // com.google.android.gms.internal.zzsi
        /* renamed from: zzhk */
        public Long zzhi(String str) {
            return zzsi.zzauh().getLong(this.zzbcn, (Long) this.zzbco);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzsi$3 */
    final class C13913 extends zzsi<Integer> {
        C13913(String str, Integer num) {
            super(str, num);
        }

        @Override // com.google.android.gms.internal.zzsi
        /* renamed from: zzhl */
        public Integer zzhi(String str) {
            return zzsi.zzauh().zzb(this.zzbcn, (Integer) this.zzbco);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzsi$4 */
    final class C13924 extends zzsi<Float> {
        C13924(String str, Float f) {
            super(str, f);
        }

        @Override // com.google.android.gms.internal.zzsi
        /* renamed from: zzhm */
        public Float zzhi(String str) {
            return zzsi.zzauh().zzb(this.zzbcn, (Float) this.zzbco);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzsi$5 */
    final class C13935 extends zzsi<String> {
        C13935(String str, String str2) {
            super(str, str2);
        }

        @Override // com.google.android.gms.internal.zzsi
        /* renamed from: zzhn */
        public String zzhi(String str) {
            return zzsi.zzauh().getString(this.zzbcn, (String) this.zzbco);
        }
    }

    private interface zza {
        Long getLong(String str, Long l);

        String getString(String str, String str2);

        Boolean zza(String str, Boolean bool);

        Float zzb(String str, Float f);

        Integer zzb(String str, Integer num);
    }

    protected zzsi(String str, T t) {
        this.zzbcn = str;
        this.zzbco = t;
    }

    public static zzsi<Float> zza(String str, Float f) {
        return new zzsi<Float>(str, f) { // from class: com.google.android.gms.internal.zzsi.4
            C13924(String str2, Float f2) {
                super(str2, f2);
            }

            @Override // com.google.android.gms.internal.zzsi
            /* renamed from: zzhm */
            public Float zzhi(String str2) {
                return zzsi.zzauh().zzb(this.zzbcn, (Float) this.zzbco);
            }
        };
    }

    public static zzsi<Integer> zza(String str, Integer num) {
        return new zzsi<Integer>(str, num) { // from class: com.google.android.gms.internal.zzsi.3
            C13913(String str2, Integer num2) {
                super(str2, num2);
            }

            @Override // com.google.android.gms.internal.zzsi
            /* renamed from: zzhl */
            public Integer zzhi(String str2) {
                return zzsi.zzauh().zzb(this.zzbcn, (Integer) this.zzbco);
            }
        };
    }

    public static zzsi<Long> zza(String str, Long l) {
        return new zzsi<Long>(str, l) { // from class: com.google.android.gms.internal.zzsi.2
            C13902(String str2, Long l2) {
                super(str2, l2);
            }

            @Override // com.google.android.gms.internal.zzsi
            /* renamed from: zzhk */
            public Long zzhi(String str2) {
                return zzsi.zzauh().getLong(this.zzbcn, (Long) this.zzbco);
            }
        };
    }

    public static zzsi<String> zzaa(String str, String str2) {
        return new zzsi<String>(str, str2) { // from class: com.google.android.gms.internal.zzsi.5
            C13935(String str3, String str22) {
                super(str3, str22);
            }

            @Override // com.google.android.gms.internal.zzsi
            /* renamed from: zzhn */
            public String zzhi(String str3) {
                return zzsi.zzauh().getString(this.zzbcn, (String) this.zzbco);
            }
        };
    }

    static /* synthetic */ zza zzauh() {
        return null;
    }

    public static zzsi<Boolean> zzk(String str, boolean z) {
        return new zzsi<Boolean>(str, Boolean.valueOf(z)) { // from class: com.google.android.gms.internal.zzsi.1
            C13891(String str2, Boolean bool) {
                super(str2, bool);
            }

            @Override // com.google.android.gms.internal.zzsi
            /* renamed from: zzhj */
            public Boolean zzhi(String str2) {
                return zzsi.zzauh().zza(this.zzbcn, (Boolean) this.zzbco);
            }
        };
    }

    public final T get() {
        try {
            return zzhi(this.zzbcn);
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzhi(this.zzbcn);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    protected abstract T zzhi(String str);
}
