package com.facebook.p089a;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.C1111p;
import com.facebook.EnumC1160t;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1064o;
import com.facebook.p089a.C1032g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.e */
/* loaded from: classes.dex */
class C1030e {

    /* renamed from: d */
    private static ScheduledFuture f5309d;

    /* renamed from: a */
    private static final String f5306a = C1030e.class.getName();

    /* renamed from: b */
    private static volatile C1029d f5307b = new C1029d();

    /* renamed from: c */
    private static final ScheduledExecutorService f5308c = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: e */
    private static final Runnable f5310e = new Runnable() { // from class: com.facebook.a.e.1
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScheduledFuture unused = C1030e.f5309d = null;
            if (C1032g.m5837a() != C1032g.a.EXPLICIT_ONLY) {
                C1030e.m5828b(EnumC1033h.TIMER);
            }
        }
    };

    C1030e() {
    }

    /* renamed from: com.facebook.a.e$1 */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScheduledFuture unused = C1030e.f5309d = null;
            if (C1032g.m5837a() != C1032g.a.EXPLICIT_ONLY) {
                C1030e.m5828b(EnumC1033h.TIMER);
            }
        }
    }

    /* renamed from: com.facebook.a.e$2 */
    static class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1031f.m5835a(C1030e.f5307b);
            C1029d unused = C1030e.f5307b = new C1029d();
        }
    }

    /* renamed from: a */
    public static void m5822a() {
        f5308c.execute(new Runnable() { // from class: com.facebook.a.e.2
            AnonymousClass2() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1031f.m5835a(C1030e.f5307b);
                C1029d unused = C1030e.f5307b = new C1029d();
            }
        });
    }

    /* renamed from: com.facebook.a.e$3 */
    static class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1030e.m5828b(EnumC1033h.this);
        }
    }

    /* renamed from: a */
    public static void m5825a(EnumC1033h enumC1033h) {
        f5308c.execute(new Runnable() { // from class: com.facebook.a.e.3
            AnonymousClass3() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1030e.m5828b(EnumC1033h.this);
            }
        });
    }

    /* renamed from: com.facebook.a.e$4 */
    static class AnonymousClass4 implements Runnable {

        /* renamed from: b */
        final /* synthetic */ C1028c f5313b;

        AnonymousClass4(C1028c c1028c) {
            c1028c = c1028c;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1030e.f5307b.m5815a(C1003a.this, c1028c);
            if (C1032g.m5837a() == C1032g.a.EXPLICIT_ONLY || C1030e.f5307b.m5817b() <= 100) {
                if (C1030e.f5309d == null) {
                    ScheduledFuture unused = C1030e.f5309d = C1030e.f5308c.schedule(C1030e.f5310e, 15L, TimeUnit.SECONDS);
                    return;
                }
                return;
            }
            C1030e.m5828b(EnumC1033h.EVENT_THRESHOLD);
        }
    }

    /* renamed from: a */
    public static void m5824a(C1003a c1003a, C1028c c1028c) {
        f5308c.execute(new Runnable() { // from class: com.facebook.a.e.4

            /* renamed from: b */
            final /* synthetic */ C1028c f5313b;

            AnonymousClass4(C1028c c1028c2) {
                c1028c = c1028c2;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1030e.f5307b.m5815a(C1003a.this, c1028c);
                if (C1032g.m5837a() == C1032g.a.EXPLICIT_ONLY || C1030e.f5307b.m5817b() <= 100) {
                    if (C1030e.f5309d == null) {
                        ScheduledFuture unused = C1030e.f5309d = C1030e.f5308c.schedule(C1030e.f5310e, 15L, TimeUnit.SECONDS);
                        return;
                    }
                    return;
                }
                C1030e.m5828b(EnumC1033h.EVENT_THRESHOLD);
            }
        });
    }

    /* renamed from: b */
    public static Set<C1003a> m5826b() {
        return f5307b.m5814a();
    }

    /* renamed from: b */
    static void m5828b(EnumC1033h enumC1033h) {
        f5307b.m5816a(C1031f.m5833a());
        try {
            C1035j m5820a = m5820a(enumC1033h, f5307b);
            if (m5820a != null) {
                Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", m5820a.f5346a);
                intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", m5820a.f5347b);
                LocalBroadcastManager.getInstance(C1074k.m6181f()).sendBroadcast(intent);
            }
        } catch (Exception e) {
            Log.w(f5306a, "Caught unexpected exception while flushing app events: ", e);
        }
    }

    /* renamed from: a */
    private static C1035j m5820a(EnumC1033h enumC1033h, C1029d c1029d) {
        C1035j c1035j = new C1035j();
        boolean m6176b = C1074k.m6176b(C1074k.m6181f());
        ArrayList arrayList = new ArrayList();
        for (C1003a c1003a : c1029d.m5814a()) {
            GraphRequest m5818a = m5818a(c1003a, c1029d.m5813a(c1003a), m6176b, c1035j);
            if (m5818a != null) {
                arrayList.add(m5818a);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        C1064o.m6003a(EnumC1160t.APP_EVENTS, f5306a, "Flushing %d events due to %s.", Integer.valueOf(c1035j.f5346a), enumC1033h.toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((GraphRequest) it.next()).m5590i();
        }
        return c1035j;
    }

    /* renamed from: a */
    private static GraphRequest m5818a(C1003a c1003a, C1037l c1037l, boolean z, C1035j c1035j) {
        String m5634b = c1003a.m5634b();
        C1060k m5980a = C1061l.m5980a(m5634b, false);
        GraphRequest m5538a = GraphRequest.m5538a((AccessToken) null, String.format("%s/activities", m5634b), (JSONObject) null, (GraphRequest.InterfaceC0995b) null);
        Bundle m5586e = m5538a.m5586e();
        if (m5586e == null) {
            m5586e = new Bundle();
        }
        m5586e.putString("access_token", c1003a.m5633a());
        String m5848d = C1032g.m5848d();
        if (m5848d != null) {
            m5586e.putString("device_token", m5848d);
        }
        m5538a.m5577a(m5586e);
        int m5864a = c1037l.m5864a(m5538a, C1074k.m6181f(), m5980a != null ? m5980a.m5964a() : false, z);
        if (m5864a == 0) {
            return null;
        }
        c1035j.f5346a = m5864a + c1035j.f5346a;
        m5538a.m5578a((GraphRequest.InterfaceC0995b) new GraphRequest.InterfaceC0995b() { // from class: com.facebook.a.e.5

            /* renamed from: b */
            final /* synthetic */ GraphRequest f5315b;

            /* renamed from: c */
            final /* synthetic */ C1037l f5316c;

            /* renamed from: d */
            final /* synthetic */ C1035j f5317d;

            AnonymousClass5(GraphRequest m5538a2, C1037l c1037l2, C1035j c1035j2) {
                m5538a = m5538a2;
                c1037l = c1037l2;
                c1035j = c1035j2;
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                C1030e.m5827b(C1003a.this, m5538a, c1111p, c1037l, c1035j);
            }
        });
        return m5538a2;
    }

    /* renamed from: com.facebook.a.e$5 */
    static class AnonymousClass5 implements GraphRequest.InterfaceC0995b {

        /* renamed from: b */
        final /* synthetic */ GraphRequest f5315b;

        /* renamed from: c */
        final /* synthetic */ C1037l f5316c;

        /* renamed from: d */
        final /* synthetic */ C1035j f5317d;

        AnonymousClass5(GraphRequest m5538a2, C1037l c1037l2, C1035j c1035j2) {
            m5538a = m5538a2;
            c1037l = c1037l2;
            c1035j = c1035j2;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            C1030e.m5827b(C1003a.this, m5538a, c1111p, c1037l, c1035j);
        }
    }

    /* renamed from: b */
    public static void m5827b(C1003a c1003a, GraphRequest graphRequest, C1111p c1111p, C1037l c1037l, C1035j c1035j) {
        EnumC1034i enumC1034i;
        String str;
        FacebookRequestError m6419a = c1111p.m6419a();
        String str2 = "Success";
        EnumC1034i enumC1034i2 = EnumC1034i.SUCCESS;
        if (m6419a == null) {
            enumC1034i = enumC1034i2;
        } else if (m6419a.m5529b() == -1) {
            str2 = "Failed: No Connectivity";
            enumC1034i = EnumC1034i.NO_CONNECTIVITY;
        } else {
            str2 = String.format("Failed:\n  Response: %s\n  Error %s", c1111p.toString(), m6419a.toString());
            enumC1034i = EnumC1034i.SERVER_ERROR;
        }
        if (C1074k.m6173a(EnumC1160t.APP_EVENTS)) {
            try {
                str = new JSONArray((String) graphRequest.m5589h()).toString(2);
            } catch (JSONException e) {
                str = "<Can't encode events for debug logging>";
            }
            C1064o.m6003a(EnumC1160t.APP_EVENTS, f5306a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.m5576a().toString(), str2, str);
        }
        c1037l.m5866a(m6419a != null);
        if (enumC1034i == EnumC1034i.NO_CONNECTIVITY) {
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.e.6

                /* renamed from: b */
                final /* synthetic */ C1037l f5319b;

                AnonymousClass6(C1037l c1037l2) {
                    c1037l = c1037l2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1031f.m5834a(C1003a.this, c1037l);
                }
            });
        }
        if (enumC1034i != EnumC1034i.SUCCESS && c1035j.f5347b != EnumC1034i.NO_CONNECTIVITY) {
            c1035j.f5347b = enumC1034i;
        }
    }

    /* renamed from: com.facebook.a.e$6 */
    static class AnonymousClass6 implements Runnable {

        /* renamed from: b */
        final /* synthetic */ C1037l f5319b;

        AnonymousClass6(C1037l c1037l2) {
            c1037l = c1037l2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1031f.m5834a(C1003a.this, c1037l);
        }
    }
}
