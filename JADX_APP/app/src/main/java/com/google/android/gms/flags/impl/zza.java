package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.zzvv;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class zza<T> {

    /* renamed from: com.google.android.gms.flags.impl.zza$zza */
    public static class C1893zza extends zza<Boolean> {

        /* renamed from: com.google.android.gms.flags.impl.zza$zza$1 */
        final class CallableC12731 implements Callable<Boolean> {

            /* renamed from: WG */
            final /* synthetic */ SharedPreferences f6504WG;

            /* renamed from: WH */
            final /* synthetic */ String f6505WH;

            /* renamed from: WI */
            final /* synthetic */ Boolean f6506WI;

            CallableC12731(SharedPreferences sharedPreferences, String str, Boolean bool) {
                sharedPreferences = sharedPreferences;
                str = str;
                bool = bool;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzwa */
            public Boolean call() {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, bool.booleanValue()));
            }
        }

        public static Boolean zza(SharedPreferences sharedPreferences, String str, Boolean bool) {
            return (Boolean) zzvv.zzb(new Callable<Boolean>() { // from class: com.google.android.gms.flags.impl.zza.zza.1

                /* renamed from: WG */
                final /* synthetic */ SharedPreferences f6504WG;

                /* renamed from: WH */
                final /* synthetic */ String f6505WH;

                /* renamed from: WI */
                final /* synthetic */ Boolean f6506WI;

                CallableC12731(SharedPreferences sharedPreferences2, String str2, Boolean bool2) {
                    sharedPreferences = sharedPreferences2;
                    str = str2;
                    bool = bool2;
                }

                @Override // java.util.concurrent.Callable
                /* renamed from: zzwa */
                public Boolean call() {
                    return Boolean.valueOf(sharedPreferences.getBoolean(str, bool.booleanValue()));
                }
            });
        }
    }

    public static class zzb extends zza<Integer> {

        /* renamed from: com.google.android.gms.flags.impl.zza$zzb$1 */
        final class CallableC12741 implements Callable<Integer> {

            /* renamed from: WG */
            final /* synthetic */ SharedPreferences f6507WG;

            /* renamed from: WH */
            final /* synthetic */ String f6508WH;

            /* renamed from: WJ */
            final /* synthetic */ Integer f6509WJ;

            CallableC12741(SharedPreferences sharedPreferences, String str, Integer num) {
                sharedPreferences = sharedPreferences;
                str = str;
                num = num;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzbhg */
            public Integer call() {
                return Integer.valueOf(sharedPreferences.getInt(str, num.intValue()));
            }
        }

        public static Integer zza(SharedPreferences sharedPreferences, String str, Integer num) {
            return (Integer) zzvv.zzb(new Callable<Integer>() { // from class: com.google.android.gms.flags.impl.zza.zzb.1

                /* renamed from: WG */
                final /* synthetic */ SharedPreferences f6507WG;

                /* renamed from: WH */
                final /* synthetic */ String f6508WH;

                /* renamed from: WJ */
                final /* synthetic */ Integer f6509WJ;

                CallableC12741(SharedPreferences sharedPreferences2, String str2, Integer num2) {
                    sharedPreferences = sharedPreferences2;
                    str = str2;
                    num = num2;
                }

                @Override // java.util.concurrent.Callable
                /* renamed from: zzbhg */
                public Integer call() {
                    return Integer.valueOf(sharedPreferences.getInt(str, num.intValue()));
                }
            });
        }
    }

    public static class zzc extends zza<Long> {

        /* renamed from: com.google.android.gms.flags.impl.zza$zzc$1 */
        final class CallableC12751 implements Callable<Long> {

            /* renamed from: WG */
            final /* synthetic */ SharedPreferences f6510WG;

            /* renamed from: WH */
            final /* synthetic */ String f6511WH;

            /* renamed from: WK */
            final /* synthetic */ Long f6512WK;

            CallableC12751(SharedPreferences sharedPreferences, String str, Long l) {
                sharedPreferences = sharedPreferences;
                str = str;
                l = l;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzbhh */
            public Long call() {
                return Long.valueOf(sharedPreferences.getLong(str, l.longValue()));
            }
        }

        public static Long zza(SharedPreferences sharedPreferences, String str, Long l) {
            return (Long) zzvv.zzb(new Callable<Long>() { // from class: com.google.android.gms.flags.impl.zza.zzc.1

                /* renamed from: WG */
                final /* synthetic */ SharedPreferences f6510WG;

                /* renamed from: WH */
                final /* synthetic */ String f6511WH;

                /* renamed from: WK */
                final /* synthetic */ Long f6512WK;

                CallableC12751(SharedPreferences sharedPreferences2, String str2, Long l2) {
                    sharedPreferences = sharedPreferences2;
                    str = str2;
                    l = l2;
                }

                @Override // java.util.concurrent.Callable
                /* renamed from: zzbhh */
                public Long call() {
                    return Long.valueOf(sharedPreferences.getLong(str, l.longValue()));
                }
            });
        }
    }

    public static class zzd extends zza<String> {

        /* renamed from: com.google.android.gms.flags.impl.zza$zzd$1 */
        final class CallableC12761 implements Callable<String> {

            /* renamed from: WG */
            final /* synthetic */ SharedPreferences f6513WG;

            /* renamed from: WH */
            final /* synthetic */ String f6514WH;

            /* renamed from: WL */
            final /* synthetic */ String f6515WL;

            CallableC12761(SharedPreferences sharedPreferences, String str, String str2) {
                sharedPreferences = sharedPreferences;
                str = str;
                str2 = str2;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzaed */
            public String call() {
                return sharedPreferences.getString(str, str2);
            }
        }

        public static String zza(SharedPreferences sharedPreferences, String str, String str2) {
            return (String) zzvv.zzb(new Callable<String>() { // from class: com.google.android.gms.flags.impl.zza.zzd.1

                /* renamed from: WG */
                final /* synthetic */ SharedPreferences f6513WG;

                /* renamed from: WH */
                final /* synthetic */ String f6514WH;

                /* renamed from: WL */
                final /* synthetic */ String f6515WL;

                CallableC12761(SharedPreferences sharedPreferences2, String str3, String str22) {
                    sharedPreferences = sharedPreferences2;
                    str = str3;
                    str2 = str22;
                }

                @Override // java.util.concurrent.Callable
                /* renamed from: zzaed */
                public String call() {
                    return sharedPreferences.getString(str, str2);
                }
            });
        }
    }
}
