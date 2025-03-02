package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    private TypedValue f2970a;

    /* renamed from: b */
    private TypedValue f2971b;

    /* renamed from: c */
    private TypedValue f2972c;

    /* renamed from: d */
    private TypedValue f2973d;

    /* renamed from: e */
    private TypedValue f2974e;

    /* renamed from: f */
    private TypedValue f2975f;

    /* renamed from: g */
    private final Rect f2976g;

    /* renamed from: h */
    private InterfaceC0580a f2977h;

    /* renamed from: android.support.v7.widget.ContentFrameLayout$a */
    public interface InterfaceC0580a {
        /* renamed from: a */
        void mo2556a();

        /* renamed from: b */
        void mo2557b();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2976g = new Rect();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m3056a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void setAttachListener(InterfaceC0580a interfaceC0580a) {
        this.f2977h = interfaceC0580a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void m3055a(int i, int i2, int i3, int i4) {
        this.f2976g.set(i, i2, i3, i4);
        if (ViewCompat.isLaidOut(this)) {
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e5  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public TypedValue getMinWidthMajor() {
        if (this.f2970a == null) {
            this.f2970a = new TypedValue();
        }
        return this.f2970a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f2971b == null) {
            this.f2971b = new TypedValue();
        }
        return this.f2971b;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f2972c == null) {
            this.f2972c = new TypedValue();
        }
        return this.f2972c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f2973d == null) {
            this.f2973d = new TypedValue();
        }
        return this.f2973d;
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f2974e == null) {
            this.f2974e = new TypedValue();
        }
        return this.f2974e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f2975f == null) {
            this.f2975f = new TypedValue();
        }
        return this.f2975f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f2977h != null) {
            this.f2977h.mo2556a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f2977h != null) {
            this.f2977h.mo2557b();
        }
    }
}
