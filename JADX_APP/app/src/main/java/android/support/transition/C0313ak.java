package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.WindowId;

@RequiresApi(18)
/* renamed from: android.support.transition.ak */
/* loaded from: classes.dex */
class C0313ak implements InterfaceC0314al {

    /* renamed from: a */
    private final WindowId f2007a;

    C0313ak(@NonNull View view) {
        this.f2007a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0313ak) && ((C0313ak) obj).f2007a.equals(this.f2007a);
    }

    public int hashCode() {
        return this.f2007a.hashCode();
    }
}
