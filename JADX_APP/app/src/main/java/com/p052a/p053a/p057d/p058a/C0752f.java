package com.p052a.p053a.p057d.p058a;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;

/* renamed from: com.a.a.d.a.f */
/* loaded from: classes.dex */
public class C0752f extends AbstractC0742a<ParcelFileDescriptor> {
    public C0752f(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0742a
    /* renamed from: b */
    public ParcelFileDescriptor mo4608a(AssetManager assetManager, String str) {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0742a
    /* renamed from: a */
    public void mo4611a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<ParcelFileDescriptor> mo4626d() {
        return ParcelFileDescriptor.class;
    }
}
