package com.p052a.p053a.p077h.p078a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.p052a.p053a.p077h.InterfaceC0922a;
import com.p052a.p053a.p081j.C0954h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.h.a.i */
/* loaded from: classes.dex */
public abstract class AbstractC0931i<T extends View, Z> extends AbstractC0923a<Z> {

    /* renamed from: b */
    private static boolean f4831b = false;

    /* renamed from: c */
    @Nullable
    private static Integer f4832c = null;

    /* renamed from: a */
    protected final T f4833a;

    /* renamed from: d */
    private final a f4834d;

    public AbstractC0931i(T t) {
        this(t, false);
    }

    public AbstractC0931i(T t, boolean z) {
        this.f4833a = (T) C0954h.m5409a(t);
        this.f4834d = new a(t, z);
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public void mo5239a(InterfaceC0929g interfaceC0929g) {
        this.f4834d.m5252a(interfaceC0929g);
    }

    @Override // com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: b */
    public void mo5240b(InterfaceC0929g interfaceC0929g) {
        this.f4834d.m5254b(interfaceC0929g);
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public void mo5228a(Drawable drawable) {
        super.mo5228a(drawable);
        this.f4834d.m5253b();
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    /* renamed from: a */
    public void mo5229a(@Nullable InterfaceC0922a interfaceC0922a) {
        m5243a((Object) interfaceC0922a);
    }

    @Override // com.p052a.p053a.p077h.p078a.AbstractC0923a, com.p052a.p053a.p077h.p078a.InterfaceC0930h
    @Nullable
    /* renamed from: b */
    public InterfaceC0922a mo5230b() {
        Object m5242a = m5242a();
        if (m5242a == null) {
            return null;
        }
        if (m5242a instanceof InterfaceC0922a) {
            return (InterfaceC0922a) m5242a;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    public String toString() {
        return "Target for: " + this.f4833a;
    }

    /* renamed from: a */
    private void m5243a(@Nullable Object obj) {
        if (f4832c == null) {
            f4831b = true;
            this.f4833a.setTag(obj);
        } else {
            this.f4833a.setTag(f4832c.intValue(), obj);
        }
    }

    @Nullable
    /* renamed from: a */
    private Object m5242a() {
        return f4832c == null ? this.f4833a.getTag() : this.f4833a.getTag(f4832c.intValue());
    }

    @VisibleForTesting
    /* renamed from: com.a.a.h.a.i$a */
    static final class a {

        /* renamed from: a */
        @VisibleForTesting
        @Nullable
        static Integer f4835a;

        /* renamed from: b */
        private final View f4836b;

        /* renamed from: c */
        private final boolean f4837c;

        /* renamed from: d */
        private final List<InterfaceC0929g> f4838d = new ArrayList();

        /* renamed from: e */
        @Nullable
        private ViewTreeObserverOnPreDrawListenerC1869a f4839e;

        a(View view, boolean z) {
            this.f4836b = view;
            this.f4837c = z;
        }

        /* renamed from: a */
        private static int m5245a(Context context) {
            if (f4835a == null) {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f4835a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f4835a.intValue();
        }

        /* renamed from: a */
        private void m5246a(int i, int i2) {
            Iterator it = new ArrayList(this.f4838d).iterator();
            while (it.hasNext()) {
                ((InterfaceC0929g) it.next()).mo5241a(i, i2);
            }
        }

        /* renamed from: a */
        void m5251a() {
            if (!this.f4838d.isEmpty()) {
                int m5250d = m5250d();
                int m5249c = m5249c();
                if (m5248b(m5250d, m5249c)) {
                    m5246a(m5250d, m5249c);
                    m5253b();
                }
            }
        }

        /* renamed from: a */
        void m5252a(InterfaceC0929g interfaceC0929g) {
            int m5250d = m5250d();
            int m5249c = m5249c();
            if (m5248b(m5250d, m5249c)) {
                interfaceC0929g.mo5241a(m5250d, m5249c);
                return;
            }
            if (!this.f4838d.contains(interfaceC0929g)) {
                this.f4838d.add(interfaceC0929g);
            }
            if (this.f4839e == null) {
                ViewTreeObserver viewTreeObserver = this.f4836b.getViewTreeObserver();
                this.f4839e = new ViewTreeObserverOnPreDrawListenerC1869a(this);
                viewTreeObserver.addOnPreDrawListener(this.f4839e);
            }
        }

        /* renamed from: b */
        void m5254b(InterfaceC0929g interfaceC0929g) {
            this.f4838d.remove(interfaceC0929g);
        }

        /* renamed from: b */
        void m5253b() {
            ViewTreeObserver viewTreeObserver = this.f4836b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f4839e);
            }
            this.f4839e = null;
            this.f4838d.clear();
        }

        /* renamed from: b */
        private boolean m5248b(int i, int i2) {
            return m5247a(i) && m5247a(i2);
        }

        /* renamed from: c */
        private int m5249c() {
            int paddingBottom = this.f4836b.getPaddingBottom() + this.f4836b.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.f4836b.getLayoutParams();
            return m5244a(this.f4836b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        /* renamed from: d */
        private int m5250d() {
            int paddingRight = this.f4836b.getPaddingRight() + this.f4836b.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.f4836b.getLayoutParams();
            return m5244a(this.f4836b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        /* renamed from: a */
        private int m5244a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 <= 0) {
                if (this.f4837c && this.f4836b.isLayoutRequested()) {
                    return 0;
                }
                int i5 = i - i3;
                if (i5 <= 0) {
                    if (this.f4836b.isLayoutRequested() || i2 != -2) {
                        return 0;
                    }
                    if (Log.isLoggable("ViewTarget", 4)) {
                        Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
                    }
                    return m5245a(this.f4836b.getContext());
                }
                return i5;
            }
            return i4;
        }

        /* renamed from: a */
        private boolean m5247a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: com.a.a.h.a.i$a$a */
        private static final class ViewTreeObserverOnPreDrawListenerC1869a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a */
            private final WeakReference<a> f4840a;

            ViewTreeObserverOnPreDrawListenerC1869a(a aVar) {
                this.f4840a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
                }
                a aVar = this.f4840a.get();
                if (aVar != null) {
                    aVar.m5251a();
                    return true;
                }
                return true;
            }
        }
    }
}
