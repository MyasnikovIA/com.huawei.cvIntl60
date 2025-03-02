package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.C1228R;
import com.google.android.gms.common.api.Status;

@Deprecated
/* loaded from: classes.dex */
public final class zzrk {

    /* renamed from: Ba */
    private static zzrk f6807Ba;
    private static final Object zzaox = new Object();

    /* renamed from: Bb */
    private final Status f6808Bb;

    /* renamed from: Bc */
    private final boolean f6809Bc;

    /* renamed from: Bd */
    private final boolean f6810Bd;
    private final String zzctj;

    zzrk(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C1228R.string.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            boolean z = resources.getInteger(identifier) != 0;
            this.f6810Bd = z ? false : true;
            r0 = z;
        } else {
            this.f6810Bd = false;
        }
        this.f6809Bc = r0;
        String zzcd = com.google.android.gms.common.internal.zzy.zzcd(context);
        zzcd = zzcd == null ? new com.google.android.gms.common.internal.zzah(context).getString("google_app_id") : zzcd;
        if (TextUtils.isEmpty(zzcd)) {
            this.f6808Bb = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.zzctj = null;
        } else {
            this.zzctj = zzcd;
            this.f6808Bb = Status.f6171xZ;
        }
    }

    public static String zzatt() {
        return zzhh("getGoogleAppId").zzctj;
    }

    public static boolean zzatu() {
        return zzhh("isMeasurementExplicitlyDisabled").f6810Bd;
    }

    public static Status zzby(Context context) {
        Status status;
        com.google.android.gms.common.internal.zzaa.zzb(context, "Context must not be null.");
        synchronized (zzaox) {
            if (f6807Ba == null) {
                f6807Ba = new zzrk(context);
            }
            status = f6807Ba.f6808Bb;
        }
        return status;
    }

    private static zzrk zzhh(String str) {
        zzrk zzrkVar;
        synchronized (zzaox) {
            if (f6807Ba == null) {
                throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 34).append("Initialize must be called before ").append(str).append(".").toString());
            }
            zzrkVar = f6807Ba;
        }
        return zzrkVar;
    }
}
