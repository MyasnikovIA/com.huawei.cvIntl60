package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C1110o;
import com.facebook.GraphRequest;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.b */
/* loaded from: classes.dex */
public final class C1041b {

    /* renamed from: a */
    private static volatile C1041b f5383a;

    /* renamed from: b */
    private final LocalBroadcastManager f5384b;

    /* renamed from: c */
    private final C1002a f5385c;

    /* renamed from: d */
    private AccessToken f5386d;

    /* renamed from: e */
    private AtomicBoolean f5387e = new AtomicBoolean(false);

    /* renamed from: f */
    private Date f5388f = new Date(0);

    C1041b(LocalBroadcastManager localBroadcastManager, C1002a c1002a) {
        C1071v.m6125a(localBroadcastManager, "localBroadcastManager");
        C1071v.m6125a(c1002a, "accessTokenCache");
        this.f5384b = localBroadcastManager;
        this.f5385c = c1002a;
    }

    /* renamed from: a */
    static C1041b m5891a() {
        if (f5383a == null) {
            synchronized (C1041b.class) {
                if (f5383a == null) {
                    f5383a = new C1041b(LocalBroadcastManager.getInstance(C1074k.m6181f()), new C1002a());
                }
            }
        }
        return f5383a;
    }

    /* renamed from: b */
    AccessToken m5902b() {
        return this.f5386d;
    }

    /* renamed from: c */
    boolean m5903c() {
        AccessToken m5630a = this.f5385c.m5630a();
        if (m5630a == null) {
            return false;
        }
        m5894a(m5630a, false);
        return true;
    }

    /* renamed from: a */
    void m5901a(AccessToken accessToken) {
        m5894a(accessToken, true);
    }

    /* renamed from: a */
    private void m5894a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f5386d;
        this.f5386d = accessToken;
        this.f5387e.set(false);
        this.f5388f = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f5385c.m5631a(accessToken);
            } else {
                this.f5385c.m5632b();
                C1070u.m6104b(C1074k.m6181f());
            }
        }
        if (!C1070u.m6097a(accessToken2, accessToken)) {
            m5893a(accessToken2, accessToken);
            m5898f();
        }
    }

    /* renamed from: d */
    void m5904d() {
        m5893a(this.f5386d, this.f5386d);
    }

    /* renamed from: a */
    private void m5893a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(C1074k.m6181f(), (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f5384b.sendBroadcast(intent);
    }

    /* renamed from: f */
    private void m5898f() {
        Context m6181f = C1074k.m6181f();
        AccessToken m5496a = AccessToken.m5496a();
        AlarmManager alarmManager = (AlarmManager) m6181f.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (AccessToken.m5503b() && m5496a.m5507e() != null && alarmManager != null) {
            Intent intent = new Intent(m6181f, (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            alarmManager.set(1, m5496a.m5507e().getTime(), PendingIntent.getBroadcast(m6181f, 0, intent, 0));
        }
    }

    /* renamed from: e */
    void m5905e() {
        if (m5899g()) {
            m5900a((AccessToken.InterfaceC0983a) null);
        }
    }

    /* renamed from: g */
    private boolean m5899g() {
        if (this.f5386d == null) {
            return false;
        }
        Long valueOf = Long.valueOf(new Date().getTime());
        return this.f5386d.m5511i().m5914a() && valueOf.longValue() - this.f5388f.getTime() > 3600000 && valueOf.longValue() - this.f5386d.m5512j().getTime() > 86400000;
    }

    /* renamed from: a */
    private static GraphRequest m5890a(AccessToken accessToken, GraphRequest.InterfaceC0995b interfaceC0995b) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), EnumC1112q.GET, interfaceC0995b);
    }

    /* renamed from: b */
    private static GraphRequest m5896b(AccessToken accessToken, GraphRequest.InterfaceC0995b interfaceC0995b) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        return new GraphRequest(accessToken, "oauth/access_token", bundle, EnumC1112q.GET, interfaceC0995b);
    }

    /* renamed from: com.facebook.b$a */
    private static class a {

        /* renamed from: a */
        public String f5404a;

        /* renamed from: b */
        public int f5405b;

        /* renamed from: c */
        public Long f5406c;

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* renamed from: a */
    void m5900a(AccessToken.InterfaceC0983a interfaceC0983a) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            m5897b(interfaceC0983a);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.b.1

                /* renamed from: a */
                final /* synthetic */ AccessToken.InterfaceC0983a f5389a;

                AnonymousClass1(AccessToken.InterfaceC0983a interfaceC0983a2) {
                    interfaceC0983a = interfaceC0983a2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1041b.this.m5897b(interfaceC0983a);
                }
            });
        }
    }

    /* renamed from: com.facebook.b$1 */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AccessToken.InterfaceC0983a f5389a;

        AnonymousClass1(AccessToken.InterfaceC0983a interfaceC0983a2) {
            interfaceC0983a = interfaceC0983a2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1041b.this.m5897b(interfaceC0983a);
        }
    }

    /* renamed from: b */
    public void m5897b(AccessToken.InterfaceC0983a interfaceC0983a) {
        AccessToken accessToken = this.f5386d;
        if (accessToken == null) {
            if (interfaceC0983a != null) {
                interfaceC0983a.m5520a(new C1048h("No current access token to refresh"));
            }
        } else {
            if (!this.f5387e.compareAndSet(false, true)) {
                if (interfaceC0983a != null) {
                    interfaceC0983a.m5520a(new C1048h("Refresh already in progress"));
                    return;
                }
                return;
            }
            this.f5388f = new Date();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            a aVar = new a();
            C1110o c1110o = new C1110o(m5890a(accessToken, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.b.2

                /* renamed from: a */
                final /* synthetic */ AtomicBoolean f5391a;

                /* renamed from: b */
                final /* synthetic */ Set f5392b;

                /* renamed from: c */
                final /* synthetic */ Set f5393c;

                AnonymousClass2(AtomicBoolean atomicBoolean2, Set hashSet3, Set hashSet22) {
                    atomicBoolean = atomicBoolean2;
                    hashSet = hashSet3;
                    hashSet2 = hashSet22;
                }

                @Override // com.facebook.GraphRequest.InterfaceC0995b
                /* renamed from: a */
                public void mo777a(C1111p c1111p) {
                    JSONArray optJSONArray;
                    JSONObject m6420b = c1111p.m6420b();
                    if (m6420b != null && (optJSONArray = m6420b.optJSONArray("data")) != null) {
                        atomicBoolean.set(true);
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("permission");
                                String optString2 = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                                if (!C1070u.m6098a(optString) && !C1070u.m6098a(optString2)) {
                                    String lowerCase = optString2.toLowerCase(Locale.US);
                                    if (lowerCase.equals("granted")) {
                                        hashSet.add(optString);
                                    } else if (lowerCase.equals("declined")) {
                                        hashSet2.add(optString);
                                    } else {
                                        Log.w("AccessTokenManager", "Unexpected status: " + lowerCase);
                                    }
                                }
                            }
                        }
                    }
                }
            }), m5896b(accessToken, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.b.3

                /* renamed from: a */
                final /* synthetic */ a f5395a;

                AnonymousClass3(a aVar2) {
                    aVar = aVar2;
                }

                @Override // com.facebook.GraphRequest.InterfaceC0995b
                /* renamed from: a */
                public void mo777a(C1111p c1111p) {
                    JSONObject m6420b = c1111p.m6420b();
                    if (m6420b != null) {
                        aVar.f5404a = m6420b.optString("access_token");
                        aVar.f5405b = m6420b.optInt("expires_at");
                        aVar.f5406c = Long.valueOf(m6420b.optLong("data_access_expiration_time"));
                    }
                }
            }));
            c1110o.m6399a(new C1110o.a() { // from class: com.facebook.b.4

                /* renamed from: a */
                final /* synthetic */ AccessToken f5397a;

                /* renamed from: b */
                final /* synthetic */ AccessToken.InterfaceC0983a f5398b;

                /* renamed from: c */
                final /* synthetic */ AtomicBoolean f5399c;

                /* renamed from: d */
                final /* synthetic */ a f5400d;

                /* renamed from: e */
                final /* synthetic */ Set f5401e;

                /* renamed from: f */
                final /* synthetic */ Set f5402f;

                AnonymousClass4(AccessToken accessToken2, AccessToken.InterfaceC0983a interfaceC0983a2, AtomicBoolean atomicBoolean2, a aVar2, Set hashSet3, Set hashSet22) {
                    accessToken = accessToken2;
                    interfaceC0983a = interfaceC0983a2;
                    atomicBoolean = atomicBoolean2;
                    aVar = aVar2;
                    hashSet = hashSet3;
                    hashSet2 = hashSet22;
                }

                @Override // com.facebook.C1110o.a
                /* renamed from: a */
                public void mo5906a(C1110o c1110o2) {
                    Throwable th;
                    AccessToken accessToken2;
                    try {
                        if (C1041b.m5891a().m5902b() == null || C1041b.m5891a().m5902b().m5514l() != accessToken.m5514l()) {
                            if (interfaceC0983a != null) {
                                interfaceC0983a.m5520a(new C1048h("No current access token to refresh"));
                            }
                            C1041b.this.f5387e.set(false);
                            if (interfaceC0983a == null || 0 == 0) {
                                return;
                            }
                            interfaceC0983a.m5519a((AccessToken) null);
                            return;
                        }
                        if (!atomicBoolean.get() && aVar.f5404a == null && aVar.f5405b == 0) {
                            if (interfaceC0983a != null) {
                                interfaceC0983a.m5520a(new C1048h("Failed to refresh access token"));
                            }
                            C1041b.this.f5387e.set(false);
                            if (interfaceC0983a == null || 0 == 0) {
                                return;
                            }
                            interfaceC0983a.m5519a((AccessToken) null);
                            return;
                        }
                        AccessToken accessToken3 = new AccessToken(aVar.f5404a != null ? aVar.f5404a : accessToken.m5506d(), accessToken.m5513k(), accessToken.m5514l(), atomicBoolean.get() ? hashSet : accessToken.m5509g(), atomicBoolean.get() ? hashSet2 : accessToken.m5510h(), accessToken.m5511i(), aVar.f5405b != 0 ? new Date(aVar.f5405b * 1000) : accessToken.m5507e(), new Date(), aVar.f5406c != null ? new Date(aVar.f5406c.longValue() * 1000) : accessToken.m5508f());
                        try {
                            C1041b.m5891a().m5901a(accessToken3);
                            C1041b.this.f5387e.set(false);
                            if (interfaceC0983a == null || accessToken3 == null) {
                                return;
                            }
                            interfaceC0983a.m5519a(accessToken3);
                        } catch (Throwable th2) {
                            th = th2;
                            accessToken2 = accessToken3;
                            C1041b.this.f5387e.set(false);
                            if (interfaceC0983a == null) {
                                throw th;
                            }
                            if (accessToken2 == null) {
                                throw th;
                            }
                            interfaceC0983a.m5519a(accessToken2);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        accessToken2 = null;
                    }
                }
            });
            c1110o.m6409h();
        }
    }

    /* renamed from: com.facebook.b$2 */
    class AnonymousClass2 implements GraphRequest.InterfaceC0995b {

        /* renamed from: a */
        final /* synthetic */ AtomicBoolean f5391a;

        /* renamed from: b */
        final /* synthetic */ Set f5392b;

        /* renamed from: c */
        final /* synthetic */ Set f5393c;

        AnonymousClass2(AtomicBoolean atomicBoolean2, Set hashSet3, Set hashSet22) {
            atomicBoolean = atomicBoolean2;
            hashSet = hashSet3;
            hashSet2 = hashSet22;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            JSONArray optJSONArray;
            JSONObject m6420b = c1111p.m6420b();
            if (m6420b != null && (optJSONArray = m6420b.optJSONArray("data")) != null) {
                atomicBoolean.set(true);
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("permission");
                        String optString2 = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                        if (!C1070u.m6098a(optString) && !C1070u.m6098a(optString2)) {
                            String lowerCase = optString2.toLowerCase(Locale.US);
                            if (lowerCase.equals("granted")) {
                                hashSet.add(optString);
                            } else if (lowerCase.equals("declined")) {
                                hashSet2.add(optString);
                            } else {
                                Log.w("AccessTokenManager", "Unexpected status: " + lowerCase);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.facebook.b$3 */
    class AnonymousClass3 implements GraphRequest.InterfaceC0995b {

        /* renamed from: a */
        final /* synthetic */ a f5395a;

        AnonymousClass3(a aVar2) {
            aVar = aVar2;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            JSONObject m6420b = c1111p.m6420b();
            if (m6420b != null) {
                aVar.f5404a = m6420b.optString("access_token");
                aVar.f5405b = m6420b.optInt("expires_at");
                aVar.f5406c = Long.valueOf(m6420b.optLong("data_access_expiration_time"));
            }
        }
    }

    /* renamed from: com.facebook.b$4 */
    class AnonymousClass4 implements C1110o.a {

        /* renamed from: a */
        final /* synthetic */ AccessToken f5397a;

        /* renamed from: b */
        final /* synthetic */ AccessToken.InterfaceC0983a f5398b;

        /* renamed from: c */
        final /* synthetic */ AtomicBoolean f5399c;

        /* renamed from: d */
        final /* synthetic */ a f5400d;

        /* renamed from: e */
        final /* synthetic */ Set f5401e;

        /* renamed from: f */
        final /* synthetic */ Set f5402f;

        AnonymousClass4(AccessToken accessToken2, AccessToken.InterfaceC0983a interfaceC0983a2, AtomicBoolean atomicBoolean2, a aVar2, Set hashSet3, Set hashSet22) {
            accessToken = accessToken2;
            interfaceC0983a = interfaceC0983a2;
            atomicBoolean = atomicBoolean2;
            aVar = aVar2;
            hashSet = hashSet3;
            hashSet2 = hashSet22;
        }

        @Override // com.facebook.C1110o.a
        /* renamed from: a */
        public void mo5906a(C1110o c1110o2) {
            Throwable th;
            AccessToken accessToken2;
            try {
                if (C1041b.m5891a().m5902b() == null || C1041b.m5891a().m5902b().m5514l() != accessToken.m5514l()) {
                    if (interfaceC0983a != null) {
                        interfaceC0983a.m5520a(new C1048h("No current access token to refresh"));
                    }
                    C1041b.this.f5387e.set(false);
                    if (interfaceC0983a == null || 0 == 0) {
                        return;
                    }
                    interfaceC0983a.m5519a((AccessToken) null);
                    return;
                }
                if (!atomicBoolean.get() && aVar.f5404a == null && aVar.f5405b == 0) {
                    if (interfaceC0983a != null) {
                        interfaceC0983a.m5520a(new C1048h("Failed to refresh access token"));
                    }
                    C1041b.this.f5387e.set(false);
                    if (interfaceC0983a == null || 0 == 0) {
                        return;
                    }
                    interfaceC0983a.m5519a((AccessToken) null);
                    return;
                }
                AccessToken accessToken3 = new AccessToken(aVar.f5404a != null ? aVar.f5404a : accessToken.m5506d(), accessToken.m5513k(), accessToken.m5514l(), atomicBoolean.get() ? hashSet : accessToken.m5509g(), atomicBoolean.get() ? hashSet2 : accessToken.m5510h(), accessToken.m5511i(), aVar.f5405b != 0 ? new Date(aVar.f5405b * 1000) : accessToken.m5507e(), new Date(), aVar.f5406c != null ? new Date(aVar.f5406c.longValue() * 1000) : accessToken.m5508f());
                try {
                    C1041b.m5891a().m5901a(accessToken3);
                    C1041b.this.f5387e.set(false);
                    if (interfaceC0983a == null || accessToken3 == null) {
                        return;
                    }
                    interfaceC0983a.m5519a(accessToken3);
                } catch (Throwable th2) {
                    th = th2;
                    accessToken2 = accessToken3;
                    C1041b.this.f5387e.set(false);
                    if (interfaceC0983a == null) {
                        throw th;
                    }
                    if (accessToken2 == null) {
                        throw th;
                    }
                    interfaceC0983a.m5519a(accessToken2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                accessToken2 = null;
            }
        }
    }
}
