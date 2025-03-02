package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.C1045e;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.FacebookActivity;
import com.facebook.InterfaceC1044d;
import com.facebook.InterfaceC1046f;
import com.facebook.Profile;
import com.facebook.internal.C1053d;
import com.facebook.internal.C1071v;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* renamed from: com.facebook.login.f */
/* loaded from: classes.dex */
public class C1105f {

    /* renamed from: a */
    private static final Set<String> f5734a = m6378c();

    /* renamed from: b */
    private static volatile C1105f f5735b;

    /* renamed from: e */
    private final SharedPreferences f5738e;

    /* renamed from: c */
    private EnumC1102c f5736c = EnumC1102c.NATIVE_WITH_FALLBACK;

    /* renamed from: d */
    private EnumC1100a f5737d = EnumC1100a.FRIENDS;

    /* renamed from: f */
    private String f5739f = "rerequest";

    C1105f() {
        C1071v.m6123a();
        this.f5738e = C1074k.m6181f().getSharedPreferences("com.facebook.loginManager", 0);
    }

    /* renamed from: a */
    public static C1105f m6367a() {
        if (f5735b == null) {
            synchronized (C1105f.class) {
                if (f5735b == null) {
                    f5735b = new C1105f();
                }
            }
        }
        return f5735b;
    }

    /* renamed from: a */
    public void m6383a(InterfaceC1044d interfaceC1044d, InterfaceC1046f<C1106g> interfaceC1046f) {
        if (!(interfaceC1044d instanceof C1053d)) {
            throw new C1048h("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((C1053d) interfaceC1044d).m5940b(C1053d.b.Login.m5942a(), new C1053d.a() { // from class: com.facebook.login.f.1

            /* renamed from: a */
            final /* synthetic */ InterfaceC1046f f5740a;

            AnonymousClass1(InterfaceC1046f interfaceC1046f2) {
                interfaceC1046f = interfaceC1046f2;
            }

            @Override // com.facebook.internal.C1053d.a
            /* renamed from: a */
            public boolean mo5941a(int i, Intent intent) {
                return C1105f.this.m6385a(i, intent, interfaceC1046f);
            }
        });
    }

    /* renamed from: com.facebook.login.f$1 */
    class AnonymousClass1 implements C1053d.a {

        /* renamed from: a */
        final /* synthetic */ InterfaceC1046f f5740a;

        AnonymousClass1(InterfaceC1046f interfaceC1046f2) {
            interfaceC1046f = interfaceC1046f2;
        }

        @Override // com.facebook.internal.C1053d.a
        /* renamed from: a */
        public boolean mo5941a(int i, Intent intent) {
            return C1105f.this.m6385a(i, intent, interfaceC1046f);
        }
    }

    /* renamed from: a */
    boolean m6384a(int i, Intent intent) {
        return m6385a(i, intent, null);
    }

    /* renamed from: a */
    boolean m6385a(int i, Intent intent, InterfaceC1046f<C1106g> interfaceC1046f) {
        boolean z;
        AccessToken accessToken;
        LoginClient.Request request;
        Map<String, String> map;
        LoginClient.Result.EnumC1094a enumC1094a;
        AccessToken accessToken2;
        AccessToken accessToken3;
        C1045e c1045e;
        C1045e c1045e2 = null;
        LoginClient.Result.EnumC1094a enumC1094a2 = LoginClient.Result.EnumC1094a.ERROR;
        Map<String, String> map2 = null;
        LoginClient.Request request2 = null;
        boolean z2 = false;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result == null) {
                request = null;
                map = null;
                enumC1094a = enumC1094a2;
                accessToken2 = null;
            } else {
                LoginClient.Request request3 = result.f5686e;
                LoginClient.Result.EnumC1094a enumC1094a3 = result.f5682a;
                if (i == -1) {
                    if (result.f5682a == LoginClient.Result.EnumC1094a.SUCCESS) {
                        accessToken3 = result.f5683b;
                        c1045e = null;
                    } else {
                        c1045e = new C1045e(result.f5684c);
                        accessToken3 = null;
                    }
                } else if (i != 0) {
                    accessToken3 = null;
                    c1045e = null;
                } else {
                    z2 = true;
                    accessToken3 = null;
                    c1045e = null;
                }
                Map<String, String> map3 = result.f5687f;
                request = request3;
                map = map3;
                enumC1094a = enumC1094a3;
                accessToken2 = accessToken3;
                c1045e2 = c1045e;
            }
            z = z2;
            request2 = request;
            map2 = map;
            enumC1094a2 = enumC1094a;
            accessToken = accessToken2;
        } else if (i != 0) {
            z = false;
            accessToken = null;
        } else {
            enumC1094a2 = LoginClient.Result.EnumC1094a.CANCEL;
            z = true;
            accessToken = null;
        }
        C1048h c1048h = (c1045e2 == null && accessToken == null && !z) ? new C1048h("Unexpected call to LoginManager.onActivityResult") : c1045e2;
        m6370a(null, enumC1094a2, map2, c1048h, true, request2);
        m6371a(accessToken, request2, c1048h, z, interfaceC1046f);
        return true;
    }

    /* renamed from: a */
    public C1105f m6381a(EnumC1100a enumC1100a) {
        this.f5737d = enumC1100a;
        return this;
    }

    /* renamed from: b */
    public void m6386b() {
        AccessToken.m5500a((AccessToken) null);
        Profile.m5615a(null);
        m6373a(false);
    }

    /* renamed from: a */
    public void m6382a(Activity activity, Collection<String> collection) {
        m6376b(collection);
        m6372a(new a(activity), m6380a(collection));
    }

    /* renamed from: b */
    private void m6376b(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (!m6375a(str)) {
                    throw new C1048h(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
                }
            }
        }
    }

    /* renamed from: a */
    static boolean m6375a(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f5734a.contains(str));
    }

    /* renamed from: com.facebook.login.f$2 */
    static class AnonymousClass2 extends HashSet<String> {
        AnonymousClass2() {
            add("ads_management");
            add("create_event");
            add("rsvp_event");
        }
    }

    /* renamed from: c */
    private static Set<String> m6378c() {
        return Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.f.2
            AnonymousClass2() {
                add("ads_management");
                add("create_event");
                add("rsvp_event");
            }
        });
    }

    /* renamed from: a */
    protected LoginClient.Request m6380a(Collection<String> collection) {
        LoginClient.Request request = new LoginClient.Request(this.f5736c, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.f5737d, this.f5739f, C1074k.m6185j(), UUID.randomUUID().toString());
        request.m6298a(AccessToken.m5503b());
        return request;
    }

    /* renamed from: a */
    private void m6372a(InterfaceC1107h interfaceC1107h, LoginClient.Request request) {
        m6369a(interfaceC1107h.mo6387a(), request);
        C1053d.m5938a(C1053d.b.Login.m5942a(), new C1053d.a() { // from class: com.facebook.login.f.3
            AnonymousClass3() {
            }

            @Override // com.facebook.internal.C1053d.a
            /* renamed from: a */
            public boolean mo5941a(int i, Intent intent) {
                return C1105f.this.m6384a(i, intent);
            }
        });
        if (!m6377b(interfaceC1107h, request)) {
            C1048h c1048h = new C1048h("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            m6370a(interfaceC1107h.mo6387a(), LoginClient.Result.EnumC1094a.ERROR, null, c1048h, false, request);
            throw c1048h;
        }
    }

    /* renamed from: com.facebook.login.f$3 */
    class AnonymousClass3 implements C1053d.a {
        AnonymousClass3() {
        }

        @Override // com.facebook.internal.C1053d.a
        /* renamed from: a */
        public boolean mo5941a(int i, Intent intent) {
            return C1105f.this.m6384a(i, intent);
        }
    }

    /* renamed from: a */
    private void m6369a(Context context, LoginClient.Request request) {
        C1104e m6390b = b.m6390b(context);
        if (m6390b != null && request != null) {
            m6390b.m6360a(request);
        }
    }

    /* renamed from: a */
    private void m6370a(Context context, LoginClient.Result.EnumC1094a enumC1094a, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        C1104e m6390b = b.m6390b(context);
        if (m6390b != null) {
            if (request == null) {
                m6390b.m6366c("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? "1" : "0");
            m6390b.m6364a(request.m6302e(), hashMap, enumC1094a, map, exc);
        }
    }

    /* renamed from: b */
    private boolean m6377b(InterfaceC1107h interfaceC1107h, LoginClient.Request request) {
        Intent m6379a = m6379a(request);
        if (!m6374a(m6379a)) {
            return false;
        }
        try {
            interfaceC1107h.mo6388a(m6379a, LoginClient.m6267d());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    private boolean m6374a(Intent intent) {
        return C1074k.m6181f().getPackageManager().resolveActivity(intent, 0) != null;
    }

    /* renamed from: a */
    protected Intent m6379a(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(C1074k.m6181f(), FacebookActivity.class);
        intent.setAction(request.m6299b().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    /* renamed from: a */
    static C1106g m6368a(LoginClient.Request request, AccessToken accessToken) {
        Set<String> m6296a = request.m6296a();
        HashSet hashSet = new HashSet(accessToken.m5509g());
        if (request.m6303f()) {
            hashSet.retainAll(m6296a);
        }
        HashSet hashSet2 = new HashSet(m6296a);
        hashSet2.removeAll(hashSet);
        return new C1106g(accessToken, hashSet, hashSet2);
    }

    /* renamed from: a */
    private void m6371a(AccessToken accessToken, LoginClient.Request request, C1048h c1048h, boolean z, InterfaceC1046f<C1106g> interfaceC1046f) {
        if (accessToken != null) {
            AccessToken.m5500a(accessToken);
            Profile.m5616b();
        }
        if (interfaceC1046f != null) {
            C1106g m6368a = accessToken != null ? m6368a(request, accessToken) : null;
            if (z || (m6368a != null && m6368a.m6391a().size() == 0)) {
                interfaceC1046f.mo773a();
                return;
            }
            if (c1048h != null) {
                interfaceC1046f.mo774a(c1048h);
            } else if (accessToken != null) {
                m6373a(true);
                interfaceC1046f.mo775a((InterfaceC1046f<C1106g>) m6368a);
            }
        }
    }

    /* renamed from: a */
    private void m6373a(boolean z) {
        SharedPreferences.Editor edit = this.f5738e.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    /* renamed from: com.facebook.login.f$a */
    private static class a implements InterfaceC1107h {

        /* renamed from: a */
        private final Activity f5743a;

        a(Activity activity) {
            C1071v.m6125a(activity, "activity");
            this.f5743a = activity;
        }

        @Override // com.facebook.login.InterfaceC1107h
        /* renamed from: a */
        public void mo6388a(Intent intent, int i) {
            this.f5743a.startActivityForResult(intent, i);
        }

        @Override // com.facebook.login.InterfaceC1107h
        /* renamed from: a */
        public Activity mo6387a() {
            return this.f5743a;
        }
    }

    /* renamed from: com.facebook.login.f$b */
    private static class b {

        /* renamed from: a */
        private static C1104e f5744a;

        /* renamed from: b */
        public static synchronized C1104e m6390b(Context context) {
            C1104e c1104e;
            synchronized (b.class) {
                if (context == null) {
                    context = C1074k.m6181f();
                }
                if (context == null) {
                    c1104e = null;
                } else {
                    if (f5744a == null) {
                        f5744a = new C1104e(context, C1074k.m6185j());
                    }
                    c1104e = f5744a;
                }
            }
            return c1104e;
        }
    }
}
