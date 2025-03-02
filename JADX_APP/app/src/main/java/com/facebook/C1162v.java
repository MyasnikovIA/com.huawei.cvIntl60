package com.facebook;

import android.content.Intent;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;

/* renamed from: com.facebook.v */
/* loaded from: classes.dex */
public final class C1162v {

    /* renamed from: a */
    private static volatile C1162v f5911a;

    /* renamed from: b */
    private final LocalBroadcastManager f5912b;

    /* renamed from: c */
    private final C1161u f5913c;

    /* renamed from: d */
    private Profile f5914d;

    C1162v(LocalBroadcastManager localBroadcastManager, C1161u c1161u) {
        C1071v.m6125a(localBroadcastManager, "localBroadcastManager");
        C1071v.m6125a(c1161u, "profileCache");
        this.f5912b = localBroadcastManager;
        this.f5913c = c1161u;
    }

    /* renamed from: a */
    static C1162v m6572a() {
        if (f5911a == null) {
            synchronized (C1162v.class) {
                if (f5911a == null) {
                    f5911a = new C1162v(LocalBroadcastManager.getInstance(C1074k.m6181f()), new C1161u());
                }
            }
        }
        return f5911a;
    }

    /* renamed from: b */
    Profile m6576b() {
        return this.f5914d;
    }

    /* renamed from: c */
    boolean m6577c() {
        Profile m6569a = this.f5913c.m6569a();
        if (m6569a == null) {
            return false;
        }
        m6574a(m6569a, false);
        return true;
    }

    /* renamed from: a */
    void m6575a(@Nullable Profile profile) {
        m6574a(profile, true);
    }

    /* renamed from: a */
    private void m6574a(@Nullable Profile profile, boolean z) {
        Profile profile2 = this.f5914d;
        this.f5914d = profile;
        if (z) {
            if (profile != null) {
                this.f5913c.m6570a(profile);
            } else {
                this.f5913c.m6571b();
            }
        }
        if (!C1070u.m6097a(profile2, profile)) {
            m6573a(profile2, profile);
        }
    }

    /* renamed from: a */
    private void m6573a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f5912b.sendBroadcast(intent);
    }
}
