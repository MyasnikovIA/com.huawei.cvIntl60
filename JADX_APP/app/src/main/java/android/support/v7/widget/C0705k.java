package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.C0295c;
import android.support.graphics.drawable.C0301i;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.R;
import android.support.v7.p048a.p049a.C0488a;
import android.support.v7.p050b.p051a.C0522a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.k */
/* loaded from: classes.dex */
public final class C0705k {

    /* renamed from: b */
    private static C0705k f3869b;

    /* renamed from: j */
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> f3877j;

    /* renamed from: k */
    private ArrayMap<String, d> f3878k;

    /* renamed from: l */
    private SparseArrayCompat<String> f3879l;

    /* renamed from: m */
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> f3880m = new WeakHashMap<>(0);

    /* renamed from: n */
    private TypedValue f3881n;

    /* renamed from: o */
    private boolean f3882o;

    /* renamed from: a */
    private static final PorterDuff.Mode f3868a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final c f3870c = new c(6);

    /* renamed from: d */
    private static final int[] f3871d = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: e */
    private static final int[] f3872e = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: f */
    private static final int[] f3873f = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};

    /* renamed from: g */
    private static final int[] f3874g = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: h */
    private static final int[] f3875h = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: i */
    private static final int[] f3876i = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};

    /* renamed from: android.support.v7.widget.k$d */
    private interface d {
        /* renamed from: a */
        Drawable mo4335a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* renamed from: a */
    public static synchronized C0705k m4313a() {
        C0705k c0705k;
        synchronized (C0705k.class) {
            if (f3869b == null) {
                f3869b = new C0705k();
                m4317a(f3869b);
            }
            c0705k = f3869b;
        }
        return c0705k;
    }

    /* renamed from: a */
    private static void m4317a(@NonNull C0705k c0705k) {
        if (Build.VERSION.SDK_INT < 24) {
            c0705k.m4318a("vector", new e());
            c0705k.m4318a("animated-vector", new b());
            c0705k.m4318a("animated-selector", new a());
        }
    }

    /* renamed from: a */
    public synchronized Drawable m4331a(@NonNull Context context, @DrawableRes int i) {
        return m4332a(context, i, false);
    }

    /* renamed from: a */
    synchronized Drawable m4332a(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable m4327d;
        m4329e(context);
        m4327d = m4327d(context, i);
        if (m4327d == null) {
            m4327d = m4325c(context, i);
        }
        if (m4327d == null) {
            m4327d = ContextCompat.getDrawable(context, i);
        }
        if (m4327d != null) {
            m4327d = m4311a(context, i, z, m4327d);
        }
        if (m4327d != null) {
            C0659aj.m3930a(m4327d);
        }
        return m4327d;
    }

    /* renamed from: a */
    private static long m4306a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: c */
    private Drawable m4325c(@NonNull Context context, @DrawableRes int i) {
        if (this.f3881n == null) {
            this.f3881n = new TypedValue();
        }
        TypedValue typedValue = this.f3881n;
        context.getResources().getValue(i, typedValue, true);
        long m4306a = m4306a(typedValue);
        Drawable m4312a = m4312a(context, m4306a);
        if (m4312a == null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                m4312a = new LayerDrawable(new Drawable[]{m4331a(context, R.drawable.abc_cab_background_internal_bg), m4331a(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (m4312a != null) {
                m4312a.setChangingConfigurations(typedValue.changingConfigurations);
                m4320a(context, m4306a, m4312a);
            }
        }
        return m4312a;
    }

    /* renamed from: a */
    private Drawable m4311a(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        ColorStateList m4334b = m4334b(context, i);
        if (m4334b != null) {
            if (C0659aj.m3931b(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable wrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(wrap, m4334b);
            PorterDuff.Mode m4308a = m4308a(i);
            if (m4308a != null) {
                DrawableCompat.setTintMode(wrap, m4308a);
                return wrap;
            }
            return wrap;
        }
        if (i == R.drawable.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            m4315a(layerDrawable.findDrawableByLayerId(android.R.id.background), C0682bf.m4155a(context, R.attr.colorControlNormal), f3868a);
            m4315a(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), C0682bf.m4155a(context, R.attr.colorControlNormal), f3868a);
            m4315a(layerDrawable.findDrawableByLayerId(android.R.id.progress), C0682bf.m4155a(context, R.attr.colorControlActivated), f3868a);
            return drawable;
        }
        if (i == R.drawable.abc_ratingbar_material || i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m4315a(layerDrawable2.findDrawableByLayerId(android.R.id.background), C0682bf.m4159c(context, R.attr.colorControlNormal), f3868a);
            m4315a(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), C0682bf.m4155a(context, R.attr.colorControlActivated), f3868a);
            m4315a(layerDrawable2.findDrawableByLayerId(android.R.id.progress), C0682bf.m4155a(context, R.attr.colorControlActivated), f3868a);
            return drawable;
        }
        if (!m4319a(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.graphics.drawable.Drawable m4327d(@android.support.annotation.NonNull android.content.Context r10, @android.support.annotation.DrawableRes int r11) {
        /*
            r9 = this;
            r1 = 0
            r8 = 2
            r7 = 1
            android.support.v4.util.ArrayMap<java.lang.String, android.support.v7.widget.k$d> r0 = r9.f3878k
            if (r0 == 0) goto Lbf
            android.support.v4.util.ArrayMap<java.lang.String, android.support.v7.widget.k$d> r0 = r9.f3878k
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lbf
            android.support.v4.util.SparseArrayCompat<java.lang.String> r0 = r9.f3879l
            if (r0 == 0) goto L2f
            android.support.v4.util.SparseArrayCompat<java.lang.String> r0 = r9.f3879l
            java.lang.Object r0 = r0.get(r11)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r2 = "appcompat_skip_skip"
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L2d
            if (r0 == 0) goto L36
            android.support.v4.util.ArrayMap<java.lang.String, android.support.v7.widget.k$d> r2 = r9.f3878k
            java.lang.Object r0 = r2.get(r0)
            if (r0 != 0) goto L36
        L2d:
            r0 = r1
        L2e:
            return r0
        L2f:
            android.support.v4.util.SparseArrayCompat r0 = new android.support.v4.util.SparseArrayCompat
            r0.<init>()
            r9.f3879l = r0
        L36:
            android.util.TypedValue r0 = r9.f3881n
            if (r0 != 0) goto L41
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r9.f3881n = r0
        L41:
            android.util.TypedValue r2 = r9.f3881n
            android.content.res.Resources r0 = r10.getResources()
            r0.getValue(r11, r2, r7)
            long r4 = m4306a(r2)
            android.graphics.drawable.Drawable r1 = r9.m4312a(r10, r4)
            if (r1 == 0) goto L56
            r0 = r1
            goto L2e
        L56:
            java.lang.CharSequence r3 = r2.string
            if (r3 == 0) goto L8a
            java.lang.CharSequence r3 = r2.string
            java.lang.String r3 = r3.toString()
            java.lang.String r6 = ".xml"
            boolean r3 = r3.endsWith(r6)
            if (r3 == 0) goto L8a
            android.content.res.XmlResourceParser r3 = r0.getXml(r11)     // Catch: java.lang.Exception -> L82
            android.util.AttributeSet r6 = android.util.Xml.asAttributeSet(r3)     // Catch: java.lang.Exception -> L82
        L70:
            int r0 = r3.next()     // Catch: java.lang.Exception -> L82
            if (r0 == r8) goto L78
            if (r0 != r7) goto L70
        L78:
            if (r0 == r8) goto L95
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException     // Catch: java.lang.Exception -> L82
            java.lang.String r2 = "No start tag found"
            r0.<init>(r2)     // Catch: java.lang.Exception -> L82
            throw r0     // Catch: java.lang.Exception -> L82
        L82:
            r0 = move-exception
            java.lang.String r2 = "AppCompatDrawableManag"
            java.lang.String r3 = "Exception while inflating drawable"
            android.util.Log.e(r2, r3, r0)
        L8a:
            r0 = r1
        L8b:
            if (r0 != 0) goto L2e
            android.support.v4.util.SparseArrayCompat<java.lang.String> r1 = r9.f3879l
            java.lang.String r2 = "appcompat_skip_skip"
            r1.append(r11, r2)
            goto L2e
        L95:
            java.lang.String r0 = r3.getName()     // Catch: java.lang.Exception -> L82
            android.support.v4.util.SparseArrayCompat<java.lang.String> r7 = r9.f3879l     // Catch: java.lang.Exception -> L82
            r7.append(r11, r0)     // Catch: java.lang.Exception -> L82
            android.support.v4.util.ArrayMap<java.lang.String, android.support.v7.widget.k$d> r7 = r9.f3878k     // Catch: java.lang.Exception -> L82
            java.lang.Object r0 = r7.get(r0)     // Catch: java.lang.Exception -> L82
            android.support.v7.widget.k$d r0 = (android.support.v7.widget.C0705k.d) r0     // Catch: java.lang.Exception -> L82
            if (r0 == 0) goto Lb0
            android.content.res.Resources$Theme r7 = r10.getTheme()     // Catch: java.lang.Exception -> L82
            android.graphics.drawable.Drawable r1 = r0.mo4335a(r10, r3, r6, r7)     // Catch: java.lang.Exception -> L82
        Lb0:
            if (r1 == 0) goto Lbd
            int r0 = r2.changingConfigurations     // Catch: java.lang.Exception -> L82
            r1.setChangingConfigurations(r0)     // Catch: java.lang.Exception -> L82
            boolean r0 = r9.m4320a(r10, r4, r1)     // Catch: java.lang.Exception -> L82
            if (r0 == 0) goto Lbd
        Lbd:
            r0 = r1
            goto L8b
        Lbf:
            r0 = r1
            goto L2e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.C0705k.m4327d(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private synchronized Drawable m4312a(@NonNull Context context, long j) {
        Drawable drawable;
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f3880m.get(context);
        if (longSparseArray == null) {
            drawable = null;
        } else {
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    drawable = constantState.newDrawable(context.getResources());
                } else {
                    longSparseArray.delete(j);
                }
            }
            drawable = null;
        }
        return drawable;
    }

    /* renamed from: a */
    private synchronized boolean m4320a(@NonNull Context context, long j, @NonNull Drawable drawable) {
        boolean z;
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f3880m.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.f3880m.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference<>(constantState));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    synchronized Drawable m4333a(@NonNull Context context, @NonNull C0692bp c0692bp, @DrawableRes int i) {
        Drawable m4327d;
        m4327d = m4327d(context, i);
        if (m4327d == null) {
            m4327d = c0692bp.m4216a(i);
        }
        return m4327d != null ? m4311a(context, i, false, m4327d) : null;
    }

    /* renamed from: a */
    static boolean m4319a(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        int i2;
        boolean z;
        int i3 = android.R.attr.colorBackground;
        PorterDuff.Mode mode = f3868a;
        if (m4322a(f3871d, i)) {
            i3 = R.attr.colorControlNormal;
            i2 = -1;
            z = true;
        } else if (m4322a(f3873f, i)) {
            i3 = R.attr.colorControlActivated;
            i2 = -1;
            z = true;
        } else if (m4322a(f3874g, i)) {
            mode = PorterDuff.Mode.MULTIPLY;
            i2 = -1;
            z = true;
        } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
            i3 = android.R.attr.colorForeground;
            i2 = Math.round(40.8f);
            z = true;
        } else if (i == R.drawable.abc_dialog_material_background) {
            i2 = -1;
            z = true;
        } else {
            i2 = -1;
            i3 = 0;
            z = false;
        }
        if (!z) {
            return false;
        }
        if (C0659aj.m3931b(drawable)) {
            drawable = drawable.mutate();
        }
        drawable.setColorFilter(m4309a(C0682bf.m4155a(context, i3), mode));
        if (i2 == -1) {
            return true;
        }
        drawable.setAlpha(i2);
        return true;
    }

    /* renamed from: a */
    private void m4318a(@NonNull String str, @NonNull d dVar) {
        if (this.f3878k == null) {
            this.f3878k = new ArrayMap<>();
        }
        this.f3878k.put(str, dVar);
    }

    /* renamed from: a */
    private static boolean m4322a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    static PorterDuff.Mode m4308a(int i) {
        if (i != R.drawable.abc_switch_thumb_material) {
            return null;
        }
        return PorterDuff.Mode.MULTIPLY;
    }

    /* renamed from: b */
    synchronized ColorStateList m4334b(@NonNull Context context, @DrawableRes int i) {
        ColorStateList m4328e;
        m4328e = m4328e(context, i);
        if (m4328e == null) {
            if (i == R.drawable.abc_edit_text_material) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_edittext);
            } else if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_switch_track);
            } else if (i == R.drawable.abc_switch_thumb_material) {
                m4328e = m4326d(context);
            } else if (i == R.drawable.abc_btn_default_mtrl_shape) {
                m4328e = m4307a(context);
            } else if (i == R.drawable.abc_btn_borderless_material) {
                m4328e = m4323b(context);
            } else if (i == R.drawable.abc_btn_colored_material) {
                m4328e = m4324c(context);
            } else if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_spinner);
            } else if (m4322a(f3872e, i)) {
                m4328e = C0682bf.m4158b(context, R.attr.colorControlNormal);
            } else if (m4322a(f3875h, i)) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_default);
            } else if (m4322a(f3876i, i)) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_btn_checkable);
            } else if (i == R.drawable.abc_seekbar_thumb_material) {
                m4328e = C0488a.m2454a(context, R.color.abc_tint_seek_thumb);
            }
            if (m4328e != null) {
                m4314a(context, i, m4328e);
            }
        }
        return m4328e;
    }

    /* renamed from: e */
    private ColorStateList m4328e(@NonNull Context context, @DrawableRes int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        if (this.f3877j != null && (sparseArrayCompat = this.f3877j.get(context)) != null) {
            return sparseArrayCompat.get(i);
        }
        return null;
    }

    /* renamed from: a */
    private void m4314a(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.f3877j == null) {
            this.f3877j = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.f3877j.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.f3877j.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    /* renamed from: a */
    private ColorStateList m4307a(@NonNull Context context) {
        return m4330f(context, C0682bf.m4155a(context, R.attr.colorButtonNormal));
    }

    /* renamed from: b */
    private ColorStateList m4323b(@NonNull Context context) {
        return m4330f(context, 0);
    }

    /* renamed from: c */
    private ColorStateList m4324c(@NonNull Context context) {
        return m4330f(context, C0682bf.m4155a(context, R.attr.colorAccent));
    }

    /* renamed from: f */
    private ColorStateList m4330f(@NonNull Context context, @ColorInt int i) {
        int m4155a = C0682bf.m4155a(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{C0682bf.f3734a, C0682bf.f3737d, C0682bf.f3735b, C0682bf.f3741h}, new int[]{C0682bf.m4159c(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(m4155a, i), ColorUtils.compositeColors(m4155a, i), i});
    }

    /* renamed from: d */
    private ColorStateList m4326d(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList m4158b = C0682bf.m4158b(context, R.attr.colorSwitchThumbNormal);
        if (m4158b != null && m4158b.isStateful()) {
            iArr[0] = C0682bf.f3734a;
            iArr2[0] = m4158b.getColorForState(iArr[0], 0);
            iArr[1] = C0682bf.f3738e;
            iArr2[1] = C0682bf.m4155a(context, R.attr.colorControlActivated);
            iArr[2] = C0682bf.f3741h;
            iArr2[2] = m4158b.getDefaultColor();
        } else {
            iArr[0] = C0682bf.f3734a;
            iArr2[0] = C0682bf.m4159c(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = C0682bf.f3738e;
            iArr2[1] = C0682bf.m4155a(context, R.attr.colorControlActivated);
            iArr[2] = C0682bf.f3741h;
            iArr2[2] = C0682bf.m4155a(context, R.attr.colorSwitchThumbNormal);
        }
        return new ColorStateList(iArr, iArr2);
    }

    /* renamed from: android.support.v7.widget.k$c */
    private static class c extends LruCache<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        /* renamed from: a */
        PorterDuffColorFilter m4337a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m4336b(i, mode)));
        }

        /* renamed from: a */
        PorterDuffColorFilter m4338a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m4336b(i, mode)), porterDuffColorFilter);
        }

        /* renamed from: b */
        private static int m4336b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* renamed from: a */
    static void m4316a(Drawable drawable, C0685bi c0685bi, int[] iArr) {
        if (C0659aj.m3931b(drawable) && drawable.mutate() != drawable) {
            Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (c0685bi.f3751d || c0685bi.f3750c) {
            drawable.setColorFilter(m4310a(c0685bi.f3751d ? c0685bi.f3748a : null, c0685bi.f3750c ? c0685bi.f3749b : f3868a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    /* renamed from: a */
    private static PorterDuffColorFilter m4310a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m4309a(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: a */
    public static synchronized PorterDuffColorFilter m4309a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m4337a;
        synchronized (C0705k.class) {
            m4337a = f3870c.m4337a(i, mode);
            if (m4337a == null) {
                m4337a = new PorterDuffColorFilter(i, mode);
                f3870c.m4338a(i, mode, m4337a);
            }
        }
        return m4337a;
    }

    /* renamed from: a */
    private static void m4315a(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (C0659aj.m3931b(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f3868a;
        }
        drawable.setColorFilter(m4309a(i, mode));
    }

    /* renamed from: e */
    private void m4329e(@NonNull Context context) {
        if (!this.f3882o) {
            this.f3882o = true;
            Drawable m4331a = m4331a(context, R.drawable.abc_vector_test);
            if (m4331a == null || !m4321a(m4331a)) {
                this.f3882o = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    /* renamed from: a */
    private static boolean m4321a(@NonNull Drawable drawable) {
        return (drawable instanceof C0301i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: android.support.v7.widget.k$e */
    private static class e implements d {
        e() {
        }

        @Override // android.support.v7.widget.C0705k.d
        /* renamed from: a */
        public Drawable mo4335a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return C0301i.m2243a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: android.support.v7.widget.k$b */
    private static class b implements d {
        b() {
        }

        @Override // android.support.v7.widget.C0705k.d
        /* renamed from: a */
        public Drawable mo4335a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return C0295c.m2209a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    @RequiresApi(11)
    /* renamed from: android.support.v7.widget.k$a */
    static class a implements d {
        a() {
        }

        @Override // android.support.v7.widget.C0705k.d
        /* renamed from: a */
        public Drawable mo4335a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return C0522a.m2664a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }
}
