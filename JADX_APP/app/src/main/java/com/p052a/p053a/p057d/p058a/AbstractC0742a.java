package com.p052a.p053a.p057d.p058a;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import java.io.IOException;

/* renamed from: com.a.a.d.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC0742a<T> implements InterfaceC0748b<T> {

    /* renamed from: a */
    private final String f4157a;

    /* renamed from: b */
    private final AssetManager f4158b;

    /* renamed from: c */
    private T f4159c;

    /* renamed from: a */
    protected abstract T mo4608a(AssetManager assetManager, String str);

    /* renamed from: a */
    protected abstract void mo4611a(T t);

    public AbstractC0742a(AssetManager assetManager, String str) {
        this.f4158b = assetManager;
        this.f4157a = str;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super T> aVar) {
        try {
            this.f4159c = mo4608a(this.f4158b, this.f4157a);
            aVar.mo4631a((InterfaceC0748b.a<? super T>) this.f4159c);
        } catch (IOException e) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
            }
            aVar.mo4630a((Exception) e);
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4609a() {
        if (this.f4159c != null) {
            try {
                mo4611a(this.f4159c);
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
