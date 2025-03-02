package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* renamed from: android.support.v7.widget.e */
/* loaded from: classes.dex */
public class C0699e extends AutoCompleteTextView implements TintableBackgroundView {

    /* renamed from: a */
    private static final int[] f3848a = {R.attr.popupBackground};

    /* renamed from: b */
    private final C0700f f3849b;

    /* renamed from: c */
    private final C0718x f3850c;

    public C0699e(Context context) {
        this(context, null);
    }

    public C0699e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.R.attr.autoCompleteTextViewStyle);
    }

    public C0699e(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        C0687bk m4167a = C0687bk.m4167a(getContext(), attributeSet, f3848a, i, 0);
        if (m4167a.m4186g(0)) {
            setDropDownBackgroundDrawable(m4167a.m4171a(0));
        }
        m4167a.m4172a();
        this.f3849b = new C0700f(this);
        this.f3849b.m4294a(attributeSet, i);
        this.f3850c = new C0718x(this);
        this.f3850c.m4377a(attributeSet, i);
        this.f3850c.m4372a();
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i) {
        setDropDownBackgroundDrawable(C0488a.m2457b(getContext(), i));
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f3849b != null) {
            this.f3849b.m4290a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f3849b != null) {
            this.f3849b.m4293a(drawable);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3849b != null) {
            this.f3849b.m4291a(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f3849b != null) {
            return this.f3849b.m4289a();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3849b != null) {
            this.f3849b.m4292a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f3849b != null) {
            return this.f3849b.m4295b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f3849b != null) {
            this.f3849b.m4297c();
        }
        if (this.f3850c != null) {
            this.f3850c.m4372a();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f3850c != null) {
            this.f3850c.m4376a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0707m.m4339a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }
}
