package com.p052a.p053a.p057d.p067d.p072e;

import android.util.Log;
import com.p052a.p053a.p057d.C0883g;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: com.a.a.d.d.e.i */
/* loaded from: classes.dex */
public class C0874i implements InterfaceC0887k<InputStream, C0868c> {

    /* renamed from: a */
    public static final C0885i<Boolean> f4715a = C0885i.m5107a("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", false);

    /* renamed from: b */
    private final List<InterfaceC0882f> f4716b;

    /* renamed from: c */
    private final InterfaceC0887k<ByteBuffer, C0868c> f4717c;

    /* renamed from: d */
    private final InterfaceC0762b f4718d;

    public C0874i(List<InterfaceC0882f> list, InterfaceC0887k<ByteBuffer, C0868c> interfaceC0887k, InterfaceC0762b interfaceC0762b) {
        this.f4716b = list;
        this.f4717c = interfaceC0887k;
        this.f4718d = interfaceC0762b;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(InputStream inputStream, C0886j c0886j) {
        return !((Boolean) c0886j.m5115a(f4715a)).booleanValue() && C0883g.m5103a(this.f4716b, inputStream, this.f4718d) == InterfaceC0882f.a.GIF;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<C0868c> mo4969a(InputStream inputStream, int i, int i2, C0886j c0886j) {
        byte[] m5095a = m5095a(inputStream);
        if (m5095a == null) {
            return null;
        }
        return this.f4717c.mo4969a(ByteBuffer.wrap(m5095a), i, i2, c0886j);
    }

    /* renamed from: a */
    private static byte[] m5095a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            return null;
        }
    }
}
