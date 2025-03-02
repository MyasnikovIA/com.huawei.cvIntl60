package com.p083b.p084a.p085a;

import com.p083b.p084a.C0969e;
import com.p086c.p087a.C0977b;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.b.a.a.e */
/* loaded from: classes.dex */
public class C0962e extends C0977b {

    /* renamed from: j */
    private boolean f4985j;

    /* renamed from: k */
    private int f4986k;

    /* renamed from: l */
    private int f4987l;

    public C0962e() {
        super("meta");
        this.f4985j = true;
    }

    /* renamed from: a */
    protected final void m5445a(ByteBuffer byteBuffer) {
        C0969e.m5464c(byteBuffer, this.f4986k);
        C0969e.m5460a(byteBuffer, this.f4987l);
    }

    @Override // com.p086c.p087a.C0977b, com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public void mo5438a(WritableByteChannel writableByteChannel) {
        writableByteChannel.write(m5480b());
        if (this.f4985j) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            m5445a(allocate);
            writableByteChannel.write((ByteBuffer) allocate.rewind());
        }
        m5486b(writableByteChannel);
    }

    @Override // com.p086c.p087a.C0977b, com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public long mo5436a() {
        long d = m5488d();
        long j = this.f4985j ? 0 + 4 : 0L;
        return ((this.f5016c || j + d >= IjkMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8) + d + j;
    }
}
