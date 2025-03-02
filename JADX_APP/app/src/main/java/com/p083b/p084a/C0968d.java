package com.p083b.p084a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.b.a.d */
/* loaded from: classes.dex */
public final class C0968d {
    /* renamed from: a */
    public static long m5454a(ByteBuffer byteBuffer) {
        long j = byteBuffer.getInt();
        if (j < 0) {
            return j + IjkMediaMeta.AV_CH_WIDE_RIGHT;
        }
        return j;
    }

    /* renamed from: b */
    public static int m5456b(ByteBuffer byteBuffer) {
        return 0 + (m5457c(byteBuffer) << 8) + m5453a(byteBuffer.get());
    }

    /* renamed from: c */
    public static int m5457c(ByteBuffer byteBuffer) {
        return 0 + (m5453a(byteBuffer.get()) << 8) + m5453a(byteBuffer.get());
    }

    /* renamed from: d */
    public static int m5458d(ByteBuffer byteBuffer) {
        return m5453a(byteBuffer.get());
    }

    /* renamed from: a */
    public static int m5453a(byte b) {
        return b < 0 ? b + 256 : b;
    }

    /* renamed from: a */
    public static String m5455a(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return C0970f.m5465a(bArr);
    }

    /* renamed from: e */
    public static String m5459e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
