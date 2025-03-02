package com.facebook.p089a.p092b;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.EnumC1160t;
import com.facebook.GraphRequest;
import com.facebook.internal.C1050a;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.facebook.p089a.C1032g;
import com.facebook.p089a.p090a.C1011b;
import com.facebook.p089a.p090a.C1013d;
import com.facebook.p089a.p090a.C1014e;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.a.b.a */
/* loaded from: classes.dex */
public class C1016a {

    /* renamed from: c */
    private static volatile ScheduledFuture f5224c;

    /* renamed from: f */
    private static volatile C1024i f5227f;

    /* renamed from: h */
    private static String f5229h;

    /* renamed from: i */
    private static long f5230i;

    /* renamed from: l */
    private static SensorManager f5233l;

    /* renamed from: m */
    private static C1013d f5234m;

    /* renamed from: a */
    private static final String f5222a = C1016a.class.getCanonicalName();

    /* renamed from: b */
    private static final ScheduledExecutorService f5223b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    private static final Object f5225d = new Object();

    /* renamed from: e */
    private static AtomicInteger f5226e = new AtomicInteger(0);

    /* renamed from: g */
    private static AtomicBoolean f5228g = new AtomicBoolean(false);

    /* renamed from: j */
    private static final C1011b f5231j = new C1011b();

    /* renamed from: k */
    private static final C1014e f5232k = new C1014e();

    /* renamed from: n */
    @Nullable
    private static String f5235n = null;

    /* renamed from: o */
    private static Boolean f5236o = false;

    /* renamed from: p */
    private static volatile Boolean f5237p = false;

    /* renamed from: q */
    private static int f5238q = 0;

    /* renamed from: f */
    static /* synthetic */ int m5729f() {
        int i = f5238q;
        f5238q = i + 1;
        return i;
    }

    /* renamed from: g */
    static /* synthetic */ int m5730g() {
        int i = f5238q;
        f5238q = i - 1;
        return i;
    }

    /* renamed from: a */
    public static void m5715a(Application application, String str) {
        if (f5228g.compareAndSet(false, true)) {
            f5229h = str;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.a.b.a.1
                AnonymousClass1() {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityCreated");
                    C1017b.m5745b();
                    C1016a.m5714a(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    C1016a.m5729f();
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityStarted");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityResumed");
                    C1017b.m5745b();
                    C1016a.m5722b(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityPaused");
                    C1017b.m5745b();
                    C1016a.m5726d(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityStopped");
                    C1032g.m5847c();
                    C1016a.m5730g();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivitySaveInstanceState");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityDestroyed");
                }
            });
        }
    }

    /* renamed from: com.facebook.a.b.a$1 */
    static class AnonymousClass1 implements Application.ActivityLifecycleCallbacks {
        AnonymousClass1() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityCreated");
            C1017b.m5745b();
            C1016a.m5714a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            C1016a.m5729f();
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityStarted");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityResumed");
            C1017b.m5745b();
            C1016a.m5722b(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityPaused");
            C1017b.m5745b();
            C1016a.m5726d(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityStopped");
            C1032g.m5847c();
            C1016a.m5730g();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivitySaveInstanceState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1016a.f5222a, "onActivityDestroyed");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public static boolean m5718a() {
        return f5238q == 0;
    }

    /* renamed from: b */
    public static UUID m5721b() {
        if (f5227f != null) {
            return f5227f.m5793g();
        }
        return null;
    }

    /* renamed from: com.facebook.a.b.a$2 */
    static class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1016a.f5227f == null) {
                C1024i unused = C1016a.f5227f = C1024i.m5786a();
            }
        }
    }

    /* renamed from: a */
    public static void m5714a(Activity activity) {
        f5223b.execute(new Runnable() { // from class: com.facebook.a.b.a.2
            AnonymousClass2() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C1016a.f5227f == null) {
                    C1024i unused = C1016a.f5227f = C1024i.m5786a();
                }
            }
        });
    }

    /* renamed from: b */
    public static void m5722b(Activity activity) {
        f5226e.incrementAndGet();
        m5741r();
        long currentTimeMillis = System.currentTimeMillis();
        f5230i = currentTimeMillis;
        String m6107c = C1070u.m6107c(activity);
        f5231j.m5680a(activity);
        f5223b.execute(new Runnable() { // from class: com.facebook.a.b.a.3

            /* renamed from: a */
            final /* synthetic */ long f5239a;

            /* renamed from: b */
            final /* synthetic */ String f5240b;

            AnonymousClass3(long currentTimeMillis2, String m6107c2) {
                currentTimeMillis = currentTimeMillis2;
                m6107c = m6107c2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C1016a.f5227f == null) {
                    C1024i unused = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
                    C1025j.m5800a(m6107c, (C1026k) null, C1016a.f5229h);
                } else if (C1016a.f5227f.m5789c() != null) {
                    long longValue = currentTimeMillis - C1016a.f5227f.m5789c().longValue();
                    if (longValue > C1016a.m5740q() * 1000) {
                        C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                        C1025j.m5800a(m6107c, (C1026k) null, C1016a.f5229h);
                        C1024i unused2 = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
                    } else if (longValue > 1000) {
                        C1016a.f5227f.m5791e();
                    }
                }
                C1016a.f5227f.m5788a(Long.valueOf(currentTimeMillis));
                C1016a.f5227f.m5796j();
            }
        });
        Context applicationContext = activity.getApplicationContext();
        String m6185j = C1074k.m6185j();
        C1060k m5978a = C1061l.m5978a(m6185j);
        if (m5978a != null && m5978a.m5971h()) {
            f5233l = (SensorManager) applicationContext.getSystemService("sensor");
            if (f5233l != null) {
                Sensor defaultSensor = f5233l.getDefaultSensor(1);
                f5234m = new C1013d(activity);
                f5232k.m5706a(new C1014e.a() { // from class: com.facebook.a.b.a.4

                    /* renamed from: b */
                    final /* synthetic */ String f5242b;

                    AnonymousClass4(String m6185j2) {
                        m6185j = m6185j2;
                    }

                    @Override // com.facebook.p089a.p090a.C1014e.a
                    /* renamed from: a */
                    public void mo5707a() {
                        boolean z = C1060k.this != null && C1060k.this.m5971h();
                        boolean z2 = C1074k.m6188m();
                        if (z && z2) {
                            C1016a.m5717a(m6185j);
                        }
                    }
                });
                f5233l.registerListener(f5232k, defaultSensor, 2);
                if (m5978a != null && m5978a.m5971h()) {
                    f5234m.m5703a();
                }
            }
        }
    }

    /* renamed from: com.facebook.a.b.a$3 */
    static class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ long f5239a;

        /* renamed from: b */
        final /* synthetic */ String f5240b;

        AnonymousClass3(long currentTimeMillis2, String m6107c2) {
            currentTimeMillis = currentTimeMillis2;
            m6107c = m6107c2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1016a.f5227f == null) {
                C1024i unused = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
                C1025j.m5800a(m6107c, (C1026k) null, C1016a.f5229h);
            } else if (C1016a.f5227f.m5789c() != null) {
                long longValue = currentTimeMillis - C1016a.f5227f.m5789c().longValue();
                if (longValue > C1016a.m5740q() * 1000) {
                    C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                    C1025j.m5800a(m6107c, (C1026k) null, C1016a.f5229h);
                    C1024i unused2 = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
                } else if (longValue > 1000) {
                    C1016a.f5227f.m5791e();
                }
            }
            C1016a.f5227f.m5788a(Long.valueOf(currentTimeMillis));
            C1016a.f5227f.m5796j();
        }
    }

    /* renamed from: com.facebook.a.b.a$4 */
    static class AnonymousClass4 implements C1014e.a {

        /* renamed from: b */
        final /* synthetic */ String f5242b;

        AnonymousClass4(String m6185j2) {
            m6185j = m6185j2;
        }

        @Override // com.facebook.p089a.p090a.C1014e.a
        /* renamed from: a */
        public void mo5707a() {
            boolean z = C1060k.this != null && C1060k.this.m5971h();
            boolean z2 = C1074k.m6188m();
            if (z && z2) {
                C1016a.m5717a(m6185j);
            }
        }
    }

    /* renamed from: d */
    public static void m5726d(Activity activity) {
        if (f5226e.decrementAndGet() < 0) {
            f5226e.set(0);
            Log.w(f5222a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        m5741r();
        long currentTimeMillis = System.currentTimeMillis();
        String m6107c = C1070u.m6107c(activity);
        f5231j.m5681b(activity);
        f5223b.execute(new Runnable() { // from class: com.facebook.a.b.a.5

            /* renamed from: a */
            final /* synthetic */ long f5243a;

            /* renamed from: b */
            final /* synthetic */ String f5244b;

            AnonymousClass5(long currentTimeMillis2, String m6107c2) {
                currentTimeMillis = currentTimeMillis2;
                m6107c = m6107c2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C1016a.f5227f == null) {
                    C1024i unused = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
                }
                C1016a.f5227f.m5788a(Long.valueOf(currentTimeMillis));
                if (C1016a.f5226e.get() <= 0) {
                    AnonymousClass1 anonymousClass1 = new Runnable() { // from class: com.facebook.a.b.a.5.1
                        AnonymousClass1() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            if (C1016a.f5226e.get() <= 0) {
                                C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                                C1024i.m5787b();
                                C1024i unused2 = C1016a.f5227f = null;
                            }
                            synchronized (C1016a.f5225d) {
                                ScheduledFuture unused3 = C1016a.f5224c = null;
                            }
                        }
                    };
                    synchronized (C1016a.f5225d) {
                        ScheduledFuture unused2 = C1016a.f5224c = C1016a.f5223b.schedule(anonymousClass1, C1016a.m5740q(), TimeUnit.SECONDS);
                    }
                }
                long j = C1016a.f5230i;
                C1019d.m5751a(m6107c, j > 0 ? (currentTimeMillis - j) / 1000 : 0L);
                C1016a.f5227f.m5796j();
            }

            /* renamed from: com.facebook.a.b.a$5$1 */
            class AnonymousClass1 implements Runnable {
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (C1016a.f5226e.get() <= 0) {
                        C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                        C1024i.m5787b();
                        C1024i unused2 = C1016a.f5227f = null;
                    }
                    synchronized (C1016a.f5225d) {
                        ScheduledFuture unused3 = C1016a.f5224c = null;
                    }
                }
            }
        });
        if (f5234m != null) {
            f5234m.m5704b();
        }
        if (f5233l != null) {
            f5233l.unregisterListener(f5232k);
        }
    }

    /* renamed from: com.facebook.a.b.a$5 */
    static class AnonymousClass5 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ long f5243a;

        /* renamed from: b */
        final /* synthetic */ String f5244b;

        AnonymousClass5(long currentTimeMillis2, String m6107c2) {
            currentTimeMillis = currentTimeMillis2;
            m6107c = m6107c2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1016a.f5227f == null) {
                C1024i unused = C1016a.f5227f = new C1024i(Long.valueOf(currentTimeMillis), null);
            }
            C1016a.f5227f.m5788a(Long.valueOf(currentTimeMillis));
            if (C1016a.f5226e.get() <= 0) {
                AnonymousClass1 anonymousClass1 = new Runnable() { // from class: com.facebook.a.b.a.5.1
                    AnonymousClass1() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (C1016a.f5226e.get() <= 0) {
                            C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                            C1024i.m5787b();
                            C1024i unused2 = C1016a.f5227f = null;
                        }
                        synchronized (C1016a.f5225d) {
                            ScheduledFuture unused3 = C1016a.f5224c = null;
                        }
                    }
                };
                synchronized (C1016a.f5225d) {
                    ScheduledFuture unused2 = C1016a.f5224c = C1016a.f5223b.schedule(anonymousClass1, C1016a.m5740q(), TimeUnit.SECONDS);
                }
            }
            long j = C1016a.f5230i;
            C1019d.m5751a(m6107c, j > 0 ? (currentTimeMillis - j) / 1000 : 0L);
            C1016a.f5227f.m5796j();
        }

        /* renamed from: com.facebook.a.b.a$5$1 */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C1016a.f5226e.get() <= 0) {
                    C1025j.m5799a(m6107c, C1016a.f5227f, C1016a.f5229h);
                    C1024i.m5787b();
                    C1024i unused2 = C1016a.f5227f = null;
                }
                synchronized (C1016a.f5225d) {
                    ScheduledFuture unused3 = C1016a.f5224c = null;
                }
            }
        }
    }

    /* renamed from: q */
    public static int m5740q() {
        C1060k m5978a = C1061l.m5978a(C1074k.m6185j());
        return m5978a == null ? C1020e.m5755a() : m5978a.m5966c();
    }

    /* renamed from: r */
    private static void m5741r() {
        synchronized (f5225d) {
            if (f5224c != null) {
                f5224c.cancel(false);
            }
            f5224c = null;
        }
    }

    /* renamed from: a */
    public static void m5717a(String str) {
        if (!f5237p.booleanValue()) {
            f5237p = true;
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.b.a.6

                /* renamed from: a */
                final /* synthetic */ String f5246a;

                AnonymousClass6(String str2) {
                    str = str2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    GraphRequest m5538a = GraphRequest.m5538a((AccessToken) null, String.format(Locale.US, "%s/app_indexing_session", str), (JSONObject) null, (GraphRequest.InterfaceC0995b) null);
                    Bundle m5586e = m5538a.m5586e();
                    if (m5586e == null) {
                        m5586e = new Bundle();
                    }
                    C1050a m5919a = C1050a.m5919a(C1074k.m6181f());
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(Build.MODEL != null ? Build.MODEL : "");
                    if (m5919a != null && m5919a.m5926b() != null) {
                        jSONArray.put(m5919a.m5926b());
                    } else {
                        jSONArray.put("");
                    }
                    jSONArray.put("0");
                    jSONArray.put(C1017b.m5746c() ? "1" : "0");
                    Locale m6080a = C1070u.m6080a();
                    jSONArray.put(m6080a.getLanguage() + "_" + m6080a.getCountry());
                    String jSONArray2 = jSONArray.toString();
                    m5586e.putString("device_session_id", C1016a.m5724c());
                    m5586e.putString("extinfo", jSONArray2);
                    m5538a.m5577a(m5586e);
                    if (m5538a != null) {
                        JSONObject m6420b = m5538a.m5590i().m6420b();
                        Boolean unused = C1016a.f5236o = Boolean.valueOf(m6420b != null && m6420b.optBoolean("is_app_indexing_enabled", false));
                        if (!C1016a.f5236o.booleanValue()) {
                            String unused2 = C1016a.f5235n = null;
                        } else {
                            C1016a.f5234m.m5703a();
                        }
                    }
                    Boolean unused3 = C1016a.f5237p = false;
                }
            });
        }
    }

    /* renamed from: com.facebook.a.b.a$6 */
    static class AnonymousClass6 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f5246a;

        AnonymousClass6(String str2) {
            str = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GraphRequest m5538a = GraphRequest.m5538a((AccessToken) null, String.format(Locale.US, "%s/app_indexing_session", str), (JSONObject) null, (GraphRequest.InterfaceC0995b) null);
            Bundle m5586e = m5538a.m5586e();
            if (m5586e == null) {
                m5586e = new Bundle();
            }
            C1050a m5919a = C1050a.m5919a(C1074k.m6181f());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(Build.MODEL != null ? Build.MODEL : "");
            if (m5919a != null && m5919a.m5926b() != null) {
                jSONArray.put(m5919a.m5926b());
            } else {
                jSONArray.put("");
            }
            jSONArray.put("0");
            jSONArray.put(C1017b.m5746c() ? "1" : "0");
            Locale m6080a = C1070u.m6080a();
            jSONArray.put(m6080a.getLanguage() + "_" + m6080a.getCountry());
            String jSONArray2 = jSONArray.toString();
            m5586e.putString("device_session_id", C1016a.m5724c());
            m5586e.putString("extinfo", jSONArray2);
            m5538a.m5577a(m5586e);
            if (m5538a != null) {
                JSONObject m6420b = m5538a.m5590i().m6420b();
                Boolean unused = C1016a.f5236o = Boolean.valueOf(m6420b != null && m6420b.optBoolean("is_app_indexing_enabled", false));
                if (!C1016a.f5236o.booleanValue()) {
                    String unused2 = C1016a.f5235n = null;
                } else {
                    C1016a.f5234m.m5703a();
                }
            }
            Boolean unused3 = C1016a.f5237p = false;
        }
    }

    /* renamed from: c */
    public static String m5724c() {
        if (f5235n == null) {
            f5235n = UUID.randomUUID().toString();
        }
        return f5235n;
    }

    /* renamed from: d */
    public static boolean m5727d() {
        return f5236o.booleanValue();
    }

    /* renamed from: a */
    public static void m5716a(Boolean bool) {
        f5236o = bool;
    }
}
