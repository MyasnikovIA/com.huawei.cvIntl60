package com.facebook.p089a.p092b;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.C1074k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.b.f */
/* loaded from: classes.dex */
public class C1021f {

    /* renamed from: a */
    private static final String f5257a = C1021f.class.getCanonicalName();

    /* renamed from: b */
    private static final AtomicBoolean f5258b = new AtomicBoolean(false);

    /* renamed from: c */
    private static Boolean f5259c = null;

    /* renamed from: d */
    private static Boolean f5260d = null;

    /* renamed from: e */
    private static ServiceConnection f5261e;

    /* renamed from: f */
    private static Application.ActivityLifecycleCallbacks f5262f;

    /* renamed from: g */
    private static Intent f5263g;

    /* renamed from: h */
    private static Object f5264h;

    /* renamed from: a */
    public static void m5757a() {
        m5764d();
        if (f5259c.booleanValue() && C1019d.m5754b()) {
            m5765e();
        }
    }

    /* renamed from: d */
    private static void m5764d() {
        if (f5259c == null) {
            try {
                Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
                f5259c = true;
                try {
                    Class.forName("com.android.billingclient.api.ProxyBillingActivity");
                    f5260d = true;
                } catch (ClassNotFoundException e) {
                    f5260d = false;
                }
                C1022g.m5775a();
                f5263g = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                f5261e = new ServiceConnection() { // from class: com.facebook.a.b.f.1
                    AnonymousClass1() {
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        Object unused = C1021f.f5264h = C1022g.m5769a(C1074k.m6181f(), iBinder);
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                f5262f = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.a.b.f.2
                    AnonymousClass2() {
                    }

                    /* renamed from: com.facebook.a.b.f$2$1 */
                    class AnonymousClass1 implements Runnable {
                        AnonymousClass1() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Context m6181f = C1074k.m6181f();
                            C1021f.m5761b(m6181f, C1022g.m5772a(m6181f, C1021f.f5264h));
                            Map<String, EnumC1027l> m5782c = C1022g.m5782c(m6181f, C1021f.f5264h);
                            Iterator<String> it = C1022g.m5777b(m6181f, C1021f.f5264h).iterator();
                            while (it.hasNext()) {
                                m5782c.put(it.next(), EnumC1027l.EXPIRE);
                            }
                            C1021f.m5762b(m6181f, m5782c);
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.b.f.2.1
                            AnonymousClass1() {
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                Context m6181f = C1074k.m6181f();
                                C1021f.m5761b(m6181f, C1022g.m5772a(m6181f, C1021f.f5264h));
                                Map<String, EnumC1027l> m5782c = C1022g.m5782c(m6181f, C1021f.f5264h);
                                Iterator<String> it = C1022g.m5777b(m6181f, C1021f.f5264h).iterator();
                                while (it.hasNext()) {
                                    m5782c.put(it.next(), EnumC1027l.EXPIRE);
                                }
                                C1021f.m5762b(m6181f, m5782c);
                            }
                        });
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                        if (C1021f.f5260d.booleanValue() && activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.b.f.2.2
                                RunnableC18702() {
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    Context m6181f = C1074k.m6181f();
                                    ArrayList<String> m5772a = C1022g.m5772a(m6181f, C1021f.f5264h);
                                    if (m5772a.isEmpty()) {
                                        m5772a = C1022g.m5783d(m6181f, C1021f.f5264h);
                                    }
                                    C1021f.m5761b(m6181f, m5772a);
                                }
                            });
                        }
                    }

                    /* renamed from: com.facebook.a.b.f$2$2 */
                    class RunnableC18702 implements Runnable {
                        RunnableC18702() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Context m6181f = C1074k.m6181f();
                            ArrayList<String> m5772a = C1022g.m5772a(m6181f, C1021f.f5264h);
                            if (m5772a.isEmpty()) {
                                m5772a = C1022g.m5783d(m6181f, C1021f.f5264h);
                            }
                            C1021f.m5761b(m6181f, m5772a);
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                    }
                };
            } catch (ClassNotFoundException e2) {
                f5259c = false;
            }
        }
    }

    /* renamed from: com.facebook.a.b.f$1 */
    static class AnonymousClass1 implements ServiceConnection {
        AnonymousClass1() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Object unused = C1021f.f5264h = C1022g.m5769a(C1074k.m6181f(), iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.facebook.a.b.f$2 */
    static class AnonymousClass2 implements Application.ActivityLifecycleCallbacks {
        AnonymousClass2() {
        }

        /* renamed from: com.facebook.a.b.f$2$1 */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context m6181f = C1074k.m6181f();
                C1021f.m5761b(m6181f, C1022g.m5772a(m6181f, C1021f.f5264h));
                Map<String, EnumC1027l> m5782c = C1022g.m5782c(m6181f, C1021f.f5264h);
                Iterator<String> it = C1022g.m5777b(m6181f, C1021f.f5264h).iterator();
                while (it.hasNext()) {
                    m5782c.put(it.next(), EnumC1027l.EXPIRE);
                }
                C1021f.m5762b(m6181f, m5782c);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.b.f.2.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    Context m6181f = C1074k.m6181f();
                    C1021f.m5761b(m6181f, C1022g.m5772a(m6181f, C1021f.f5264h));
                    Map<String, EnumC1027l> m5782c = C1022g.m5782c(m6181f, C1021f.f5264h);
                    Iterator<String> it = C1022g.m5777b(m6181f, C1021f.f5264h).iterator();
                    while (it.hasNext()) {
                        m5782c.put(it.next(), EnumC1027l.EXPIRE);
                    }
                    C1021f.m5762b(m6181f, m5782c);
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (C1021f.f5260d.booleanValue() && activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.b.f.2.2
                    RunnableC18702() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Context m6181f = C1074k.m6181f();
                        ArrayList<String> m5772a = C1022g.m5772a(m6181f, C1021f.f5264h);
                        if (m5772a.isEmpty()) {
                            m5772a = C1022g.m5783d(m6181f, C1021f.f5264h);
                        }
                        C1021f.m5761b(m6181f, m5772a);
                    }
                });
            }
        }

        /* renamed from: com.facebook.a.b.f$2$2 */
        class RunnableC18702 implements Runnable {
            RunnableC18702() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context m6181f = C1074k.m6181f();
                ArrayList<String> m5772a = C1022g.m5772a(m6181f, C1021f.f5264h);
                if (m5772a.isEmpty()) {
                    m5772a = C1022g.m5783d(m6181f, C1021f.f5264h);
                }
                C1021f.m5761b(m6181f, m5772a);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }
    }

    /* renamed from: e */
    private static void m5765e() {
        if (f5258b.compareAndSet(false, true)) {
            Context m6181f = C1074k.m6181f();
            if (m6181f instanceof Application) {
                ((Application) m6181f).registerActivityLifecycleCallbacks(f5262f);
                m6181f.bindService(f5263g, f5261e, 1);
            }
        }
    }

    /* renamed from: b */
    public static void m5761b(Context context, ArrayList<String> arrayList) {
        if (!arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    String string = new JSONObject(next).getString("productId");
                    hashMap.put(string, next);
                    arrayList2.add(string);
                } catch (JSONException e) {
                    Log.e(f5257a, "Error parsing in-app purchase data.", e);
                }
            }
            for (Map.Entry<String, String> entry : C1022g.m5773a(context, arrayList2, f5264h, false).entrySet()) {
                C1019d.m5752a((String) hashMap.get(entry.getKey()), entry.getValue());
            }
        }
    }

    /* renamed from: b */
    public static void m5762b(Context context, Map<String, EnumC1027l> map) {
        if (!map.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (String str : map.keySet()) {
                try {
                    String string = new JSONObject(str).getString("productId");
                    arrayList.add(string);
                    hashMap.put(string, str);
                } catch (JSONException e) {
                    Log.e(f5257a, "Error parsing in-app purchase data.", e);
                }
            }
            Map<String, String> m5773a = C1022g.m5773a(context, arrayList, f5264h, true);
            for (String str2 : m5773a.keySet()) {
                String str3 = (String) hashMap.get(str2);
                C1019d.m5750a(map.get(str3), str3, m5773a.get(str2));
            }
        }
    }
}
