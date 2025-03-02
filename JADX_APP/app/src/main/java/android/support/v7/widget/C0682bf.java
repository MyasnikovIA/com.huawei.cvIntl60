package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.util.AttributeSet;
import android.util.TypedValue;

/* renamed from: android.support.v7.widget.bf */
/* loaded from: classes.dex */
class C0682bf {

    /* renamed from: i */
    private static final ThreadLocal<TypedValue> f3742i = new ThreadLocal<>();

    /* renamed from: a */
    static final int[] f3734a = {-16842910};

    /* renamed from: b */
    static final int[] f3735b = {R.attr.state_focused};

    /* renamed from: c */
    static final int[] f3736c = {R.attr.state_activated};

    /* renamed from: d */
    static final int[] f3737d = {R.attr.state_pressed};

    /* renamed from: e */
    static final int[] f3738e = {R.attr.state_checked};

    /* renamed from: f */
    static final int[] f3739f = {R.attr.state_selected};

    /* renamed from: g */
    static final int[] f3740g = {-16842919, -16842908};

    /* renamed from: h */
    static final int[] f3741h = new int[0];

    /* renamed from: j */
    private static final int[] f3743j = new int[1];

    /* renamed from: a */
    public static int m4155a(Context context, int i) {
        f3743j[0] = i;
        C0687bk m4166a = C0687bk.m4166a(context, (AttributeSet) null, f3743j);
        try {
            return m4166a.m4175b(0, 0);
        } finally {
            m4166a.m4172a();
        }
    }

    /* renamed from: b */
    public static ColorStateList m4158b(Context context, int i) {
        f3743j[0] = i;
        C0687bk m4166a = C0687bk.m4166a(context, (AttributeSet) null, f3743j);
        try {
            return m4166a.m4182e(0);
        } finally {
            m4166a.m4172a();
        }
    }

    /* renamed from: c */
    public static int m4159c(Context context, int i) {
        ColorStateList m4158b = m4158b(context, i);
        if (m4158b != null && m4158b.isStateful()) {
            return m4158b.getColorForState(f3734a, m4158b.getDefaultColor());
        }
        TypedValue m4157a = m4157a();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, m4157a, true);
        return m4156a(context, i, m4157a.getFloat());
    }

    /* renamed from: a */
    private static TypedValue m4157a() {
        TypedValue typedValue = f3742i.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            f3742i.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: a */
    static int m4156a(Context context, int i, float f) {
        return ColorUtils.setAlphaComponent(m4155a(context, i), Math.round(Color.alpha(r0) * f));
    }
}
