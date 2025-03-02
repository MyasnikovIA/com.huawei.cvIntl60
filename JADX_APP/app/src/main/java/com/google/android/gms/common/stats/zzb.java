package com.google.android.gms.common.stats;

import com.google.android.gms.internal.zzsi;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: FH */
    public static zzsi<Integer> f6422FH = zzsi.zza("gms:common:stats:max_num_of_events", (Integer) 100);

    /* renamed from: FI */
    public static zzsi<Integer> f6423FI = zzsi.zza("gms:common:stats:max_chunk_size", (Integer) 100);

    public static final class zza {

        /* renamed from: FJ */
        public static zzsi<Integer> f6424FJ = zzsi.zza("gms:common:stats:connections:level", Integer.valueOf(zzc.LOG_LEVEL_OFF));

        /* renamed from: FK */
        public static zzsi<String> f6425FK = zzsi.zzaa("gms:common:stats:connections:ignored_calling_processes", "");

        /* renamed from: FL */
        public static zzsi<String> f6426FL = zzsi.zzaa("gms:common:stats:connections:ignored_calling_services", "");

        /* renamed from: FM */
        public static zzsi<String> f6427FM = zzsi.zzaa("gms:common:stats:connections:ignored_target_processes", "");

        /* renamed from: FN */
        public static zzsi<String> f6428FN = zzsi.zzaa("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");

        /* renamed from: FO */
        public static zzsi<Long> f6429FO = zzsi.zza("gms:common:stats:connections:time_out_duration", (Long) 600000L);
    }

    /* renamed from: com.google.android.gms.common.stats.zzb$zzb */
    public static final class C1888zzb {

        /* renamed from: FJ */
        public static zzsi<Integer> f6430FJ = zzsi.zza("gms:common:stats:wakeLocks:level", Integer.valueOf(zzc.LOG_LEVEL_OFF));

        /* renamed from: FO */
        public static zzsi<Long> f6431FO = zzsi.zza("gms:common:stats:wakelocks:time_out_duration", (Long) 600000L);
    }
}
