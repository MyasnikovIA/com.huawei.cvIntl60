package android.support.v7.p050b.p051a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.SparseArray;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.b.a.b */
/* loaded from: classes.dex */
class C0523b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private b f2465a;

    /* renamed from: b */
    private Rect f2466b;

    /* renamed from: c */
    private Drawable f2467c;

    /* renamed from: d */
    private Drawable f2468d;

    /* renamed from: f */
    private boolean f2470f;

    /* renamed from: i */
    private boolean f2473i;

    /* renamed from: j */
    private Runnable f2474j;

    /* renamed from: k */
    private long f2475k;

    /* renamed from: l */
    private long f2476l;

    /* renamed from: m */
    private a f2477m;

    /* renamed from: e */
    private int f2469e = 255;

    /* renamed from: g */
    private int f2471g = -1;

    /* renamed from: h */
    private int f2472h = -1;

    C0523b() {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f2467c != null) {
            this.f2467c.draw(canvas);
        }
        if (this.f2468d != null) {
            this.f2468d.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f2465a.getChangingConfigurations();
    }

    @SuppressLint({"WrongConstant"})
    @TargetApi(23)
    /* renamed from: a */
    private boolean m2693a() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect m2714e = this.f2465a.m2714e();
        if (m2714e != null) {
            rect.set(m2714e);
            padding = (m2714e.right | ((m2714e.left | m2714e.top) | m2714e.bottom)) != 0;
        } else if (this.f2467c != null) {
            padding = this.f2467c.getPadding(rect);
        } else {
            padding = super.getPadding(rect);
        }
        if (m2693a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f2467c != null) {
            this.f2467c.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f2470f || this.f2469e != i) {
            this.f2470f = true;
            this.f2469e = i;
            if (this.f2467c != null) {
                if (this.f2475k == 0) {
                    this.f2467c.setAlpha(i);
                } else {
                    m2695a(false);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2469e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f2465a.f2514z != z) {
            this.f2465a.f2514z = z;
            if (this.f2467c != null) {
                this.f2467c.setDither(this.f2465a.f2514z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2465a.f2486G = true;
        if (this.f2465a.f2485F != colorFilter) {
            this.f2465a.f2485F = colorFilter;
            if (this.f2467c != null) {
                this.f2467c.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f2465a.f2489J = true;
        if (this.f2465a.f2487H != colorStateList) {
            this.f2465a.f2487H = colorStateList;
            DrawableCompat.setTintList(this.f2467c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.f2465a.f2490K = true;
        if (this.f2465a.f2488I != mode) {
            this.f2465a.f2488I = mode;
            DrawableCompat.setTintMode(this.f2467c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2468d != null) {
            this.f2468d.setBounds(rect);
        }
        if (this.f2467c != null) {
            this.f2467c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2465a.m2723m();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2465a.f2484E != z) {
            this.f2465a.f2484E = z;
            if (this.f2467c != null) {
                DrawableCompat.setAutoMirrored(this.f2467c, this.f2465a.f2484E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2465a.f2484E;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z = true;
        boolean z2 = false;
        if (this.f2468d != null) {
            this.f2468d.jumpToCurrentState();
            this.f2468d = null;
            this.f2472h = -1;
            z2 = true;
        }
        if (this.f2467c != null) {
            this.f2467c.jumpToCurrentState();
            if (this.f2470f) {
                this.f2467c.setAlpha(this.f2469e);
            }
        }
        if (this.f2476l != 0) {
            this.f2476l = 0L;
            z2 = true;
        }
        if (this.f2475k != 0) {
            this.f2475k = 0L;
        } else {
            z = z2;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.f2467c != null) {
            DrawableCompat.setHotspot(this.f2467c, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.f2466b == null) {
            this.f2466b = new Rect(i, i2, i3, i4);
        } else {
            this.f2466b.set(i, i2, i3, i4);
        }
        if (this.f2467c != null) {
            DrawableCompat.setHotspotBounds(this.f2467c, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        if (this.f2466b != null) {
            rect.set(this.f2466b);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.f2468d != null) {
            return this.f2468d.setState(iArr);
        }
        if (this.f2467c != null) {
            return this.f2467c.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.f2468d != null) {
            return this.f2468d.setLevel(i);
        }
        if (this.f2467c != null) {
            return this.f2467c.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f2465a.m2713d(i, m2697d());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f2465a.m2716f()) {
            return this.f2465a.m2717g();
        }
        if (this.f2467c != null) {
            return this.f2467c.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f2465a.m2716f()) {
            return this.f2465a.m2718h();
        }
        if (this.f2467c != null) {
            return this.f2467c.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f2465a.m2716f()) {
            return this.f2465a.m2719i();
        }
        if (this.f2467c != null) {
            return this.f2467c.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f2465a.m2716f()) {
            return this.f2465a.m2720j();
        }
        if (this.f2467c != null) {
            return this.f2467c.getMinimumHeight();
        }
        return 0;
    }

    public void invalidateDrawable(@NonNull Drawable drawable) {
        if (this.f2465a != null) {
            this.f2465a.m2707b();
        }
        if (drawable == this.f2467c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        if (drawable == this.f2467c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable == this.f2467c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f2468d != null) {
            this.f2468d.setVisible(z, z2);
        }
        if (this.f2467c != null) {
            this.f2467c.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f2467c == null || !this.f2467c.isVisible()) {
            return -2;
        }
        return this.f2465a.m2722l();
    }

    /* renamed from: d */
    int m2697d() {
        return this.f2471g;
    }

    /* renamed from: a */
    boolean m2696a(int i) {
        if (i == this.f2471g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f2465a.f2483D > 0) {
            if (this.f2468d != null) {
                this.f2468d.setVisible(false, false);
            }
            if (this.f2467c != null) {
                this.f2468d = this.f2467c;
                this.f2472h = this.f2471g;
                this.f2476l = this.f2465a.f2483D + uptimeMillis;
            } else {
                this.f2468d = null;
                this.f2472h = -1;
                this.f2476l = 0L;
            }
        } else if (this.f2467c != null) {
            this.f2467c.setVisible(false, false);
        }
        if (i >= 0 && i < this.f2465a.f2498j) {
            Drawable m2706b = this.f2465a.m2706b(i);
            this.f2467c = m2706b;
            this.f2471g = i;
            if (m2706b != null) {
                if (this.f2465a.f2482C > 0) {
                    this.f2475k = uptimeMillis + this.f2465a.f2482C;
                }
                m2692a(m2706b);
            }
        } else {
            this.f2467c = null;
            this.f2471g = -1;
        }
        if (this.f2475k != 0 || this.f2476l != 0) {
            if (this.f2474j == null) {
                this.f2474j = new Runnable() { // from class: android.support.v7.b.a.b.1
                    AnonymousClass1() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        C0523b.this.m2695a(true);
                        C0523b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(this.f2474j);
            }
            m2695a(true);
        }
        invalidateSelf();
        return true;
    }

    /* renamed from: android.support.v7.b.a.b$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0523b.this.m2695a(true);
            C0523b.this.invalidateSelf();
        }
    }

    /* renamed from: a */
    private void m2692a(Drawable drawable) {
        if (this.f2477m == null) {
            this.f2477m = new a();
        }
        drawable.setCallback(this.f2477m.m2699a(drawable.getCallback()));
        try {
            if (this.f2465a.f2482C <= 0 && this.f2470f) {
                drawable.setAlpha(this.f2469e);
            }
            if (this.f2465a.f2486G) {
                drawable.setColorFilter(this.f2465a.f2485F);
            } else {
                if (this.f2465a.f2489J) {
                    DrawableCompat.setTintList(drawable, this.f2465a.f2487H);
                }
                if (this.f2465a.f2490K) {
                    DrawableCompat.setTintMode(drawable, this.f2465a.f2488I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f2465a.f2514z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f2465a.f2484E);
            }
            Rect rect = this.f2466b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f2477m.m2698a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void m2695a(boolean r13) {
        /*
            r12 = this;
            r10 = 255(0xff, double:1.26E-321)
            r2 = 1
            r1 = 0
            r8 = 0
            r12.f2470f = r2
            long r4 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r0 = r12.f2467c
            if (r0 == 0) goto L68
            long r6 = r12.f2475k
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 == 0) goto L6a
            long r6 = r12.f2475k
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 > 0) goto L50
            android.graphics.drawable.Drawable r0 = r12.f2467c
            int r3 = r12.f2469e
            r0.setAlpha(r3)
            r12.f2475k = r8
            r0 = r1
        L26:
            android.graphics.drawable.Drawable r3 = r12.f2468d
            if (r3 == 0) goto L82
            long r6 = r12.f2476l
            int r3 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r3 == 0) goto L43
            long r6 = r12.f2476l
            int r3 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r3 > 0) goto L6c
            android.graphics.drawable.Drawable r2 = r12.f2468d
            r2.setVisible(r1, r1)
            r1 = 0
            r12.f2468d = r1
            r1 = -1
            r12.f2472h = r1
            r12.f2476l = r8
        L43:
            if (r13 == 0) goto L4f
            if (r0 == 0) goto L4f
            java.lang.Runnable r0 = r12.f2474j
            r2 = 16
            long r2 = r2 + r4
            r12.scheduleSelf(r0, r2)
        L4f:
            return
        L50:
            long r6 = r12.f2475k
            long r6 = r6 - r4
            long r6 = r6 * r10
            int r0 = (int) r6
            android.support.v7.b.a.b$b r3 = r12.f2465a
            int r3 = r3.f2482C
            int r0 = r0 / r3
            android.graphics.drawable.Drawable r3 = r12.f2467c
            int r0 = 255 - r0
            int r6 = r12.f2469e
            int r0 = r0 * r6
            int r0 = r0 / 255
            r3.setAlpha(r0)
            r0 = r2
            goto L26
        L68:
            r12.f2475k = r8
        L6a:
            r0 = r1
            goto L26
        L6c:
            long r0 = r12.f2476l
            long r0 = r0 - r4
            long r0 = r0 * r10
            int r0 = (int) r0
            android.support.v7.b.a.b$b r1 = r12.f2465a
            int r1 = r1.f2483D
            int r0 = r0 / r1
            android.graphics.drawable.Drawable r1 = r12.f2468d
            int r3 = r12.f2469e
            int r0 = r0 * r3
            int r0 = r0 / 255
            r1.setAlpha(r0)
            r0 = r2
            goto L43
        L82:
            r12.f2476l = r8
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.p050b.p051a.C0523b.m2695a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f2467c;
    }

    /* renamed from: a */
    final void m2694a(Resources resources) {
        this.f2465a.m2704a(resources);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.f2465a.m2703a(theme);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.f2465a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f2465a.m2724n()) {
            return null;
        }
        this.f2465a.f2494f = getChangingConfigurations();
        return this.f2465a;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f2473i && super.mutate() == this) {
            b mo2675c = mo2675c();
            mo2675c.mo2684a();
            mo2672a(mo2675c);
            this.f2473i = true;
        }
        return this;
    }

    /* renamed from: c */
    b mo2675c() {
        return this.f2465a;
    }

    /* renamed from: android.support.v7.b.a.b$b */
    static abstract class b extends Drawable.ConstantState {

        /* renamed from: A */
        boolean f2480A;

        /* renamed from: B */
        int f2481B;

        /* renamed from: C */
        int f2482C;

        /* renamed from: D */
        int f2483D;

        /* renamed from: E */
        boolean f2484E;

        /* renamed from: F */
        ColorFilter f2485F;

        /* renamed from: G */
        boolean f2486G;

        /* renamed from: H */
        ColorStateList f2487H;

        /* renamed from: I */
        PorterDuff.Mode f2488I;

        /* renamed from: J */
        boolean f2489J;

        /* renamed from: K */
        boolean f2490K;

        /* renamed from: c */
        final C0523b f2491c;

        /* renamed from: d */
        Resources f2492d;

        /* renamed from: e */
        int f2493e;

        /* renamed from: f */
        int f2494f;

        /* renamed from: g */
        int f2495g;

        /* renamed from: h */
        SparseArray<Drawable.ConstantState> f2496h;

        /* renamed from: i */
        Drawable[] f2497i;

        /* renamed from: j */
        int f2498j;

        /* renamed from: k */
        boolean f2499k;

        /* renamed from: l */
        boolean f2500l;

        /* renamed from: m */
        Rect f2501m;

        /* renamed from: n */
        boolean f2502n;

        /* renamed from: o */
        boolean f2503o;

        /* renamed from: p */
        int f2504p;

        /* renamed from: q */
        int f2505q;

        /* renamed from: r */
        int f2506r;

        /* renamed from: s */
        int f2507s;

        /* renamed from: t */
        boolean f2508t;

        /* renamed from: u */
        int f2509u;

        /* renamed from: v */
        boolean f2510v;

        /* renamed from: w */
        boolean f2511w;

        /* renamed from: x */
        boolean f2512x;

        /* renamed from: y */
        boolean f2513y;

        /* renamed from: z */
        boolean f2514z;

        b(b bVar, C0523b c0523b, Resources resources) {
            Resources resources2;
            this.f2493e = 160;
            this.f2499k = false;
            this.f2502n = false;
            this.f2514z = true;
            this.f2482C = 0;
            this.f2483D = 0;
            this.f2491c = c0523b;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = bVar != null ? bVar.f2492d : null;
            }
            this.f2492d = resources2;
            this.f2493e = C0523b.m2691a(resources, bVar != null ? bVar.f2493e : 0);
            if (bVar != null) {
                this.f2494f = bVar.f2494f;
                this.f2495g = bVar.f2495g;
                this.f2512x = true;
                this.f2513y = true;
                this.f2499k = bVar.f2499k;
                this.f2502n = bVar.f2502n;
                this.f2514z = bVar.f2514z;
                this.f2480A = bVar.f2480A;
                this.f2481B = bVar.f2481B;
                this.f2482C = bVar.f2482C;
                this.f2483D = bVar.f2483D;
                this.f2484E = bVar.f2484E;
                this.f2485F = bVar.f2485F;
                this.f2486G = bVar.f2486G;
                this.f2487H = bVar.f2487H;
                this.f2488I = bVar.f2488I;
                this.f2489J = bVar.f2489J;
                this.f2490K = bVar.f2490K;
                if (bVar.f2493e == this.f2493e) {
                    if (bVar.f2500l) {
                        this.f2501m = new Rect(bVar.f2501m);
                        this.f2500l = true;
                    }
                    if (bVar.f2503o) {
                        this.f2504p = bVar.f2504p;
                        this.f2505q = bVar.f2505q;
                        this.f2506r = bVar.f2506r;
                        this.f2507s = bVar.f2507s;
                        this.f2503o = true;
                    }
                }
                if (bVar.f2508t) {
                    this.f2509u = bVar.f2509u;
                    this.f2508t = true;
                }
                if (bVar.f2510v) {
                    this.f2511w = bVar.f2511w;
                    this.f2510v = true;
                }
                Drawable[] drawableArr = bVar.f2497i;
                this.f2497i = new Drawable[drawableArr.length];
                this.f2498j = bVar.f2498j;
                SparseArray<Drawable.ConstantState> sparseArray = bVar.f2496h;
                if (sparseArray != null) {
                    this.f2496h = sparseArray.clone();
                } else {
                    this.f2496h = new SparseArray<>(this.f2498j);
                }
                int i = this.f2498j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.f2496h.put(i2, constantState);
                        } else {
                            this.f2497i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.f2497i = new Drawable[10];
            this.f2498j = 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2494f | this.f2495g;
        }

        /* renamed from: a */
        public final int m2702a(Drawable drawable) {
            int i = this.f2498j;
            if (i >= this.f2497i.length) {
                mo2715e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f2491c);
            this.f2497i[i] = drawable;
            this.f2498j++;
            this.f2495g |= drawable.getChangingConfigurations();
            m2707b();
            this.f2501m = null;
            this.f2500l = false;
            this.f2503o = false;
            this.f2512x = false;
            return i;
        }

        /* renamed from: b */
        void m2707b() {
            this.f2508t = false;
            this.f2510v = false;
        }

        /* renamed from: c */
        final int m2709c() {
            return this.f2497i.length;
        }

        /* renamed from: o */
        private void m2701o() {
            if (this.f2496h != null) {
                int size = this.f2496h.size();
                for (int i = 0; i < size; i++) {
                    this.f2497i[this.f2496h.keyAt(i)] = m2700b(this.f2496h.valueAt(i).newDrawable(this.f2492d));
                }
                this.f2496h = null;
            }
        }

        /* renamed from: b */
        private Drawable m2700b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f2481B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f2491c);
            return mutate;
        }

        /* renamed from: d */
        public final int m2711d() {
            return this.f2498j;
        }

        /* renamed from: b */
        public final Drawable m2706b(int i) {
            int indexOfKey;
            Drawable drawable = this.f2497i[i];
            if (drawable == null) {
                if (this.f2496h == null || (indexOfKey = this.f2496h.indexOfKey(i)) < 0) {
                    return null;
                }
                Drawable m2700b = m2700b(this.f2496h.valueAt(indexOfKey).newDrawable(this.f2492d));
                this.f2497i[i] = m2700b;
                this.f2496h.removeAt(indexOfKey);
                if (this.f2496h.size() == 0) {
                    this.f2496h = null;
                    return m2700b;
                }
                return m2700b;
            }
            return drawable;
        }

        /* renamed from: d */
        final boolean m2713d(int i, int i2) {
            boolean z;
            int i3 = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            int i4 = 0;
            boolean z2 = false;
            while (i4 < i3) {
                if (drawableArr[i4] != null) {
                    z = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    if (i4 == i2) {
                        i4++;
                        z2 = z;
                    }
                }
                z = z2;
                i4++;
                z2 = z;
            }
            this.f2481B = i;
            return z2;
        }

        /* renamed from: a */
        final void m2704a(Resources resources) {
            if (resources != null) {
                this.f2492d = resources;
                int m2691a = C0523b.m2691a(resources, this.f2493e);
                int i = this.f2493e;
                this.f2493e = m2691a;
                if (i != m2691a) {
                    this.f2503o = false;
                    this.f2500l = false;
                }
            }
        }

        @RequiresApi(21)
        /* renamed from: a */
        final void m2703a(Resources.Theme theme) {
            if (theme != null) {
                m2701o();
                int i = this.f2498j;
                Drawable[] drawableArr = this.f2497i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f2495g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m2704a(theme.getResources());
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.f2496h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* renamed from: a */
        void mo2684a() {
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f2480A = true;
        }

        /* renamed from: a */
        public final void m2705a(boolean z) {
            this.f2499k = z;
        }

        /* renamed from: e */
        public final Rect m2714e() {
            Rect rect = null;
            if (this.f2499k) {
                return null;
            }
            if (this.f2501m != null || this.f2500l) {
                return this.f2501m;
            }
            m2701o();
            Rect rect2 = new Rect();
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect2)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    if (rect2.left > rect.left) {
                        rect.left = rect2.left;
                    }
                    if (rect2.top > rect.top) {
                        rect.top = rect2.top;
                    }
                    if (rect2.right > rect.right) {
                        rect.right = rect2.right;
                    }
                    if (rect2.bottom > rect.bottom) {
                        rect.bottom = rect2.bottom;
                    }
                }
            }
            this.f2500l = true;
            this.f2501m = rect;
            return rect;
        }

        /* renamed from: b */
        public final void m2708b(boolean z) {
            this.f2502n = z;
        }

        /* renamed from: f */
        public final boolean m2716f() {
            return this.f2502n;
        }

        /* renamed from: g */
        public final int m2717g() {
            if (!this.f2503o) {
                m2721k();
            }
            return this.f2504p;
        }

        /* renamed from: h */
        public final int m2718h() {
            if (!this.f2503o) {
                m2721k();
            }
            return this.f2505q;
        }

        /* renamed from: i */
        public final int m2719i() {
            if (!this.f2503o) {
                m2721k();
            }
            return this.f2506r;
        }

        /* renamed from: j */
        public final int m2720j() {
            if (!this.f2503o) {
                m2721k();
            }
            return this.f2507s;
        }

        /* renamed from: k */
        protected void m2721k() {
            this.f2503o = true;
            m2701o();
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            this.f2505q = -1;
            this.f2504p = -1;
            this.f2507s = 0;
            this.f2506r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f2504p) {
                    this.f2504p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f2505q) {
                    this.f2505q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f2506r) {
                    this.f2506r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f2507s) {
                    this.f2507s = minimumHeight;
                }
            }
        }

        /* renamed from: c */
        public final void m2710c(int i) {
            this.f2482C = i;
        }

        /* renamed from: d */
        public final void m2712d(int i) {
            this.f2483D = i;
        }

        /* renamed from: l */
        public final int m2722l() {
            if (this.f2508t) {
                return this.f2509u;
            }
            m2701o();
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f2509u = opacity;
            this.f2508t = true;
            return opacity;
        }

        /* renamed from: m */
        public final boolean m2723m() {
            boolean z = false;
            if (this.f2510v) {
                return this.f2511w;
            }
            m2701o();
            int i = this.f2498j;
            Drawable[] drawableArr = this.f2497i;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                }
                i2++;
            }
            this.f2511w = z;
            this.f2510v = true;
            return z;
        }

        /* renamed from: e */
        public void mo2715e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f2497i, 0, drawableArr, 0, i);
            this.f2497i = drawableArr;
        }

        /* renamed from: n */
        public synchronized boolean m2724n() {
            boolean z = false;
            synchronized (this) {
                if (this.f2512x) {
                    z = this.f2513y;
                } else {
                    m2701o();
                    this.f2512x = true;
                    int i = this.f2498j;
                    Drawable[] drawableArr = this.f2497i;
                    int i2 = 0;
                    while (true) {
                        if (i2 < i) {
                            if (drawableArr[i2].getConstantState() != null) {
                                i2++;
                            } else {
                                this.f2513y = false;
                                break;
                            }
                        } else {
                            this.f2513y = true;
                            z = true;
                            break;
                        }
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: a */
    protected void mo2672a(b bVar) {
        this.f2465a = bVar;
        if (this.f2471g >= 0) {
            this.f2467c = bVar.m2706b(this.f2471g);
            if (this.f2467c != null) {
                m2692a(this.f2467c);
            }
        }
        this.f2472h = -1;
        this.f2468d = null;
    }

    /* renamed from: android.support.v7.b.a.b$a */
    static class a implements Drawable.Callback {

        /* renamed from: a */
        private Drawable.Callback f2479a;

        a() {
        }

        /* renamed from: a */
        public a m2699a(Drawable.Callback callback) {
            this.f2479a = callback;
            return this;
        }

        /* renamed from: a */
        public Drawable.Callback m2698a() {
            Drawable.Callback callback = this.f2479a;
            this.f2479a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
            if (this.f2479a != null) {
                this.f2479a.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            if (this.f2479a != null) {
                this.f2479a.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: a */
    static int m2691a(@Nullable Resources resources, int i) {
        int i2 = resources == null ? i : resources.getDisplayMetrics().densityDpi;
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }
}
