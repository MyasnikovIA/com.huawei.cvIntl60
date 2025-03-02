package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.C1228R;

/* loaded from: classes.dex */
public class zzah {

    /* renamed from: EP */
    private final Resources f6286EP;

    /* renamed from: EQ */
    private final String f6287EQ;

    public zzah(Context context) {
        zzaa.zzy(context);
        this.f6286EP = context.getResources();
        this.f6287EQ = this.f6286EP.getResourcePackageName(C1228R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        int identifier = this.f6286EP.getIdentifier(str, "string", this.f6287EQ);
        if (identifier == 0) {
            return null;
        }
        return this.f6286EP.getString(identifier);
    }
}
