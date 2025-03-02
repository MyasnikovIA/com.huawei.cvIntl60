package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: android.support.v7.widget.z */
/* loaded from: classes.dex */
class C0720z {

    /* renamed from: a */
    private static final RectF f3947a = new RectF();

    /* renamed from: b */
    private static ConcurrentHashMap<String, Method> f3948b = new ConcurrentHashMap<>();

    /* renamed from: c */
    private int f3949c = 0;

    /* renamed from: d */
    private boolean f3950d = false;

    /* renamed from: e */
    private float f3951e = -1.0f;

    /* renamed from: f */
    private float f3952f = -1.0f;

    /* renamed from: g */
    private float f3953g = -1.0f;

    /* renamed from: h */
    private int[] f3954h = new int[0];

    /* renamed from: i */
    private boolean f3955i = false;

    /* renamed from: j */
    private TextPaint f3956j;

    /* renamed from: k */
    private final TextView f3957k;

    /* renamed from: l */
    private final Context f3958l;

    C0720z(TextView textView) {
        this.f3957k = textView;
        this.f3958l = this.f3957k.getContext();
    }

    /* renamed from: a */
    void m4408a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f3958l.obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.f3949c = obtainStyledAttributes.getInt(R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m4397a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (m4403k()) {
            if (this.f3949c == 1) {
                if (!this.f3955i) {
                    DisplayMetrics displayMetrics = this.f3958l.getResources().getDisplayMetrics();
                    if (dimension2 == -1.0f) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == -1.0f) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == -1.0f) {
                        dimension = 1.0f;
                    }
                    m4396a(dimension2, dimension3, dimension);
                }
                m4401i();
                return;
            }
            return;
        }
        this.f3949c = 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4405a(int i) {
        if (m4403k()) {
            switch (i) {
                case 0:
                    m4402j();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.f3958l.getResources().getDisplayMetrics();
                    m4396a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (m4401i()) {
                        m4414f();
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4407a(int i, int i2, int i3, int i4) {
        if (m4403k()) {
            DisplayMetrics displayMetrics = this.f3958l.getResources().getDisplayMetrics();
            m4396a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m4401i()) {
                m4414f();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4409a(@NonNull int[] iArr, int i) {
        if (m4403k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f3958l.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.f3954h = m4399a(iArr2);
                if (!m4400h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f3955i = false;
            }
            if (m4401i()) {
                m4414f();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    int m4404a() {
        return this.f3949c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: b */
    int m4410b() {
        return Math.round(this.f3951e);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    int m4411c() {
        return Math.round(this.f3952f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: d */
    int m4412d() {
        return Math.round(this.f3953g);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: e */
    int[] m4413e() {
        return this.f3954h;
    }

    /* renamed from: a */
    private void m4397a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f3954h = m4399a(iArr);
            m4400h();
        }
    }

    /* renamed from: h */
    private boolean m4400h() {
        this.f3955i = this.f3954h.length > 0;
        if (this.f3955i) {
            this.f3949c = 1;
            this.f3952f = this.f3954h[0];
            this.f3953g = this.f3954h[r3 - 1];
            this.f3951e = -1.0f;
        }
        return this.f3955i;
    }

    /* renamed from: a */
    private int[] m4399a(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
            }
        }
        return iArr;
    }

    /* renamed from: a */
    private void m4396a(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f3949c = 1;
        this.f3952f = f;
        this.f3953g = f2;
        this.f3951e = f3;
        this.f3955i = false;
    }

    /* renamed from: i */
    private boolean m4401i() {
        if (m4403k() && this.f3949c == 1) {
            if (!this.f3955i || this.f3954h.length == 0) {
                float round = Math.round(this.f3952f);
                int i = 1;
                while (Math.round(this.f3951e + round) <= Math.round(this.f3953g)) {
                    i++;
                    round += this.f3951e;
                }
                int[] iArr = new int[i];
                float f = this.f3952f;
                int i2 = 0;
                while (i2 < i) {
                    iArr[i2] = Math.round(f);
                    i2++;
                    f = this.f3951e + f;
                }
                this.f3954h = m4399a(iArr);
            }
            this.f3950d = true;
        } else {
            this.f3950d = false;
        }
        return this.f3950d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: f */
    void m4414f() {
        if (m4415g()) {
            if (this.f3950d) {
                if (this.f3957k.getMeasuredHeight() > 0 && this.f3957k.getMeasuredWidth() > 0) {
                    int measuredWidth = ((Boolean) m4393a((Object) this.f3957k, "getHorizontallyScrolling", (String) false)).booleanValue() ? 1048576 : (this.f3957k.getMeasuredWidth() - this.f3957k.getTotalPaddingLeft()) - this.f3957k.getTotalPaddingRight();
                    int height = (this.f3957k.getHeight() - this.f3957k.getCompoundPaddingBottom()) - this.f3957k.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        synchronized (f3947a) {
                            f3947a.setEmpty();
                            f3947a.right = measuredWidth;
                            f3947a.bottom = height;
                            float m4390a = m4390a(f3947a);
                            if (m4390a != this.f3957k.getTextSize()) {
                                m4406a(0, m4390a);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f3950d = true;
        }
    }

    /* renamed from: j */
    private void m4402j() {
        this.f3949c = 0;
        this.f3952f = -1.0f;
        this.f3953g = -1.0f;
        this.f3951e = -1.0f;
        this.f3954h = new int[0];
        this.f3950d = false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    void m4406a(int i, float f) {
        Resources resources;
        if (this.f3958l == null) {
            resources = Resources.getSystem();
        } else {
            resources = this.f3958l.getResources();
        }
        m4395a(TypedValue.applyDimension(i, f, resources.getDisplayMetrics()));
    }

    /* renamed from: a */
    private void m4395a(float f) {
        if (f != this.f3957k.getPaint().getTextSize()) {
            this.f3957k.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f3957k.isInLayout() : false;
            if (this.f3957k.getLayout() != null) {
                this.f3950d = false;
                try {
                    Method m4394a = m4394a("nullLayouts");
                    if (m4394a != null) {
                        m4394a.invoke(this.f3957k, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.f3957k.requestLayout();
                } else {
                    this.f3957k.forceLayout();
                }
                this.f3957k.invalidate();
            }
        }
    }

    /* renamed from: a */
    private int m4390a(RectF rectF) {
        int length = this.f3954h.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = 0;
        int i2 = length - 1;
        int i3 = 1;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            if (m4398a(this.f3954h[i4], rectF)) {
                i = i3;
                i3 = i4 + 1;
            } else {
                int i5 = i4 - 1;
                i2 = i5;
                i = i5;
            }
        }
        return this.f3954h[i];
    }

    /* renamed from: a */
    private boolean m4398a(int i, RectF rectF) {
        StaticLayout m4391a;
        CharSequence transformation;
        CharSequence text = this.f3957k.getText();
        TransformationMethod transformationMethod = this.f3957k.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f3957k)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f3957k.getMaxLines() : -1;
        if (this.f3956j == null) {
            this.f3956j = new TextPaint();
        } else {
            this.f3956j.reset();
        }
        this.f3956j.set(this.f3957k.getPaint());
        this.f3956j.setTextSize(i);
        Layout.Alignment alignment = (Layout.Alignment) m4393a((Object) this.f3957k, "getLayoutAlignment", (String) Layout.Alignment.ALIGN_NORMAL);
        if (Build.VERSION.SDK_INT >= 23) {
            m4391a = m4392a(text, alignment, Math.round(rectF.right), maxLines);
        } else {
            m4391a = m4391a(text, alignment, Math.round(rectF.right));
        }
        if (maxLines == -1 || (m4391a.getLineCount() <= maxLines && m4391a.getLineEnd(m4391a.getLineCount() - 1) == text.length())) {
            return ((float) m4391a.getHeight()) <= rectF.bottom;
        }
        return false;
    }

    @RequiresApi(23)
    /* renamed from: a */
    private StaticLayout m4392a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        TextDirectionHeuristic textDirectionHeuristic = (TextDirectionHeuristic) m4393a((Object) this.f3957k, "getTextDirectionHeuristic", (String) TextDirectionHeuristics.FIRSTSTRONG_LTR);
        StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f3956j, i).setAlignment(alignment).setLineSpacing(this.f3957k.getLineSpacingExtra(), this.f3957k.getLineSpacingMultiplier()).setIncludePad(this.f3957k.getIncludeFontPadding()).setBreakStrategy(this.f3957k.getBreakStrategy()).setHyphenationFrequency(this.f3957k.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        return hyphenationFrequency.setMaxLines(i2).setTextDirection(textDirectionHeuristic).build();
    }

    /* renamed from: a */
    private StaticLayout m4391a(CharSequence charSequence, Layout.Alignment alignment, int i) {
        float floatValue;
        float floatValue2;
        boolean booleanValue;
        if (Build.VERSION.SDK_INT >= 16) {
            floatValue = this.f3957k.getLineSpacingMultiplier();
            floatValue2 = this.f3957k.getLineSpacingExtra();
            booleanValue = this.f3957k.getIncludeFontPadding();
        } else {
            floatValue = ((Float) m4393a((Object) this.f3957k, "getLineSpacingMultiplier", (String) Float.valueOf(1.0f))).floatValue();
            floatValue2 = ((Float) m4393a((Object) this.f3957k, "getLineSpacingExtra", (String) Float.valueOf(0.0f))).floatValue();
            booleanValue = ((Boolean) m4393a((Object) this.f3957k, "getIncludeFontPadding", (String) true)).booleanValue();
        }
        return new StaticLayout(charSequence, this.f3956j, i, alignment, floatValue, floatValue2, booleanValue);
    }

    /* renamed from: a */
    private <T> T m4393a(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        boolean z = false;
        try {
            try {
                T t2 = (T) m4394a(str).invoke(obj, new Object[0]);
                if (t2 == null) {
                }
                return t2;
            } catch (Exception e) {
                z = true;
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
                if (0 != 0) {
                    return null;
                }
                return t;
            }
        } catch (Throwable th) {
            if (0 != 0 || z) {
            }
            throw th;
        }
    }

    @Nullable
    /* renamed from: a */
    private Method m4394a(@NonNull String str) {
        try {
            Method method = f3948b.get(str);
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f3948b.put(str, declaredMethod);
                    return declaredMethod;
                }
                return declaredMethod;
            }
            return method;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: g */
    boolean m4415g() {
        return m4403k() && this.f3949c != 0;
    }

    /* renamed from: k */
    private boolean m4403k() {
        return !(this.f3957k instanceof C0706l);
    }
}
