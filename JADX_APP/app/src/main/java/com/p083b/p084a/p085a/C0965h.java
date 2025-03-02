package com.p083b.p084a.p085a;

import com.p083b.p084a.C0968d;
import com.p083b.p084a.C0970f;
import com.p086c.p087a.AbstractC0978c;
import com.p086c.p087a.C0981f;
import java.nio.ByteBuffer;
import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p101b.p102a.C1585b;

/* renamed from: com.b.a.a.h */
/* loaded from: classes.dex */
public class C0965h extends AbstractC0978c {

    /* renamed from: e */
    private static final InterfaceC1576a.a f4992e = null;

    /* renamed from: f */
    private static final InterfaceC1576a.a f4993f = null;

    /* renamed from: g */
    private static final InterfaceC1576a.a f4994g = null;

    /* renamed from: a */
    String f4995a;

    static {
        m5449b();
    }

    /* renamed from: b */
    private static void m5449b() {
        C1585b c1585b = new C1585b("XmlBox.java", C0965h.class);
        f4992e = c1585b.m6739a("method-execution", c1585b.m6740a("1", "getXml", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 20);
        f4993f = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setXml", "com.coremedia.iso.boxes.XmlBox", "java.lang.String", "xml", "", "void"), 24);
        f4994g = c1585b.m6739a("method-execution", c1585b.m6740a("1", "toString", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 46);
    }

    public C0965h() {
        super("xml ");
        this.f4995a = "";
    }

    /* renamed from: a */
    public void m5450a(String str) {
        C0981f.m5493a().m5495a(C1585b.m6738a(f4993f, this, this, str));
        this.f4995a = str;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: d */
    protected long mo5444d() {
        return C0970f.m5467b(this.f4995a) + 4;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: a */
    public void mo5440a(ByteBuffer byteBuffer) {
        m5482c(byteBuffer);
        this.f4995a = C0968d.m5455a(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: b */
    protected void mo5442b(ByteBuffer byteBuffer) {
        m5483d(byteBuffer);
        byteBuffer.put(C0970f.m5466a(this.f4995a));
    }

    public String toString() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4994g, this, this));
        return "XmlBox{xml='" + this.f4995a + "'}";
    }
}
