package com.facebook.p089a.p090a.p091a;

import android.support.annotation.Nullable;
import android.support.v4.view.NestedScrollingChild;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import com.facebook.internal.C1070u;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.plus.PlusShare;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.a.a.f */
/* loaded from: classes.dex */
public class C1010f {

    /* renamed from: a */
    private static final String f5178a = C1010f.class.getCanonicalName();

    /* renamed from: b */
    private static WeakReference<View> f5179b = new WeakReference<>(null);

    /* renamed from: c */
    @Nullable
    private static Method f5180c = null;

    /* renamed from: a */
    public static List<View> m5659a(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                arrayList.add(viewGroup.getChildAt(i));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static JSONObject m5660a(View view, JSONObject jSONObject) {
        try {
            String m5665d = m5665d(view);
            String m5666e = m5666e(view);
            Object tag = view.getTag();
            CharSequence contentDescription = view.getContentDescription();
            jSONObject.put("classname", view.getClass().getCanonicalName());
            jSONObject.put("classtypebitmask", m5671j(view));
            jSONObject.put(TtmlNode.ATTR_ID, view.getId());
            if (!C1008d.m5648a(view)) {
                jSONObject.put(MimeTypes.BASE_TYPE_TEXT, m5665d);
            } else {
                jSONObject.put(MimeTypes.BASE_TYPE_TEXT, "");
                jSONObject.put("is_user_input", true);
            }
            jSONObject.put("hint", m5666e);
            if (tag != null) {
                jSONObject.put("tag", tag.toString());
            }
            if (contentDescription != null) {
                jSONObject.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, contentDescription.toString());
            }
            jSONObject.put("dimension", m5673l(view));
        } catch (JSONException e) {
            C1070u.m6088a(f5178a, (Exception) e);
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static JSONObject m5663b(View view) {
        JSONException e;
        JSONObject m5660a;
        if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
            f5179b = new WeakReference<>(view);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            m5660a = m5660a(view, jSONObject);
        } catch (JSONException e2) {
            e = e2;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            List<View> m5659a = m5659a(view);
            for (int i = 0; i < m5659a.size(); i++) {
                jSONArray.put(m5663b(m5659a.get(i)));
            }
            m5660a.put("childviews", jSONArray);
            return m5660a;
        } catch (JSONException e3) {
            e = e3;
            jSONObject = m5660a;
            Log.e(f5178a, "Failed to create JSONObject for view.", e);
            return jSONObject;
        }
    }

    /* renamed from: j */
    private static int m5671j(View view) {
        int i = 0;
        if (view instanceof ImageView) {
            i = 2;
        }
        if (m5664c(view)) {
            i |= 32;
        }
        int i2 = m5672k(view) ? i | 512 : i;
        if (view instanceof TextView) {
            int i3 = i2 | 1024 | 1;
            if (view instanceof Button) {
                i3 |= 4;
                if (view instanceof Switch) {
                    i3 |= 8192;
                } else if (view instanceof CheckBox) {
                    i3 |= 32768;
                }
            }
            return view instanceof EditText ? i3 | 2048 : i3;
        }
        if ((view instanceof Spinner) || (view instanceof DatePicker)) {
            return i2 | 4096;
        }
        if (view instanceof RatingBar) {
            return i2 | 65536;
        }
        if (view instanceof RadioGroup) {
            return i2 | 16384;
        }
        if ((view instanceof ViewGroup) && m5662a(view, f5179b.get())) {
            return i2 | 64;
        }
        return i2;
    }

    /* renamed from: c */
    public static boolean m5664c(View view) {
        Field declaredField;
        try {
            Field declaredField2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField2 == null) {
                return false;
            }
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(view);
            if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener")) == null) {
                return false;
            }
            return ((View.OnClickListener) declaredField.get(obj)) != null;
        } catch (Exception e) {
            Log.e(f5178a, "Failed to check if the view is clickable.", e);
            return false;
        }
    }

    /* renamed from: k */
    private static boolean m5672k(View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof AdapterView) || (parent instanceof NestedScrollingChild);
    }

    /* renamed from: d */
    public static String m5665d(View view) {
        String str;
        Object selectedItem;
        CharSequence charSequence = null;
        if (view instanceof TextView) {
            str = ((TextView) view).getText();
            if (view instanceof Switch) {
                str = ((Switch) view).isChecked() ? "1" : "0";
            }
        } else if (view instanceof Spinner) {
            str = (((Spinner) view).getCount() <= 0 || (selectedItem = ((Spinner) view).getSelectedItem()) == null) ? null : selectedItem.toString();
        } else if (view instanceof DatePicker) {
            DatePicker datePicker = (DatePicker) view;
            str = String.format("%04d-%02d-%02d", Integer.valueOf(datePicker.getYear()), Integer.valueOf(datePicker.getMonth()), Integer.valueOf(datePicker.getDayOfMonth()));
        } else if (view instanceof TimePicker) {
            TimePicker timePicker = (TimePicker) view;
            str = String.format("%02d:%02d", Integer.valueOf(timePicker.getCurrentHour().intValue()), Integer.valueOf(timePicker.getCurrentMinute().intValue()));
        } else if (view instanceof RadioGroup) {
            RadioGroup radioGroup = (RadioGroup) view;
            int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
            int childCount = radioGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = radioGroup.getChildAt(i);
                if (childAt.getId() != checkedRadioButtonId || !(childAt instanceof RadioButton)) {
                    i++;
                } else {
                    charSequence = ((RadioButton) childAt).getText();
                    break;
                }
            }
            str = charSequence;
        } else if (!(view instanceof RatingBar)) {
            str = null;
        } else {
            str = String.valueOf(((RatingBar) view).getRating());
        }
        return str == null ? "" : str.toString();
    }

    /* renamed from: e */
    public static String m5666e(View view) {
        CharSequence charSequence = null;
        if (view instanceof EditText) {
            charSequence = ((EditText) view).getHint();
        } else if (view instanceof TextView) {
            charSequence = ((TextView) view).getHint();
        }
        return charSequence == null ? "" : charSequence.toString();
    }

    /* renamed from: l */
    private static JSONObject m5673l(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("top", view.getTop());
            jSONObject.put(TtmlNode.LEFT, view.getLeft());
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put("scrollx", view.getScrollX());
            jSONObject.put("scrolly", view.getScrollY());
            jSONObject.put("visibility", view.getVisibility());
        } catch (JSONException e) {
            Log.e(f5178a, "Failed to create JSONObject for dimension.", e);
        }
        return jSONObject;
    }

    @Nullable
    /* renamed from: f */
    public static View.AccessibilityDelegate m5667f(View view) {
        try {
            return (View.AccessibilityDelegate) view.getClass().getMethod("getAccessibilityDelegate", new Class[0]).invoke(view, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | NullPointerException | SecurityException | InvocationTargetException e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: g */
    public static View.OnTouchListener m5668g(View view) {
        View.OnTouchListener onTouchListener;
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            Object obj = declaredField.get(view);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
                onTouchListener = (View.OnTouchListener) declaredField2.get(obj);
            } else {
                onTouchListener = null;
            }
            return onTouchListener;
        } catch (ClassNotFoundException e) {
            C1070u.m6088a(f5178a, (Exception) e);
            return null;
        } catch (IllegalAccessException e2) {
            C1070u.m6088a(f5178a, (Exception) e2);
            return null;
        } catch (NoSuchFieldException e3) {
            C1070u.m6088a(f5178a, (Exception) e3);
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public static View m5658a(float[] fArr, @Nullable View view) {
        m5661a();
        if (f5180c == null || view == null) {
            return null;
        }
        try {
            View view2 = (View) f5180c.invoke(null, fArr, view);
            if (view2 == null || view2.getId() <= 0) {
                return null;
            }
            View view3 = (View) view2.getParent();
            if (view3 == null) {
                view3 = null;
            }
            return view3;
        } catch (IllegalAccessException e) {
            C1070u.m6088a(f5178a, (Exception) e);
            return null;
        } catch (InvocationTargetException e2) {
            C1070u.m6088a(f5178a, (Exception) e2);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m5662a(View view, @Nullable View view2) {
        View m5658a;
        return view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup") && (m5658a = m5658a(m5674m(view), view2)) != null && m5658a.getId() == view.getId();
    }

    /* renamed from: h */
    public static boolean m5669h(View view) {
        return view.getClass().getName().equals("com.facebook.react.ReactRootView");
    }

    @Nullable
    /* renamed from: i */
    public static View m5670i(View view) {
        View view2 = view;
        while (view2 != null) {
            if (!m5669h(view2)) {
                Object parent = view2.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view2 = (View) parent;
            } else {
                return view2;
            }
        }
        return null;
    }

    /* renamed from: m */
    private static float[] m5674m(View view) {
        view.getLocationOnScreen(new int[2]);
        return new float[]{r0[0], r0[1]};
    }

    /* renamed from: a */
    private static void m5661a() {
        if (f5180c == null) {
            try {
                f5180c = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                f5180c.setAccessible(true);
            } catch (ClassNotFoundException e) {
                C1070u.m6088a(f5178a, (Exception) e);
            } catch (NoSuchMethodException e2) {
                C1070u.m6088a(f5178a, (Exception) e2);
            }
        }
    }
}
