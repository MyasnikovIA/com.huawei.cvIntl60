package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* renamed from: android.support.v7.widget.m */
/* loaded from: classes.dex */
class C0707m {
    /* renamed from: a */
    static InputConnection m4339a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                }
                if (parent instanceof InterfaceC0696bt) {
                    editorInfo.hintText = ((InterfaceC0696bt) parent).m4247a();
                    break;
                }
                parent = parent.getParent();
            }
        }
        return inputConnection;
    }
}
