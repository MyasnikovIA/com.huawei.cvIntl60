package com.facebook.internal;

import com.facebook.C1074k;
import java.util.Collection;

/* renamed from: com.facebook.internal.s */
/* loaded from: classes.dex */
public final class C1068s {

    /* renamed from: c */
    private static final String f5544c = C1068s.class.getName();

    /* renamed from: a */
    public static final Collection<String> f5542a = C1070u.m6077a("service_disabled", "AndroidAuthKillSwitchException");

    /* renamed from: b */
    public static final Collection<String> f5543b = C1070u.m6077a("access_denied", "OAuthAccessDeniedException");

    /* renamed from: a */
    public static final String m6057a() {
        return String.format("m.%s", C1074k.m6180e());
    }

    /* renamed from: b */
    public static final String m6058b() {
        return String.format("https://graph.%s", C1074k.m6180e());
    }

    /* renamed from: c */
    public static final String m6059c() {
        return String.format("https://graph-video.%s", C1074k.m6180e());
    }

    /* renamed from: d */
    public static final String m6060d() {
        return "v3.2";
    }
}
