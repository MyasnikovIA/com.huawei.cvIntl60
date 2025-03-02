package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.internal.DialogC1072w;

/* renamed from: com.facebook.internal.f */
/* loaded from: classes.dex */
public class C1055f extends DialogFragment {

    /* renamed from: a */
    private Dialog f5455a;

    /* renamed from: a */
    public void m5948a(Dialog dialog) {
        this.f5455a = dialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        DialogC1072w m5958a;
        super.onCreate(bundle);
        if (this.f5455a == null) {
            FragmentActivity activity = getActivity();
            Bundle m6033c = C1065p.m6033c(activity.getIntent());
            if (!m6033c.getBoolean("is_fallback", false)) {
                String string = m6033c.getString("action");
                Bundle bundle2 = m6033c.getBundle("params");
                if (C1070u.m6098a(string)) {
                    C1070u.m6089a("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                }
                m5958a = new DialogC1072w.a(activity, string, bundle2).m6159a(new DialogC1072w.c() { // from class: com.facebook.internal.f.1
                    AnonymousClass1() {
                    }

                    @Override // com.facebook.internal.DialogC1072w.c
                    /* renamed from: a */
                    public void mo5949a(Bundle bundle3, C1048h c1048h) {
                        C1055f.this.m5945a(bundle3, c1048h);
                    }
                }).mo6160a();
            } else {
                String string2 = m6033c.getString("url");
                if (C1070u.m6098a(string2)) {
                    C1070u.m6089a("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                } else {
                    m5958a = DialogC1058i.m5958a(activity, string2, String.format("fb%s://bridge/", C1074k.m6185j()));
                    m5958a.m6151a(new DialogC1072w.c() { // from class: com.facebook.internal.f.2
                        AnonymousClass2() {
                        }

                        @Override // com.facebook.internal.DialogC1072w.c
                        /* renamed from: a */
                        public void mo5949a(Bundle bundle3, C1048h c1048h) {
                            C1055f.this.m5944a(bundle3);
                        }
                    });
                }
            }
            this.f5455a = m5958a;
        }
    }

    /* renamed from: com.facebook.internal.f$1 */
    class AnonymousClass1 implements DialogC1072w.c {
        AnonymousClass1() {
        }

        @Override // com.facebook.internal.DialogC1072w.c
        /* renamed from: a */
        public void mo5949a(Bundle bundle3, C1048h c1048h) {
            C1055f.this.m5945a(bundle3, c1048h);
        }
    }

    /* renamed from: com.facebook.internal.f$2 */
    class AnonymousClass2 implements DialogC1072w.c {
        AnonymousClass2() {
        }

        @Override // com.facebook.internal.DialogC1072w.c
        /* renamed from: a */
        public void mo5949a(Bundle bundle3, C1048h c1048h) {
            C1055f.this.m5944a(bundle3);
        }
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f5455a == null) {
            m5945a((Bundle) null, (C1048h) null);
            setShowsDialog(false);
        }
        return this.f5455a;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f5455a instanceof DialogC1072w) {
            ((DialogC1072w) this.f5455a).m6157e();
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if ((this.f5455a instanceof DialogC1072w) && isResumed()) {
            ((DialogC1072w) this.f5455a).m6157e();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    /* renamed from: a */
    public void m5945a(Bundle bundle, C1048h c1048h) {
        FragmentActivity activity = getActivity();
        activity.setResult(c1048h == null ? -1 : 0, C1065p.m6019a(activity.getIntent(), bundle, c1048h));
        activity.finish();
    }

    /* renamed from: a */
    public void m5944a(Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }
}
