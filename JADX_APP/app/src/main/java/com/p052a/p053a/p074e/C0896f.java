package com.p052a.p053a.p074e;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import com.p052a.p053a.p074e.InterfaceC0893c;

/* renamed from: com.a.a.e.f */
/* loaded from: classes.dex */
public class C0896f implements InterfaceC0894d {
    @Override // com.p052a.p053a.p074e.InterfaceC0894d
    @NonNull
    /* renamed from: a */
    public InterfaceC0893c mo5129a(@NonNull Context context, @NonNull InterfaceC0893c.a aVar) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0 ? new C0895e(context, aVar) : new C0900j();
    }
}
