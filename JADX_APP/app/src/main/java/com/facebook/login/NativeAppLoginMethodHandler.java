package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.C1048h;
import com.facebook.EnumC1043c;
import com.facebook.internal.C1068s;
import com.facebook.internal.C1070u;
import com.facebook.login.LoginClient;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    abstract boolean mo6205a(LoginClient.Request request);

    NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    boolean mo6204a(int i, int i2, Intent intent) {
        LoginClient.Result m6328a;
        LoginClient.Request m6283c = this.f5695b.m6283c();
        if (intent == null) {
            m6328a = LoginClient.Result.m6311a(m6283c, "Operation canceled");
        } else if (i2 == 0) {
            m6328a = m6330b(m6283c, intent);
        } else if (i2 != -1) {
            m6328a = LoginClient.Result.m6312a(m6283c, "Unexpected resultCode from authorization.", null);
        } else {
            m6328a = m6328a(m6283c, intent);
        }
        if (m6328a != null) {
            this.f5695b.m6276a(m6328a);
            return true;
        }
        this.f5695b.m6290i();
        return true;
    }

    /* renamed from: a */
    private LoginClient.Result m6328a(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String m6329a = m6329a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        String m6331b = m6331b(extras);
        String string = extras.getString("e2e");
        if (!C1070u.m6098a(string)) {
            m6326b(string);
        }
        if (m6329a == null && obj == null && m6331b == null) {
            try {
                return LoginClient.Result.m6310a(request, m6321a(request.m6296a(), extras, EnumC1043c.FACEBOOK_APPLICATION_WEB, request.m6301d()));
            } catch (C1048h e) {
                return LoginClient.Result.m6312a(request, null, e.getMessage());
            }
        }
        if (C1068s.f5542a.contains(m6329a)) {
            return null;
        }
        if (C1068s.f5543b.contains(m6329a)) {
            return LoginClient.Result.m6311a(request, (String) null);
        }
        return LoginClient.Result.m6313a(request, m6329a, m6331b, obj);
    }

    /* renamed from: b */
    private LoginClient.Result m6330b(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String m6329a = m6329a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        if ("CONNECTION_FAILURE".equals(obj)) {
            return LoginClient.Result.m6313a(request, m6329a, m6331b(extras), obj);
        }
        return LoginClient.Result.m6311a(request, m6329a);
    }

    /* renamed from: a */
    private String m6329a(Bundle bundle) {
        String string = bundle.getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
        if (string == null) {
            return bundle.getString("error_type");
        }
        return string;
    }

    /* renamed from: b */
    private String m6331b(Bundle bundle) {
        String string = bundle.getString("error_message");
        if (string == null) {
            return bundle.getString("error_description");
        }
        return string;
    }

    /* renamed from: a */
    protected boolean m6332a(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.f5695b.m6273a().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}
