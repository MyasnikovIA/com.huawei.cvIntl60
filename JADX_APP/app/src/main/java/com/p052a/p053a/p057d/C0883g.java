package com.p052a.p053a.p057d;

import android.support.annotation.Nullable;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p067d.p068a.C0856p;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.d.g */
/* loaded from: classes.dex */
public final class C0883g {
    /* renamed from: a */
    public static InterfaceC0882f.a m5103a(List<InterfaceC0882f> list, @Nullable InputStream inputStream, InterfaceC0762b interfaceC0762b) {
        if (inputStream == null) {
            return InterfaceC0882f.a.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C0856p(inputStream, interfaceC0762b);
        }
        inputStream.mark(5242880);
        Iterator<InterfaceC0882f> it = list.iterator();
        while (it.hasNext()) {
            try {
                InterfaceC0882f.a mo4988a = it.next().mo4988a(inputStream);
                if (mo4988a != InterfaceC0882f.a.UNKNOWN) {
                    return mo4988a;
                }
            } finally {
                inputStream.reset();
            }
        }
        return InterfaceC0882f.a.UNKNOWN;
    }

    /* renamed from: a */
    public static InterfaceC0882f.a m5104a(List<InterfaceC0882f> list, @Nullable ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return InterfaceC0882f.a.UNKNOWN;
        }
        Iterator<InterfaceC0882f> it = list.iterator();
        while (it.hasNext()) {
            InterfaceC0882f.a mo4989a = it.next().mo4989a(byteBuffer);
            if (mo4989a != InterfaceC0882f.a.UNKNOWN) {
                return mo4989a;
            }
        }
        return InterfaceC0882f.a.UNKNOWN;
    }

    /* renamed from: b */
    public static int m5105b(List<InterfaceC0882f> list, @Nullable InputStream inputStream, InterfaceC0762b interfaceC0762b) {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C0856p(inputStream, interfaceC0762b);
        }
        inputStream.mark(5242880);
        Iterator<InterfaceC0882f> it = list.iterator();
        while (it.hasNext()) {
            try {
                int mo4987a = it.next().mo4987a(inputStream, interfaceC0762b);
                if (mo4987a != -1) {
                    return mo4987a;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }
}
