package android.support.v7.p050b.p051a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.p050b.p051a.C0523b;
import android.util.AttributeSet;
import android.util.StateSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.b.a.d */
/* loaded from: classes.dex */
class C0525d extends C0523b {

    /* renamed from: a */
    private a f2516a;

    /* renamed from: b */
    private boolean f2517b;

    C0525d() {
        this(null, null);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m2731b = this.f2516a.m2731b(iArr);
        if (m2731b < 0) {
            m2731b = this.f2516a.m2731b(StateSet.WILD_CARD);
        }
        return m2696a(m2731b) || onStateChange;
    }

    /* renamed from: b */
    public void mo2674b(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.StateListDrawable);
        setVisible(obtainAttributes.getBoolean(R.styleable.StateListDrawable_android_visible, true), true);
        m2728a(obtainAttributes);
        m2694a(resources);
        obtainAttributes.recycle();
        m2727a(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    /* renamed from: a */
    private void m2728a(TypedArray typedArray) {
        a aVar = this.f2516a;
        if (Build.VERSION.SDK_INT >= 21) {
            aVar.f2494f |= typedArray.getChangingConfigurations();
        }
        aVar.f2499k = typedArray.getBoolean(R.styleable.StateListDrawable_android_variablePadding, aVar.f2499k);
        aVar.f2502n = typedArray.getBoolean(R.styleable.StateListDrawable_android_constantSize, aVar.f2502n);
        aVar.f2482C = typedArray.getInt(R.styleable.StateListDrawable_android_enterFadeDuration, aVar.f2482C);
        aVar.f2483D = typedArray.getInt(R.styleable.StateListDrawable_android_exitFadeDuration, aVar.f2483D);
        aVar.f2514z = typedArray.getBoolean(R.styleable.StateListDrawable_android_dither, aVar.f2514z);
    }

    /* renamed from: a */
    private void m2727a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        a aVar = this.f2516a;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 >= depth || next2 != 3) {
                    if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.StateListDrawableItem);
                        Drawable drawable = null;
                        int resourceId = obtainAttributes.getResourceId(R.styleable.StateListDrawableItem_android_drawable, -1);
                        if (resourceId > 0) {
                            drawable = C0488a.m2457b(context, resourceId);
                        }
                        obtainAttributes.recycle();
                        int[] m2729a = m2729a(attributeSet);
                        if (drawable == null) {
                            do {
                                next = xmlPullParser.next();
                            } while (next == 4);
                            if (next != 2) {
                                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                            if (Build.VERSION.SDK_INT >= 21) {
                                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                            } else {
                                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                            }
                        }
                        aVar.m2730a(m2729a, drawable);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    int[] m2729a(AttributeSet attributeSet) {
        int i;
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i2 = 0;
        int i3 = 0;
        while (i2 < attributeCount) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            switch (attributeNameResource) {
                case 0:
                    i = i3;
                    break;
                case android.R.attr.id:
                case android.R.attr.drawable:
                    i = i3;
                    break;
                default:
                    int i4 = i3 + 1;
                    if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                        attributeNameResource = -attributeNameResource;
                    }
                    iArr[i3] = attributeNameResource;
                    i = i4;
                    break;
            }
            i2++;
            i3 = i;
        }
        return StateSet.trimStateSet(iArr, i3);
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f2517b && super.mutate() == this) {
            this.f2516a.mo2684a();
            this.f2517b = true;
        }
        return this;
    }

    @Override // android.support.v7.p050b.p051a.C0523b
    /* renamed from: b */
    public a mo2675c() {
        return new a(this.f2516a, this, null);
    }

    /* renamed from: android.support.v7.b.a.d$a */
    static class a extends C0523b.b {

        /* renamed from: L */
        int[][] f2518L;

        a(a aVar, C0525d c0525d, Resources resources) {
            super(aVar, c0525d, resources);
            if (aVar != null) {
                this.f2518L = aVar.f2518L;
            } else {
                this.f2518L = new int[m2709c()][];
            }
        }

        @Override // android.support.v7.p050b.p051a.C0523b.b
        /* renamed from: a */
        void mo2684a() {
            int[][] iArr = new int[this.f2518L.length][];
            for (int length = this.f2518L.length - 1; length >= 0; length--) {
                iArr[length] = this.f2518L[length] != null ? (int[]) this.f2518L[length].clone() : null;
            }
            this.f2518L = iArr;
        }

        /* renamed from: a */
        int m2730a(int[] iArr, Drawable drawable) {
            int a2 = m2702a(drawable);
            this.f2518L[a2] = iArr;
            return a2;
        }

        /* renamed from: b */
        int m2731b(int[] iArr) {
            int[][] iArr2 = this.f2518L;
            int d = m2711d();
            for (int i = 0; i < d; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new C0525d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new C0525d(this, resources);
        }

        @Override // android.support.v7.p050b.p051a.C0523b.b
        /* renamed from: e */
        public void mo2715e(int i, int i2) {
            super.mo2715e(i, i2);
            int[][] iArr = new int[i2][];
            System.arraycopy(this.f2518L, 0, iArr, 0, i);
            this.f2518L = iArr;
        }
    }

    @Override // android.support.v7.p050b.p051a.C0523b, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // android.support.v7.p050b.p051a.C0523b
    /* renamed from: a */
    protected void mo2672a(@NonNull C0523b.b bVar) {
        super.mo2672a(bVar);
        if (bVar instanceof a) {
            this.f2516a = (a) bVar;
        }
    }

    C0525d(a aVar, Resources resources) {
        mo2672a(new a(aVar, this, resources));
        onStateChange(getState());
    }

    C0525d(@Nullable a aVar) {
        if (aVar != null) {
            mo2672a(aVar);
        }
    }
}
