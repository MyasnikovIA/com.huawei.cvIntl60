package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.p089a.C1032g;

/* renamed from: com.facebook.internal.b */
/* loaded from: classes.dex */
public class C1051b extends BroadcastReceiver {

    /* renamed from: a */
    private static C1051b f5437a;

    /* renamed from: b */
    private Context f5438b;

    private C1051b(Context context) {
        this.f5438b = context.getApplicationContext();
    }

    /* renamed from: a */
    private void m5933a() {
        LocalBroadcastManager.getInstance(this.f5438b).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    /* renamed from: b */
    private void m5934b() {
        LocalBroadcastManager.getInstance(this.f5438b).unregisterReceiver(this);
    }

    /* renamed from: a */
    public static C1051b m5932a(Context context) {
        if (f5437a != null) {
            return f5437a;
        }
        f5437a = new C1051b(context);
        f5437a.m5933a();
        return f5437a;
    }

    protected void finalize() {
        try {
            m5934b();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1032g m5838a = C1032g.m5838a(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        m5838a.m5855a(str, bundle);
    }
}
