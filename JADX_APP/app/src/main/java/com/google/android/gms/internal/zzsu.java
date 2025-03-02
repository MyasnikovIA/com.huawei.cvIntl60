package com.google.android.gms.internal;

import android.util.Log;

/* loaded from: classes.dex */
public class zzsu {

    /* renamed from: ED */
    private final String f6888ED;

    /* renamed from: EX */
    private final com.google.android.gms.common.internal.zzo f6889EX;

    /* renamed from: ee */
    private final int f6890ee;
    private final String mTag;

    private zzsu(String str, String str2) {
        this.f6888ED = str2;
        this.mTag = str;
        this.f6889EX = new com.google.android.gms.common.internal.zzo(str);
        this.f6890ee = getLogLevel();
    }

    public zzsu(String str, String... strArr) {
        this(str, zzd(strArr));
    }

    private int getLogLevel() {
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.mTag, i)) {
            i++;
        }
        return i;
    }

    private static String zzd(String... strArr) {
        if (strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (String str : strArr) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(str);
        }
        sb.append(']').append(' ');
        return sb.toString();
    }

    protected String format(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        return this.f6888ED.concat(str);
    }

    public void zza(String str, Object... objArr) {
        if (zzbi(2)) {
            Log.v(this.mTag, format(str, objArr));
        }
    }

    public boolean zzbi(int i) {
        return this.f6890ee <= i;
    }

    public void zze(String str, Object... objArr) {
        Log.i(this.mTag, format(str, objArr));
    }

    public void zzf(String str, Object... objArr) {
        Log.w(this.mTag, format(str, objArr));
    }
}
