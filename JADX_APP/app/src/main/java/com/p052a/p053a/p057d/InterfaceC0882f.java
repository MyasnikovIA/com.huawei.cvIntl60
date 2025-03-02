package com.p052a.p053a.p057d;

import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.f */
/* loaded from: classes.dex */
public interface InterfaceC0882f {
    /* renamed from: a */
    int mo4987a(InputStream inputStream, InterfaceC0762b interfaceC0762b);

    /* renamed from: a */
    a mo4988a(InputStream inputStream);

    /* renamed from: a */
    a mo4989a(ByteBuffer byteBuffer);

    /* renamed from: com.a.a.d.f$a */
    public enum a {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);


        /* renamed from: i */
        private final boolean f4738i;

        a(boolean z) {
            this.f4738i = z;
        }

        /* renamed from: a */
        public boolean m5102a() {
            return this.f4738i;
        }
    }
}
