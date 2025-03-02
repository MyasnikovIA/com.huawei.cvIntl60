package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.C1048h;
import com.facebook.EnumC1043c;
import com.facebook.internal.AbstractServiceConnectionC1066q;
import com.facebook.internal.C1070u;
import com.facebook.login.LoginClient;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.GetTokenLoginMethodHandler.3
        C10893() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    };

    /* renamed from: c */
    private C1101b f5657c;

    GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    String mo6202a() {
        return "get_token";
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    void mo6257b() {
        if (this.f5657c != null) {
            this.f5657c.m6053b();
            this.f5657c.m6051a((AbstractServiceConnectionC1066q.a) null);
            this.f5657c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6205a(LoginClient.Request request) {
        this.f5657c = new C1101b(this.f5695b.m6280b(), request.m6301d());
        if (!this.f5657c.m6052a()) {
            return false;
        }
        this.f5695b.m6292k();
        this.f5657c.m6051a(new AbstractServiceConnectionC1066q.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.1

            /* renamed from: a */
            final /* synthetic */ LoginClient.Request f5658a;

            C10871(LoginClient.Request request2) {
                request = request2;
            }

            @Override // com.facebook.internal.AbstractServiceConnectionC1066q.a
            /* renamed from: a */
            public void mo6054a(Bundle bundle) {
                GetTokenLoginMethodHandler.this.m6256a(request, bundle);
            }
        });
        return true;
    }

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$1 */
    class C10871 implements AbstractServiceConnectionC1066q.a {

        /* renamed from: a */
        final /* synthetic */ LoginClient.Request f5658a;

        C10871(LoginClient.Request request2) {
            request = request2;
        }

        @Override // com.facebook.internal.AbstractServiceConnectionC1066q.a
        /* renamed from: a */
        public void mo6054a(Bundle bundle) {
            GetTokenLoginMethodHandler.this.m6256a(request, bundle);
        }
    }

    /* renamed from: a */
    void m6256a(LoginClient.Request request, Bundle bundle) {
        if (this.f5657c != null) {
            this.f5657c.m6051a((AbstractServiceConnectionC1066q.a) null);
        }
        this.f5657c = null;
        this.f5695b.m6293l();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> m6296a = request.m6296a();
            if (stringArrayList != null && (m6296a == null || stringArrayList.containsAll(m6296a))) {
                m6259c(request, bundle);
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : m6296a) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                m6325a("new_permissions", TextUtils.join(",", hashSet));
            }
            request.m6297a(hashSet);
        }
        this.f5695b.m6290i();
    }

    /* renamed from: b */
    void m6258b(LoginClient.Request request, Bundle bundle) {
        this.f5695b.m6276a(LoginClient.Result.m6310a(this.f5695b.m6283c(), m6320a(bundle, EnumC1043c.FACEBOOK_APPLICATION_SERVICE, request.m6301d())));
    }

    /* renamed from: c */
    void m6259c(LoginClient.Request request, Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.f5695b.m6292k();
            C1070u.m6087a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), (C1070u.a) new C1070u.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.2

                /* renamed from: a */
                final /* synthetic */ Bundle f5660a;

                /* renamed from: b */
                final /* synthetic */ LoginClient.Request f5661b;

                C10882(Bundle bundle2, LoginClient.Request request2) {
                    bundle = bundle2;
                    request = request2;
                }

                @Override // com.facebook.internal.C1070u.a
                /* renamed from: a */
                public void mo5622a(JSONObject jSONObject) {
                    try {
                        bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString(TtmlNode.ATTR_ID));
                        GetTokenLoginMethodHandler.this.m6258b(request, bundle);
                    } catch (JSONException e) {
                        GetTokenLoginMethodHandler.this.f5695b.m6282b(LoginClient.Result.m6312a(GetTokenLoginMethodHandler.this.f5695b.m6283c(), "Caught exception", e.getMessage()));
                    }
                }

                @Override // com.facebook.internal.C1070u.a
                /* renamed from: a */
                public void mo5621a(C1048h c1048h) {
                    GetTokenLoginMethodHandler.this.f5695b.m6282b(LoginClient.Result.m6312a(GetTokenLoginMethodHandler.this.f5695b.m6283c(), "Caught exception", c1048h.getMessage()));
                }
            });
        } else {
            m6258b(request2, bundle2);
        }
    }

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$2 */
    class C10882 implements C1070u.a {

        /* renamed from: a */
        final /* synthetic */ Bundle f5660a;

        /* renamed from: b */
        final /* synthetic */ LoginClient.Request f5661b;

        C10882(Bundle bundle2, LoginClient.Request request2) {
            bundle = bundle2;
            request = request2;
        }

        @Override // com.facebook.internal.C1070u.a
        /* renamed from: a */
        public void mo5622a(JSONObject jSONObject) {
            try {
                bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString(TtmlNode.ATTR_ID));
                GetTokenLoginMethodHandler.this.m6258b(request, bundle);
            } catch (JSONException e) {
                GetTokenLoginMethodHandler.this.f5695b.m6282b(LoginClient.Result.m6312a(GetTokenLoginMethodHandler.this.f5695b.m6283c(), "Caught exception", e.getMessage()));
            }
        }

        @Override // com.facebook.internal.C1070u.a
        /* renamed from: a */
        public void mo5621a(C1048h c1048h) {
            GetTokenLoginMethodHandler.this.f5695b.m6282b(LoginClient.Result.m6312a(GetTokenLoginMethodHandler.this.f5695b.m6283c(), "Caught exception", c1048h.getMessage()));
        }
    }

    GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$3 */
    static class C10893 implements Parcelable.Creator {
        C10893() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    }
}
