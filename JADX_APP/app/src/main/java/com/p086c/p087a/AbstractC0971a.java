package com.p086c.p087a;

import com.p083b.p084a.C0966b;
import com.p083b.p084a.C0967c;
import com.p083b.p084a.C0969e;
import com.p083b.p084a.p085a.InterfaceC0958a;
import com.p083b.p084a.p085a.InterfaceC0959b;
import com.p086c.p087a.p088a.AbstractC0976e;
import com.p086c.p087a.p088a.C0973b;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.c.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC0971a implements InterfaceC0958a {

    /* renamed from: a */
    private static AbstractC0976e f4999a;

    /* renamed from: d */
    static final /* synthetic */ boolean f5000d;

    /* renamed from: b */
    protected String f5001b;

    /* renamed from: e */
    private byte[] f5003e;

    /* renamed from: f */
    private InterfaceC0959b f5004f;

    /* renamed from: g */
    private ByteBuffer f5005g;

    /* renamed from: h */
    private ByteBuffer f5006h = null;

    /* renamed from: c */
    boolean f5002c = true;

    /* renamed from: a */
    protected abstract void mo5440a(ByteBuffer byteBuffer);

    /* renamed from: b */
    protected abstract void mo5442b(ByteBuffer byteBuffer);

    /* renamed from: d */
    protected abstract long mo5444d();

    static {
        f5000d = !AbstractC0971a.class.desiredAssertionStatus();
        f4999a = AbstractC0976e.m5479a(AbstractC0971a.class);
    }

    protected AbstractC0971a(String str) {
        this.f5001b = str;
    }

    protected AbstractC0971a(String str, byte[] bArr) {
        this.f5001b = str;
        this.f5003e = bArr;
    }

    @Override // com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public void mo5438a(WritableByteChannel writableByteChannel) {
        if (this.f5002c) {
            ByteBuffer allocate = ByteBuffer.allocate(C0973b.m5477a(mo5436a()));
            m5470d(allocate);
            mo5442b(allocate);
            if (this.f5006h != null) {
                this.f5006h.rewind();
                while (this.f5006h.remaining() > 0) {
                    allocate.put(this.f5006h);
                }
            }
            writableByteChannel.write((ByteBuffer) allocate.rewind());
            return;
        }
        ByteBuffer allocate2 = ByteBuffer.allocate((m5468b() ? 8 : 16) + ("uuid".equals(m5472f()) ? 16 : 0));
        m5470d(allocate2);
        writableByteChannel.write((ByteBuffer) allocate2.rewind());
        writableByteChannel.write((ByteBuffer) this.f5005g.position(0));
    }

    /* renamed from: e */
    public final synchronized void m5471e() {
        f4999a.mo5475a("parsing details of " + m5472f());
        if (this.f5005g != null) {
            ByteBuffer byteBuffer = this.f5005g;
            this.f5002c = true;
            byteBuffer.rewind();
            mo5440a(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.f5006h = byteBuffer.slice();
            }
            this.f5005g = null;
            if (!f5000d && !m5469c(byteBuffer)) {
                throw new AssertionError();
            }
        }
    }

    @Override // com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public long mo5436a() {
        long limit;
        if (this.f5002c) {
            limit = mo5444d();
        } else {
            limit = this.f5005g != null ? this.f5005g.limit() : 0;
        }
        return (this.f5006h != null ? this.f5006h.limit() : 0) + limit + ("uuid".equals(m5472f()) ? 16 : 0) + (limit >= 4294967288L ? 8 : 0) + 8;
    }

    /* renamed from: f */
    public String m5472f() {
        return this.f5001b;
    }

    /* renamed from: g */
    public byte[] m5473g() {
        return this.f5003e;
    }

    @Override // com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public void mo5437a(InterfaceC0959b interfaceC0959b) {
        this.f5004f = interfaceC0959b;
    }

    /* renamed from: h */
    public boolean m5474h() {
        return this.f5002c;
    }

    /* renamed from: c */
    private boolean m5469c(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(C0973b.m5477a(mo5444d() + (this.f5006h != null ? this.f5006h.limit() : 0)));
        mo5442b(allocate);
        if (this.f5006h != null) {
            this.f5006h.rewind();
            while (this.f5006h.remaining() > 0) {
                allocate.put(this.f5006h);
            }
        }
        byteBuffer.rewind();
        allocate.rewind();
        if (byteBuffer.remaining() != allocate.remaining()) {
            System.err.print(String.valueOf(m5472f()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            f4999a.mo5476b(String.valueOf(m5472f()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            return false;
        }
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 1;
        int limit2 = allocate.limit() - 1;
        while (limit >= position) {
            byte b = byteBuffer.get(limit);
            byte b2 = allocate.get(limit2);
            if (b == b2) {
                limit--;
                limit2--;
            } else {
                f4999a.mo5476b(String.format("%s: buffers differ at %d: %2X/%2X", m5472f(), Integer.valueOf(limit), Byte.valueOf(b), Byte.valueOf(b2)));
                byte[] bArr = new byte[byteBuffer.remaining()];
                byte[] bArr2 = new byte[allocate.remaining()];
                byteBuffer.get(bArr);
                allocate.get(bArr2);
                System.err.println("original      : " + C0966b.m5451a(bArr, 4));
                System.err.println("reconstructed : " + C0966b.m5451a(bArr2, 4));
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private boolean m5468b() {
        int i = 8;
        if ("uuid".equals(m5472f())) {
            i = 24;
        }
        if (this.f5002c) {
            return (mo5444d() + ((long) (this.f5006h != null ? this.f5006h.limit() : 0))) + ((long) i) < IjkMediaMeta.AV_CH_WIDE_RIGHT;
        }
        return ((long) (i + this.f5005g.limit())) < IjkMediaMeta.AV_CH_WIDE_RIGHT;
    }

    /* renamed from: d */
    private void m5470d(ByteBuffer byteBuffer) {
        if (m5468b()) {
            C0969e.m5463b(byteBuffer, mo5436a());
            byteBuffer.put(C0967c.m5452a(m5472f()));
        } else {
            C0969e.m5463b(byteBuffer, 1L);
            byteBuffer.put(C0967c.m5452a(m5472f()));
            C0969e.m5461a(byteBuffer, mo5436a());
        }
        if ("uuid".equals(m5472f())) {
            byteBuffer.put(m5473g());
        }
    }
}
