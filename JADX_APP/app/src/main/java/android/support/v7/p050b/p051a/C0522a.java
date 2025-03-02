package android.support.v7.p050b.p051a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.graphics.drawable.C0295c;
import android.support.graphics.drawable.C0301i;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.p050b.p051a.C0523b;
import android.support.v7.p050b.p051a.C0525d;
import android.util.AttributeSet;
import android.util.StateSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: android.support.v7.b.a.a */
/* loaded from: classes.dex */
public class C0522a extends C0525d {

    /* renamed from: a */
    private static final String f2450a = C0522a.class.getSimpleName();

    /* renamed from: b */
    private b f2451b;

    /* renamed from: c */
    private f f2452c;

    /* renamed from: d */
    private int f2453d;

    /* renamed from: e */
    private int f2454e;

    /* renamed from: f */
    private boolean f2455f;

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @NonNull
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(@NonNull Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ void getOutline(@NonNull Outline outline) {
        super.getOutline(outline);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(@NonNull Rect rect) {
        return super.getPadding(rect);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(@NonNull Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setTintMode(@NonNull PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }

    public C0522a() {
        this(null, null);
    }

    C0522a(@Nullable b bVar, @Nullable Resources resources) {
        super(null);
        this.f2453d = -1;
        this.f2454e = -1;
        mo2672a(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: a */
    public static C0522a m2664a(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        C0522a c0522a = new C0522a();
        c0522a.mo2674b(context, resources, xmlPullParser, attributeSet, theme);
        return c0522a;
    }

    @Override // android.support.v7.p050b.p051a.C0525d
    /* renamed from: b */
    public void mo2674b(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableCompat);
        setVisible(obtainAttributes.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        m2665a(obtainAttributes);
        m2694a(resources);
        obtainAttributes.recycle();
        m2667c(context, resources, xmlPullParser, attributeSet, theme);
        m2670e();
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f2452c != null && (visible || z2)) {
            if (z) {
                this.f2452c.mo2676a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        if (this.f2452c != null) {
            this.f2452c.mo2677b();
            this.f2452c = null;
            m2696a(this.f2453d);
            this.f2453d = -1;
            this.f2454e = -1;
        }
    }

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int m2682a = this.f2451b.m2682a(iArr);
        boolean z = m2682a != m2697d() && (m2666b(m2682a) || m2696a(m2682a));
        Drawable current = getCurrent();
        if (current != null) {
            return z | current.setState(iArr);
        }
        return z;
    }

    /* renamed from: b */
    private boolean m2666b(int i) {
        int d2;
        f aVar;
        f fVar = this.f2452c;
        if (fVar != null) {
            if (i == this.f2453d) {
                return true;
            }
            if (i == this.f2454e && fVar.mo2687c()) {
                fVar.mo2688d();
                this.f2453d = this.f2454e;
                this.f2454e = i;
                return true;
            }
            int i2 = this.f2453d;
            fVar.mo2677b();
            d2 = i2;
        } else {
            d2 = m2697d();
        }
        this.f2452c = null;
        this.f2454e = -1;
        this.f2453d = -1;
        b bVar = this.f2451b;
        int m2679a = bVar.m2679a(d2);
        int m2679a2 = bVar.m2679a(i);
        if (m2679a2 == 0 || m2679a == 0) {
            return false;
        }
        int m2680a = bVar.m2680a(m2679a, m2679a2);
        if (m2680a < 0) {
            return false;
        }
        boolean m2686c = bVar.m2686c(m2679a, m2679a2);
        m2696a(m2680a);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            aVar = new d((AnimationDrawable) current, bVar.m2685b(m2679a, m2679a2), m2686c);
        } else if (current instanceof C0295c) {
            aVar = new c((C0295c) current);
        } else {
            if (!(current instanceof Animatable)) {
                return false;
            }
            aVar = new a((Animatable) current);
        }
        aVar.mo2676a();
        this.f2452c = aVar;
        this.f2454e = d2;
        this.f2453d = i;
        return true;
    }

    /* renamed from: android.support.v7.b.a.a$f */
    private static abstract class f {
        /* renamed from: a */
        public abstract void mo2676a();

        /* renamed from: b */
        public abstract void mo2677b();

        private f() {
        }

        /* synthetic */ f(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: d */
        public void mo2688d() {
        }

        /* renamed from: c */
        public boolean mo2687c() {
            return false;
        }
    }

    /* renamed from: android.support.v7.b.a.a$a */
    private static class a extends f {

        /* renamed from: a */
        private final Animatable f2456a;

        a(Animatable animatable) {
            super();
            this.f2456a = animatable;
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: a */
        public void mo2676a() {
            this.f2456a.start();
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: b */
        public void mo2677b() {
            this.f2456a.stop();
        }
    }

    /* renamed from: android.support.v7.b.a.a$d */
    private static class d extends f {

        /* renamed from: a */
        private final ObjectAnimator f2460a;

        /* renamed from: b */
        private final boolean f2461b;

        d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            e eVar = new e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(eVar.m2689a());
            ofInt.setInterpolator(eVar);
            this.f2461b = z2;
            this.f2460a = ofInt;
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: c */
        public boolean mo2687c() {
            return this.f2461b;
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: a */
        public void mo2676a() {
            this.f2460a.start();
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: d */
        public void mo2688d() {
            this.f2460a.reverse();
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: b */
        public void mo2677b() {
            this.f2460a.cancel();
        }
    }

    /* renamed from: android.support.v7.b.a.a$c */
    private static class c extends f {

        /* renamed from: a */
        private final C0295c f2459a;

        c(C0295c c0295c) {
            super();
            this.f2459a = c0295c;
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: a */
        public void mo2676a() {
            this.f2459a.start();
        }

        @Override // android.support.v7.p050b.p051a.C0522a.f
        /* renamed from: b */
        public void mo2677b() {
            this.f2459a.stop();
        }
    }

    /* renamed from: a */
    private void m2665a(TypedArray typedArray) {
        b bVar = this.f2451b;
        if (Build.VERSION.SDK_INT >= 21) {
            bVar.f2494f |= typedArray.getChangingConfigurations();
        }
        bVar.m2705a(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, bVar.f2499k));
        bVar.m2708b(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_constantSize, bVar.f2502n));
        bVar.m2710c(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, bVar.f2482C));
        bVar.m2712d(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, bVar.f2483D));
        setDither(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_dither, bVar.f2514z));
    }

    /* renamed from: e */
    private void m2670e() {
        onStateChange(getState());
    }

    /* renamed from: c */
    private void m2667c(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 >= depth || next != 3) {
                    if (next == 2 && depth2 <= depth) {
                        if (xmlPullParser.getName().equals("item")) {
                            m2669e(context, resources, xmlPullParser, attributeSet, theme);
                        } else if (xmlPullParser.getName().equals("transition")) {
                            m2668d(context, resources, xmlPullParser, attributeSet, theme);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    private int m2668d(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        int next;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableTransition);
        int resourceId = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        Drawable drawable = null;
        int resourceId3 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        if (resourceId3 > 0) {
            drawable = C0488a.m2457b(context, resourceId3);
        }
        boolean z = obtainAttributes.getBoolean(R.styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        obtainAttributes.recycle();
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            if (xmlPullParser.getName().equals("animated-vector")) {
                drawable = C0295c.m2209a(context, resources, xmlPullParser, attributeSet, theme);
            } else if (Build.VERSION.SDK_INT >= 21) {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            } else {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId == -1 || resourceId2 == -1) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
        return this.f2451b.m2681a(resourceId, resourceId2, drawable, z);
    }

    /* renamed from: e */
    private int m2669e(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        int next;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableItem);
        int resourceId = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_id, 0);
        Drawable drawable = null;
        int resourceId2 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        if (resourceId2 > 0) {
            drawable = C0488a.m2457b(context, resourceId2);
        }
        obtainAttributes.recycle();
        int[] a2 = m2729a(attributeSet);
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            if (xmlPullParser.getName().equals("vector")) {
                drawable = C0301i.m2243a(resources, xmlPullParser, attributeSet, theme);
            } else if (Build.VERSION.SDK_INT >= 21) {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            } else {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        return this.f2451b.m2683a(a2, drawable, resourceId);
    }

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f2455f && super.mutate() == this) {
            this.f2451b.mo2684a();
            this.f2455f = true;
        }
        return this;
    }

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b
    /* renamed from: a */
    public b mo2675c() {
        return new b(this.f2451b, this, null);
    }

    /* renamed from: android.support.v7.b.a.a$b */
    static class b extends C0525d.a {

        /* renamed from: a */
        LongSparseArray<Long> f2457a;

        /* renamed from: b */
        SparseArrayCompat<Integer> f2458b;

        b(@Nullable b bVar, @NonNull C0522a c0522a, @Nullable Resources resources) {
            super(bVar, c0522a, resources);
            if (bVar != null) {
                this.f2457a = bVar.f2457a;
                this.f2458b = bVar.f2458b;
            } else {
                this.f2457a = new LongSparseArray<>();
                this.f2458b = new SparseArrayCompat<>();
            }
        }

        @Override // android.support.v7.p050b.p051a.C0525d.a, android.support.v7.p050b.p051a.C0523b.b
        /* renamed from: a */
        void mo2684a() {
            this.f2457a = this.f2457a.m8028clone();
            this.f2458b = this.f2458b.m8029clone();
        }

        /* renamed from: a */
        int m2681a(int i, int i2, @NonNull Drawable drawable, boolean z) {
            int a2 = super.m2702a(drawable);
            long m2678f = m2678f(i, i2);
            long j = 0;
            if (z) {
                j = IjkMediaMeta.AV_CH_SURROUND_DIRECT_LEFT;
            }
            this.f2457a.append(m2678f, Long.valueOf(a2 | j));
            if (z) {
                this.f2457a.append(m2678f(i2, i), Long.valueOf(j | a2 | IjkMediaMeta.AV_CH_WIDE_RIGHT));
            }
            return a2;
        }

        /* renamed from: a */
        int m2683a(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
            int m2730a = super.m2730a(iArr, drawable);
            this.f2458b.put(m2730a, Integer.valueOf(i));
            return m2730a;
        }

        /* renamed from: a */
        int m2682a(@NonNull int[] iArr) {
            int m2731b = super.m2731b(iArr);
            return m2731b >= 0 ? m2731b : super.m2731b(StateSet.WILD_CARD);
        }

        /* renamed from: a */
        int m2679a(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f2458b.get(i, 0).intValue();
        }

        /* renamed from: a */
        int m2680a(int i, int i2) {
            return (int) this.f2457a.get(m2678f(i, i2), -1L).longValue();
        }

        /* renamed from: b */
        boolean m2685b(int i, int i2) {
            return (this.f2457a.get(m2678f(i, i2), -1L).longValue() & IjkMediaMeta.AV_CH_WIDE_RIGHT) != 0;
        }

        /* renamed from: c */
        boolean m2686c(int i, int i2) {
            return (this.f2457a.get(m2678f(i, i2), -1L).longValue() & IjkMediaMeta.AV_CH_SURROUND_DIRECT_LEFT) != 0;
        }

        @Override // android.support.v7.p050b.p051a.C0525d.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new C0522a(this, null);
        }

        @Override // android.support.v7.p050b.p051a.C0525d.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new C0522a(this, resources);
        }

        /* renamed from: f */
        private static long m2678f(int i, int i2) {
            return (i << 32) | i2;
        }
    }

    @Override // android.support.v7.p050b.p051a.C0525d, android.support.v7.p050b.p051a.C0523b
    /* renamed from: a */
    protected void mo2672a(@NonNull C0523b.b bVar) {
        super.mo2672a(bVar);
        if (bVar instanceof b) {
            this.f2451b = (b) bVar;
        }
    }

    /* renamed from: android.support.v7.b.a.a$e */
    private static class e implements TimeInterpolator {

        /* renamed from: a */
        private int[] f2462a;

        /* renamed from: b */
        private int f2463b;

        /* renamed from: c */
        private int f2464c;

        e(AnimationDrawable animationDrawable, boolean z) {
            m2690a(animationDrawable, z);
        }

        /* renamed from: a */
        int m2690a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f2463b = numberOfFrames;
            if (this.f2462a == null || this.f2462a.length < numberOfFrames) {
                this.f2462a = new int[numberOfFrames];
            }
            int[] iArr = this.f2462a;
            int i = 0;
            int i2 = 0;
            while (i < numberOfFrames) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i) - 1 : i);
                iArr[i] = duration;
                i++;
                i2 = duration + i2;
            }
            this.f2464c = i2;
            return i2;
        }

        /* renamed from: a */
        int m2689a() {
            return this.f2464c;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2;
            int i = (int) ((this.f2464c * f) + 0.5f);
            int i2 = this.f2463b;
            int[] iArr = this.f2462a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            if (i3 < i2) {
                f2 = i / this.f2464c;
            } else {
                f2 = 0.0f;
            }
            return f2 + (i3 / i2);
        }
    }
}
