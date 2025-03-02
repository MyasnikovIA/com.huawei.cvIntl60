package com.p083b.p084a;

import com.google.android.exoplayer.C1167C;
import java.io.UnsupportedEncodingException;

/* renamed from: com.b.a.f */
/* loaded from: classes.dex */
public final class C0970f {
    /* renamed from: a */
    public static byte[] m5466a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(C1167C.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            throw new Error(e);
        }
    }

    /* renamed from: a */
    public static String m5465a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, C1167C.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            throw new Error(e);
        }
    }

    /* renamed from: b */
    public static int m5467b(String str) {
        if (str == null) {
            return 0;
        }
        try {
            return str.getBytes(C1167C.UTF8_NAME).length;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException();
        }
    }
}
