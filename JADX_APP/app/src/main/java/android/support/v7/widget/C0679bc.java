package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.app.AbstractC0512a;
import android.support.v7.appcompat.R;
import android.support.v7.view.C0526a;
import android.support.v7.widget.C0666aq;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.bc */
/* loaded from: classes.dex */
public class C0679bc extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: j */
    private static final Interpolator f3693j = new DecelerateInterpolator();

    /* renamed from: a */
    Runnable f3694a;

    /* renamed from: b */
    C0666aq f3695b;

    /* renamed from: c */
    int f3696c;

    /* renamed from: d */
    int f3697d;

    /* renamed from: e */
    private b f3698e;

    /* renamed from: f */
    private Spinner f3699f;

    /* renamed from: g */
    private boolean f3700g;

    /* renamed from: h */
    private int f3701h;

    /* renamed from: i */
    private int f3702i;

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f3695b.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.f3696c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f3696c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f3696c = Math.min(this.f3696c, this.f3697d);
        } else {
            this.f3696c = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f3701h, C1167C.ENCODING_PCM_32BIT);
        if (!z && this.f3700g) {
            this.f3695b.measure(0, makeMeasureSpec);
            if (this.f3695b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m4113b();
            } else {
                m4114c();
            }
        } else {
            m4114c();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z && measuredWidth != measuredWidth2) {
            setTabSelected(this.f3702i);
        }
    }

    /* renamed from: a */
    private boolean m4112a() {
        return this.f3699f != null && this.f3699f.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.f3700g = z;
    }

    /* renamed from: b */
    private void m4113b() {
        if (!m4112a()) {
            if (this.f3699f == null) {
                this.f3699f = m4115d();
            }
            removeView(this.f3695b);
            addView(this.f3699f, new ViewGroup.LayoutParams(-2, -1));
            if (this.f3699f.getAdapter() == null) {
                this.f3699f.setAdapter((SpinnerAdapter) new a());
            }
            if (this.f3694a != null) {
                removeCallbacks(this.f3694a);
                this.f3694a = null;
            }
            this.f3699f.setSelection(this.f3702i);
        }
    }

    /* renamed from: c */
    private boolean m4114c() {
        if (m4112a()) {
            removeView(this.f3699f);
            addView(this.f3695b, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.f3699f.getSelectedItemPosition());
        }
        return false;
    }

    public void setTabSelected(int i) {
        this.f3702i = i;
        int childCount = this.f3695b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f3695b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m4117a(i);
            }
            i2++;
        }
        if (this.f3699f != null && i >= 0) {
            this.f3699f.setSelection(i);
        }
    }

    public void setContentHeight(int i) {
        this.f3701h = i;
        requestLayout();
    }

    /* renamed from: d */
    private Spinner m4115d() {
        C0717w c0717w = new C0717w(getContext(), null, R.attr.actionDropDownStyle);
        c0717w.setLayoutParams(new C0666aq.a(-2, -1));
        c0717w.setOnItemSelectedListener(this);
        return c0717w;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0526a m2732a = C0526a.m2732a(getContext());
        setContentHeight(m2732a.m2737e());
        this.f3697d = m2732a.m2739g();
    }

    /* renamed from: a */
    public void m4117a(int i) {
        View childAt = this.f3695b.getChildAt(i);
        if (this.f3694a != null) {
            removeCallbacks(this.f3694a);
        }
        this.f3694a = new Runnable() { // from class: android.support.v7.widget.bc.1

            /* renamed from: a */
            final /* synthetic */ View f3703a;

            AnonymousClass1(View childAt2) {
                childAt = childAt2;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0679bc.this.smoothScrollTo(childAt.getLeft() - ((C0679bc.this.getWidth() - childAt.getWidth()) / 2), 0);
                C0679bc.this.f3694a = null;
            }
        };
        post(this.f3694a);
    }

    /* renamed from: android.support.v7.widget.bc$1 */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f3703a;

        AnonymousClass1(View childAt2) {
            childAt = childAt2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0679bc.this.smoothScrollTo(childAt.getLeft() - ((C0679bc.this.getWidth() - childAt.getWidth()) / 2), 0);
            C0679bc.this.f3694a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f3694a != null) {
            post(this.f3694a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3694a != null) {
            removeCallbacks(this.f3694a);
        }
    }

    /* renamed from: a */
    c m4116a(AbstractC0512a.c cVar, boolean z) {
        c cVar2 = new c(getContext(), cVar, z);
        if (z) {
            cVar2.setBackgroundDrawable(null);
            cVar2.setLayoutParams(new AbsListView.LayoutParams(-1, this.f3701h));
        } else {
            cVar2.setFocusable(true);
            if (this.f3698e == null) {
                this.f3698e = new b();
            }
            cVar2.setOnClickListener(this.f3698e);
        }
        return cVar2;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((c) view).m4120b().m2595d();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    /* renamed from: android.support.v7.widget.bc$c */
    private class c extends LinearLayout {

        /* renamed from: b */
        private final int[] f3708b;

        /* renamed from: c */
        private AbstractC0512a.c f3709c;

        /* renamed from: d */
        private TextView f3710d;

        /* renamed from: e */
        private ImageView f3711e;

        /* renamed from: f */
        private View f3712f;

        public c(Context context, AbstractC0512a.c cVar, boolean z) {
            super(context, null, R.attr.actionBarTabStyle);
            this.f3708b = new int[]{android.R.attr.background};
            this.f3709c = cVar;
            C0687bk m4167a = C0687bk.m4167a(context, null, this.f3708b, R.attr.actionBarTabStyle, 0);
            if (m4167a.m4186g(0)) {
                setBackgroundDrawable(m4167a.m4171a(0));
            }
            m4167a.m4172a();
            if (z) {
                setGravity(8388627);
            }
            m4118a();
        }

        /* renamed from: a */
        public void m4119a(AbstractC0512a.c cVar) {
            this.f3709c = cVar;
            m4118a();
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(AbstractC0512a.c.class.getName());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(AbstractC0512a.c.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0679bc.this.f3696c > 0 && getMeasuredWidth() > C0679bc.this.f3696c) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(C0679bc.this.f3696c, C1167C.ENCODING_PCM_32BIT), i2);
            }
        }

        /* renamed from: a */
        public void m4118a() {
            AbstractC0512a.c cVar = this.f3709c;
            View m2594c = cVar.m2594c();
            if (m2594c != null) {
                ViewParent parent = m2594c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m2594c);
                    }
                    addView(m2594c);
                }
                this.f3712f = m2594c;
                if (this.f3710d != null) {
                    this.f3710d.setVisibility(8);
                }
                if (this.f3711e != null) {
                    this.f3711e.setVisibility(8);
                    this.f3711e.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.f3712f != null) {
                removeView(this.f3712f);
                this.f3712f = null;
            }
            Drawable m2592a = cVar.m2592a();
            CharSequence m2593b = cVar.m2593b();
            if (m2592a != null) {
                if (this.f3711e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f3711e = appCompatImageView;
                }
                this.f3711e.setImageDrawable(m2592a);
                this.f3711e.setVisibility(0);
            } else if (this.f3711e != null) {
                this.f3711e.setVisibility(8);
                this.f3711e.setImageDrawable(null);
            }
            boolean z = !TextUtils.isEmpty(m2593b);
            if (z) {
                if (this.f3710d == null) {
                    C0719y c0719y = new C0719y(getContext(), null, R.attr.actionBarTabTextStyle);
                    c0719y.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    c0719y.setLayoutParams(layoutParams2);
                    addView(c0719y);
                    this.f3710d = c0719y;
                }
                this.f3710d.setText(m2593b);
                this.f3710d.setVisibility(0);
            } else if (this.f3710d != null) {
                this.f3710d.setVisibility(8);
                this.f3710d.setText((CharSequence) null);
            }
            if (this.f3711e != null) {
                this.f3711e.setContentDescription(cVar.m2596e());
            }
            C0689bm.m4200a(this, z ? null : cVar.m2596e());
        }

        /* renamed from: b */
        public AbstractC0512a.c m4120b() {
            return this.f3709c;
        }
    }

    /* renamed from: android.support.v7.widget.bc$a */
    private class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0679bc.this.f3695b.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((c) C0679bc.this.f3695b.getChildAt(i)).m4120b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return C0679bc.this.m4116a((AbstractC0512a.c) getItem(i), true);
            }
            ((c) view).m4119a((AbstractC0512a.c) getItem(i));
            return view;
        }
    }

    /* renamed from: android.support.v7.widget.bc$b */
    private class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((c) view).m4120b().m2595d();
            int childCount = C0679bc.this.f3695b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0679bc.this.f3695b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }
}
