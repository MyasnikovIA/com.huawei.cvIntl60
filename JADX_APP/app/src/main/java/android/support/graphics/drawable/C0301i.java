package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.content.res.ComplexColorCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: android.support.graphics.drawable.i */
/* loaded from: classes.dex */
public class C0301i extends AbstractC0300h {

    /* renamed from: a */
    static final PorterDuff.Mode f1898a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private g f1899b;

    /* renamed from: d */
    private PorterDuffColorFilter f1900d;

    /* renamed from: e */
    private ColorFilter f1901e;

    /* renamed from: f */
    private boolean f1902f;

    /* renamed from: g */
    private boolean f1903g;

    /* renamed from: h */
    private Drawable.ConstantState f1904h;

    /* renamed from: i */
    private final float[] f1905i;

    /* renamed from: j */
    private final Matrix f1906j;

    /* renamed from: k */
    private final Rect f1907k;

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

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
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    C0301i() {
        this.f1903g = true;
        this.f1905i = new float[9];
        this.f1906j = new Matrix();
        this.f1907k = new Rect();
        this.f1899b = new g();
    }

    C0301i(@NonNull g gVar) {
        this.f1903g = true;
        this.f1905i = new float[9];
        this.f1906j = new Matrix();
        this.f1907k = new Rect();
        this.f1899b = gVar;
        this.f1900d = m2247a(this.f1900d, gVar.f1956c, gVar.f1957d);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f1897c != null) {
            this.f1897c.mutate();
        } else if (!this.f1902f && super.mutate() == this) {
            this.f1899b = new g(this.f1899b);
            this.f1902f = true;
        }
        return this;
    }

    /* renamed from: a */
    Object m2248a(String str) {
        return this.f1899b.f1955b.f1948k.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1897c != null && Build.VERSION.SDK_INT >= 24) {
            return new h(this.f1897c.getConstantState());
        }
        this.f1899b.f1954a = getChangingConfigurations();
        return this.f1899b;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1897c != null) {
            this.f1897c.draw(canvas);
            return;
        }
        copyBounds(this.f1907k);
        if (this.f1907k.width() > 0 && this.f1907k.height() > 0) {
            ColorFilter colorFilter = this.f1901e == null ? this.f1900d : this.f1901e;
            canvas.getMatrix(this.f1906j);
            this.f1906j.getValues(this.f1905i);
            float abs = Math.abs(this.f1905i[0]);
            float abs2 = Math.abs(this.f1905i[4]);
            float abs3 = Math.abs(this.f1905i[1]);
            float abs4 = Math.abs(this.f1905i[3]);
            if (abs3 != 0.0f || abs4 != 0.0f) {
                abs2 = 1.0f;
                abs = 1.0f;
            }
            int min = Math.min(2048, (int) (abs * this.f1907k.width()));
            int min2 = Math.min(2048, (int) (abs2 * this.f1907k.height()));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate(this.f1907k.left, this.f1907k.top);
                if (m2245a()) {
                    canvas.translate(this.f1907k.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.f1907k.offsetTo(0, 0);
                this.f1899b.m2275b(min, min2);
                if (!this.f1903g) {
                    this.f1899b.m2271a(min, min2);
                } else if (!this.f1899b.m2276b()) {
                    this.f1899b.m2271a(min, min2);
                    this.f1899b.m2277c();
                }
                this.f1899b.m2272a(canvas, colorFilter, this.f1907k);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1897c != null ? DrawableCompat.getAlpha(this.f1897c) : this.f1899b.f1955b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f1897c != null) {
            this.f1897c.setAlpha(i);
        } else if (this.f1899b.f1955b.getRootAlpha() != i) {
            this.f1899b.f1955b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f1897c != null) {
            this.f1897c.setColorFilter(colorFilter);
        } else {
            this.f1901e = colorFilter;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    PorterDuffColorFilter m2247a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        if (this.f1897c != null) {
            DrawableCompat.setTint(this.f1897c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f1897c != null) {
            DrawableCompat.setTintList(this.f1897c, colorStateList);
            return;
        }
        g gVar = this.f1899b;
        if (gVar.f1956c != colorStateList) {
            gVar.f1956c = colorStateList;
            this.f1900d = m2247a(this.f1900d, colorStateList, gVar.f1957d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f1897c != null) {
            DrawableCompat.setTintMode(this.f1897c, mode);
            return;
        }
        g gVar = this.f1899b;
        if (gVar.f1957d != mode) {
            gVar.f1957d = mode;
            this.f1900d = m2247a(this.f1900d, gVar.f1956c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.f1897c != null) {
            return this.f1897c.isStateful();
        }
        return super.isStateful() || (this.f1899b != null && (this.f1899b.m2279d() || (this.f1899b.f1956c != null && this.f1899b.f1956c.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.f1897c != null) {
            return this.f1897c.setState(iArr);
        }
        boolean z = false;
        g gVar = this.f1899b;
        if (gVar.f1956c != null && gVar.f1957d != null) {
            this.f1900d = m2247a(this.f1900d, gVar.f1956c, gVar.f1957d);
            invalidateSelf();
            z = true;
        }
        if (gVar.m2279d() && gVar.m2274a(iArr)) {
            invalidateSelf();
            return true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f1897c != null) {
            return this.f1897c.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1897c != null ? this.f1897c.getIntrinsicWidth() : (int) this.f1899b.f1955b.f1941d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1897c != null ? this.f1897c.getIntrinsicHeight() : (int) this.f1899b.f1955b.f1942e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f1897c != null) {
            DrawableCompat.canApplyTheme(this.f1897c);
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1897c != null ? DrawableCompat.isAutoMirrored(this.f1897c) : this.f1899b.f1958e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f1897c != null) {
            DrawableCompat.setAutoMirrored(this.f1897c, z);
        } else {
            this.f1899b.f1958e = z;
        }
    }

    @Nullable
    /* renamed from: a */
    public static C0301i m2242a(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C0301i c0301i = new C0301i();
            c0301i.f1897c = ResourcesCompat.getDrawable(resources, i, theme);
            c0301i.f1904h = new h(c0301i.f1897c.getConstantState());
            return c0301i;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return m2243a(resources, xml, asAttributeSet, theme);
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    /* renamed from: a */
    public static C0301i m2243a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0301i c0301i = new C0301i();
        c0301i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0301i;
    }

    /* renamed from: a */
    static int m2240a(int i, float f2) {
        return (((int) (Color.alpha(i) * f2)) << 24) | (16777215 & i);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (this.f1897c != null) {
            this.f1897c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f1897c != null) {
            DrawableCompat.inflate(this.f1897c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        g gVar = this.f1899b;
        gVar.f1955b = new f();
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1868a);
        m2244a(obtainAttributes, xmlPullParser);
        obtainAttributes.recycle();
        gVar.f1954a = getChangingConfigurations();
        gVar.f1964k = true;
        m2246b(resources, xmlPullParser, attributeSet, theme);
        this.f1900d = m2247a(this.f1900d, gVar.f1956c, gVar.f1957d);
    }

    /* renamed from: a */
    private static PorterDuff.Mode m2241a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
        }
    }

    /* renamed from: a */
    private void m2244a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        g gVar = this.f1899b;
        f fVar = gVar.f1955b;
        gVar.f1957d = m2241a(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            gVar.f1956c = colorStateList;
        }
        gVar.f1958e = TypedArrayUtils.getNamedBoolean(typedArray, xmlPullParser, "autoMirrored", 5, gVar.f1958e);
        fVar.f1943f = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportWidth", 7, fVar.f1943f);
        fVar.f1944g = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportHeight", 8, fVar.f1944g);
        if (fVar.f1943f <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fVar.f1944g <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        fVar.f1941d = typedArray.getDimension(3, fVar.f1941d);
        fVar.f1942e = typedArray.getDimension(2, fVar.f1942e);
        if (fVar.f1941d <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (fVar.f1942e <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        fVar.setAlpha(TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "alpha", 4, fVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            fVar.f1946i = string;
            fVar.f1948k.put(string, fVar);
        }
    }

    /* renamed from: b */
    private void m2246b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        boolean z;
        g gVar = this.f1899b;
        f fVar = gVar.f1955b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.f1940c);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if ("path".equals(name)) {
                    b bVar = new b();
                    bVar.m2256a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1922b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.f1948k.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    gVar.f1954a = bVar.f1936o | gVar.f1954a;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    aVar.m2251a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1922b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.f1948k.put(aVar.getPathName(), aVar);
                    }
                    gVar.f1954a |= aVar.f1936o;
                    z = z2;
                } else {
                    if ("group".equals(name)) {
                        c cVar2 = new c();
                        cVar2.m2261a(resources, attributeSet, theme, xmlPullParser);
                        cVar.f1922b.add(cVar2);
                        arrayDeque.push(cVar2);
                        if (cVar2.getGroupName() != null) {
                            fVar.f1948k.put(cVar2.getGroupName(), cVar2);
                        }
                        gVar.f1954a |= cVar2.f1925e;
                    }
                    z = z2;
                }
                z2 = z;
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* renamed from: a */
    void m2249a(boolean z) {
        this.f1903g = z;
    }

    /* renamed from: a */
    private boolean m2245a() {
        if (Build.VERSION.SDK_INT >= 17) {
            return isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
        }
        return false;
    }

    @Override // android.support.graphics.drawable.AbstractC0300h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f1897c != null) {
            this.f1897c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f1897c != null ? this.f1897c.getChangingConfigurations() : super.getChangingConfigurations() | this.f1899b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f1897c != null) {
            this.f1897c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.f1897c != null) {
            this.f1897c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f1897c != null ? this.f1897c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.f1897c != null) {
            this.f1897c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @RequiresApi(24)
    /* renamed from: android.support.graphics.drawable.i$h */
    private static class h extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f1966a;

        public h(Drawable.ConstantState constantState) {
            this.f1966a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0301i c0301i = new C0301i();
            c0301i.f1897c = (VectorDrawable) this.f1966a.newDrawable();
            return c0301i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0301i c0301i = new C0301i();
            c0301i.f1897c = (VectorDrawable) this.f1966a.newDrawable(resources);
            return c0301i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0301i c0301i = new C0301i();
            c0301i.f1897c = (VectorDrawable) this.f1966a.newDrawable(resources, theme);
            return c0301i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f1966a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1966a.getChangingConfigurations();
        }
    }

    /* renamed from: android.support.graphics.drawable.i$g */
    private static class g extends Drawable.ConstantState {

        /* renamed from: a */
        int f1954a;

        /* renamed from: b */
        f f1955b;

        /* renamed from: c */
        ColorStateList f1956c;

        /* renamed from: d */
        PorterDuff.Mode f1957d;

        /* renamed from: e */
        boolean f1958e;

        /* renamed from: f */
        Bitmap f1959f;

        /* renamed from: g */
        ColorStateList f1960g;

        /* renamed from: h */
        PorterDuff.Mode f1961h;

        /* renamed from: i */
        int f1962i;

        /* renamed from: j */
        boolean f1963j;

        /* renamed from: k */
        boolean f1964k;

        /* renamed from: l */
        Paint f1965l;

        public g(g gVar) {
            this.f1956c = null;
            this.f1957d = C0301i.f1898a;
            if (gVar != null) {
                this.f1954a = gVar.f1954a;
                this.f1955b = new f(gVar.f1955b);
                if (gVar.f1955b.f1939b != null) {
                    this.f1955b.f1939b = new Paint(gVar.f1955b.f1939b);
                }
                if (gVar.f1955b.f1938a != null) {
                    this.f1955b.f1938a = new Paint(gVar.f1955b.f1938a);
                }
                this.f1956c = gVar.f1956c;
                this.f1957d = gVar.f1957d;
                this.f1958e = gVar.f1958e;
            }
        }

        /* renamed from: a */
        public void m2272a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f1959f, (Rect) null, rect, m2270a(colorFilter));
        }

        /* renamed from: a */
        public boolean m2273a() {
            return this.f1955b.getRootAlpha() < 255;
        }

        /* renamed from: a */
        public Paint m2270a(ColorFilter colorFilter) {
            if (!m2273a() && colorFilter == null) {
                return null;
            }
            if (this.f1965l == null) {
                this.f1965l = new Paint();
                this.f1965l.setFilterBitmap(true);
            }
            this.f1965l.setAlpha(this.f1955b.getRootAlpha());
            this.f1965l.setColorFilter(colorFilter);
            return this.f1965l;
        }

        /* renamed from: a */
        public void m2271a(int i, int i2) {
            this.f1959f.eraseColor(0);
            this.f1955b.m2267a(new Canvas(this.f1959f), i, i2, (ColorFilter) null);
        }

        /* renamed from: b */
        public void m2275b(int i, int i2) {
            if (this.f1959f == null || !m2278c(i, i2)) {
                this.f1959f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f1964k = true;
            }
        }

        /* renamed from: c */
        public boolean m2278c(int i, int i2) {
            return i == this.f1959f.getWidth() && i2 == this.f1959f.getHeight();
        }

        /* renamed from: b */
        public boolean m2276b() {
            return !this.f1964k && this.f1960g == this.f1956c && this.f1961h == this.f1957d && this.f1963j == this.f1958e && this.f1962i == this.f1955b.getRootAlpha();
        }

        /* renamed from: c */
        public void m2277c() {
            this.f1960g = this.f1956c;
            this.f1961h = this.f1957d;
            this.f1962i = this.f1955b.getRootAlpha();
            this.f1963j = this.f1958e;
            this.f1964k = false;
        }

        public g() {
            this.f1956c = null;
            this.f1957d = C0301i.f1898a;
            this.f1955b = new f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new C0301i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new C0301i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1954a;
        }

        /* renamed from: d */
        public boolean m2279d() {
            return this.f1955b.m2268a();
        }

        /* renamed from: a */
        public boolean m2274a(int[] iArr) {
            boolean m2269a = this.f1955b.m2269a(iArr);
            this.f1964k |= m2269a;
            return m2269a;
        }
    }

    /* renamed from: android.support.graphics.drawable.i$f */
    private static class f {

        /* renamed from: n */
        private static final Matrix f1937n = new Matrix();

        /* renamed from: a */
        Paint f1938a;

        /* renamed from: b */
        Paint f1939b;

        /* renamed from: c */
        final c f1940c;

        /* renamed from: d */
        float f1941d;

        /* renamed from: e */
        float f1942e;

        /* renamed from: f */
        float f1943f;

        /* renamed from: g */
        float f1944g;

        /* renamed from: h */
        int f1945h;

        /* renamed from: i */
        String f1946i;

        /* renamed from: j */
        Boolean f1947j;

        /* renamed from: k */
        final ArrayMap<String, Object> f1948k;

        /* renamed from: l */
        private final Path f1949l;

        /* renamed from: m */
        private final Path f1950m;

        /* renamed from: o */
        private final Matrix f1951o;

        /* renamed from: p */
        private PathMeasure f1952p;

        /* renamed from: q */
        private int f1953q;

        public f() {
            this.f1951o = new Matrix();
            this.f1941d = 0.0f;
            this.f1942e = 0.0f;
            this.f1943f = 0.0f;
            this.f1944g = 0.0f;
            this.f1945h = 255;
            this.f1946i = null;
            this.f1947j = null;
            this.f1948k = new ArrayMap<>();
            this.f1940c = new c();
            this.f1949l = new Path();
            this.f1950m = new Path();
        }

        public void setRootAlpha(int i) {
            this.f1945h = i;
        }

        public int getRootAlpha() {
            return this.f1945h;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (255.0f * f));
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public f(f fVar) {
            this.f1951o = new Matrix();
            this.f1941d = 0.0f;
            this.f1942e = 0.0f;
            this.f1943f = 0.0f;
            this.f1944g = 0.0f;
            this.f1945h = 255;
            this.f1946i = null;
            this.f1947j = null;
            this.f1948k = new ArrayMap<>();
            this.f1940c = new c(fVar.f1940c, this.f1948k);
            this.f1949l = new Path(fVar.f1949l);
            this.f1950m = new Path(fVar.f1950m);
            this.f1941d = fVar.f1941d;
            this.f1942e = fVar.f1942e;
            this.f1943f = fVar.f1943f;
            this.f1944g = fVar.f1944g;
            this.f1953q = fVar.f1953q;
            this.f1945h = fVar.f1945h;
            this.f1946i = fVar.f1946i;
            if (fVar.f1946i != null) {
                this.f1948k.put(fVar.f1946i, this);
            }
            this.f1947j = fVar.f1947j;
        }

        /* renamed from: a */
        private void m2265a(c cVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            cVar.f1921a.set(matrix);
            cVar.f1921a.preConcat(cVar.f1924d);
            canvas.save();
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < cVar.f1922b.size()) {
                    d dVar = cVar.f1922b.get(i4);
                    if (dVar instanceof c) {
                        m2265a((c) dVar, cVar.f1921a, canvas, i, i2, colorFilter);
                    } else if (dVar instanceof e) {
                        m2266a(cVar, (e) dVar, canvas, i, i2, colorFilter);
                    }
                    i3 = i4 + 1;
                } else {
                    canvas.restore();
                    return;
                }
            }
        }

        /* renamed from: a */
        public void m2267a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m2265a(this.f1940c, f1937n, canvas, i, i2, colorFilter);
        }

        /* renamed from: a */
        private void m2266a(c cVar, e eVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f1943f;
            float f2 = i2 / this.f1944g;
            float min = Math.min(f, f2);
            Matrix matrix = cVar.f1921a;
            this.f1951o.set(matrix);
            this.f1951o.postScale(f, f2);
            float m2264a = m2264a(matrix);
            if (m2264a != 0.0f) {
                eVar.m2262a(this.f1949l);
                Path path = this.f1949l;
                this.f1950m.reset();
                if (eVar.mo2252a()) {
                    this.f1950m.addPath(path, this.f1951o);
                    canvas.clipPath(this.f1950m);
                    return;
                }
                b bVar = (b) eVar;
                if (bVar.f1914g != 0.0f || bVar.f1915h != 1.0f) {
                    float f3 = (bVar.f1914g + bVar.f1916i) % 1.0f;
                    float f4 = (bVar.f1915h + bVar.f1916i) % 1.0f;
                    if (this.f1952p == null) {
                        this.f1952p = new PathMeasure();
                    }
                    this.f1952p.setPath(this.f1949l, false);
                    float length = this.f1952p.getLength();
                    float f5 = f3 * length;
                    float f6 = f4 * length;
                    path.reset();
                    if (f5 > f6) {
                        this.f1952p.getSegment(f5, length, path, true);
                        this.f1952p.getSegment(0.0f, f6, path, true);
                    } else {
                        this.f1952p.getSegment(f5, f6, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.f1950m.addPath(path, this.f1951o);
                if (bVar.f1910c.willDraw()) {
                    ComplexColorCompat complexColorCompat = bVar.f1910c;
                    if (this.f1939b == null) {
                        this.f1939b = new Paint(1);
                        this.f1939b.setStyle(Paint.Style.FILL);
                    }
                    Paint paint = this.f1939b;
                    if (complexColorCompat.isGradient()) {
                        Shader shader = complexColorCompat.getShader();
                        shader.setLocalMatrix(this.f1951o);
                        paint.setShader(shader);
                        paint.setAlpha(Math.round(bVar.f1913f * 255.0f));
                    } else {
                        paint.setColor(C0301i.m2240a(complexColorCompat.getColor(), bVar.f1913f));
                    }
                    paint.setColorFilter(colorFilter);
                    this.f1950m.setFillType(bVar.f1912e == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    canvas.drawPath(this.f1950m, paint);
                }
                if (bVar.f1908a.willDraw()) {
                    ComplexColorCompat complexColorCompat2 = bVar.f1908a;
                    if (this.f1938a == null) {
                        this.f1938a = new Paint(1);
                        this.f1938a.setStyle(Paint.Style.STROKE);
                    }
                    Paint paint2 = this.f1938a;
                    if (bVar.f1918k != null) {
                        paint2.setStrokeJoin(bVar.f1918k);
                    }
                    if (bVar.f1917j != null) {
                        paint2.setStrokeCap(bVar.f1917j);
                    }
                    paint2.setStrokeMiter(bVar.f1919l);
                    if (complexColorCompat2.isGradient()) {
                        Shader shader2 = complexColorCompat2.getShader();
                        shader2.setLocalMatrix(this.f1951o);
                        paint2.setShader(shader2);
                        paint2.setAlpha(Math.round(bVar.f1911d * 255.0f));
                    } else {
                        paint2.setColor(C0301i.m2240a(complexColorCompat2.getColor(), bVar.f1911d));
                    }
                    paint2.setColorFilter(colorFilter);
                    paint2.setStrokeWidth(min * m2264a * bVar.f1909b);
                    canvas.drawPath(this.f1950m, paint2);
                }
            }
        }

        /* renamed from: a */
        private static float m2263a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: a */
        private float m2264a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float m2263a = m2263a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                return Math.abs(m2263a) / max;
            }
            return 0.0f;
        }

        /* renamed from: a */
        public boolean m2268a() {
            if (this.f1947j == null) {
                this.f1947j = Boolean.valueOf(this.f1940c.mo2258b());
            }
            return this.f1947j.booleanValue();
        }

        /* renamed from: a */
        public boolean m2269a(int[] iArr) {
            return this.f1940c.mo2257a(iArr);
        }
    }

    /* renamed from: android.support.graphics.drawable.i$d */
    private static abstract class d {
        private d() {
        }

        /* synthetic */ d(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: b */
        public boolean mo2258b() {
            return false;
        }

        /* renamed from: a */
        public boolean mo2257a(int[] iArr) {
            return false;
        }
    }

    /* renamed from: android.support.graphics.drawable.i$c */
    private static class c extends d {

        /* renamed from: a */
        final Matrix f1921a;

        /* renamed from: b */
        final ArrayList<d> f1922b;

        /* renamed from: c */
        float f1923c;

        /* renamed from: d */
        final Matrix f1924d;

        /* renamed from: e */
        int f1925e;

        /* renamed from: f */
        private float f1926f;

        /* renamed from: g */
        private float f1927g;

        /* renamed from: h */
        private float f1928h;

        /* renamed from: i */
        private float f1929i;

        /* renamed from: j */
        private float f1930j;

        /* renamed from: k */
        private float f1931k;

        /* renamed from: l */
        private int[] f1932l;

        /* renamed from: m */
        private String f1933m;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v8, types: [android.support.graphics.drawable.i$b] */
        /* JADX WARN: Type inference failed for: r7v0, types: [android.support.v4.util.ArrayMap, android.support.v4.util.ArrayMap<java.lang.String, java.lang.Object>] */
        public c(c cVar, ArrayMap<String, Object> arrayMap) {
            super();
            a aVar;
            this.f1921a = new Matrix();
            this.f1922b = new ArrayList<>();
            this.f1923c = 0.0f;
            this.f1926f = 0.0f;
            this.f1927g = 0.0f;
            this.f1928h = 1.0f;
            this.f1929i = 1.0f;
            this.f1930j = 0.0f;
            this.f1931k = 0.0f;
            this.f1924d = new Matrix();
            this.f1933m = null;
            this.f1923c = cVar.f1923c;
            this.f1926f = cVar.f1926f;
            this.f1927g = cVar.f1927g;
            this.f1928h = cVar.f1928h;
            this.f1929i = cVar.f1929i;
            this.f1930j = cVar.f1930j;
            this.f1931k = cVar.f1931k;
            this.f1932l = cVar.f1932l;
            this.f1933m = cVar.f1933m;
            this.f1925e = cVar.f1925e;
            if (this.f1933m != null) {
                arrayMap.put(this.f1933m, this);
            }
            this.f1924d.set(cVar.f1924d);
            ArrayList<d> arrayList = cVar.f1922b;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    d dVar = arrayList.get(i2);
                    if (dVar instanceof c) {
                        this.f1922b.add(new c((c) dVar, arrayMap));
                    } else {
                        if (dVar instanceof b) {
                            aVar = new b((b) dVar);
                        } else if (dVar instanceof a) {
                            aVar = new a((a) dVar);
                        } else {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        this.f1922b.add(aVar);
                        if (aVar.f1935n != null) {
                            arrayMap.put(aVar.f1935n, aVar);
                        }
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        public c() {
            super();
            this.f1921a = new Matrix();
            this.f1922b = new ArrayList<>();
            this.f1923c = 0.0f;
            this.f1926f = 0.0f;
            this.f1927g = 0.0f;
            this.f1928h = 1.0f;
            this.f1929i = 1.0f;
            this.f1930j = 0.0f;
            this.f1931k = 0.0f;
            this.f1924d = new Matrix();
            this.f1933m = null;
        }

        public String getGroupName() {
            return this.f1933m;
        }

        public Matrix getLocalMatrix() {
            return this.f1924d;
        }

        /* renamed from: a */
        public void m2261a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1869b);
            m2260a(obtainAttributes, xmlPullParser);
            obtainAttributes.recycle();
        }

        /* renamed from: a */
        private void m2260a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f1932l = null;
            this.f1923c = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "rotation", 5, this.f1923c);
            this.f1926f = typedArray.getFloat(1, this.f1926f);
            this.f1927g = typedArray.getFloat(2, this.f1927g);
            this.f1928h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleX", 3, this.f1928h);
            this.f1929i = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleY", 4, this.f1929i);
            this.f1930j = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateX", 6, this.f1930j);
            this.f1931k = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateY", 7, this.f1931k);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f1933m = string;
            }
            m2259a();
        }

        /* renamed from: a */
        private void m2259a() {
            this.f1924d.reset();
            this.f1924d.postTranslate(-this.f1926f, -this.f1927g);
            this.f1924d.postScale(this.f1928h, this.f1929i);
            this.f1924d.postRotate(this.f1923c, 0.0f, 0.0f);
            this.f1924d.postTranslate(this.f1930j + this.f1926f, this.f1931k + this.f1927g);
        }

        public float getRotation() {
            return this.f1923c;
        }

        public void setRotation(float f) {
            if (f != this.f1923c) {
                this.f1923c = f;
                m2259a();
            }
        }

        public float getPivotX() {
            return this.f1926f;
        }

        public void setPivotX(float f) {
            if (f != this.f1926f) {
                this.f1926f = f;
                m2259a();
            }
        }

        public float getPivotY() {
            return this.f1927g;
        }

        public void setPivotY(float f) {
            if (f != this.f1927g) {
                this.f1927g = f;
                m2259a();
            }
        }

        public float getScaleX() {
            return this.f1928h;
        }

        public void setScaleX(float f) {
            if (f != this.f1928h) {
                this.f1928h = f;
                m2259a();
            }
        }

        public float getScaleY() {
            return this.f1929i;
        }

        public void setScaleY(float f) {
            if (f != this.f1929i) {
                this.f1929i = f;
                m2259a();
            }
        }

        public float getTranslateX() {
            return this.f1930j;
        }

        public void setTranslateX(float f) {
            if (f != this.f1930j) {
                this.f1930j = f;
                m2259a();
            }
        }

        public float getTranslateY() {
            return this.f1931k;
        }

        public void setTranslateY(float f) {
            if (f != this.f1931k) {
                this.f1931k = f;
                m2259a();
            }
        }

        @Override // android.support.graphics.drawable.C0301i.d
        /* renamed from: b */
        public boolean mo2258b() {
            for (int i = 0; i < this.f1922b.size(); i++) {
                if (this.f1922b.get(i).mo2258b()) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.support.graphics.drawable.C0301i.d
        /* renamed from: a */
        public boolean mo2257a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f1922b.size(); i++) {
                z |= this.f1922b.get(i).mo2257a(iArr);
            }
            return z;
        }
    }

    /* renamed from: android.support.graphics.drawable.i$e */
    private static abstract class e extends d {

        /* renamed from: m */
        protected PathParser.PathDataNode[] f1934m;

        /* renamed from: n */
        String f1935n;

        /* renamed from: o */
        int f1936o;

        public e() {
            super();
            this.f1934m = null;
        }

        public e(e eVar) {
            super();
            this.f1934m = null;
            this.f1935n = eVar.f1935n;
            this.f1936o = eVar.f1936o;
            this.f1934m = PathParser.deepCopyNodes(eVar.f1934m);
        }

        /* renamed from: a */
        public void m2262a(Path path) {
            path.reset();
            if (this.f1934m != null) {
                PathParser.PathDataNode.nodesToPath(this.f1934m, path);
            }
        }

        public String getPathName() {
            return this.f1935n;
        }

        /* renamed from: a */
        public boolean mo2252a() {
            return false;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f1934m;
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (!PathParser.canMorph(this.f1934m, pathDataNodeArr)) {
                this.f1934m = PathParser.deepCopyNodes(pathDataNodeArr);
            } else {
                PathParser.updateNodes(this.f1934m, pathDataNodeArr);
            }
        }
    }

    /* renamed from: android.support.graphics.drawable.i$a */
    private static class a extends e {
        public a() {
        }

        public a(a aVar) {
            super(aVar);
        }

        /* renamed from: a */
        public void m2251a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1871d);
                m2250a(obtainAttributes);
                obtainAttributes.recycle();
            }
        }

        /* renamed from: a */
        private void m2250a(TypedArray typedArray) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f1935n = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f1934m = PathParser.createNodesFromPathData(string2);
            }
        }

        @Override // android.support.graphics.drawable.C0301i.e
        /* renamed from: a */
        public boolean mo2252a() {
            return true;
        }
    }

    /* renamed from: android.support.graphics.drawable.i$b */
    private static class b extends e {

        /* renamed from: a */
        ComplexColorCompat f1908a;

        /* renamed from: b */
        float f1909b;

        /* renamed from: c */
        ComplexColorCompat f1910c;

        /* renamed from: d */
        float f1911d;

        /* renamed from: e */
        int f1912e;

        /* renamed from: f */
        float f1913f;

        /* renamed from: g */
        float f1914g;

        /* renamed from: h */
        float f1915h;

        /* renamed from: i */
        float f1916i;

        /* renamed from: j */
        Paint.Cap f1917j;

        /* renamed from: k */
        Paint.Join f1918k;

        /* renamed from: l */
        float f1919l;

        /* renamed from: p */
        private int[] f1920p;

        public b() {
            this.f1909b = 0.0f;
            this.f1911d = 1.0f;
            this.f1912e = 0;
            this.f1913f = 1.0f;
            this.f1914g = 0.0f;
            this.f1915h = 1.0f;
            this.f1916i = 0.0f;
            this.f1917j = Paint.Cap.BUTT;
            this.f1918k = Paint.Join.MITER;
            this.f1919l = 4.0f;
        }

        public b(b bVar) {
            super(bVar);
            this.f1909b = 0.0f;
            this.f1911d = 1.0f;
            this.f1912e = 0;
            this.f1913f = 1.0f;
            this.f1914g = 0.0f;
            this.f1915h = 1.0f;
            this.f1916i = 0.0f;
            this.f1917j = Paint.Cap.BUTT;
            this.f1918k = Paint.Join.MITER;
            this.f1919l = 4.0f;
            this.f1920p = bVar.f1920p;
            this.f1908a = bVar.f1908a;
            this.f1909b = bVar.f1909b;
            this.f1911d = bVar.f1911d;
            this.f1910c = bVar.f1910c;
            this.f1912e = bVar.f1912e;
            this.f1913f = bVar.f1913f;
            this.f1914g = bVar.f1914g;
            this.f1915h = bVar.f1915h;
            this.f1916i = bVar.f1916i;
            this.f1917j = bVar.f1917j;
            this.f1918k = bVar.f1918k;
            this.f1919l = bVar.f1919l;
        }

        /* renamed from: a */
        private Paint.Cap m2253a(int i, Paint.Cap cap) {
            switch (i) {
                case 0:
                    return Paint.Cap.BUTT;
                case 1:
                    return Paint.Cap.ROUND;
                case 2:
                    return Paint.Cap.SQUARE;
                default:
                    return cap;
            }
        }

        /* renamed from: a */
        private Paint.Join m2254a(int i, Paint.Join join) {
            switch (i) {
                case 0:
                    return Paint.Join.MITER;
                case 1:
                    return Paint.Join.ROUND;
                case 2:
                    return Paint.Join.BEVEL;
                default:
                    return join;
            }
        }

        /* renamed from: a */
        public void m2256a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1870c);
            m2255a(obtainAttributes, xmlPullParser, theme);
            obtainAttributes.recycle();
        }

        /* renamed from: a */
        private void m2255a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f1920p = null;
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f1935n = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f1934m = PathParser.createNodesFromPathData(string2);
                }
                this.f1910c = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f1913f = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.f1913f);
                this.f1917j = m2253a(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f1917j);
                this.f1918k = m2254a(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f1918k);
                this.f1919l = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f1919l);
                this.f1908a = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f1911d = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.f1911d);
                this.f1909b = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, this.f1909b);
                this.f1915h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.f1915h);
                this.f1916i = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.f1916i);
                this.f1914g = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.f1914g);
                this.f1912e = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, this.f1912e);
            }
        }

        @Override // android.support.graphics.drawable.C0301i.d
        /* renamed from: b */
        public boolean mo2258b() {
            return this.f1910c.isStateful() || this.f1908a.isStateful();
        }

        @Override // android.support.graphics.drawable.C0301i.d
        /* renamed from: a */
        public boolean mo2257a(int[] iArr) {
            return this.f1910c.onStateChanged(iArr) | this.f1908a.onStateChanged(iArr);
        }

        @ColorInt
        int getStrokeColor() {
            return this.f1908a.getColor();
        }

        void setStrokeColor(int i) {
            this.f1908a.setColor(i);
        }

        float getStrokeWidth() {
            return this.f1909b;
        }

        void setStrokeWidth(float f) {
            this.f1909b = f;
        }

        float getStrokeAlpha() {
            return this.f1911d;
        }

        void setStrokeAlpha(float f) {
            this.f1911d = f;
        }

        @ColorInt
        int getFillColor() {
            return this.f1910c.getColor();
        }

        void setFillColor(int i) {
            this.f1910c.setColor(i);
        }

        float getFillAlpha() {
            return this.f1913f;
        }

        void setFillAlpha(float f) {
            this.f1913f = f;
        }

        float getTrimPathStart() {
            return this.f1914g;
        }

        void setTrimPathStart(float f) {
            this.f1914g = f;
        }

        float getTrimPathEnd() {
            return this.f1915h;
        }

        void setTrimPathEnd(float f) {
            this.f1915h = f;
        }

        float getTrimPathOffset() {
            return this.f1916i;
        }

        void setTrimPathOffset(float f) {
            this.f1916i = f;
        }
    }
}
