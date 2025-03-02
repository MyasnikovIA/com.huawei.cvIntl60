package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.v4.text.PrecomputedTextCompat;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.widget.AutoSizeableTextView;
import android.support.v4.widget.TextViewCompat;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* renamed from: android.support.v7.widget.y */
/* loaded from: classes.dex */
public class C0719y extends TextView implements TintableBackgroundView, AutoSizeableTextView {

    /* renamed from: a */
    private final C0700f f3944a;

    /* renamed from: b */
    private final C0718x f3945b;

    /* renamed from: c */
    @Nullable
    private Future<PrecomputedTextCompat> f3946c;

    public C0719y(Context context) {
        this(context, null);
    }

    public C0719y(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public C0719y(Context context, AttributeSet attributeSet, int i) {
        super(C0684bh.m4162a(context), attributeSet, i);
        this.f3944a = new C0700f(this);
        this.f3944a.m4294a(attributeSet, i);
        this.f3945b = new C0718x(this);
        this.f3945b.m4377a(attributeSet, i);
        this.f3945b.m4372a();
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f3944a != null) {
            this.f3944a.m4290a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f3944a != null) {
            this.f3944a.m4293a(drawable);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3944a != null) {
            this.f3944a.m4291a(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f3944a != null) {
            return this.f3944a.m4289a();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3944a != null) {
            this.f3944a.m4292a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f3944a != null) {
            return this.f3944a.m4295b();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f3945b != null) {
            this.f3945b.m4376a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f3944a != null) {
            this.f3944a.m4297c();
        }
        if (this.f3945b != null) {
            this.f3945b.m4372a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f3945b != null) {
            this.f3945b.m4380a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setTextSize(i, f);
        } else if (this.f3945b != null) {
            this.f3945b.m4374a(i, f);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f3945b != null && !PLATFORM_SUPPORTS_AUTOSIZE && this.f3945b.m4383c()) {
            this.f3945b.m4382b();
        }
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else if (this.f3945b != null) {
            this.f3945b.m4373a(i);
        }
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (this.f3945b != null) {
            this.f3945b.m4375a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (this.f3945b != null) {
            this.f3945b.m4381a(iArr, i);
        }
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeTextType() {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        if (this.f3945b != null) {
            return this.f3945b.m4384d();
        }
        return 0;
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeStepGranularity() {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeStepGranularity();
        }
        if (this.f3945b != null) {
            return this.f3945b.m4385e();
        }
        return -1;
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeMinTextSize() {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeMinTextSize();
        }
        if (this.f3945b != null) {
            return this.f3945b.m4386f();
        }
        return -1;
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeMaxTextSize() {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeMaxTextSize();
        }
        if (this.f3945b != null) {
            return this.f3945b.m4387g();
        }
        return -1;
    }

    @Override // android.widget.TextView, android.support.v4.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int[] getAutoSizeTextAvailableSizes() {
        if (PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeTextAvailableSizes();
        }
        if (this.f3945b != null) {
            return this.f3945b.m4388h();
        }
        return new int[0];
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0707m.m4339a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@IntRange(from = 0) @Px int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            TextViewCompat.setFirstBaselineToTopHeight(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@IntRange(from = 0) @Px int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            TextViewCompat.setLastBaselineToBottomHeight(this, i);
        }
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.getFirstBaselineToTopHeight(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.getLastBaselineToBottomHeight(this);
    }

    @Override // android.widget.TextView
    public void setLineHeight(@IntRange(from = 0) @Px int i) {
        TextViewCompat.setLineHeight(this, i);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @NonNull
    public PrecomputedTextCompat.Params getTextMetricsParamsCompat() {
        return TextViewCompat.getTextMetricsParams(this);
    }

    public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.Params params) {
        TextViewCompat.setTextMetricsParams(this, params);
    }

    public void setPrecomputedText(@NonNull PrecomputedTextCompat precomputedTextCompat) {
        TextViewCompat.setPrecomputedText(this, precomputedTextCompat);
    }

    /* renamed from: a */
    private void m4389a() {
        if (this.f3946c != null) {
            try {
                Future<PrecomputedTextCompat> future = this.f3946c;
                this.f3946c = null;
                TextViewCompat.setPrecomputedText(this, future.get());
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            }
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m4389a();
        return super.getText();
    }

    public void setTextFuture(@NonNull Future<PrecomputedTextCompat> future) {
        this.f3946c = future;
        requestLayout();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        m4389a();
        super.onMeasure(i, i2);
    }
}
