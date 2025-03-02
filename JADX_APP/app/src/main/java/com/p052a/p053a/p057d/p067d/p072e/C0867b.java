package com.p052a.p053a.p057d.p067d.p072e;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;

/* renamed from: com.a.a.d.d.e.b */
/* loaded from: classes.dex */
public final class C0867b implements InterfaceC0730a.a {

    /* renamed from: a */
    private final InterfaceC0765e f4680a;

    /* renamed from: b */
    @Nullable
    private final InterfaceC0762b f4681b;

    public C0867b(InterfaceC0765e interfaceC0765e, InterfaceC0762b interfaceC0762b) {
        this.f4680a = interfaceC0765e;
        this.f4681b = interfaceC0762b;
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    @NonNull
    /* renamed from: a */
    public Bitmap mo4513a(int i, int i2, Bitmap.Config config) {
        return this.f4680a.mo4680b(i, i2, config);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    /* renamed from: a */
    public void mo4514a(Bitmap bitmap) {
        this.f4680a.mo4679a(bitmap);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    /* renamed from: a */
    public byte[] mo4517a(int i) {
        return this.f4681b == null ? new byte[i] : (byte[]) this.f4681b.mo4657a(i, byte[].class);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    /* renamed from: a */
    public void mo4515a(byte[] bArr) {
        if (this.f4681b != null) {
            this.f4681b.mo4660a((InterfaceC0762b) bArr, (Class<InterfaceC0762b>) byte[].class);
        }
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    /* renamed from: b */
    public int[] mo4518b(int i) {
        return this.f4681b == null ? new int[i] : (int[]) this.f4681b.mo4657a(i, int[].class);
    }

    @Override // com.p052a.p053a.p055b.InterfaceC0730a.a
    /* renamed from: a */
    public void mo4516a(int[] iArr) {
        if (this.f4681b != null) {
            this.f4681b.mo4660a((InterfaceC0762b) iArr, (Class<InterfaceC0762b>) int[].class);
        }
    }
}
