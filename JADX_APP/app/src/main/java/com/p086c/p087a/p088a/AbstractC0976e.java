package com.p086c.p087a.p088a;

/* renamed from: com.c.a.a.e */
/* loaded from: classes.dex */
public abstract class AbstractC0976e {
    /* renamed from: a */
    public abstract void mo5475a(String str);

    /* renamed from: b */
    public abstract void mo5476b(String str);

    /* renamed from: a */
    public static AbstractC0976e m5479a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new C0972a(cls.getSimpleName()) : new C0974c(cls.getSimpleName());
    }
}
