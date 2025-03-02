package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import com.facebook.GraphRequest;
import com.facebook.internal.C1050a;
import com.facebook.internal.C1051b;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1063n;
import com.facebook.internal.C1065p;
import com.facebook.internal.C1068s;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.facebook.p089a.C1032g;
import com.facebook.p089a.p092b.C1016a;
import com.facebook.p089a.p092b.C1018c;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

/* renamed from: com.facebook.k */
/* loaded from: classes.dex */
public final class C1074k {

    /* renamed from: c */
    private static Executor f5599c;

    /* renamed from: d */
    private static volatile String f5600d;

    /* renamed from: e */
    private static volatile String f5601e;

    /* renamed from: f */
    private static volatile String f5602f;

    /* renamed from: g */
    private static volatile Boolean f5603g;

    /* renamed from: l */
    private static C1063n<File> f5608l;

    /* renamed from: m */
    private static Context f5609m;

    /* renamed from: a */
    private static final String f5597a = C1074k.class.getCanonicalName();

    /* renamed from: b */
    private static final HashSet<EnumC1160t> f5598b = new HashSet<>(Arrays.asList(EnumC1160t.DEVELOPER_ERRORS));

    /* renamed from: h */
    private static volatile String f5604h = "facebook.com";

    /* renamed from: i */
    private static AtomicLong f5605i = new AtomicLong(65536);

    /* renamed from: j */
    private static volatile boolean f5606j = false;

    /* renamed from: k */
    private static boolean f5607k = false;

    /* renamed from: n */
    private static int f5610n = 64206;

    /* renamed from: o */
    private static final Object f5611o = new Object();

    /* renamed from: p */
    private static String f5612p = C1068s.m6060d();

    /* renamed from: q */
    private static final BlockingQueue<Runnable> f5613q = new LinkedBlockingQueue(10);

    /* renamed from: r */
    private static final ThreadFactory f5614r = new ThreadFactory() { // from class: com.facebook.k.1

        /* renamed from: a */
        private final AtomicInteger f5616a = new AtomicInteger(0);

        AnonymousClass1() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "FacebookSdk #" + this.f5616a.incrementAndGet());
        }
    };

    /* renamed from: s */
    private static Boolean f5615s = false;

    /* renamed from: com.facebook.k$a */
    public interface a {
        /* renamed from: a */
        void m6195a();
    }

    /* renamed from: com.facebook.k$1 */
    static class AnonymousClass1 implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f5616a = new AtomicInteger(0);

        AnonymousClass1() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "FacebookSdk #" + this.f5616a.incrementAndGet());
        }
    }

    @Deprecated
    /* renamed from: a */
    public static synchronized void m6169a(Context context) {
        synchronized (C1074k.class) {
            m6170a(context, (a) null);
        }
    }

    @Deprecated
    /* renamed from: a */
    public static synchronized void m6170a(Context context, a aVar) {
        synchronized (C1074k.class) {
            if (f5615s.booleanValue()) {
                if (aVar != null) {
                    aVar.m6195a();
                }
            } else {
                C1071v.m6125a(context, "applicationContext");
                C1071v.m6130b(context, false);
                C1071v.m6124a(context, false);
                f5609m = context.getApplicationContext();
                m6177c(f5609m);
                if (C1070u.m6098a(f5600d)) {
                    throw new C1048h("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                }
                f5615s = true;
                if ((f5609m instanceof Application) && C1040ab.m5879b()) {
                    C1016a.m5715a((Application) f5609m, f5600d);
                }
                C1061l.m5982a();
                C1065p.m6031b();
                C1051b.m5932a(f5609m);
                f5608l = new C1063n<>(new Callable<File>() { // from class: com.facebook.k.2
                    AnonymousClass2() {
                    }

                    @Override // java.util.concurrent.Callable
                    /* renamed from: a */
                    public File call() {
                        return C1074k.f5609m.getCacheDir();
                    }
                });
                m6179d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.k.3

                    /* renamed from: b */
                    final /* synthetic */ Context f5618b;

                    AnonymousClass3(Context context2) {
                        context = context2;
                    }

                    @Override // java.util.concurrent.Callable
                    /* renamed from: a */
                    public Void call() {
                        C1041b.m5891a().m5903c();
                        C1162v.m6572a().m6577c();
                        if (AccessToken.m5503b() && Profile.m5614a() == null) {
                            Profile.m5616b();
                        }
                        if (a.this != null) {
                            a.this.m6195a();
                        }
                        C1032g.m5840a(C1074k.f5609m, C1074k.f5600d);
                        C1032g.m5838a(context.getApplicationContext()).m5857b();
                        return null;
                    }
                }));
            }
        }
    }

    /* renamed from: com.facebook.k$2 */
    static class AnonymousClass2 implements Callable<File> {
        AnonymousClass2() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public File call() {
            return C1074k.f5609m.getCacheDir();
        }
    }

    /* renamed from: com.facebook.k$3 */
    static class AnonymousClass3 implements Callable<Void> {

        /* renamed from: b */
        final /* synthetic */ Context f5618b;

        AnonymousClass3(Context context2) {
            context = context2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            C1041b.m5891a().m5903c();
            C1162v.m6572a().m6577c();
            if (AccessToken.m5503b() && Profile.m5614a() == null) {
                Profile.m5616b();
            }
            if (a.this != null) {
                a.this.m6195a();
            }
            C1032g.m5840a(C1074k.f5609m, C1074k.f5600d);
            C1032g.m5838a(context.getApplicationContext()).m5857b();
            return null;
        }
    }

    /* renamed from: a */
    public static synchronized boolean m6172a() {
        boolean booleanValue;
        synchronized (C1074k.class) {
            booleanValue = f5615s.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: a */
    public static boolean m6173a(EnumC1160t enumC1160t) {
        boolean z;
        synchronized (f5598b) {
            z = m6175b() && f5598b.contains(enumC1160t);
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m6175b() {
        return f5606j;
    }

    /* renamed from: c */
    public static boolean m6178c() {
        return f5607k;
    }

    /* renamed from: d */
    public static Executor m6179d() {
        synchronized (f5611o) {
            if (f5599c == null) {
                f5599c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return f5599c;
    }

    /* renamed from: e */
    public static String m6180e() {
        return f5604h;
    }

    /* renamed from: f */
    public static Context m6181f() {
        C1071v.m6123a();
        return f5609m;
    }

    /* renamed from: g */
    public static String m6182g() {
        C1070u.m6089a(f5597a, String.format("getGraphApiVersion: %s", f5612p));
        return f5612p;
    }

    /* renamed from: com.facebook.k$4 */
    static class AnonymousClass4 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Context f5619a;

        /* renamed from: b */
        final /* synthetic */ String f5620b;

        AnonymousClass4(Context context, String str) {
            applicationContext = context;
            str = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1074k.m6174b(applicationContext, str);
        }
    }

    /* renamed from: a */
    public static void m6171a(Context context, String str) {
        m6179d().execute(new Runnable() { // from class: com.facebook.k.4

            /* renamed from: a */
            final /* synthetic */ Context f5619a;

            /* renamed from: b */
            final /* synthetic */ String f5620b;

            AnonymousClass4(Context context2, String str2) {
                applicationContext = context2;
                str = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1074k.m6174b(applicationContext, str);
            }
        });
    }

    /* renamed from: b */
    static void m6174b(Context context, String str) {
        try {
            if (context == null || str == null) {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            C1050a m5919a = C1050a.m5919a(context);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
            String str2 = str + "ping";
            long j = sharedPreferences.getLong(str2, 0L);
            try {
                GraphRequest m5538a = GraphRequest.m5538a((AccessToken) null, String.format("%s/activities", str), C1018c.m5748a(C1018c.a.MOBILE_INSTALL_EVENT, m5919a, C1032g.m5846b(context), m6176b(context), context), (GraphRequest.InterfaceC0995b) null);
                if (j == 0) {
                    m5538a.m5590i();
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putLong(str2, System.currentTimeMillis());
                    edit.apply();
                }
            } catch (JSONException e) {
                throw new C1048h("An error occurred while publishing install.", e);
            }
        } catch (Exception e2) {
            C1070u.m6088a("Facebook-publish", e2);
        }
    }

    /* renamed from: h */
    public static String m6183h() {
        return "4.42.0";
    }

    /* renamed from: b */
    public static boolean m6176b(Context context) {
        C1071v.m6123a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: i */
    public static long m6184i() {
        C1071v.m6123a();
        return f5605i.get();
    }

    /* renamed from: c */
    static void m6177c(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (f5600d == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                f5600d = str.substring(2);
                            } else {
                                f5600d = str;
                            }
                        } else if (obj instanceof Integer) {
                            throw new C1048h("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (f5601e == null) {
                        f5601e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f5602f == null) {
                        f5602f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (f5610n == 64206) {
                        f5610n = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                    }
                    if (f5603g == null) {
                        f5603g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    /* renamed from: j */
    public static String m6185j() {
        C1071v.m6123a();
        return f5600d;
    }

    /* renamed from: k */
    public static String m6186k() {
        C1071v.m6123a();
        return f5602f;
    }

    /* renamed from: l */
    public static boolean m6187l() {
        return C1040ab.m5879b();
    }

    /* renamed from: m */
    public static boolean m6188m() {
        return C1040ab.m5883d();
    }

    /* renamed from: n */
    public static boolean m6189n() {
        return C1040ab.m5881c();
    }

    /* renamed from: o */
    public static int m6190o() {
        C1071v.m6123a();
        return f5610n;
    }
}
