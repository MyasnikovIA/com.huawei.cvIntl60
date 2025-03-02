package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.InterfaceC0552p;
import android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.C0689bm;
import android.support.v7.widget.C0719y;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActionMenuItemView extends C0719y implements InterfaceC0552p.a, ActionMenuView.InterfaceC0572a, View.OnClickListener {

    /* renamed from: a */
    C0546j f2591a;

    /* renamed from: b */
    C0544h.b f2592b;

    /* renamed from: c */
    AbstractC0536b f2593c;

    /* renamed from: d */
    private CharSequence f2594d;

    /* renamed from: e */
    private Drawable f2595e;

    /* renamed from: f */
    private AbstractViewOnAttachStateChangeListenerC0663an f2596f;

    /* renamed from: g */
    private boolean f2597g;

    /* renamed from: h */
    private boolean f2598h;

    /* renamed from: i */
    private int f2599i;

    /* renamed from: j */
    private int f2600j;

    /* renamed from: k */
    private int f2601k;

    /* renamed from: android.support.v7.view.menu.ActionMenuItemView$b */
    public static abstract class AbstractC0536b {
        /* renamed from: a */
        public abstract InterfaceC0555s mo2779a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f2597g = m2772e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i, 0);
        this.f2599i = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f2601k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f2600j = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2597g = m2772e();
        m2773f();
    }

    /* renamed from: e */
    private boolean m2772e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f2600j = i;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    public C0546j getItemData() {
        return this.f2591a;
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public void mo1556a(C0546j c0546j, int i) {
        this.f2591a = c0546j;
        setIcon(c0546j.getIcon());
        setTitle(c0546j.m2903a((InterfaceC0552p.a) this));
        setId(c0546j.getItemId());
        setVisibility(c0546j.isVisible() ? 0 : 8);
        setEnabled(c0546j.isEnabled());
        if (c0546j.hasSubMenu() && this.f2596f == null) {
            this.f2596f = new C0535a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f2591a.hasSubMenu() && this.f2596f != null && this.f2596f.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f2592b != null) {
            this.f2592b.mo2780a(this.f2591a);
        }
    }

    public void setItemInvoker(C0544h.b bVar) {
        this.f2592b = bVar;
    }

    public void setPopupCallback(AbstractC0536b abstractC0536b) {
        this.f2593c = abstractC0536b;
    }

    @Override // android.support.v7.view.menu.InterfaceC0552p.a
    /* renamed from: a */
    public boolean mo1557a() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f2598h != z) {
            this.f2598h = z;
            if (this.f2591a != null) {
                this.f2591a.m2918g();
            }
        }
    }

    /* renamed from: f */
    private void m2773f() {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(this.f2594d);
        if (this.f2595e == null || (this.f2591a.m2923l() && (this.f2597g || this.f2598h))) {
            z = true;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f2594d : null);
        CharSequence contentDescription = this.f2591a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.f2591a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f2591a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            C0689bm.m4200a(this, z3 ? null : this.f2591a.getTitle());
        } else {
            C0689bm.m4200a(this, tooltipText);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f2595e = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.f2601k) {
                float f = this.f2601k / intrinsicWidth;
                intrinsicWidth = this.f2601k;
                intrinsicHeight = (int) (intrinsicHeight * f);
            }
            if (intrinsicHeight > this.f2601k) {
                float f2 = this.f2601k / intrinsicHeight;
                intrinsicHeight = this.f2601k;
                intrinsicWidth = (int) (intrinsicWidth * f2);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        m2773f();
    }

    /* renamed from: b */
    public boolean m2774b() {
        return !TextUtils.isEmpty(getText());
    }

    public void setTitle(CharSequence charSequence) {
        this.f2594d = charSequence;
        m2773f();
    }

    @Override // android.support.v7.widget.ActionMenuView.InterfaceC0572a
    /* renamed from: c */
    public boolean mo2775c() {
        return m2774b() && this.f2591a.getIcon() == null;
    }

    @Override // android.support.v7.widget.ActionMenuView.InterfaceC0572a
    /* renamed from: d */
    public boolean mo2776d() {
        return m2774b();
    }

    @Override // android.support.v7.widget.C0719y, android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean m2774b = m2774b();
        if (m2774b && this.f2600j >= 0) {
            super.setPadding(this.f2600j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f2599i) : this.f2599i;
        if (mode != 1073741824 && this.f2599i > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, C1167C.ENCODING_PCM_32BIT), i2);
        }
        if (!m2774b && this.f2595e != null) {
            super.setPadding((getMeasuredWidth() - this.f2595e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    /* renamed from: android.support.v7.view.menu.ActionMenuItemView$a */
    private class C0535a extends AbstractViewOnAttachStateChangeListenerC0663an {
        public C0535a() {
            super(ActionMenuItemView.this);
        }

        @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
        /* renamed from: a */
        public InterfaceC0555s mo2777a() {
            if (ActionMenuItemView.this.f2593c != null) {
                return ActionMenuItemView.this.f2593c.mo2779a();
            }
            return null;
        }

        @Override // android.support.v7.widget.AbstractViewOnAttachStateChangeListenerC0663an
        /* renamed from: b */
        protected boolean mo2778b() {
            InterfaceC0555s mo2777a;
            return ActionMenuItemView.this.f2592b != null && ActionMenuItemView.this.f2592b.mo2780a(ActionMenuItemView.this.f2591a) && (mo2777a = mo2777a()) != null && mo2777a.mo2822f();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }
}
