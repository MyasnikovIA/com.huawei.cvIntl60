package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.AbstractC0527b;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v7.app.a */
/* loaded from: classes.dex */
public abstract class AbstractC0512a {

    /* renamed from: android.support.v7.app.a$b */
    public interface b {
        /* renamed from: a */
        void m2591a(boolean z);
    }

    @Deprecated
    /* renamed from: android.support.v7.app.a$c */
    public static abstract class c {
        /* renamed from: a */
        public abstract Drawable m2592a();

        /* renamed from: b */
        public abstract CharSequence m2593b();

        /* renamed from: c */
        public abstract View m2594c();

        /* renamed from: d */
        public abstract void m2595d();

        /* renamed from: e */
        public abstract CharSequence m2596e();
    }

    /* renamed from: a */
    public void mo2583a(boolean z) {
    }

    /* renamed from: a */
    public Context mo2579a() {
        return null;
    }

    /* renamed from: b */
    public void mo2585b(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    /* renamed from: a */
    public void mo2581a(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public void mo2587c(boolean z) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: d */
    public void mo2589d(boolean z) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    public void mo2590e(boolean z) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public AbstractC0527b mo2580a(AbstractC0527b.a aVar) {
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: b */
    public boolean mo2586b() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public boolean mo2584a(int i, KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public boolean mo2588c() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void mo2582a(CharSequence charSequence) {
    }

    /* renamed from: android.support.v7.app.a$a */
    public static class a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f2368a;

        public a(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2368a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
            this.f2368a = obtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f2368a = 0;
            this.f2368a = 8388627;
        }

        public a(a aVar) {
            super((ViewGroup.MarginLayoutParams) aVar);
            this.f2368a = 0;
            this.f2368a = aVar.f2368a;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2368a = 0;
        }
    }
}
