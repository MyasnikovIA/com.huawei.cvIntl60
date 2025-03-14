package com.google.android.gms.common.internal;

import android.util.Log;

/* loaded from: classes.dex */
public final class zzo {

    /* renamed from: EA */
    public static final int f6365EA = 23 - " PII_LOG".length();

    /* renamed from: EB */
    private static final String f6366EB = null;

    /* renamed from: EC */
    private final String f6367EC;

    /* renamed from: ED */
    private final String f6368ED;

    public zzo(String str) {
        this(str, null);
    }

    public zzo(String str, String str2) {
        zzaa.zzb(str, "log tag cannot be null");
        zzaa.zzb(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f6367EC = str;
        if (str2 == null || str2.length() <= 0) {
            this.f6368ED = null;
        } else {
            this.f6368ED = str2;
        }
    }

    private String zzhz(String str) {
        return this.f6368ED == null ? str : this.f6368ED.concat(str);
    }

    public void zzad(String str, String str2) {
        if (zzgo(3)) {
            Log.d(str, zzhz(str2));
        }
    }

    public void zzae(String str, String str2) {
        if (zzgo(5)) {
            Log.w(str, zzhz(str2));
        }
    }

    public void zzaf(String str, String str2) {
        if (zzgo(6)) {
            Log.e(str, zzhz(str2));
        }
    }

    public void zzb(String str, String str2, Throwable th) {
        if (zzgo(4)) {
            Log.i(str, zzhz(str2), th);
        }
    }

    public void zzc(String str, String str2, Throwable th) {
        if (zzgo(5)) {
            Log.w(str, zzhz(str2), th);
        }
    }

    public void zzd(String str, String str2, Throwable th) {
        if (zzgo(6)) {
            Log.e(str, zzhz(str2), th);
        }
    }

    public void zze(String str, String str2, Throwable th) {
        if (zzgo(7)) {
            Log.e(str, zzhz(str2), th);
            Log.wtf(str, zzhz(str2), th);
        }
    }

    public boolean zzgo(int i) {
        return Log.isLoggable(this.f6367EC, i);
    }
}
