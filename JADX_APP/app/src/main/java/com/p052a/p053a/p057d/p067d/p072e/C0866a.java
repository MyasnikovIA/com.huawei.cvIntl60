package com.p052a.p053a.p057d.p067d.p072e;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.p052a.p053a.p055b.C0732c;
import com.p052a.p053a.p055b.C0733d;
import com.p052a.p053a.p055b.C0734e;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.C0883g;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.C0860b;
import com.p052a.p053a.p081j.C0950d;
import com.p052a.p053a.p081j.C0955i;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* renamed from: com.a.a.d.d.e.a */
/* loaded from: classes.dex */
public class C0866a implements InterfaceC0887k<ByteBuffer, C0868c> {

    /* renamed from: d */
    private final Context f4673d;

    /* renamed from: e */
    private final List<InterfaceC0882f> f4674e;

    /* renamed from: f */
    private final b f4675f;

    /* renamed from: g */
    private final InterfaceC0765e f4676g;

    /* renamed from: h */
    private final a f4677h;

    /* renamed from: i */
    private final C0867b f4678i;

    /* renamed from: b */
    private static final a f4671b = new a();

    /* renamed from: a */
    public static final C0885i<Boolean> f4670a = C0885i.m5107a("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", false);

    /* renamed from: c */
    private static final b f4672c = new b();

    public C0866a(Context context, List<InterfaceC0882f> list, InterfaceC0765e interfaceC0765e, InterfaceC0762b interfaceC0762b) {
        this(context, list, interfaceC0765e, interfaceC0762b, f4672c, f4671b);
    }

    C0866a(Context context, List<InterfaceC0882f> list, InterfaceC0765e interfaceC0765e, InterfaceC0762b interfaceC0762b, b bVar, a aVar) {
        this.f4673d = context.getApplicationContext();
        this.f4674e = list;
        this.f4676g = interfaceC0765e;
        this.f4677h = aVar;
        this.f4678i = new C0867b(interfaceC0765e, interfaceC0762b);
        this.f4675f = bVar;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(ByteBuffer byteBuffer, C0886j c0886j) {
        return !((Boolean) c0886j.m5115a(f4670a)).booleanValue() && C0883g.m5104a(this.f4674e, byteBuffer) == InterfaceC0882f.a.GIF;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public C0870e mo4969a(ByteBuffer byteBuffer, int i, int i2, C0886j c0886j) {
        C0733d m5056a = this.f4675f.m5056a(byteBuffer);
        try {
            return m5054a(byteBuffer, i, i2, m5056a);
        } finally {
            this.f4675f.m5057a(m5056a);
        }
    }

    /* renamed from: a */
    private C0870e m5054a(ByteBuffer byteBuffer, int i, int i2, C0733d c0733d) {
        long m5397a = C0950d.m5397a();
        C0732c m4540b = c0733d.m4540b();
        if (m4540b.m4521c() <= 0 || m4540b.m4522d() != 0) {
            return null;
        }
        InterfaceC0730a m5055a = this.f4677h.m5055a(this.f4678i, m4540b, byteBuffer, m5053a(m4540b, i, i2));
        m5055a.mo4505b();
        Bitmap mo4511h = m5055a.mo4511h();
        if (mo4511h == null) {
            return null;
        }
        C0868c c0868c = new C0868c(this.f4673d, m5055a, this.f4676g, C0860b.m5049a(), i, i2, mo4511h);
        if (Log.isLoggable("BufferGifDecoder", 2)) {
            Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C0950d.m5396a(m5397a));
        }
        return new C0870e(c0868c);
    }

    /* renamed from: a */
    private static int m5053a(C0732c c0732c, int i, int i2) {
        int min = Math.min(c0732c.m4519a() / i2, c0732c.m4520b() / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2)) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + c0732c.m4520b() + "x" + c0732c.m4519a() + "]");
        }
        return max;
    }

    /* renamed from: com.a.a.d.d.e.a$a */
    static class a {
        a() {
        }

        /* renamed from: a */
        public InterfaceC0730a m5055a(InterfaceC0730a.a aVar, C0732c c0732c, ByteBuffer byteBuffer, int i) {
            return new C0734e(aVar, c0732c, byteBuffer, i);
        }
    }

    /* renamed from: com.a.a.d.d.e.a$b */
    static class b {

        /* renamed from: a */
        private final Queue<C0733d> f4679a = C0955i.m5424a(0);

        b() {
        }

        /* renamed from: a */
        public synchronized C0733d m5056a(ByteBuffer byteBuffer) {
            C0733d poll;
            poll = this.f4679a.poll();
            if (poll == null) {
                poll = new C0733d();
            }
            return poll.m4538a(byteBuffer);
        }

        /* renamed from: a */
        public synchronized void m5057a(C0733d c0733d) {
            c0733d.m4539a();
            this.f4679a.offer(c0733d);
        }
    }
}
