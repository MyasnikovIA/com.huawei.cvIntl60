package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.C1054e;

/* loaded from: classes.dex */
public class CustomTabMainActivity extends Activity {

    /* renamed from: a */
    public static final String f5049a = CustomTabMainActivity.class.getSimpleName() + ".extra_params";

    /* renamed from: b */
    public static final String f5050b = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";

    /* renamed from: c */
    public static final String f5051c = CustomTabMainActivity.class.getSimpleName() + ".extra_url";

    /* renamed from: d */
    public static final String f5052d = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";

    /* renamed from: e */
    private boolean f5053e = true;

    /* renamed from: f */
    private BroadcastReceiver f5054f;

    /* renamed from: a */
    public static final String m5521a() {
        return "fb" + C1074k.m6185j() + "://authorize";
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f5045a.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle == null) {
            Bundle bundleExtra = getIntent().getBundleExtra(f5049a);
            new C1054e("oauth", bundleExtra).m5943a(this, getIntent().getStringExtra(f5050b));
            this.f5053e = false;
            this.f5054f = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity.1
                C09851() {
                }

                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Intent intent2 = new Intent(CustomTabMainActivity.this, (Class<?>) CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f5052d);
                    intent2.putExtra(CustomTabMainActivity.f5051c, intent.getStringExtra(CustomTabMainActivity.f5051c));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f5054f, new IntentFilter(CustomTabActivity.f5045a));
        }
    }

    /* renamed from: com.facebook.CustomTabMainActivity$1 */
    class C09851 extends BroadcastReceiver {
        C09851() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intent intent2 = new Intent(CustomTabMainActivity.this, (Class<?>) CustomTabMainActivity.class);
            intent2.setAction(CustomTabMainActivity.f5052d);
            intent2.putExtra(CustomTabMainActivity.f5051c, intent.getStringExtra(CustomTabMainActivity.f5051c));
            intent2.addFlags(603979776);
            CustomTabMainActivity.this.startActivity(intent2);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (f5052d.equals(intent.getAction())) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(CustomTabActivity.f5046b));
            m5522a(-1, intent);
        } else if (CustomTabActivity.f5045a.equals(intent.getAction())) {
            m5522a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f5053e) {
            m5522a(0, null);
        }
        this.f5053e = true;
    }

    /* renamed from: a */
    private void m5522a(int i, Intent intent) {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f5054f);
        if (intent != null) {
            setResult(i, intent);
        } else {
            setResult(i);
        }
        finish();
    }
}
