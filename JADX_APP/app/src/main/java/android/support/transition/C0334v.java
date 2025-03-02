package android.support.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

@RequiresApi(18)
/* renamed from: android.support.transition.v */
/* loaded from: classes.dex */
class C0334v implements InterfaceC0335w {

    /* renamed from: a */
    private final ViewGroupOverlay f2141a;

    C0334v(@NonNull ViewGroup viewGroup) {
        this.f2141a = viewGroup.getOverlay();
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: a */
    public void mo2285a(@NonNull Drawable drawable) {
        this.f2141a.add(drawable);
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: b */
    public void mo2286b(@NonNull Drawable drawable) {
        this.f2141a.remove(drawable);
    }

    @Override // android.support.transition.InterfaceC0335w
    /* renamed from: a */
    public void mo2440a(@NonNull View view) {
        this.f2141a.add(view);
    }

    @Override // android.support.transition.InterfaceC0335w
    /* renamed from: b */
    public void mo2441b(@NonNull View view) {
        this.f2141a.remove(view);
    }
}
