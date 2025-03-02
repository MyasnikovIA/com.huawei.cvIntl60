package com.facebook.p089a.p092b;

import android.os.Bundle;
import com.facebook.EnumC1160t;
import com.facebook.internal.C1064o;
import com.facebook.p089a.C1032g;
import java.util.Locale;

/* renamed from: com.facebook.a.b.j */
/* loaded from: classes.dex */
class C1025j {

    /* renamed from: a */
    private static final String f5280a = C1025j.class.getCanonicalName();

    /* renamed from: b */
    private static final long[] f5281b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    C1025j() {
    }

    /* renamed from: a */
    public static void m5800a(String str, C1026k c1026k, String str2) {
        String c1026k2 = c1026k != null ? c1026k.toString() : "Unclassified";
        Bundle bundle = new Bundle();
        bundle.putString("fb_mobile_launch_source", c1026k2);
        C1023h c1023h = new C1023h(str, str2, null);
        c1023h.m5855a("fb_mobile_activate_app", bundle);
        if (C1032g.m5837a() != C1032g.a.EXPLICIT_ONLY) {
            c1023h.m5857b();
        }
    }

    /* renamed from: a */
    public static void m5799a(String str, C1024i c1024i, String str2) {
        Long valueOf = Long.valueOf(c1024i.m5792f() - c1024i.m5789c().longValue());
        if (valueOf.longValue() < 0) {
            valueOf = 0L;
            m5798a();
        }
        Long valueOf2 = Long.valueOf(c1024i.m5794h());
        if (valueOf2.longValue() < 0) {
            m5798a();
            valueOf2 = 0L;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", c1024i.m5790d());
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(m5797a(valueOf.longValue()))));
        C1026k m5795i = c1024i.m5795i();
        bundle.putString("fb_mobile_launch_source", m5795i != null ? m5795i.toString() : "Unclassified");
        bundle.putLong("_logTime", c1024i.m5789c().longValue() / 1000);
        new C1023h(str, str2, null).m5854a("fb_mobile_deactivate_app", valueOf2.longValue() / 1000, bundle);
    }

    /* renamed from: a */
    private static void m5798a() {
        C1064o.m6002a(EnumC1160t.APP_EVENTS, f5280a, "Clock skew detected");
    }

    /* renamed from: a */
    private static int m5797a(long j) {
        int i = 0;
        while (i < f5281b.length && f5281b[i] < j) {
            i++;
        }
        return i;
    }
}
