package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* renamed from: android.support.v7.widget.i */
/* loaded from: classes.dex */
public class C0703i extends CheckedTextView {

    /* renamed from: a */
    private static final int[] f3860a = {R.attr.checkMark};

    /* renamed from: b */
    private final C0718x f3861b;

    public C0703i(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public C0703i(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        this.f3861b = new C0718x(this);
        this.f3861b.m4377a(attributeSet, i);
        this.f3861b.m4372a();
        C0687bk m4167a = C0687bk.m4167a(getContext(), attributeSet, f3860a, i, 0);
        setCheckMarkDrawable(m4167a.m4171a(0));
        m4167a.m4172a();
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i) {
        setCheckMarkDrawable(C0488a.m2457b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f3861b != null) {
            this.f3861b.m4376a(context, i);
        }
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f3861b != null) {
            this.f3861b.m4372a();
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
