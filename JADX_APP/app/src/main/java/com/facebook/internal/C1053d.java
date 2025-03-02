package com.facebook.internal;

import android.content.Intent;
import com.facebook.C1074k;
import com.facebook.InterfaceC1044d;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.internal.d */
/* loaded from: classes.dex */
public final class C1053d implements InterfaceC1044d {

    /* renamed from: a */
    private static final String f5440a = C1053d.class.getSimpleName();

    /* renamed from: b */
    private static Map<Integer, a> f5441b = new HashMap();

    /* renamed from: c */
    private Map<Integer, a> f5442c = new HashMap();

    /* renamed from: com.facebook.internal.d$a */
    public interface a {
        /* renamed from: a */
        boolean mo5941a(int i, Intent intent);
    }

    /* renamed from: a */
    public static synchronized void m5938a(int i, a aVar) {
        synchronized (C1053d.class) {
            C1071v.m6125a(aVar, "callback");
            if (!f5441b.containsKey(Integer.valueOf(i))) {
                f5441b.put(Integer.valueOf(i), aVar);
            }
        }
    }

    /* renamed from: a */
    private static synchronized a m5937a(Integer num) {
        a aVar;
        synchronized (C1053d.class) {
            aVar = f5441b.get(num);
        }
        return aVar;
    }

    /* renamed from: b */
    private static boolean m5939b(int i, int i2, Intent intent) {
        a m5937a = m5937a(Integer.valueOf(i));
        if (m5937a != null) {
            return m5937a.mo5941a(i2, intent);
        }
        return false;
    }

    /* renamed from: b */
    public void m5940b(int i, a aVar) {
        C1071v.m6125a(aVar, "callback");
        this.f5442c.put(Integer.valueOf(i), aVar);
    }

    @Override // com.facebook.InterfaceC1044d
    /* renamed from: a */
    public boolean mo5915a(int i, int i2, Intent intent) {
        a aVar = this.f5442c.get(Integer.valueOf(i));
        return aVar != null ? aVar.mo5941a(i2, intent) : m5939b(i, i2, intent);
    }

    /* renamed from: com.facebook.internal.d$b */
    public enum b {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8);


        /* renamed from: j */
        private final int f5453j;

        b(int i) {
            this.f5453j = i;
        }

        /* renamed from: a */
        public int m5942a() {
            return C1074k.m6190o() + this.f5453j;
        }
    }
}
