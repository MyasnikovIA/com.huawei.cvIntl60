package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.C1071v;

/* renamed from: com.facebook.w */
/* loaded from: classes.dex */
public abstract class AbstractC1163w {

    /* renamed from: a */
    private final BroadcastReceiver f5915a;

    /* renamed from: b */
    private final LocalBroadcastManager f5916b;

    /* renamed from: c */
    private boolean f5917c = false;

    /* renamed from: a */
    protected abstract void mo776a(Profile profile, Profile profile2);

    public AbstractC1163w() {
        C1071v.m6123a();
        this.f5915a = new a();
        this.f5916b = LocalBroadcastManager.getInstance(C1074k.m6181f());
        m6579a();
    }

    /* renamed from: a */
    public void m6579a() {
        if (!this.f5917c) {
            m6578c();
            this.f5917c = true;
        }
    }

    /* renamed from: b */
    public void m6580b() {
        if (this.f5917c) {
            this.f5916b.unregisterReceiver(this.f5915a);
            this.f5917c = false;
        }
    }

    /* renamed from: com.facebook.w$a */
    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(AbstractC1163w abstractC1163w, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED".equals(intent.getAction())) {
                AbstractC1163w.this.mo776a((Profile) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_PROFILE"), (Profile) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_PROFILE"));
            }
        }
    }

    /* renamed from: c */
    private void m6578c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        this.f5916b.registerReceiver(this.f5915a, intentFilter);
    }
}
