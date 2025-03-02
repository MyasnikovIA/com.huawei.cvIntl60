package android.support.design.theme;

import android.content.Context;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.design.p039b.C0165a;
import android.support.v7.app.AppCompatViewInflater;
import android.support.v7.widget.C0701g;
import android.util.AttributeSet;

@Keep
/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    @Override // android.support.v7.app.AppCompatViewInflater
    @NonNull
    protected C0701g createButton(Context context, AttributeSet attributeSet) {
        return new C0165a(context, attributeSet);
    }
}
