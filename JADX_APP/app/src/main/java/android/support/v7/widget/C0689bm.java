package android.support.v7.widget;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

/* renamed from: android.support.v7.widget.bm */
/* loaded from: classes.dex */
public class C0689bm {
    /* renamed from: a */
    public static void m4200a(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            ViewOnAttachStateChangeListenerC0690bn.m4202a(view, charSequence);
        }
    }
}
