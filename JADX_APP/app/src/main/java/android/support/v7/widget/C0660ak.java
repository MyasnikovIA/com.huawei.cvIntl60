package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.appcompat.R;
import android.support.v7.p050b.p051a.C0524c;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.exoplayer.C1167C;
import java.lang.reflect.Field;

/* renamed from: android.support.v7.widget.ak */
/* loaded from: classes.dex */
class C0660ak extends ListView {

    /* renamed from: a */
    b f3494a;

    /* renamed from: b */
    private final Rect f3495b;

    /* renamed from: c */
    private int f3496c;

    /* renamed from: d */
    private int f3497d;

    /* renamed from: e */
    private int f3498e;

    /* renamed from: f */
    private int f3499f;

    /* renamed from: g */
    private int f3500g;

    /* renamed from: h */
    private Field f3501h;

    /* renamed from: i */
    private a f3502i;

    /* renamed from: j */
    private boolean f3503j;

    /* renamed from: k */
    private boolean f3504k;

    /* renamed from: l */
    private boolean f3505l;

    /* renamed from: m */
    private ViewPropertyAnimatorCompat f3506m;

    /* renamed from: n */
    private ListViewAutoScrollHelper f3507n;

    C0660ak(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f3495b = new Rect();
        this.f3496c = 0;
        this.f3497d = 0;
        this.f3498e = 0;
        this.f3499f = 0;
        this.f3504k = z;
        setCacheColorHint(0);
        try {
            this.f3501h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f3501h.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f3504k && this.f3503j) || super.isInTouchMode();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f3504k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f3504k || super.isFocused();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f3504k || super.hasFocus();
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f3502i = drawable != null ? new a(drawable) : null;
        super.setSelector(this.f3502i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f3496c = rect.left;
        this.f3497d = rect.top;
        this.f3498e = rect.right;
        this.f3499f = rect.bottom;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f3494a == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            m3933a();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m3936a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f3500g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
        }
        if (this.f3494a != null) {
            this.f3494a.m3945a();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: a */
    public int mo3942a(int i, int i2, int i3, int i4, int i5) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingBottom + listPaddingTop;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int i7 = 0;
        View view = null;
        int i8 = 0;
        int count = adapter.getCount();
        int i9 = 0;
        while (i9 < count) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            view = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            if (layoutParams.height > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, C1167C.ENCODING_PCM_32BIT);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i, makeMeasureSpec);
            view.forceLayout();
            int measuredHeight = (i9 > 0 ? i6 + dividerHeight : i6) + view.getMeasuredHeight();
            if (measuredHeight >= i4) {
                return (i5 < 0 || i9 <= i5 || i7 <= 0 || measuredHeight == i4) ? i4 : i7;
            }
            if (i5 >= 0 && i9 >= i5) {
                i7 = measuredHeight;
            }
            i9++;
            i6 = measuredHeight;
        }
        return i6;
    }

    private void setSelectorEnabled(boolean z) {
        if (this.f3502i != null) {
            this.f3502i.m3944a(z);
        }
    }

    /* renamed from: android.support.v7.widget.ak$a */
    private static class a extends C0524c {

        /* renamed from: a */
        private boolean f3508a;

        a(Drawable drawable) {
            super(drawable);
            this.f3508a = true;
        }

        /* renamed from: a */
        void m3944a(boolean z) {
            this.f3508a = z;
        }

        @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f3508a) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f3508a) {
                super.draw(canvas);
            }
        }

        @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f3508a) {
                super.setHotspot(f, f2);
            }
        }

        @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f3508a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // android.support.v7.p050b.p051a.C0524c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f3508a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f3494a == null) {
            this.f3494a = new b();
            this.f3494a.m3946b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m3933a();
                return onHoverEvent;
            }
            return onHoverEvent;
        }
        setSelection(-1);
        return onHoverEvent;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f3494a = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo3943a(android.view.MotionEvent r9, int r10) {
        /*
            r8 = this;
            r2 = 1
            r1 = 0
            int r3 = r9.getActionMasked()
            switch(r3) {
                case 1: goto L2d;
                case 2: goto L69;
                case 3: goto L2a;
                default: goto L9;
            }
        L9:
            r3 = r1
            r0 = r2
        Lb:
            if (r0 == 0) goto Lf
            if (r3 == 0) goto L12
        Lf:
            r8.m3939b()
        L12:
            if (r0 == 0) goto L5f
            android.support.v4.widget.ListViewAutoScrollHelper r1 = r8.f3507n
            if (r1 != 0) goto L1f
            android.support.v4.widget.ListViewAutoScrollHelper r1 = new android.support.v4.widget.ListViewAutoScrollHelper
            r1.<init>(r8)
            r8.f3507n = r1
        L1f:
            android.support.v4.widget.ListViewAutoScrollHelper r1 = r8.f3507n
            r1.setEnabled(r2)
            android.support.v4.widget.ListViewAutoScrollHelper r1 = r8.f3507n
            r1.onTouch(r8, r9)
        L29:
            return r0
        L2a:
            r3 = r1
            r0 = r1
            goto Lb
        L2d:
            r0 = r1
        L2e:
            int r4 = r9.findPointerIndex(r10)
            if (r4 >= 0) goto L37
            r3 = r1
            r0 = r1
            goto Lb
        L37:
            float r5 = r9.getX(r4)
            int r5 = (int) r5
            float r4 = r9.getY(r4)
            int r4 = (int) r4
            int r6 = r8.pointToPosition(r5, r4)
            r7 = -1
            if (r6 != r7) goto L4a
            r3 = r2
            goto Lb
        L4a:
            int r0 = r8.getFirstVisiblePosition()
            int r0 = r6 - r0
            android.view.View r0 = r8.getChildAt(r0)
            float r5 = (float) r5
            float r4 = (float) r4
            r8.m3938a(r0, r6, r5, r4)
            if (r3 != r2) goto L9
            r8.m3937a(r0, r6)
            goto L9
        L5f:
            android.support.v4.widget.ListViewAutoScrollHelper r2 = r8.f3507n
            if (r2 == 0) goto L29
            android.support.v4.widget.ListViewAutoScrollHelper r2 = r8.f3507n
            r2.setEnabled(r1)
            goto L29
        L69:
            r0 = r2
            goto L2e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.C0660ak.mo3943a(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: a */
    private void m3937a(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    void setListSelectionHidden(boolean z) {
        this.f3503j = z;
    }

    /* renamed from: a */
    private void m3933a() {
        Drawable selector = getSelector();
        if (selector != null && m3941c() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    /* renamed from: a */
    private void m3936a(Canvas canvas) {
        Drawable selector;
        if (!this.f3495b.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f3495b);
            selector.draw(canvas);
        }
    }

    /* renamed from: a */
    private void m3935a(int i, View view, float f, float f2) {
        m3934a(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            DrawableCompat.setHotspot(selector, f, f2);
        }
    }

    /* renamed from: a */
    private void m3934a(int i, View view) {
        Drawable selector = getSelector();
        boolean z = (selector == null || i == -1) ? false : true;
        if (z) {
            selector.setVisible(false, false);
        }
        m3940b(i, view);
        if (z) {
            Rect rect = this.f3495b;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            DrawableCompat.setHotspot(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: b */
    private void m3940b(int i, View view) {
        Rect rect = this.f3495b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f3496c;
        rect.top -= this.f3497d;
        rect.right += this.f3498e;
        rect.bottom += this.f3499f;
        try {
            boolean z = this.f3501h.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f3501h.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m3939b() {
        this.f3505l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f3500g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        if (this.f3506m != null) {
            this.f3506m.cancel();
            this.f3506m = null;
        }
    }

    /* renamed from: a */
    private void m3938a(View view, int i, float f, float f2) {
        View childAt;
        this.f3505l = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        if (this.f3500g != -1 && (childAt = getChildAt(this.f3500g - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f3500g = i;
        float left = f - view.getLeft();
        float top = f2 - view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m3935a(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: c */
    private boolean m3941c() {
        return this.f3505l;
    }

    /* renamed from: android.support.v7.widget.ak$b */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0660ak.this.f3494a = null;
            C0660ak.this.drawableStateChanged();
        }

        /* renamed from: a */
        public void m3945a() {
            C0660ak.this.f3494a = null;
            C0660ak.this.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m3946b() {
            C0660ak.this.post(this);
        }
    }
}
