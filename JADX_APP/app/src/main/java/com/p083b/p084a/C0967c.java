package com.p083b.p084a;

import com.p086c.p087a.C0979d;
import com.p086c.p087a.p088a.AbstractC0976e;
import java.io.Closeable;

/* renamed from: com.b.a.c */
/* loaded from: classes.dex */
public class C0967c extends C0979d implements Closeable {

    /* renamed from: a */
    private static AbstractC0976e f4997a = AbstractC0976e.m5479a(C0967c.class);

    /* renamed from: a */
    public static byte[] m5452a(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i = 0; i < Math.min(4, str.length()); i++) {
                bArr[i] = (byte) str.charAt(i);
            }
        }
        return bArr;
    }

    @Override // com.p086c.p087a.C0979d, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5025e.close();
    }

    @Override // com.p086c.p087a.C0979d
    public String toString() {
        return "model(" + this.f5025e.toString() + ")";
    }
}
