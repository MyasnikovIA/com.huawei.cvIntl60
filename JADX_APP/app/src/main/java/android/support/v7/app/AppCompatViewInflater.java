package android.support.v7.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.C0529d;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.C0684bh;
import android.support.v7.widget.C0699e;
import android.support.v7.widget.C0701g;
import android.support.v7.widget.C0702h;
import android.support.v7.widget.C0703i;
import android.support.v7.widget.C0706l;
import android.support.v7.widget.C0708n;
import android.support.v7.widget.C0710p;
import android.support.v7.widget.C0713s;
import android.support.v7.widget.C0714t;
import android.support.v7.widget.C0715u;
import android.support.v7.widget.C0717w;
import android.support.v7.widget.C0719y;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new ArrayMap();

    final View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2;
        View createSeekBar;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = C0684bh.m4162a(context2);
        }
        switch (str) {
            case "TextView":
                createSeekBar = createTextView(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "ImageView":
                createSeekBar = createImageView(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "Button":
                createSeekBar = createButton(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "EditText":
                createSeekBar = createEditText(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "Spinner":
                createSeekBar = createSpinner(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "ImageButton":
                createSeekBar = createImageButton(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "CheckBox":
                createSeekBar = createCheckBox(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "RadioButton":
                createSeekBar = createRadioButton(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "CheckedTextView":
                createSeekBar = createCheckedTextView(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "AutoCompleteTextView":
                createSeekBar = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "MultiAutoCompleteTextView":
                createSeekBar = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "RatingBar":
                createSeekBar = createRatingBar(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            case "SeekBar":
                createSeekBar = createSeekBar(context2, attributeSet);
                verifyNotNull(createSeekBar, str);
                break;
            default:
                createSeekBar = createView(context2, str, attributeSet);
                break;
        }
        View createViewFromTag = (createSeekBar != null || context == context2) ? createSeekBar : createViewFromTag(context2, str, attributeSet);
        if (createViewFromTag != null) {
            checkOnClickListener(createViewFromTag, attributeSet);
        }
        return createViewFromTag;
    }

    @NonNull
    protected C0719y createTextView(Context context, AttributeSet attributeSet) {
        return new C0719y(context, attributeSet);
    }

    @NonNull
    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    @NonNull
    protected C0701g createButton(Context context, AttributeSet attributeSet) {
        return new C0701g(context, attributeSet);
    }

    @NonNull
    protected C0706l createEditText(Context context, AttributeSet attributeSet) {
        return new C0706l(context, attributeSet);
    }

    @NonNull
    protected C0717w createSpinner(Context context, AttributeSet attributeSet) {
        return new C0717w(context, attributeSet);
    }

    @NonNull
    protected C0708n createImageButton(Context context, AttributeSet attributeSet) {
        return new C0708n(context, attributeSet);
    }

    @NonNull
    protected C0702h createCheckBox(Context context, AttributeSet attributeSet) {
        return new C0702h(context, attributeSet);
    }

    @NonNull
    protected C0713s createRadioButton(Context context, AttributeSet attributeSet) {
        return new C0713s(context, attributeSet);
    }

    @NonNull
    protected C0703i createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new C0703i(context, attributeSet);
    }

    @NonNull
    protected C0699e createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0699e(context, attributeSet);
    }

    @NonNull
    protected C0710p createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0710p(context, attributeSet);
    }

    @NonNull
    protected C0714t createRatingBar(Context context, AttributeSet attributeSet) {
        return new C0714t(context, attributeSet);
    }

    @NonNull
    protected C0715u createSeekBar(Context context, AttributeSet attributeSet) {
        return new C0715u(context, attributeSet);
    }

    private void verifyNotNull(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    @Nullable
    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            for (int i = 0; i < sClassPrefixList.length; i++) {
                View createViewByPrefix = createViewByPrefix(context, str, sClassPrefixList[i]);
                if (createViewByPrefix != null) {
                    return createViewByPrefix;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        } finally {
            this.mConstructorArgs[0] = null;
            this.mConstructorArgs[1] = null;
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(view)) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = obtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new ViewOnClickListenerC0511a(view, string));
                }
                obtainStyledAttributes.recycle();
            }
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) {
        Constructor<? extends View> constructor = sConstructorMap.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(sConstructorSignature);
                sConstructorMap.put(str, constructor);
            } catch (Exception e) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.R.styleable.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        int i = resourceId;
        obtainStyledAttributes.recycle();
        if (i != 0) {
            if (!(context instanceof C0529d) || ((C0529d) context).m2747a() != i) {
                return new C0529d(context, i);
            }
            return context;
        }
        return context;
    }

    /* renamed from: android.support.v7.app.AppCompatViewInflater$a */
    private static class ViewOnClickListenerC0511a implements View.OnClickListener {

        /* renamed from: a */
        private final View f2364a;

        /* renamed from: b */
        private final String f2365b;

        /* renamed from: c */
        private Method f2366c;

        /* renamed from: d */
        private Context f2367d;

        public ViewOnClickListenerC0511a(@NonNull View view, @NonNull String str) {
            this.f2364a = view;
            this.f2365b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            if (this.f2366c == null) {
                m2578a(this.f2364a.getContext(), this.f2365b);
            }
            try {
                this.f2366c.invoke(this.f2367d, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }

        @NonNull
        /* renamed from: a */
        private void m2578a(@Nullable Context context, @NonNull String str) {
            Method method;
            Context context2 = context;
            while (context2 != null) {
                try {
                    if (!context2.isRestricted() && (method = context2.getClass().getMethod(this.f2365b, View.class)) != null) {
                        this.f2366c = method;
                        this.f2367d = context2;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                if (context2 instanceof ContextWrapper) {
                    context2 = ((ContextWrapper) context2).getBaseContext();
                } else {
                    context2 = null;
                }
            }
            int id = this.f2364a.getId();
            throw new IllegalStateException("Could not find method " + this.f2365b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f2364a.getClass() + (id == -1 ? "" : " with id '" + this.f2364a.getContext().getResources().getResourceEntryName(id) + "'"));
        }
    }
}
