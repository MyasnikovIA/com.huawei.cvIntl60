package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

@KeepName
/* loaded from: classes.dex */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: jM */
    private zzk f6085jM;

    /* renamed from: jN */
    private SignInConfiguration f6086jN;

    /* renamed from: jO */
    private boolean f6087jO;

    /* renamed from: jP */
    private int f6088jP;

    /* renamed from: jQ */
    private Intent f6089jQ;

    private class zza implements LoaderManager.LoaderCallbacks<Void> {
        private zza() {
        }

        /* synthetic */ zza(SignInHubActivity signInHubActivity, C12451 c12451) {
            this();
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        public Loader<Void> onCreateLoader(int i, Bundle bundle) {
            return new zzb(SignInHubActivity.this, GoogleApiClient.zzarc());
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Void> loader) {
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        /* renamed from: zza */
        public void onLoadFinished(Loader<Void> loader, Void r5) {
            SignInHubActivity.this.setResult(SignInHubActivity.this.f6088jP, SignInHubActivity.this.f6089jQ);
            SignInHubActivity.this.finish();
        }
    }

    private void zza(int i, Intent intent) {
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
            if (signInAccount != null && signInAccount.zzaiz() != null) {
                GoogleSignInAccount zzaiz = signInAccount.zzaiz();
                this.f6085jM.zzb(zzaiz, this.f6086jN.zzajk());
                intent.removeExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
                intent.putExtra("googleSignInAccount", zzaiz);
                this.f6087jO = true;
                this.f6088jP = i;
                this.f6089jQ = intent;
                zzajl();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                zzdn(intent.getIntExtra("errorCode", 8));
                return;
            }
        }
        zzdn(8);
    }

    private void zzajl() {
        getSupportLoaderManager().initLoader(0, null, new zza());
    }

    private void zzdn(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
    }

    private void zzj(Intent intent) {
        intent.setPackage("com.google.android.gms");
        intent.putExtra("config", this.f6086jN);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException e) {
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            zzdn(8);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        setResult(0);
        switch (i) {
            case 40962:
                zza(i2, intent);
                break;
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6085jM = zzk.zzba(this);
        Intent intent = getIntent();
        if (!"com.google.android.gms.auth.GOOGLE_SIGN_IN".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        }
        this.f6086jN = (SignInConfiguration) intent.getParcelableExtra("config");
        if (this.f6086jN == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
        } else {
            if (bundle == null) {
                zzj(new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN"));
                return;
            }
            this.f6087jO = bundle.getBoolean("signingInGoogleApiClients");
            if (this.f6087jO) {
                this.f6088jP = bundle.getInt("signInResultCode");
                this.f6089jQ = (Intent) bundle.getParcelable("signInResultData");
                zzajl();
            }
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f6087jO);
        if (this.f6087jO) {
            bundle.putInt("signInResultCode", this.f6088jP);
            bundle.putParcelable("signInResultData", this.f6089jQ);
        }
    }
}
