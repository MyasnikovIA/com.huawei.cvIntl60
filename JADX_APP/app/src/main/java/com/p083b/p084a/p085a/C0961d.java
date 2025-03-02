package com.p083b.p084a.p085a;

import com.p083b.p084a.C0967c;
import com.p083b.p084a.C0968d;
import com.p083b.p084a.C0969e;
import com.p083b.p084a.C0970f;
import com.p086c.p087a.AbstractC0978c;
import com.p086c.p087a.C0981f;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.p097a.p098a.p099a.InterfaceC1576a;
import org.p097a.p098a.p101b.p102a.C1585b;

/* renamed from: com.b.a.a.d */
/* loaded from: classes.dex */
public class C0961d extends AbstractC0978c {

    /* renamed from: a */
    public static final Map<String, String> f4971a;

    /* renamed from: l */
    private static final InterfaceC1576a.a f4972l = null;

    /* renamed from: m */
    private static final InterfaceC1576a.a f4973m = null;

    /* renamed from: n */
    private static final InterfaceC1576a.a f4974n = null;

    /* renamed from: o */
    private static final InterfaceC1576a.a f4975o = null;

    /* renamed from: p */
    private static final InterfaceC1576a.a f4976p = null;

    /* renamed from: q */
    private static final InterfaceC1576a.a f4977q = null;

    /* renamed from: e */
    private String f4978e;

    /* renamed from: f */
    private String f4979f;

    /* renamed from: g */
    private long f4980g;

    /* renamed from: h */
    private long f4981h;

    /* renamed from: i */
    private long f4982i;

    /* renamed from: j */
    private boolean f4983j;

    /* renamed from: k */
    private long f4984k;

    /* renamed from: i */
    private static void m5439i() {
        C1585b c1585b = new C1585b("HandlerBox.java", C0961d.class);
        f4972l = c1585b.m6739a("method-execution", c1585b.m6740a("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        f4973m = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        f4974n = c1585b.m6739a("method-execution", c1585b.m6740a("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        f4975o = c1585b.m6739a("method-execution", c1585b.m6740a("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        f4976p = c1585b.m6739a("method-execution", c1585b.m6740a("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        f4977q = c1585b.m6739a("method-execution", c1585b.m6740a("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    static {
        m5439i();
        HashMap hashMap = new HashMap();
        hashMap.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mdir", "Apple Meta Data iTunes Reader");
        hashMap.put("mp7b", "MPEG-7 binary XML");
        hashMap.put("mp7t", "MPEG-7 XML");
        hashMap.put("vide", "Video Track");
        hashMap.put("soun", "Sound Track");
        hashMap.put("hint", "Hint Track");
        hashMap.put("appl", "Apple specific");
        hashMap.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        f4971a = Collections.unmodifiableMap(hashMap);
    }

    public C0961d() {
        super("hdlr");
        this.f4979f = null;
        this.f4983j = true;
    }

    /* renamed from: b */
    public String m5441b() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4972l, this, this));
        return this.f4978e;
    }

    /* renamed from: c */
    public String m5443c() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4975o, this, this));
        return this.f4979f;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: d */
    protected long mo5444d() {
        return this.f4983j ? C0970f.m5467b(this.f4979f) + 25 : C0970f.m5467b(this.f4979f) + 24;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: a */
    public void mo5440a(ByteBuffer byteBuffer) {
        m5482c(byteBuffer);
        this.f4984k = C0968d.m5454a(byteBuffer);
        this.f4978e = C0968d.m5459e(byteBuffer);
        this.f4980g = C0968d.m5454a(byteBuffer);
        this.f4981h = C0968d.m5454a(byteBuffer);
        this.f4982i = C0968d.m5454a(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            this.f4979f = C0968d.m5455a(byteBuffer, byteBuffer.remaining());
            if (this.f4979f.endsWith("\u0000")) {
                this.f4979f = this.f4979f.substring(0, this.f4979f.length() - 1);
                this.f4983j = true;
                return;
            } else {
                this.f4983j = false;
                return;
            }
        }
        this.f4983j = false;
    }

    @Override // com.p086c.p087a.AbstractC0971a
    /* renamed from: b */
    protected void mo5442b(ByteBuffer byteBuffer) {
        m5483d(byteBuffer);
        C0969e.m5463b(byteBuffer, this.f4984k);
        byteBuffer.put(C0967c.m5452a(this.f4978e));
        C0969e.m5463b(byteBuffer, this.f4980g);
        C0969e.m5463b(byteBuffer, this.f4981h);
        C0969e.m5463b(byteBuffer, this.f4982i);
        if (this.f4979f != null) {
            byteBuffer.put(C0970f.m5466a(this.f4979f));
        }
        if (this.f4983j) {
            byteBuffer.put((byte) 0);
        }
    }

    public String toString() {
        C0981f.m5493a().m5495a(C1585b.m6737a(f4977q, this, this));
        return "HandlerBox[handlerType=" + m5441b() + ";name=" + m5443c() + "]";
    }
}
