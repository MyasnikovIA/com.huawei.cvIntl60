package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: classes.dex */
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: DQ */
    private static final Object f6256DQ = new Object();

    /* renamed from: DR */
    private static ClassLoader f6257DR = null;

    /* renamed from: DS */
    private static Integer f6258DS = null;

    /* renamed from: DT */
    private boolean f6259DT = false;

    protected static ClassLoader zzavy() {
        synchronized (f6256DQ) {
        }
        return null;
    }

    protected static Integer zzavz() {
        synchronized (f6256DQ) {
        }
        return null;
    }

    private static boolean zzd(Class<?> cls) {
        try {
            return SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (IllegalAccessException e) {
            return false;
        } catch (NoSuchFieldException e2) {
            return false;
        }
    }

    protected static boolean zzhu(String str) {
        ClassLoader zzavy = zzavy();
        if (zzavy == null) {
            return true;
        }
        try {
            return zzd(zzavy.loadClass(str));
        } catch (Exception e) {
            return false;
        }
    }

    protected boolean zzawa() {
        return false;
    }
}
