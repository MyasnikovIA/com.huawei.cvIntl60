package com.p083b.p084a.p085a;

import com.p086c.p087a.AbstractC0971a;
import com.p086c.p087a.C0981f;
import java.nio.ByteBuffer;
import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p101b.p102a.C1585b;

/* renamed from: com.b.a.a.f */
/* loaded from: classes.dex */
public class C0963f extends AbstractC0971a {

    /* renamed from: e */
    private static final InterfaceC1576a.a f4988e = null;

    /* renamed from: f */
    private static final InterfaceC1576a.a f4989f = null;

    /* renamed from: g */
    private static final InterfaceC1576a.a f4990g = null;

    /* renamed from: a */
    byte[] f4991a;

    static {
        m5446c();
    }

    /* renamed from: c */
    private static void m5446c() {
        C1585b c1585b = new C1585b("UserBox.java", C0963f.class);
        f4988e = c1585b.m6739a("method-execution", c1585b.m6740a("1", "toString", "com.coremedia.iso.boxes.UserBox", "", "", "", "java.lang.String"), 40);
        f4989f = c1585b.m6739a("method-execution", c1585b.m6740a("1", "getData", "com.coremedia.iso.boxes.UserBox", "", "", "", "[B"), 47);
        f4990g = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setData", "com.coremedia.iso.boxes.UserBox", "[B", "data", "", "void"), 51);
    }

    public C0963f(byte[] bArr) {
        super("uuid", bArr);
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: d */
    protected long mo5444d() {
        return this.f4991a.length;
    }

    public String toString() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4988e, this, this));
        return "UserBox[type=" + m5472f() + ";userType=" + new String(m5473g()) + ";contentLength=" + this.f4991a.length + "]";
    }

    /* renamed from: b */
    public byte[] m5448b() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4989f, this, this));
        return this.f4991a;
    }

    /* renamed from: a */
    public void m5447a(byte[] bArr) {
        C0981f.m5493a().m5495a(C1585b.m6738a(f4990g, this, this, bArr));
        this.f4991a = bArr;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: a */
    public void mo5440a(ByteBuffer byteBuffer) {
        this.f4991a = new byte[byteBuffer.remaining()];
        byteBuffer.get(this.f4991a);
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: b */
    protected void mo5442b(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f4991a);
    }
}
