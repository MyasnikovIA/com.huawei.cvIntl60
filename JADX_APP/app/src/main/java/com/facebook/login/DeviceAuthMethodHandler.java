package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.EnumC1043c;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: classes.dex */
class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.DeviceAuthMethodHandler.1
        C10851() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    };

    /* renamed from: c */
    private static ScheduledThreadPoolExecutor f5656c;

    DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6205a(LoginClient.Request request) {
        m6246b(request);
        return true;
    }

    /* renamed from: b */
    private void m6246b(LoginClient.Request request) {
        FragmentActivity m6280b = this.f5695b.m6280b();
        if (m6280b != null && !m6280b.isFinishing()) {
            DeviceAuthDialog m6251c_ = m6251c_();
            m6251c_.show(m6280b.getSupportFragmentManager(), "login_with_facebook");
            m6251c_.m6233a(request);
        }
    }

    /* renamed from: c_ */
    protected DeviceAuthDialog m6251c_() {
        return new DeviceAuthDialog();
    }

    /* renamed from: c */
    public void m6250c() {
        this.f5695b.m6276a(LoginClient.Result.m6311a(this.f5695b.m6283c(), "User canceled log in."));
    }

    /* renamed from: a */
    public void m6248a(Exception exc) {
        this.f5695b.m6276a(LoginClient.Result.m6312a(this.f5695b.m6283c(), null, exc.getMessage()));
    }

    /* renamed from: a */
    public void m6249a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, EnumC1043c enumC1043c, Date date, Date date2, Date date3) {
        this.f5695b.m6276a(LoginClient.Result.m6310a(this.f5695b.m6283c(), new AccessToken(str, str2, str3, collection, collection2, enumC1043c, date, date2, date3)));
    }

    /* renamed from: d */
    public static synchronized ScheduledThreadPoolExecutor m6247d() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            if (f5656c == null) {
                f5656c = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = f5656c;
        }
        return scheduledThreadPoolExecutor;
    }

    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    String mo6202a() {
        return "device_auth";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    /* renamed from: com.facebook.login.DeviceAuthMethodHandler$1 */
    static class C10851 implements Parcelable.Creator {
        C10851() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    }
}
