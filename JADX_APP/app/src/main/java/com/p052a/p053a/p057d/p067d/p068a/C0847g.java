package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p081j.C0945a;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.d.a.g */
/* loaded from: classes.dex */
public class C0847g implements InterfaceC0887k<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C0852l f4605a;

    public C0847g(C0852l c0852l) {
        this.f4605a = c0852l;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(ByteBuffer byteBuffer, C0886j c0886j) {
        return this.f4605a.m5022a(byteBuffer);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<Bitmap> mo4969a(ByteBuffer byteBuffer, int i, int i2, C0886j c0886j) {
        return this.f4605a.m5019a(C0945a.m5375b(byteBuffer), i, i2, c0886j);
    }
}
