package com.p052a.p053a.p077h.p078a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* renamed from: com.a.a.h.a.e */
/* loaded from: classes.dex */
public class C0927e {
    /* renamed from: a */
    public <Z> InterfaceC0930h<Z> m5238a(ImageView imageView, Class<Z> cls) {
        if (Bitmap.class.equals(cls)) {
            return new C0924b(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new C0925c(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
