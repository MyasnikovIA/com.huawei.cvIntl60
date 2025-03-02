package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C1065p;
import com.facebook.login.LoginClient;

/* loaded from: classes.dex */
class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = new Parcelable.Creator<FacebookLiteLoginMethodHandler>() { // from class: com.facebook.login.FacebookLiteLoginMethodHandler.1
        C10861() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler[] newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    };

    FacebookLiteLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    String mo6202a() {
        return "fb_lite_login";
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6205a(LoginClient.Request request) {
        String m6269m = LoginClient.m6269m();
        Intent m6018a = C1065p.m6018a(this.f5695b.m6280b(), request.m6301d(), request.m6296a(), m6269m, request.m6303f(), request.m6307j(), request.m6300c(), m6323a(request.m6302e()), request.m6306i());
        m6325a("e2e", m6269m);
        return m6332a(m6018a, LoginClient.m6267d());
    }

    FacebookLiteLoginMethodHandler(Parcel parcel) {
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

    /* renamed from: com.facebook.login.FacebookLiteLoginMethodHandler$1 */
    static class C10861 implements Parcelable.Creator<FacebookLiteLoginMethodHandler> {
        C10861() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler[] newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    }
}
