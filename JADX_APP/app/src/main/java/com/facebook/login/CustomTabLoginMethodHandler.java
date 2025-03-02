package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.C1048h;
import com.facebook.C1073j;
import com.facebook.C1074k;
import com.facebook.C1108m;
import com.facebook.CustomTabMainActivity;
import com.facebook.EnumC1043c;
import com.facebook.FacebookRequestError;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.facebook.login.LoginClient;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {

    /* renamed from: d */
    private String f5622d;

    /* renamed from: e */
    private String f5623e;

    /* renamed from: c */
    private static final String[] f5621c = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.CustomTabLoginMethodHandler.1
        C10761() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    };

    CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f5623e = C1070u.m6069a(20);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    String mo6202a() {
        return "custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: b_ */
    EnumC1043c mo6206b_() {
        return EnumC1043c.CHROME_CUSTOM_TAB;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: c */
    protected String mo6207c() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6205a(LoginClient.Request request) {
        if (!m6198d()) {
            return false;
        }
        Bundle a2 = m6336a(m6338b(request), request);
        Intent intent = new Intent(this.f5695b.m6280b(), (Class<?>) CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f5049a, a2);
        intent.putExtra(CustomTabMainActivity.f5050b, m6200g());
        this.f5695b.m6273a().startActivityForResult(intent, 1);
        return true;
    }

    /* renamed from: d */
    private boolean m6198d() {
        return m6199f() && m6200g() != null && m6201h() && C1071v.m6128a(C1074k.m6181f());
    }

    /* renamed from: f */
    private boolean m6199f() {
        C1060k m5978a = C1061l.m5978a(C1070u.m6070a(this.f5695b.m6280b()));
        return m5978a != null && m5978a.m5965b();
    }

    /* renamed from: g */
    private String m6200g() {
        if (this.f5622d != null) {
            return this.f5622d;
        }
        FragmentActivity m6280b = this.f5695b.m6280b();
        List<ResolveInfo> queryIntentServices = m6280b.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (queryIntentServices != null) {
            HashSet hashSet = new HashSet(Arrays.asList(f5621c));
            Iterator<ResolveInfo> it = queryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    this.f5622d = serviceInfo.packageName;
                    return this.f5622d;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    private boolean m6201h() {
        return !C1070u.m6116e(this.f5695b.m6280b());
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6204a(int i, int i2, Intent intent) {
        if (i != 1) {
            return super.mo6204a(i, i2, intent);
        }
        LoginClient.Request m6283c = this.f5695b.m6283c();
        if (i2 == -1) {
            m6196a(intent.getStringExtra(CustomTabMainActivity.f5051c), m6283c);
            return true;
        }
        super.m6337a(m6283c, (Bundle) null, new C1073j());
        return false;
    }

    /* renamed from: a */
    private void m6196a(String str, LoginClient.Request request) {
        int i;
        if (str != null && str.startsWith(CustomTabMainActivity.m5521a())) {
            Uri parse = Uri.parse(str);
            Bundle m6106c = C1070u.m6106c(parse.getQuery());
            m6106c.putAll(C1070u.m6106c(parse.getFragment()));
            if (!m6197a(m6106c)) {
                super.m6337a(request, (Bundle) null, new C1048h("Invalid state parameter"));
                return;
            }
            String string = m6106c.getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
            if (string == null) {
                string = m6106c.getString("error_type");
            }
            String string2 = m6106c.getString("error_msg");
            if (string2 == null) {
                string2 = m6106c.getString("error_message");
            }
            if (string2 == null) {
                string2 = m6106c.getString("error_description");
            }
            String string3 = m6106c.getString("error_code");
            if (C1070u.m6098a(string3)) {
                i = -1;
            } else {
                try {
                    i = Integer.parseInt(string3);
                } catch (NumberFormatException e) {
                    i = -1;
                }
            }
            if (C1070u.m6098a(string) && C1070u.m6098a(string2) && i == -1) {
                super.m6337a(request, m6106c, (C1048h) null);
                return;
            }
            if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                super.m6337a(request, (Bundle) null, new C1073j());
            } else if (i == 4201) {
                super.m6337a(request, (Bundle) null, new C1073j());
            } else {
                super.m6337a(request, (Bundle) null, new C1108m(new FacebookRequestError(i, string, string2), string2));
            }
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    protected void mo6203a(JSONObject jSONObject) {
        jSONObject.put("7_challenge", this.f5623e);
    }

    /* renamed from: a */
    private boolean m6197a(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string == null) {
                return false;
            }
            return new JSONObject(string).getString("7_challenge").equals(this.f5623e);
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.f5623e = parcel.readString();
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5623e);
    }

    /* renamed from: com.facebook.login.CustomTabLoginMethodHandler$1 */
    static class C10761 implements Parcelable.Creator {
        C10761() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    }
}
