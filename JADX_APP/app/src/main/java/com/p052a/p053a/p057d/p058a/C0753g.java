package com.p052a.p053a.p057d.p058a;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;

/* renamed from: com.a.a.d.a.g */
/* loaded from: classes.dex */
public class C0753g extends AbstractC0756j<ParcelFileDescriptor> {
    public C0753g(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0756j
    /* renamed from: a */
    public ParcelFileDescriptor mo4641b(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor == null) {
            throw new FileNotFoundException("FileDescriptor is null for: " + uri);
        }
        return openAssetFileDescriptor.getParcelFileDescriptor();
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0756j
    /* renamed from: a */
    public void mo4640a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<ParcelFileDescriptor> mo4626d() {
        return ParcelFileDescriptor.class;
    }
}
