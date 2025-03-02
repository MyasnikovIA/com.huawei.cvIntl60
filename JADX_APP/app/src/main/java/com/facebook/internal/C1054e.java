package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.C0152a;
import com.facebook.C1074k;
import com.google.android.exoplayer.C1167C;

/* renamed from: com.facebook.internal.e */
/* loaded from: classes.dex */
public class C1054e {

    /* renamed from: a */
    private Uri f5454a;

    public C1054e(String str, Bundle bundle) {
        this.f5454a = C1070u.m6065a(C1068s.m6057a(), C1074k.m6182g() + "/dialog/" + str, bundle == null ? new Bundle() : bundle);
    }

    /* renamed from: a */
    public void m5943a(Activity activity, String str) {
        C0152a m1356a = new C0152a.a().m1356a();
        m1356a.f1025a.setPackage(str);
        m1356a.f1025a.addFlags(C1167C.ENCODING_PCM_32BIT);
        m1356a.m1355a(activity, this.f5454a);
    }
}
