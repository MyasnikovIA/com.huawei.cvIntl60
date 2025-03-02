package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.facebook.internal.C1055f;
import com.facebook.internal.C1065p;
import com.facebook.internal.C1070u;
import com.facebook.login.C1103d;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: a */
    public static String f5056a = "PassThrough";

    /* renamed from: b */
    private static String f5057b = "SingleFragment";

    /* renamed from: c */
    private static final String f5058c = FacebookActivity.class.getName();

    /* renamed from: d */
    private Fragment f5059d;

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!C1074k.m6172a()) {
            C1070u.m6089a(f5058c, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            C1074k.m6169a(getApplicationContext());
        }
        setContentView(com.facebook.common.R.layout.com_facebook_activity_layout);
        if (f5056a.equals(intent.getAction())) {
            m5523c();
        } else {
            this.f5059d = m5524a();
        }
    }

    /* renamed from: a */
    protected Fragment m5524a() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(f5057b);
        if (findFragmentByTag == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                C1055f c1055f = new C1055f();
                c1055f.setRetainInstance(true);
                c1055f.show(supportFragmentManager, f5057b);
                return c1055f;
            }
            if ("DeviceShareDialogFragment".equals(intent.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.m6439a((ShareContent) intent.getParcelableExtra("content"));
                deviceShareDialogFragment.show(supportFragmentManager, f5057b);
                return deviceShareDialogFragment;
            }
            C1103d c1103d = new C1103d();
            c1103d.setRetainInstance(true);
            supportFragmentManager.beginTransaction().add(com.facebook.common.R.id.com_facebook_fragment_container, c1103d, f5057b).commit();
            return c1103d;
        }
        return findFragmentByTag;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f5059d != null) {
            this.f5059d.onConfigurationChanged(configuration);
        }
    }

    /* renamed from: b */
    public Fragment m5525b() {
        return this.f5059d;
    }

    /* renamed from: c */
    private void m5523c() {
        setResult(0, C1065p.m6019a(getIntent(), (Bundle) null, C1065p.m6022a(C1065p.m6033c(getIntent()))));
        finish();
    }
}
