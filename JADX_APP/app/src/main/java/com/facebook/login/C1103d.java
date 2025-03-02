package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.login.LoginClient;

/* renamed from: com.facebook.login.d */
/* loaded from: classes.dex */
public class C1103d extends Fragment {

    /* renamed from: a */
    private String f5725a;

    /* renamed from: b */
    private LoginClient f5726b;

    /* renamed from: c */
    private LoginClient.Request f5727c;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f5726b = (LoginClient) bundle.getParcelable("loginClient");
            this.f5726b.m6274a(this);
        } else {
            this.f5726b = m6355a();
        }
        this.f5726b.m6278a(new LoginClient.InterfaceC1096b() { // from class: com.facebook.login.d.1
            AnonymousClass1() {
            }

            @Override // com.facebook.login.LoginClient.InterfaceC1096b
            /* renamed from: a */
            public void mo6319a(LoginClient.Result result) {
                C1103d.this.m6353a(result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            m6352a(activity);
            Intent intent = activity.getIntent();
            if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
                this.f5727c = (LoginClient.Request) bundleExtra.getParcelable("request");
            }
        }
    }

    /* renamed from: com.facebook.login.d$1 */
    class AnonymousClass1 implements LoginClient.InterfaceC1096b {
        AnonymousClass1() {
        }

        @Override // com.facebook.login.LoginClient.InterfaceC1096b
        /* renamed from: a */
        public void mo6319a(LoginClient.Result result) {
            C1103d.this.m6353a(result);
        }
    }

    /* renamed from: a */
    protected LoginClient m6355a() {
        return new LoginClient(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.f5726b.m6287f();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(m6356b(), viewGroup, false);
        this.f5726b.m6277a(new LoginClient.InterfaceC1095a() { // from class: com.facebook.login.d.2

            /* renamed from: a */
            final /* synthetic */ View f5729a;

            AnonymousClass2(View view) {
                findViewById = view;
            }

            @Override // com.facebook.login.LoginClient.InterfaceC1095a
            /* renamed from: a */
            public void mo6317a() {
                findViewById.setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.InterfaceC1095a
            /* renamed from: b */
            public void mo6318b() {
                findViewById.setVisibility(8);
            }
        });
        return inflate;
    }

    /* renamed from: com.facebook.login.d$2 */
    class AnonymousClass2 implements LoginClient.InterfaceC1095a {

        /* renamed from: a */
        final /* synthetic */ View f5729a;

        AnonymousClass2(View view) {
            findViewById = view;
        }

        @Override // com.facebook.login.LoginClient.InterfaceC1095a
        /* renamed from: a */
        public void mo6317a() {
            findViewById.setVisibility(0);
        }

        @Override // com.facebook.login.LoginClient.InterfaceC1095a
        /* renamed from: b */
        public void mo6318b() {
            findViewById.setVisibility(8);
        }
    }

    @LayoutRes
    /* renamed from: b */
    protected int m6356b() {
        return com.facebook.common.R.layout.com_facebook_login_fragment;
    }

    /* renamed from: a */
    public void m6353a(LoginClient.Result result) {
        this.f5727c = null;
        int i = result.f5682a == LoginClient.Result.EnumC1094a.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f5725a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
        } else {
            this.f5726b.m6275a(this.f5727c);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        View findViewById = getView() == null ? null : getView().findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f5726b.m6279a(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.f5726b);
    }

    /* renamed from: a */
    private void m6352a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f5725a = callingActivity.getPackageName();
        }
    }

    /* renamed from: c */
    LoginClient m6357c() {
        return this.f5726b;
    }
}
