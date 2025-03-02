package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.C1048h;
import com.facebook.EnumC1043c;
import com.facebook.internal.C1055f;
import com.facebook.internal.C1070u;
import com.facebook.internal.DialogC1072w;
import com.facebook.login.LoginClient;

/* loaded from: classes.dex */
class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator<WebViewLoginMethodHandler>() { // from class: com.facebook.login.WebViewLoginMethodHandler.2
        C10982() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    };

    /* renamed from: c */
    private DialogC1072w f5698c;

    /* renamed from: d */
    private String f5699d;

    WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    String mo6202a() {
        return "web_view";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: b_ */
    EnumC1043c mo6206b_() {
        return EnumC1043c.WEB_VIEW;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: e */
    boolean mo6327e() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    void mo6257b() {
        if (this.f5698c != null) {
            this.f5698c.cancel();
            this.f5698c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6205a(LoginClient.Request request) {
        Bundle b = m6338b(request);
        C10971 c10971 = new DialogC1072w.c() { // from class: com.facebook.login.WebViewLoginMethodHandler.1

            /* renamed from: a */
            final /* synthetic */ LoginClient.Request f5700a;

            C10971(LoginClient.Request request2) {
                request = request2;
            }

            @Override // com.facebook.internal.DialogC1072w.c
            /* renamed from: a */
            public void mo5949a(Bundle bundle, C1048h c1048h) {
                WebViewLoginMethodHandler.this.m6339b(request, bundle, c1048h);
            }
        };
        this.f5699d = LoginClient.m6269m();
        m6325a("e2e", this.f5699d);
        FragmentActivity m6280b = this.f5695b.m6280b();
        this.f5698c = new C1099a(m6280b, request2.m6301d(), b).m6342a(this.f5699d).m6343a(C1070u.m6118f(m6280b)).m6344b(request2.m6306i()).m6159a(c10971).mo6160a();
        C1055f c1055f = new C1055f();
        c1055f.setRetainInstance(true);
        c1055f.m5948a(this.f5698c);
        c1055f.show(m6280b.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$1 */
    class C10971 implements DialogC1072w.c {

        /* renamed from: a */
        final /* synthetic */ LoginClient.Request f5700a;

        C10971(LoginClient.Request request2) {
            request = request2;
        }

        @Override // com.facebook.internal.DialogC1072w.c
        /* renamed from: a */
        public void mo5949a(Bundle bundle, C1048h c1048h) {
            WebViewLoginMethodHandler.this.m6339b(request, bundle, c1048h);
        }
    }

    /* renamed from: b */
    void m6339b(LoginClient.Request request, Bundle bundle, C1048h c1048h) {
        super.m6337a(request, bundle, c1048h);
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$a */
    static class C1099a extends DialogC1072w.a {

        /* renamed from: a */
        private String f5702a;

        /* renamed from: b */
        private String f5703b;

        /* renamed from: c */
        private String f5704c;

        public C1099a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
            this.f5704c = "fbconnect://success";
        }

        /* renamed from: a */
        public C1099a m6342a(String str) {
            this.f5702a = str;
            return this;
        }

        /* renamed from: a */
        public C1099a m6343a(boolean z) {
            this.f5704c = z ? "fbconnect://chrome_os_success" : "fbconnect://success";
            return this;
        }

        /* renamed from: b */
        public C1099a m6344b(String str) {
            this.f5703b = str;
            return this;
        }

        @Override // com.facebook.internal.DialogC1072w.a
        /* renamed from: a */
        public DialogC1072w mo6160a() {
            Bundle e = m6164e();
            e.putString("redirect_uri", this.f5704c);
            e.putString("client_id", m6161b());
            e.putString("e2e", this.f5702a);
            e.putString("response_type", "token,signed_request");
            e.putString("return_scopes", "true");
            e.putString("auth_type", this.f5703b);
            return DialogC1072w.m6136a(m6162c(), "oauth", e, m6163d(), m6165f());
        }
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.f5699d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5699d);
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$2 */
    static class C10982 implements Parcelable.Creator<WebViewLoginMethodHandler> {
        C10982() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    }
}
