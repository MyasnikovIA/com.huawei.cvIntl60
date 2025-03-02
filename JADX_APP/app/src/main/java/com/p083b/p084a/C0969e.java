package com.p083b.p084a;

import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.b.a.e */
/* loaded from: classes.dex */
public final class C0969e {

    /* renamed from: a */
    static final /* synthetic */ boolean f4998a;

    static {
        f4998a = !C0969e.class.desiredAssertionStatus();
    }

    /* renamed from: a */
    public static void m5461a(ByteBuffer byteBuffer, long j) {
        if (!f4998a && j < 0) {
            throw new AssertionError("The given long is negative");
        }
        byteBuffer.putLong(j);
    }

    /* renamed from: b */
    public static void m5463b(ByteBuffer byteBuffer, long j) {
        if (!f4998a && (j < 0 || j > IjkMediaMeta.AV_CH_WIDE_RIGHT)) {
            throw new AssertionError("The given long is not in the range of uint32 (" + j + ")");
        }
        byteBuffer.putInt((int) j);
    }

    /* renamed from: a */
    public static void m5460a(ByteBuffer byteBuffer, int i) {
        int i2 = 16777215 & i;
        m5462b(byteBuffer, i2 >> 8);
        m5464c(byteBuffer, i2);
    }

    /* renamed from: b */
    public static void m5462b(ByteBuffer byteBuffer, int i) {
        int i2 = 65535 & i;
        m5464c(byteBuffer, i2 >> 8);
        m5464c(byteBuffer, i2 & 255);
    }

    /* renamed from: c */
    public static void m5464c(ByteBuffer byteBuffer, int i) {
        byteBuffer.put((byte) (i & 255));
    }
}
