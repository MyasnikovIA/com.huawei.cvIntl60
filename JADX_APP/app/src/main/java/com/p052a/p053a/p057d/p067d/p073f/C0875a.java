package com.p052a.p053a.p057d.p067d.p073f;

import android.graphics.Bitmap;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p067d.p069b.C0862b;
import java.io.ByteArrayOutputStream;

/* renamed from: com.a.a.d.d.f.a */
/* loaded from: classes.dex */
public class C0875a implements InterfaceC0878d<Bitmap, byte[]> {

    /* renamed from: a */
    private final Bitmap.CompressFormat f4719a;

    /* renamed from: b */
    private final int f4720b;

    public C0875a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public C0875a(Bitmap.CompressFormat compressFormat, int i) {
        this.f4719a = compressFormat;
        this.f4720b = i;
    }

    @Override // com.p052a.p053a.p057d.p067d.p073f.InterfaceC0878d
    /* renamed from: a */
    public InterfaceC0804s<byte[]> mo5096a(InterfaceC0804s<Bitmap> interfaceC0804s, C0886j c0886j) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        interfaceC0804s.mo4880c().compress(this.f4719a, this.f4720b, byteArrayOutputStream);
        interfaceC0804s.mo4882e();
        return new C0862b(byteArrayOutputStream.toByteArray());
    }
}
