package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

/* loaded from: classes.dex */
public class CustomTabActivity extends Activity {

    /* renamed from: a */
    public static final String f5045a = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";

    /* renamed from: b */
    public static final String f5046b = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    /* renamed from: c */
    private BroadcastReceiver f5047c;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, (Class<?>) CustomTabMainActivity.class);
        intent.setAction(f5045a);
        intent.putExtra(CustomTabMainActivity.f5051c, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f5045a);
            intent2.putExtra(CustomTabMainActivity.f5051c, getIntent().getDataString());
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
            this.f5047c = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                C09841() {
                }

                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f5047c, new IntentFilter(f5046b));
        }
    }

    /* renamed from: com.facebook.CustomTabActivity$1 */
    class C09841 extends BroadcastReceiver {
        C09841() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent3) {
            CustomTabActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f5047c);
        super.onDestroy();
    }
}
