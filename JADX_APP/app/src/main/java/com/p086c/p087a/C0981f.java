package com.p086c.p087a;

import org.p097a.p098a.p099a.C1581b;
import org.p097a.p098a.p099a.InterfaceC1576a;

/* renamed from: com.c.a.f */
/* loaded from: classes.dex */
public class C0981f {

    /* renamed from: a */
    public static final C0981f f5030a = null;

    /* renamed from: b */
    private static Throwable f5031b;

    static {
        try {
            m5494b();
        } catch (Throwable th) {
            f5031b = th;
        }
    }

    /* renamed from: a */
    public static C0981f m5493a() {
        if (f5030a == null) {
            throw new C1581b("com.googlecode.mp4parser.RequiresParseDetailAspect", f5031b);
        }
        return f5030a;
    }

    /* renamed from: b */
    private static void m5494b() {
        f5030a = new C0981f();
    }

    /* renamed from: a */
    public void m5495a(InterfaceC1576a interfaceC1576a) {
        if (interfaceC1576a.mo6732a() instanceof AbstractC0971a) {
            if (!((AbstractC0971a) interfaceC1576a.mo6732a()).m5474h()) {
                ((AbstractC0971a) interfaceC1576a.mo6732a()).m5471e();
                return;
            }
            return;
        }
        throw new RuntimeException("Only methods in subclasses of " + AbstractC0971a.class.getName() + " can  be annotated with ParseDetail");
    }
}
