package com.p086c.p087a;

import com.p083b.p084a.C0969e;
import com.p083b.p084a.p085a.InterfaceC0958a;
import com.p083b.p084a.p085a.InterfaceC0959b;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.c.a.b */
/* loaded from: classes.dex */
public class C0977b extends C0979d implements InterfaceC0958a {

    /* renamed from: a */
    InterfaceC0959b f5014a;

    /* renamed from: b */
    protected String f5015b;

    /* renamed from: c */
    protected boolean f5016c;

    public C0977b(String str) {
        this.f5015b = str;
    }

    @Override // com.p083b.p084a.p085a.InterfaceC0958a
    /* renamed from: a */
    public void mo5437a(InterfaceC0959b interfaceC0959b) {
        this.f5014a = interfaceC0959b;
    }

    /* renamed from: a */
    public long mo5436a() {
        long d = m5488d();
        return ((this.f5016c || 8 + d >= IjkMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8) + d;
    }

    /* renamed from: b */
    protected ByteBuffer m5480b() {
        ByteBuffer wrap;
        if (this.f5016c || mo5436a() >= IjkMediaMeta.AV_CH_WIDE_RIGHT) {
            byte[] bArr = new byte[16];
            bArr[3] = 1;
            bArr[4] = this.f5015b.getBytes()[0];
            bArr[5] = this.f5015b.getBytes()[1];
            bArr[6] = this.f5015b.getBytes()[2];
            bArr[7] = this.f5015b.getBytes()[3];
            wrap = ByteBuffer.wrap(bArr);
            wrap.position(8);
            C0969e.m5461a(wrap, mo5436a());
        } else {
            wrap = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, this.f5015b.getBytes()[0], this.f5015b.getBytes()[1], this.f5015b.getBytes()[2], this.f5015b.getBytes()[3]});
            C0969e.m5463b(wrap, mo5436a());
        }
        wrap.rewind();
        return wrap;
    }

    /* renamed from: a */
    public void mo5438a(WritableByteChannel writableByteChannel) {
        writableByteChannel.write(m5480b());
        m5486b(writableByteChannel);
    }
}
