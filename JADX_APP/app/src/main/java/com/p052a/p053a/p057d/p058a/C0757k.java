package com.p052a.p053a.p057d.p058a;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;
import java.io.InputStream;

/* renamed from: com.a.a.d.a.k */
/* loaded from: classes.dex */
public class C0757k extends AbstractC0742a<InputStream> {
    public C0757k(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0742a
    /* renamed from: b */
    public InputStream mo4608a(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0742a
    /* renamed from: a */
    public void mo4611a(InputStream inputStream) {
        inputStream.close();
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<InputStream> mo4626d() {
        return InputStream.class;
    }
}
