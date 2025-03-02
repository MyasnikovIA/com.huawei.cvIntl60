package android.support.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewOverlay;

@RequiresApi(18)
/* renamed from: android.support.transition.ab */
/* loaded from: classes.dex */
class C0304ab implements InterfaceC0305ac {

    /* renamed from: a */
    private final ViewOverlay f1973a;

    C0304ab(@NonNull View view) {
        this.f1973a = view.getOverlay();
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: a */
    public void mo2285a(@NonNull Drawable drawable) {
        this.f1973a.add(drawable);
    }

    @Override // android.support.transition.InterfaceC0305ac
    /* renamed from: b */
    public void mo2286b(@NonNull Drawable drawable) {
        this.f1973a.remove(drawable);
    }
}
