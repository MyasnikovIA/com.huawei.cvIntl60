package com.p052a.p053a.p057d.p058a;

import android.content.ContentResolver;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.a.a.d.a.j */
/* loaded from: classes.dex */
public abstract class AbstractC0756j<T> implements InterfaceC0748b<T> {

    /* renamed from: a */
    private final Uri f4190a;

    /* renamed from: b */
    private final ContentResolver f4191b;

    /* renamed from: c */
    private T f4192c;

    /* renamed from: a */
    protected abstract void mo4640a(T t);

    /* renamed from: b */
    protected abstract T mo4641b(Uri uri, ContentResolver contentResolver);

    public AbstractC0756j(ContentResolver contentResolver, Uri uri) {
        this.f4191b = contentResolver;
        this.f4190a = uri;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public final void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super T> aVar) {
        try {
            this.f4192c = mo4641b(this.f4190a, this.f4191b);
            aVar.mo4631a((InterfaceC0748b.a<? super T>) this.f4192c);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e);
            }
            aVar.mo4630a((Exception) e);
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4609a() {
        if (this.f4192c != null) {
            try {
                mo4640a(this.f4192c);
            } catch (IOException e) {
            }
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: b */
    public void mo4612b() {
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: c */
    public EnumC0741a mo4613c() {
        return EnumC0741a.LOCAL;
    }
}
