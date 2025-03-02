package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.view.menu.InterfaceC0555s;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* renamed from: android.support.v7.widget.w */
/* loaded from: classes.dex */
public class C0717w extends Spinner implements TintableBackgroundView {

    /* renamed from: d */
    private static final int[] f3909d = {R.attr.spinnerMode};

    /* renamed from: a */
    b f3910a;

    /* renamed from: b */
    int f3911b;

    /* renamed from: c */
    final Rect f3912c;

    /* renamed from: e */
    private final C0700f f3913e;

    /* renamed from: f */
    private final Context f3914f;

    /* renamed from: g */
    private AbstractViewOnAttachStateChangeListenerC0663an f3915g;

    /* renamed from: h */
    private SpinnerAdapter f3916h;

    /* renamed from: i */
    private final boolean f3917i;

    public C0717w(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.R.attr.spinnerStyle);
    }

    public C0717w(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public C0717w(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C0717w(android.content.Context r9, android.util.AttributeSet r10, int r11, int r12, android.content.res.Resources.Theme r13) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.C0717w.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: android.support.v7.widget.w$1 */
    class AnonymousClass1 extends AbstractViewOnAttachStateChangeListenerC0663an {

        /* renamed from: a */
        final /* synthetic */ b f3918a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(View view, b bVar) {
            super(view);
            r3 = bVar;
        }

        @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
        /* renamed from: a */
        public InterfaceC0555s mo2777a() {
            return r3;
        }

        @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
        /* renamed from: b */
        public boolean mo2778b() {
            if (!C0717w.this.f3910a.mo2822f()) {
                C0717w.this.f3910a.mo2820d();
                return true;
            }
            return true;
        }
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        if (this.f3910a != null) {
            return this.f3914f;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getPopupContext();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.f3910a != null) {
            this.f3910a.m4017a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(C0488a.m2457b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        if (this.f3910a != null) {
            return this.f3910a.m4031h();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        if (this.f3910a != null) {
            this.f3910a.m4027d(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        if (this.f3910a != null) {
            return this.f3910a.m4036k();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        if (this.f3910a != null) {
            this.f3910a.m4025c(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        if (this.f3910a != null) {
            return this.f3910a.m4035j();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f3910a != null) {
            this.f3911b = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f3910a != null) {
            return this.f3911b;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f3917i) {
            this.f3916h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f3910a != null) {
            this.f3910a.mo4019a(new a(spinnerAdapter, (this.f3914f == null ? getContext() : this.f3914f).getTheme()));
        }
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3910a != null && this.f3910a.mo2822f()) {
            this.f3910a.mo2821e();
        }
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f3915g == null || !this.f3915g.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3910a != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m4362a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        if (this.f3910a == null) {
            return super.performClick();
        }
        if (!this.f3910a.mo2822f()) {
            this.f3910a.mo2820d();
        }
        return true;
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        if (this.f3910a != null) {
            this.f3910a.m4365a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        return this.f3910a != null ? this.f3910a.m4364a() : super.getPrompt();
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f3913e != null) {
            this.f3913e.m4290a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f3913e != null) {
            this.f3913e.m4293a(drawable);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3913e != null) {
            this.f3913e.m4291a(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f3913e != null) {
            return this.f3913e.m4289a();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f3913e != null) {
            this.f3913e.m4292a(mode);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f3913e != null) {
            return this.f3913e.m4295b();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f3913e != null) {
            this.f3913e.m4297c();
        }
    }

    /* renamed from: a */
    int m4362a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        int i = 0;
        View view = null;
        int i2 = 0;
        while (max2 < min) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
            } else {
                itemViewType = i;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            max2++;
            i = itemViewType;
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.f3912c);
        return this.f3912c.left + this.f3912c.right + i2;
    }

    /* renamed from: android.support.v7.widget.w$a */
    private static class a implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        private SpinnerAdapter f3920a;

        /* renamed from: b */
        private ListAdapter f3921b;

        public a(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.f3920a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f3921b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof InterfaceC0683bg) {
                    InterfaceC0683bg interfaceC0683bg = (InterfaceC0683bg) spinnerAdapter;
                    if (interfaceC0683bg.m4160a() == null) {
                        interfaceC0683bg.m4161a(theme);
                    }
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.f3920a == null) {
                return 0;
            }
            return this.f3920a.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.f3920a == null) {
                return null;
            }
            return this.f3920a.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (this.f3920a == null) {
                return -1L;
            }
            return this.f3920a.getItemId(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.f3920a == null) {
                return null;
            }
            return this.f3920a.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.f3920a != null && this.f3920a.hasStableIds();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f3920a != null) {
                this.f3920a.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f3920a != null) {
                this.f3920a.unregisterDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f3921b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f3921b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }
    }

    /* renamed from: android.support.v7.widget.w$b */
    private class b extends C0667ar {

        /* renamed from: a */
        ListAdapter f3922a;

        /* renamed from: h */
        private CharSequence f3924h;

        /* renamed from: i */
        private final Rect f3925i;

        public b(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f3925i = new Rect();
            m4023b(C0717w.this);
            m4021a(true);
            m4015a(0);
            m4018a(new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.w.b.1

                /* renamed from: a */
                final /* synthetic */ C0717w f3926a;

                AnonymousClass1(C0717w c0717w) {
                    r2 = c0717w;
                }

                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    C0717w.this.setSelection(i2);
                    if (C0717w.this.getOnItemClickListener() != null) {
                        C0717w.this.performItemClick(view, i2, b.this.f3922a.getItemId(i2));
                    }
                    b.this.mo2821e();
                }
            });
        }

        /* renamed from: android.support.v7.widget.w$b$1 */
        class AnonymousClass1 implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            final /* synthetic */ C0717w f3926a;

            AnonymousClass1(C0717w c0717w) {
                r2 = c0717w;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                C0717w.this.setSelection(i2);
                if (C0717w.this.getOnItemClickListener() != null) {
                    C0717w.this.performItemClick(view, i2, b.this.f3922a.getItemId(i2));
                }
                b.this.mo2821e();
            }
        }

        @Override // android.support.v7.widget.C0667ar
        /* renamed from: a */
        public void mo4019a(ListAdapter listAdapter) {
            super.mo4019a(listAdapter);
            this.f3922a = listAdapter;
        }

        /* renamed from: a */
        public CharSequence m4364a() {
            return this.f3924h;
        }

        /* renamed from: a */
        public void m4365a(CharSequence charSequence) {
            this.f3924h = charSequence;
        }

        /* renamed from: b */
        void m4367b() {
            int i;
            int i2;
            Drawable h = m4031h();
            if (h != null) {
                h.getPadding(C0717w.this.f3912c);
                i = C0695bs.m4245a(C0717w.this) ? C0717w.this.f3912c.right : -C0717w.this.f3912c.left;
            } else {
                Rect rect = C0717w.this.f3912c;
                C0717w.this.f3912c.right = 0;
                rect.left = 0;
                i = 0;
            }
            int paddingLeft = C0717w.this.getPaddingLeft();
            int paddingRight = C0717w.this.getPaddingRight();
            int width = C0717w.this.getWidth();
            if (C0717w.this.f3911b == -2) {
                int m4362a = C0717w.this.m4362a((SpinnerAdapter) this.f3922a, m4031h());
                int i3 = (C0717w.this.getContext().getResources().getDisplayMetrics().widthPixels - C0717w.this.f3912c.left) - C0717w.this.f3912c.right;
                if (m4362a <= i3) {
                    i3 = m4362a;
                }
                m4030g(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (C0717w.this.f3911b == -1) {
                m4030g((width - paddingLeft) - paddingRight);
            } else {
                m4030g(C0717w.this.f3911b);
            }
            if (C0695bs.m4245a(C0717w.this)) {
                i2 = ((width - paddingRight) - m4037l()) + i;
            } else {
                i2 = i + paddingLeft;
            }
            m4025c(i2);
        }

        @Override // android.support.v7.widget.C0667ar, android.support.v7.view.menu.InterfaceC0555s
        /* renamed from: d */
        public void mo2820d() {
            ViewTreeObserver viewTreeObserver;
            boolean f = mo2822f();
            m4367b();
            m4032h(2);
            super.mo2820d();
            mo2823g().setChoiceMode(1);
            m4034i(C0717w.this.getSelectedItemPosition());
            if (!f && (viewTreeObserver = C0717w.this.getViewTreeObserver()) != null) {
                AnonymousClass2 anonymousClass2 = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.w.b.2
                    AnonymousClass2() {
                    }

                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        if (!b.this.m4366a(C0717w.this)) {
                            b.this.mo2821e();
                        } else {
                            b.this.m4367b();
                            b.super.mo2820d();
                        }
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(anonymousClass2);
                m4020a(new PopupWindow.OnDismissListener() { // from class: android.support.v7.widget.w.b.3

                    /* renamed from: a */
                    final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f3929a;

                    AnonymousClass3(ViewTreeObserver.OnGlobalLayoutListener anonymousClass22) {
                        onGlobalLayoutListener = anonymousClass22;
                    }

                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        ViewTreeObserver viewTreeObserver2 = C0717w.this.getViewTreeObserver();
                        if (viewTreeObserver2 != null) {
                            viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        }

        /* renamed from: android.support.v7.widget.w$b$2 */
        class AnonymousClass2 implements ViewTreeObserver.OnGlobalLayoutListener {
            AnonymousClass2() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!b.this.m4366a(C0717w.this)) {
                    b.this.mo2821e();
                } else {
                    b.this.m4367b();
                    b.super.mo2820d();
                }
            }
        }

        /* renamed from: android.support.v7.widget.w$b$3 */
        class AnonymousClass3 implements PopupWindow.OnDismissListener {

            /* renamed from: a */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f3929a;

            AnonymousClass3(ViewTreeObserver.OnGlobalLayoutListener anonymousClass22) {
                onGlobalLayoutListener = anonymousClass22;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver2 = C0717w.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                }
            }
        }

        /* renamed from: a */
        boolean m4366a(View view) {
            return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.f3925i);
        }
    }
}
