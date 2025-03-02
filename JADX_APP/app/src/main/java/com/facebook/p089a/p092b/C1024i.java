package com.facebook.p089a.p092b;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C1074k;
import java.util.UUID;

/* renamed from: com.facebook.a.b.i */
/* loaded from: classes.dex */
class C1024i {

    /* renamed from: a */
    private Long f5274a;

    /* renamed from: b */
    private Long f5275b;

    /* renamed from: c */
    private int f5276c;

    /* renamed from: d */
    private Long f5277d;

    /* renamed from: e */
    private C1026k f5278e;

    /* renamed from: f */
    private UUID f5279f;

    public C1024i(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public C1024i(Long l, Long l2, UUID uuid) {
        this.f5274a = l;
        this.f5275b = l2;
        this.f5279f = uuid;
    }

    /* renamed from: a */
    public static C1024i m5786a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f());
        long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
        long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
        String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
        if (j == 0 || j2 == 0 || string == null) {
            return null;
        }
        C1024i c1024i = new C1024i(Long.valueOf(j), Long.valueOf(j2));
        c1024i.f5276c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
        c1024i.f5278e = C1026k.m5801a();
        c1024i.f5277d = Long.valueOf(System.currentTimeMillis());
        c1024i.f5279f = UUID.fromString(string);
        return c1024i;
    }

    /* renamed from: b */
    public static void m5787b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f()).edit();
        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
        edit.apply();
        C1026k.m5802b();
    }

    /* renamed from: c */
    public Long m5789c() {
        return this.f5275b;
    }

    /* renamed from: a */
    public void m5788a(Long l) {
        this.f5275b = l;
    }

    /* renamed from: d */
    public int m5790d() {
        return this.f5276c;
    }

    /* renamed from: e */
    public void m5791e() {
        this.f5276c++;
    }

    /* renamed from: f */
    public long m5792f() {
        if (this.f5277d == null) {
            return 0L;
        }
        return this.f5277d.longValue();
    }

    /* renamed from: g */
    public UUID m5793g() {
        return this.f5279f;
    }

    /* renamed from: h */
    public long m5794h() {
        if (this.f5274a == null || this.f5275b == null) {
            return 0L;
        }
        return this.f5275b.longValue() - this.f5274a.longValue();
    }

    /* renamed from: i */
    public C1026k m5795i() {
        return this.f5278e;
    }

    /* renamed from: j */
    public void m5796j() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f5274a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f5275b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f5276c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f5279f.toString());
        edit.apply();
        if (this.f5278e != null) {
            this.f5278e.m5803c();
        }
    }
}
