package com.facebook.p089a;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.EnumC1160t;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.facebook.p089a.p092b.C1016a;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* renamed from: com.facebook.a.g */
/* loaded from: classes.dex */
public class C1032g {

    /* renamed from: d */
    private static ScheduledThreadPoolExecutor f5322d;

    /* renamed from: g */
    private static String f5325g;

    /* renamed from: h */
    private static boolean f5326h;

    /* renamed from: i */
    private static String f5327i;

    /* renamed from: b */
    private final String f5328b;

    /* renamed from: c */
    private final C1003a f5329c;

    /* renamed from: a */
    private static final String f5321a = C1032g.class.getCanonicalName();

    /* renamed from: e */
    private static a f5323e = a.AUTO;

    /* renamed from: f */
    private static Object f5324f = new Object();

    /* renamed from: com.facebook.a.g$a */
    public enum a {
        AUTO,
        EXPLICIT_ONLY
    }

    /* renamed from: a */
    public static void m5839a(Application application, String str) {
        if (!C1074k.m6172a()) {
            throw new C1048h("The Facebook sdk must be initialized before calling activateApp");
        }
        C1015b.m5708a();
        C1038m.m5870a();
        if (str == null) {
            str = C1074k.m6185j();
        }
        C1074k.m6171a(application, str);
        C1016a.m5715a(application, str);
    }

    /* renamed from: a */
    public static void m5840a(Context context, String str) {
        if (C1074k.m6187l()) {
            f5322d.execute(new Runnable() { // from class: com.facebook.a.g.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    Bundle bundle = new Bundle();
                    try {
                        Class.forName("com.facebook.core.Core");
                        bundle.putInt("core_lib_included", 1);
                    } catch (ClassNotFoundException e) {
                    }
                    try {
                        Class.forName("com.facebook.login.Login");
                        bundle.putInt("login_lib_included", 1);
                    } catch (ClassNotFoundException e2) {
                    }
                    try {
                        Class.forName("com.facebook.share.Share");
                        bundle.putInt("share_lib_included", 1);
                    } catch (ClassNotFoundException e3) {
                    }
                    try {
                        Class.forName("com.facebook.places.Places");
                        bundle.putInt("places_lib_included", 1);
                    } catch (ClassNotFoundException e4) {
                    }
                    try {
                        Class.forName("com.facebook.messenger.Messenger");
                        bundle.putInt("messenger_lib_included", 1);
                    } catch (ClassNotFoundException e5) {
                    }
                    try {
                        Class.forName("com.facebook.applinks.AppLinks");
                        bundle.putInt("applinks_lib_included", 1);
                    } catch (ClassNotFoundException e6) {
                    }
                    try {
                        Class.forName("com.facebook.marketing.Marketing");
                        bundle.putInt("marketing_lib_included", 1);
                    } catch (ClassNotFoundException e7) {
                    }
                    try {
                        Class.forName("com.facebook.all.All");
                        bundle.putInt("all_lib_included", 1);
                    } catch (ClassNotFoundException e8) {
                    }
                    try {
                        Class.forName("com.android.billingclient.api.BillingClient");
                        bundle.putInt("billing_client_lib_included", 1);
                    } catch (ClassNotFoundException e9) {
                    }
                    try {
                        Class.forName("com.android.vending.billing.IInAppBillingService");
                        bundle.putInt("billing_service_lib_included", 1);
                    } catch (ClassNotFoundException e10) {
                    }
                    C1032g.this.m5856a("fb_sdk_initialize", (Double) null, bundle);
                }
            });
        }
    }

    /* renamed from: com.facebook.a.g$1 */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Bundle bundle = new Bundle();
            try {
                Class.forName("com.facebook.core.Core");
                bundle.putInt("core_lib_included", 1);
            } catch (ClassNotFoundException e) {
            }
            try {
                Class.forName("com.facebook.login.Login");
                bundle.putInt("login_lib_included", 1);
            } catch (ClassNotFoundException e2) {
            }
            try {
                Class.forName("com.facebook.share.Share");
                bundle.putInt("share_lib_included", 1);
            } catch (ClassNotFoundException e3) {
            }
            try {
                Class.forName("com.facebook.places.Places");
                bundle.putInt("places_lib_included", 1);
            } catch (ClassNotFoundException e4) {
            }
            try {
                Class.forName("com.facebook.messenger.Messenger");
                bundle.putInt("messenger_lib_included", 1);
            } catch (ClassNotFoundException e5) {
            }
            try {
                Class.forName("com.facebook.applinks.AppLinks");
                bundle.putInt("applinks_lib_included", 1);
            } catch (ClassNotFoundException e6) {
            }
            try {
                Class.forName("com.facebook.marketing.Marketing");
                bundle.putInt("marketing_lib_included", 1);
            } catch (ClassNotFoundException e7) {
            }
            try {
                Class.forName("com.facebook.all.All");
                bundle.putInt("all_lib_included", 1);
            } catch (ClassNotFoundException e8) {
            }
            try {
                Class.forName("com.android.billingclient.api.BillingClient");
                bundle.putInt("billing_client_lib_included", 1);
            } catch (ClassNotFoundException e9) {
            }
            try {
                Class.forName("com.android.vending.billing.IInAppBillingService");
                bundle.putInt("billing_service_lib_included", 1);
            } catch (ClassNotFoundException e10) {
            }
            C1032g.this.m5856a("fb_sdk_initialize", (Double) null, bundle);
        }
    }

    /* renamed from: a */
    public static C1032g m5838a(Context context) {
        return new C1032g(context, (String) null, (AccessToken) null);
    }

    /* renamed from: b */
    public static C1032g m5845b(Context context, String str) {
        return new C1032g(context, str, (AccessToken) null);
    }

    /* renamed from: a */
    public static a m5837a() {
        a aVar;
        synchronized (f5324f) {
            aVar = f5323e;
        }
        return aVar;
    }

    /* renamed from: a */
    public void m5855a(String str, Bundle bundle) {
        m5843a(str, null, bundle, false, C1016a.m5721b());
    }

    /* renamed from: a */
    public void m5854a(String str, double d, Bundle bundle) {
        m5843a(str, Double.valueOf(d), bundle, false, C1016a.m5721b());
    }

    /* renamed from: a */
    protected void mo5785a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        m5844a(bigDecimal, currency, bundle, true);
    }

    /* renamed from: a */
    private void m5844a(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        if (bigDecimal == null) {
            m5842a("purchaseAmount cannot be null");
            return;
        }
        if (currency == null) {
            m5842a("currency cannot be null");
            return;
        }
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        bundle2.putString("fb_currency", currency.getCurrencyCode());
        m5843a("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z, C1016a.m5721b());
        m5851g();
    }

    /* renamed from: b */
    public void m5857b() {
        C1030e.m5825a(EnumC1033h.EXPLICIT);
    }

    /* renamed from: c */
    public static void m5847c() {
        C1030e.m5822a();
    }

    /* renamed from: d */
    static String m5848d() {
        String str;
        synchronized (f5324f) {
            str = f5327i;
        }
        return str;
    }

    /* renamed from: e */
    public static String m5849e() {
        return C1015b.m5709b();
    }

    /* renamed from: f */
    public static String m5850f() {
        return C1038m.m5871b();
    }

    /* renamed from: a */
    public void m5856a(String str, Double d, Bundle bundle) {
        m5843a(str, d, bundle, true, C1016a.m5721b());
    }

    private C1032g(Context context, String str, AccessToken accessToken) {
        this(C1070u.m6107c(context), str, accessToken);
    }

    protected C1032g(String str, String str2, AccessToken accessToken) {
        C1071v.m6123a();
        this.f5328b = str;
        accessToken = accessToken == null ? AccessToken.m5496a() : accessToken;
        if (AccessToken.m5503b() && (str2 == null || str2.equals(accessToken.m5513k()))) {
            this.f5329c = new C1003a(accessToken);
        } else {
            this.f5329c = new C1003a(null, str2 == null ? C1070u.m6070a(C1074k.m6181f()) : str2);
        }
        m5853i();
    }

    /* renamed from: i */
    private static void m5853i() {
        synchronized (f5324f) {
            if (f5322d == null) {
                f5322d = new ScheduledThreadPoolExecutor(1);
                f5322d.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.a.g.2
                    AnonymousClass2() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        HashSet hashSet = new HashSet();
                        Iterator<C1003a> it = C1030e.m5826b().iterator();
                        while (it.hasNext()) {
                            hashSet.add(it.next().m5634b());
                        }
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            C1061l.m5980a((String) it2.next(), true);
                        }
                    }
                }, 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    /* renamed from: com.facebook.a.g$2 */
    static class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HashSet hashSet = new HashSet();
            Iterator<C1003a> it = C1030e.m5826b().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().m5634b());
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C1061l.m5980a((String) it2.next(), true);
            }
        }
    }

    /* renamed from: a */
    protected void mo5784a(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        m5843a(str, Double.valueOf(bigDecimal.doubleValue()), bundle, true, C1016a.m5721b());
    }

    /* renamed from: a */
    private void m5843a(String str, Double d, Bundle bundle, boolean z, @Nullable UUID uuid) {
        try {
            m5841a(new C1028c(this.f5328b, str, d, bundle, z, C1016a.m5718a(), uuid), this.f5329c);
        } catch (C1048h e) {
            C1064o.m6003a(EnumC1160t.APP_EVENTS, "AppEvents", "Invalid app event: %s", e.toString());
        } catch (JSONException e2) {
            C1064o.m6003a(EnumC1160t.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
        }
    }

    /* renamed from: a */
    private static void m5841a(C1028c c1028c, C1003a c1003a) {
        C1030e.m5824a(c1003a, c1028c);
        if (!c1028c.m5809b() && !f5326h) {
            if (c1028c.m5808a().equals("fb_mobile_activate_app")) {
                f5326h = true;
            } else {
                C1064o.m6002a(EnumC1160t.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }
    }

    /* renamed from: g */
    static void m5851g() {
        if (m5837a() != a.EXPLICIT_ONLY) {
            C1030e.m5825a(EnumC1033h.EAGER_FLUSHING_EVENT);
        }
    }

    /* renamed from: a */
    private static void m5842a(String str) {
        C1064o.m6002a(EnumC1160t.DEVELOPER_ERRORS, "AppEvents", str);
    }

    /* renamed from: h */
    static Executor m5852h() {
        if (f5322d == null) {
            m5853i();
        }
        return f5322d;
    }

    /* renamed from: b */
    public static String m5846b(Context context) {
        if (f5325g == null) {
            synchronized (f5324f) {
                if (f5325g == null) {
                    f5325g = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (f5325g == null) {
                        f5325g = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", f5325g).apply();
                    }
                }
            }
        }
        return f5325g;
    }
}
