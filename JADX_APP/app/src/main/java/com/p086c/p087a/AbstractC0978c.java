package com.p086c.p087a;

import com.p083b.p084a.C0968d;
import com.p083b.p084a.C0969e;
import com.p083b.p084a.p085a.InterfaceC0960c;
import java.nio.ByteBuffer;
import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p101b.p102a.C1585b;

/* renamed from: com.c.a.c */
/* loaded from: classes.dex */
public abstract class AbstractC0978c extends AbstractC0971a implements InterfaceC0960c {

    /* renamed from: f */
    private static final InterfaceC1576a.a f5017f = null;

    /* renamed from: g */
    private static final InterfaceC1576a.a f5018g = null;

    /* renamed from: a */
    private int f5019a;

    /* renamed from: e */
    private int f5020e;

    static {
        m5481b();
    }

    /* renamed from: b */
    private static void m5481b() {
        C1585b c1585b = new C1585b("AbstractFullBox.java", AbstractC0978c.class);
        f5017f = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        f5018g = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    protected AbstractC0978c(String str) {
        super(str);
    }

    /* renamed from: c */
    protected final long m5482c(ByteBuffer byteBuffer) {
        this.f5019a = C0968d.m5458d(byteBuffer);
        this.f5020e = C0968d.m5456b(byteBuffer);
        return 4L;
    }

    /* renamed from: d */
    protected final void m5483d(ByteBuffer byteBuffer) {
        C0969e.m5464c(byteBuffer, this.f5019a);
        C0969e.m5460a(byteBuffer, this.f5020e);
    }
}
