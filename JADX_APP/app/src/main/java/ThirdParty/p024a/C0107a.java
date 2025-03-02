package ThirdParty.p024a;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.Plus;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.util.ExponentialBackOff;
import com.google.api.services.youtube.YouTubeScopes;
import java.util.Arrays;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: ThirdParty.a.a */
/* loaded from: classes.dex */
public class C0107a implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: b */
    private static final String[] f806b = {Scopes.PROFILE, YouTubeScopes.YOUTUBE};

    /* renamed from: a */
    public GoogleAccountCredential f807a;

    /* renamed from: c */
    private String f808c;

    /* renamed from: e */
    private UI_ModeMain f810e;

    /* renamed from: f */
    private a f811f;

    /* renamed from: d */
    private GoogleApiClient f809d = null;

    /* renamed from: g */
    private boolean f812g = false;

    /* renamed from: ThirdParty.a.a$a */
    public interface a {
        /* renamed from: a */
        void mo778a(int i);

        /* renamed from: a */
        void mo779a(int i, String str);
    }

    public C0107a(UI_ModeMain uI_ModeMain) {
        this.f810e = uI_ModeMain;
    }

    /* renamed from: a */
    private void m1009a(String str, int i) {
        if (i <= 5) {
            Log.e("GoogleLoginManager", str);
        }
    }

    /* renamed from: a */
    public void m1016a(String str) {
        this.f807a = GoogleAccountCredential.usingOAuth2(this.f810e, Arrays.asList(f806b));
        this.f807a.setBackOff(new ExponentialBackOff());
        this.f807a.setSelectedAccountName(str);
    }

    /* renamed from: e */
    private void m1010e() {
        Plus.AccountApi.clearDefaultAccount(this.f809d);
        this.f811f.mo778a(0);
    }

    /* renamed from: a */
    public void m1013a() {
        m1009a("[DEBUG] Enter accountLogin", 3);
        this.f807a = GoogleAccountCredential.usingOAuth2(this.f810e, Arrays.asList(f806b));
        this.f807a.setBackOff(new ExponentialBackOff());
        m1011f();
        m1009a("[DEBUG] accountLogin:" + this.f807a.getSelectedAccount(), 3);
    }

    /* renamed from: b */
    public void m1017b() {
        this.f811f.mo778a(0);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        m1009a("[DEBUG] onConnectionFailed", 3);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        m1009a("[DEBUG] onConnected", 3);
        if (this.f812g) {
            m1010e();
            this.f812g = false;
            return;
        }
        try {
            this.f808c = Plus.AccountApi.getAccountName(this.f809d);
        } catch (SecurityException e) {
            m1009a(e.toString(), 3);
        }
        this.f807a.setSelectedAccountName(this.f808c);
        m1009a("[DEBUG] AccountName: " + this.f808c, 3);
        m1009a("[DEBUG] Scope: " + this.f807a.getScope(), 3);
        this.f811f.mo779a(0, this.f808c);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        m1009a("[DEBUG] onConnectionSuspended", 3);
    }

    /* renamed from: a */
    public void m1014a(int i, int i2, Intent intent) {
        m1009a("[DEBUG] handleAvtivityResult requestCode" + i, 3);
        switch (i) {
            case 200:
                m1009a("[DEBUG] REQUEST_GOOGLE_PLAY_SERVICES", 3);
                if (i2 == -1) {
                    m1012g();
                    break;
                } else {
                    m1019d();
                    break;
                }
            case 202:
                m1009a("[DEBUG] REQUEST_ACCOUNT_PICKER", 3);
                if (i2 == -1 && intent != null && intent.getExtras() != null) {
                    String string = intent.getExtras().getString("authAccount");
                    if (string != null) {
                        this.f808c = string;
                        this.f807a.setSelectedAccountName(string);
                        m1009a("[DEBUG] REQUEST_ACCOUNT_PICKER:" + this.f808c, 3);
                        this.f811f.mo779a(0, this.f808c);
                        break;
                    } else {
                        m1009a("[DEBUG] accountName NULL", 3);
                        this.f811f.mo779a(-1, null);
                        break;
                    }
                } else {
                    this.f811f.mo779a(-1, null);
                    break;
                }
            case 203:
                m1009a("[DEBUG] REQUEST_AUTHORIZATION", 3);
                if (i2 != -1) {
                    m1011f();
                    break;
                }
                break;
        }
    }

    /* renamed from: f */
    private void m1011f() {
        m1009a("[DEBUG] chooseAccount", 3);
        this.f810e.f8782c.f7644b.startActivityForResult(this.f807a.newChooseAccountIntent(), 202);
    }

    /* renamed from: g */
    private void m1012g() {
        m1009a("[DEBUG] haveGooglePlayServices", 3);
        if (this.f807a.getSelectedAccountName() == null) {
            m1011f();
        }
    }

    /* renamed from: c */
    public boolean m1018c() {
        if (this.f807a == null) {
            return false;
        }
        m1009a("Google getSelectedAccountName: " + this.f807a.getSelectedAccountName(), 0);
        return this.f807a.getSelectedAccountName() != null;
    }

    /* renamed from: d */
    public boolean m1019d() {
        m1009a("[DEBUG] checkGooglePlayServicesAvailable", 3);
        return !GooglePlayServicesUtil.isUserRecoverableError(GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.f810e));
    }

    /* renamed from: a */
    public void m1015a(a aVar) {
        this.f811f = aVar;
    }
}
