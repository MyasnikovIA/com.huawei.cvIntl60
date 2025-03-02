package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: android.support.graphics.drawable.c */
/* loaded from: classes.dex */
public class C0295c extends AbstractC0300h implements InterfaceC0294b {

    /* renamed from: a */
    ArrayList<Object> f1880a;

    /* renamed from: b */
    final Drawable.Callback f1881b;

    /* renamed from: d */
    private a f1882d;

    /* renamed from: e */
    private Context f1883e;

    /* renamed from: f */
    private ArgbEvaluator f1884f;

    /* renamed from: g */
    private Animator.AnimatorListener f1885g;

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    C0295c() {
        this(null, null, null);
    }

    private C0295c(@Nullable Context context) {
        this(context, null, null);
    }

    private C0295c(@Nullable Context context, @Nullable a aVar, @Nullable Resources resources) {
        this.f1884f = null;
        this.f1885g = null;
        this.f1880a = null;
        this.f1881b = new Drawable.Callback() { // from class: android.support.graphics.drawable.c.1
            AnonymousClass1() {
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                C0295c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                C0295c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                C0295c.this.unscheduleSelf(runnable);
            }
        };
        this.f1883e = context;
        if (aVar != null) {
            this.f1882d = aVar;
        } else {
            this.f1882d = new a(context, aVar, this.f1881b, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f1897c != null) {
            this.f1897c.mutate();
        }
        return this;
    }

    /* renamed from: a */
    public static C0295c m2209a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0295c c0295c = new C0295c(context);
        c0295c.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0295c;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1897c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.f1897c.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f1897c != null ? this.f1897c.getChangingConfigurations() : super.getChangingConfigurations() | this.f1882d.f1887a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1897c != null) {
            this.f1897c.draw(canvas);
            return;
        }
        this.f1882d.f1888b.draw(canvas);
        if (this.f1882d.f1889c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f1897c != null) {
            this.f1897c.setBounds(rect);
        } else {
            this.f1882d.f1888b.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.f1897c != null ? this.f1897c.setState(iArr) : this.f1882d.f1888b.setState(iArr);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f1897c != null ? this.f1897c.setLevel(i) : this.f1882d.f1888b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1897c != null ? DrawableCompat.getAlpha(this.f1897c) : this.f1882d.f1888b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f1897c != null) {
            this.f1897c.setAlpha(i);
        } else {
            this.f1882d.f1888b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f1897c != null) {
            this.f1897c.setColorFilter(colorFilter);
        } else {
            this.f1882d.f1888b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        if (this.f1897c != null) {
            DrawableCompat.setTint(this.f1897c, i);
        } else {
            this.f1882d.f1888b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f1897c != null) {
            DrawableCompat.setTintList(this.f1897c, colorStateList);
        } else {
            this.f1882d.f1888b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f1897c != null) {
            DrawableCompat.setTintMode(this.f1897c, mode);
        } else {
            this.f1882d.f1888b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f1897c != null) {
            return this.f1897c.setVisible(z, z2);
        }
        this.f1882d.f1888b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f1897c != null ? this.f1897c.isStateful() : this.f1882d.f1888b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1897c != null ? this.f1897c.getOpacity() : this.f1882d.f1888b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1897c != null ? this.f1897c.getIntrinsicWidth() : this.f1882d.f1888b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1897c != null ? this.f1897c.getIntrinsicHeight() : this.f1882d.f1888b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1897c != null ? DrawableCompat.isAutoMirrored(this.f1897c) : this.f1882d.f1888b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f1897c != null) {
            DrawableCompat.setAutoMirrored(this.f1897c, z);
        } else {
            this.f1882d.f1888b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f1897c != null) {
            DrawableCompat.inflate(this.f1897c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1872e);
                    int resourceId = obtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C0301i m2242a = C0301i.m2242a(resources, resourceId, theme);
                        m2242a.m2249a(false);
                        m2242a.setCallback(this.f1881b);
                        if (this.f1882d.f1888b != null) {
                            this.f1882d.f1888b.setCallback(null);
                        }
                        this.f1882d.f1888b = m2242a;
                    }
                    obtainAttributes.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(attributeSet, C0293a.f1873f);
                    String string = obtainAttributes2.getString(0);
                    int resourceId2 = obtainAttributes2.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (this.f1883e != null) {
                            m2211a(string, C0297e.m2217a(this.f1883e, resourceId2));
                        } else {
                            obtainAttributes2.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes2.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f1882d.m2212a();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.f1897c != null) {
            DrawableCompat.applyTheme(this.f1897c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f1897c != null) {
            return DrawableCompat.canApplyTheme(this.f1897c);
        }
        return false;
    }

    @RequiresApi(24)
    /* renamed from: android.support.graphics.drawable.c$b */
    private static class b extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f1892a;

        public b(Drawable.ConstantState constantState) {
            this.f1892a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0295c c0295c = new C0295c();
            c0295c.f1897c = this.f1892a.newDrawable();
            c0295c.f1897c.setCallback(c0295c.f1881b);
            return c0295c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0295c c0295c = new C0295c();
            c0295c.f1897c = this.f1892a.newDrawable(resources);
            c0295c.f1897c.setCallback(c0295c.f1881b);
            return c0295c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0295c c0295c = new C0295c();
            c0295c.f1897c = this.f1892a.newDrawable(resources, theme);
            c0295c.f1897c.setCallback(c0295c.f1881b);
            return c0295c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f1892a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1892a.getChangingConfigurations();
        }
    }

    /* renamed from: android.support.graphics.drawable.c$a */
    private static class a extends Drawable.ConstantState {

        /* renamed from: a */
        int f1887a;

        /* renamed from: b */
        C0301i f1888b;

        /* renamed from: c */
        AnimatorSet f1889c;

        /* renamed from: d */
        ArrayList<Animator> f1890d;

        /* renamed from: e */
        ArrayMap<Animator, String> f1891e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f1887a = aVar.f1887a;
                if (aVar.f1888b != null) {
                    Drawable.ConstantState constantState = aVar.f1888b.getConstantState();
                    if (resources != null) {
                        this.f1888b = (C0301i) constantState.newDrawable(resources);
                    } else {
                        this.f1888b = (C0301i) constantState.newDrawable();
                    }
                    this.f1888b = (C0301i) this.f1888b.mutate();
                    this.f1888b.setCallback(callback);
                    this.f1888b.setBounds(aVar.f1888b.getBounds());
                    this.f1888b.m2249a(false);
                }
                if (aVar.f1890d != null) {
                    int size = aVar.f1890d.size();
                    this.f1890d = new ArrayList<>(size);
                    this.f1891e = new ArrayMap<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.f1890d.get(i);
                        Animator clone = animator.clone();
                        String str = aVar.f1891e.get(animator);
                        clone.setTarget(this.f1888b.m2248a(str));
                        this.f1890d.add(clone);
                        this.f1891e.put(clone, str);
                    }
                    m2212a();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1887a;
        }

        /* renamed from: a */
        public void m2212a() {
            if (this.f1889c == null) {
                this.f1889c = new AnimatorSet();
            }
            this.f1889c.playTogether(this.f1890d);
        }
    }

    /* renamed from: a */
    private void m2210a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= childAnimations.size()) {
                    break;
                }
                m2210a(childAnimations.get(i2));
                i = i2 + 1;
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f1884f == null) {
                    this.f1884f = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f1884f);
            }
        }
    }

    /* renamed from: a */
    private void m2211a(String str, Animator animator) {
        animator.setTarget(this.f1882d.f1888b.m2248a(str));
        if (Build.VERSION.SDK_INT < 21) {
            m2210a(animator);
        }
        if (this.f1882d.f1890d == null) {
            this.f1882d.f1890d = new ArrayList<>();
            this.f1882d.f1891e = new ArrayMap<>();
        }
        this.f1882d.f1890d.add(animator);
        this.f1882d.f1891e.put(animator, str);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f1897c != null ? ((AnimatedVectorDrawable) this.f1897c).isRunning() : this.f1882d.f1889c.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f1897c != null) {
            ((AnimatedVectorDrawable) this.f1897c).start();
        } else if (!this.f1882d.f1889c.isStarted()) {
            this.f1882d.f1889c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f1897c != null) {
            ((AnimatedVectorDrawable) this.f1897c).stop();
        } else {
            this.f1882d.f1889c.end();
        }
    }

    /* renamed from: android.support.graphics.drawable.c$1 */
    class AnonymousClass1 implements Drawable.Callback {
        AnonymousClass1() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C0295c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C0295c.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C0295c.this.unscheduleSelf(runnable);
        }
    }
}
