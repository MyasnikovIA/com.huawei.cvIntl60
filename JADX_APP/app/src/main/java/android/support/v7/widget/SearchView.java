package android.support.v7.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.CursorAdapter;
import android.support.v7.appcompat.R;
import android.support.v7.view.InterfaceC0528c;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import com.google.android.gms.actions.SearchIntents;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SearchView extends C0666aq implements InterfaceC0528c {

    /* renamed from: i */
    static final C0630a f3235i = new C0630a();

    /* renamed from: A */
    private InterfaceC0632c f3236A;

    /* renamed from: B */
    private InterfaceC0631b f3237B;

    /* renamed from: C */
    private InterfaceC0633d f3238C;

    /* renamed from: D */
    private View.OnClickListener f3239D;

    /* renamed from: E */
    private boolean f3240E;

    /* renamed from: F */
    private boolean f3241F;

    /* renamed from: G */
    private boolean f3242G;

    /* renamed from: H */
    private CharSequence f3243H;

    /* renamed from: I */
    private boolean f3244I;

    /* renamed from: J */
    private boolean f3245J;

    /* renamed from: K */
    private int f3246K;

    /* renamed from: L */
    private boolean f3247L;

    /* renamed from: M */
    private CharSequence f3248M;

    /* renamed from: N */
    private CharSequence f3249N;

    /* renamed from: O */
    private boolean f3250O;

    /* renamed from: P */
    private int f3251P;

    /* renamed from: Q */
    private Bundle f3252Q;

    /* renamed from: R */
    private final Runnable f3253R;

    /* renamed from: S */
    private Runnable f3254S;

    /* renamed from: T */
    private final WeakHashMap<String, Drawable.ConstantState> f3255T;

    /* renamed from: U */
    private final View.OnClickListener f3256U;

    /* renamed from: V */
    private final TextView.OnEditorActionListener f3257V;

    /* renamed from: W */
    private final AdapterView.OnItemClickListener f3258W;

    /* renamed from: a */
    final SearchAutoComplete f3259a;

    /* renamed from: aa */
    private final AdapterView.OnItemSelectedListener f3260aa;

    /* renamed from: ab */
    private TextWatcher f3261ab;

    /* renamed from: b */
    final ImageView f3262b;

    /* renamed from: c */
    final ImageView f3263c;

    /* renamed from: d */
    final ImageView f3264d;

    /* renamed from: e */
    final ImageView f3265e;

    /* renamed from: f */
    View.OnFocusChangeListener f3266f;

    /* renamed from: g */
    CursorAdapter f3267g;

    /* renamed from: h */
    SearchableInfo f3268h;

    /* renamed from: j */
    View.OnKeyListener f3269j;

    /* renamed from: k */
    private final View f3270k;

    /* renamed from: l */
    private final View f3271l;

    /* renamed from: m */
    private final View f3272m;

    /* renamed from: n */
    private final View f3273n;

    /* renamed from: o */
    private C0634e f3274o;

    /* renamed from: p */
    private Rect f3275p;

    /* renamed from: q */
    private Rect f3276q;

    /* renamed from: r */
    private int[] f3277r;

    /* renamed from: s */
    private int[] f3278s;

    /* renamed from: t */
    private final ImageView f3279t;

    /* renamed from: u */
    private final Drawable f3280u;

    /* renamed from: v */
    private final int f3281v;

    /* renamed from: w */
    private final int f3282w;

    /* renamed from: x */
    private final Intent f3283x;

    /* renamed from: y */
    private final Intent f3284y;

    /* renamed from: z */
    private final CharSequence f3285z;

    /* renamed from: android.support.v7.widget.SearchView$b */
    public interface InterfaceC0631b {
        /* renamed from: a */
        boolean m3670a();
    }

    /* renamed from: android.support.v7.widget.SearchView$c */
    public interface InterfaceC0632c {
        /* renamed from: a */
        boolean m3671a(String str);

        /* renamed from: b */
        boolean m3672b(String str);
    }

    /* renamed from: android.support.v7.widget.SearchView$d */
    public interface InterfaceC0633d {
        /* renamed from: a */
        boolean m3673a(int i);

        /* renamed from: b */
        boolean m3674b(int i);
    }

    /* renamed from: android.support.v7.widget.SearchView$1 */
    class RunnableC06181 implements Runnable {
        RunnableC06181() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m3654d();
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$3 */
    class RunnableC06213 implements Runnable {
        RunnableC06213() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SearchView.this.f3267g != null && (SearchView.this.f3267g instanceof ViewOnClickListenerC0681be)) {
                SearchView.this.f3267g.changeCursor(null);
            }
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3275p = new Rect();
        this.f3276q = new Rect();
        this.f3277r = new int[2];
        this.f3278s = new int[2];
        this.f3253R = new Runnable() { // from class: android.support.v7.widget.SearchView.1
            RunnableC06181() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.m3654d();
            }
        };
        this.f3254S = new Runnable() { // from class: android.support.v7.widget.SearchView.3
            RunnableC06213() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.f3267g != null && (SearchView.this.f3267g instanceof ViewOnClickListenerC0681be)) {
                    SearchView.this.f3267g.changeCursor(null);
                }
            }
        };
        this.f3255T = new WeakHashMap<>();
        this.f3256U = new View.OnClickListener() { // from class: android.support.v7.widget.SearchView.6
            ViewOnClickListenerC06246() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.f3262b) {
                    SearchView.this.m3657g();
                    return;
                }
                if (view == SearchView.this.f3264d) {
                    SearchView.this.m3656f();
                    return;
                }
                if (view == SearchView.this.f3263c) {
                    SearchView.this.m3655e();
                } else if (view == SearchView.this.f3265e) {
                    SearchView.this.m3658h();
                } else if (view == SearchView.this.f3259a) {
                    SearchView.this.m3661l();
                }
            }
        };
        this.f3269j = new View.OnKeyListener() { // from class: android.support.v7.widget.SearchView.7
            ViewOnKeyListenerC06257() {
            }

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.f3268h == null) {
                    return false;
                }
                if (SearchView.this.f3259a.isPopupShowing() && SearchView.this.f3259a.getListSelection() != -1) {
                    return SearchView.this.m3651a(view, i2, keyEvent);
                }
                if (SearchView.this.f3259a.m3665a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView.this.m3646a(0, (String) null, SearchView.this.f3259a.getText().toString());
                return true;
            }
        };
        this.f3257V = new TextView.OnEditorActionListener() { // from class: android.support.v7.widget.SearchView.8
            C06268() {
            }

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.m3655e();
                return true;
            }
        };
        this.f3258W = new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.SearchView.9
            C06279() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m3650a(i2, 0, (String) null);
            }
        };
        this.f3260aa = new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.SearchView.10
            C061910() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m3649a(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f3261ab = new TextWatcher() { // from class: android.support.v7.widget.SearchView.2
            C06202() {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.m3652b(charSequence);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        };
        C0687bk m4167a = C0687bk.m4167a(context, attributeSet, R.styleable.SearchView, i, 0);
        LayoutInflater.from(context).inflate(m4167a.m4185g(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        this.f3259a = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f3259a.setSearchView(this);
        this.f3270k = findViewById(R.id.search_edit_frame);
        this.f3271l = findViewById(R.id.search_plate);
        this.f3272m = findViewById(R.id.submit_area);
        this.f3262b = (ImageView) findViewById(R.id.search_button);
        this.f3263c = (ImageView) findViewById(R.id.search_go_btn);
        this.f3264d = (ImageView) findViewById(R.id.search_close_btn);
        this.f3265e = (ImageView) findViewById(R.id.search_voice_btn);
        this.f3279t = (ImageView) findViewById(R.id.search_mag_icon);
        ViewCompat.setBackground(this.f3271l, m4167a.m4171a(R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(this.f3272m, m4167a.m4171a(R.styleable.SearchView_submitBackground));
        this.f3262b.setImageDrawable(m4167a.m4171a(R.styleable.SearchView_searchIcon));
        this.f3263c.setImageDrawable(m4167a.m4171a(R.styleable.SearchView_goIcon));
        this.f3264d.setImageDrawable(m4167a.m4171a(R.styleable.SearchView_closeIcon));
        this.f3265e.setImageDrawable(m4167a.m4171a(R.styleable.SearchView_voiceIcon));
        this.f3279t.setImageDrawable(m4167a.m4171a(R.styleable.SearchView_searchIcon));
        this.f3280u = m4167a.m4171a(R.styleable.SearchView_searchHintIcon);
        C0689bm.m4200a(this.f3262b, getResources().getString(R.string.abc_searchview_description_search));
        this.f3281v = m4167a.m4185g(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.f3282w = m4167a.m4185g(R.styleable.SearchView_commitIcon, 0);
        this.f3262b.setOnClickListener(this.f3256U);
        this.f3264d.setOnClickListener(this.f3256U);
        this.f3263c.setOnClickListener(this.f3256U);
        this.f3265e.setOnClickListener(this.f3256U);
        this.f3259a.setOnClickListener(this.f3256U);
        this.f3259a.addTextChangedListener(this.f3261ab);
        this.f3259a.setOnEditorActionListener(this.f3257V);
        this.f3259a.setOnItemClickListener(this.f3258W);
        this.f3259a.setOnItemSelectedListener(this.f3260aa);
        this.f3259a.setOnKeyListener(this.f3269j);
        this.f3259a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: android.support.v7.widget.SearchView.4
            ViewOnFocusChangeListenerC06224() {
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.f3266f != null) {
                    SearchView.this.f3266f.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(m4167a.m4173a(R.styleable.SearchView_iconifiedByDefault, true));
        int m4181e = m4167a.m4181e(R.styleable.SearchView_android_maxWidth, -1);
        if (m4181e != -1) {
            setMaxWidth(m4181e);
        }
        this.f3285z = m4167a.m4178c(R.styleable.SearchView_defaultQueryHint);
        this.f3243H = m4167a.m4178c(R.styleable.SearchView_queryHint);
        int m4169a = m4167a.m4169a(R.styleable.SearchView_android_imeOptions, -1);
        if (m4169a != -1) {
            setImeOptions(m4169a);
        }
        int m4169a2 = m4167a.m4169a(R.styleable.SearchView_android_inputType, -1);
        if (m4169a2 != -1) {
            setInputType(m4169a2);
        }
        setFocusable(m4167a.m4173a(R.styleable.SearchView_android_focusable, true));
        m4167a.m4172a();
        this.f3283x = new Intent("android.speech.action.WEB_SEARCH");
        this.f3283x.addFlags(268435456);
        this.f3283x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.f3284y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f3284y.addFlags(268435456);
        this.f3273n = findViewById(this.f3259a.getDropDownAnchor());
        if (this.f3273n != null) {
            this.f3273n.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: android.support.v7.widget.SearchView.5
                ViewOnLayoutChangeListenerC06235() {
                }

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView.this.m3660k();
                }
            });
        }
        m3630a(this.f3240E);
        m3643r();
    }

    /* renamed from: android.support.v7.widget.SearchView$4 */
    class ViewOnFocusChangeListenerC06224 implements View.OnFocusChangeListener {
        ViewOnFocusChangeListenerC06224() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (SearchView.this.f3266f != null) {
                SearchView.this.f3266f.onFocusChange(SearchView.this, z);
            }
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$5 */
    class ViewOnLayoutChangeListenerC06235 implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC06235() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            SearchView.this.m3660k();
        }
    }

    int getSuggestionRowLayout() {
        return this.f3281v;
    }

    int getSuggestionCommitIconResId() {
        return this.f3282w;
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f3268h = searchableInfo;
        if (this.f3268h != null) {
            m3644s();
            m3643r();
        }
        this.f3247L = m3638m();
        if (this.f3247L) {
            this.f3259a.setPrivateImeOptions("nm");
        }
        m3630a(m3653c());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAppSearchData(Bundle bundle) {
        this.f3252Q = bundle;
    }

    public void setImeOptions(int i) {
        this.f3259a.setImeOptions(i);
    }

    public int getImeOptions() {
        return this.f3259a.getImeOptions();
    }

    public void setInputType(int i) {
        this.f3259a.setInputType(i);
    }

    public int getInputType() {
        return this.f3259a.getInputType();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f3245J || !isFocusable()) {
            return false;
        }
        if (!m3653c()) {
            boolean requestFocus = this.f3259a.requestFocus(i, rect);
            if (requestFocus) {
                m3630a(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f3245J = true;
        super.clearFocus();
        this.f3259a.clearFocus();
        this.f3259a.setImeVisibility(false);
        this.f3245J = false;
    }

    public void setOnQueryTextListener(InterfaceC0632c interfaceC0632c) {
        this.f3236A = interfaceC0632c;
    }

    public void setOnCloseListener(InterfaceC0631b interfaceC0631b) {
        this.f3237B = interfaceC0631b;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f3266f = onFocusChangeListener;
    }

    public void setOnSuggestionListener(InterfaceC0633d interfaceC0633d) {
        this.f3238C = interfaceC0633d;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f3239D = onClickListener;
    }

    public CharSequence getQuery() {
        return this.f3259a.getText();
    }

    /* renamed from: a */
    public void m3648a(CharSequence charSequence, boolean z) {
        this.f3259a.setText(charSequence);
        if (charSequence != null) {
            this.f3259a.setSelection(this.f3259a.length());
            this.f3249N = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            m3655e();
        }
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.f3243H = charSequence;
        m3643r();
    }

    @Nullable
    public CharSequence getQueryHint() {
        if (this.f3243H != null) {
            return this.f3243H;
        }
        if (this.f3268h != null && this.f3268h.getHintId() != 0) {
            return getContext().getText(this.f3268h.getHintId());
        }
        return this.f3285z;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f3240E != z) {
            this.f3240E = z;
            m3630a(z);
            m3643r();
        }
    }

    public void setIconified(boolean z) {
        if (z) {
            m3656f();
        } else {
            m3657g();
        }
    }

    /* renamed from: c */
    public boolean m3653c() {
        return this.f3241F;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f3242G = z;
        m3630a(m3653c());
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f3244I = z;
        if (this.f3267g instanceof ViewOnClickListenerC0681be) {
            ((ViewOnClickListenerC0681be) this.f3267g).m4154a(z ? 2 : 1);
        }
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.f3267g = cursorAdapter;
        this.f3259a.setAdapter(this.f3267g);
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.f3267g;
    }

    public void setMaxWidth(int i) {
        this.f3246K = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.f3246K;
    }

    @Override // android.support.v7.widget.C0666aq, android.view.View
    protected void onMeasure(int i, int i2) {
        if (m3653c()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                if (this.f3246K > 0) {
                    size = Math.min(this.f3246K, size);
                    break;
                } else {
                    size = Math.min(getPreferredWidth(), size);
                    break;
                }
            case 0:
                if (this.f3246K <= 0) {
                    size = getPreferredWidth();
                    break;
                } else {
                    size = this.f3246K;
                    break;
                }
            case C1167C.ENCODING_PCM_32BIT /* 1073741824 */:
                if (this.f3246K > 0) {
                    size = Math.min(this.f3246K, size);
                    break;
                }
                break;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        switch (mode2) {
            case Integer.MIN_VALUE:
                size2 = Math.min(getPreferredHeight(), size2);
                break;
            case 0:
                size2 = getPreferredHeight();
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, C1167C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(size2, C1167C.ENCODING_PCM_32BIT));
    }

    @Override // android.support.v7.widget.C0666aq, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m3629a(this.f3259a, this.f3275p);
            this.f3276q.set(this.f3275p.left, 0, this.f3275p.right, i4 - i2);
            if (this.f3274o == null) {
                this.f3274o = new C0634e(this.f3276q, this.f3275p, this.f3259a);
                setTouchDelegate(this.f3274o);
            } else {
                this.f3274o.m3675a(this.f3276q, this.f3275p);
            }
        }
    }

    /* renamed from: a */
    private void m3629a(View view, Rect rect) {
        view.getLocationInWindow(this.f3277r);
        getLocationInWindow(this.f3278s);
        int i = this.f3277r[1] - this.f3278s[1];
        int i2 = this.f3277r[0] - this.f3278s[0];
        rect.set(i2, i, view.getWidth() + i2, view.getHeight() + i);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    /* renamed from: a */
    private void m3630a(boolean z) {
        int i = 8;
        this.f3241F = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f3259a.getText());
        this.f3262b.setVisibility(i2);
        m3633b(z2);
        this.f3270k.setVisibility(z ? 8 : 0);
        if (this.f3279t.getDrawable() != null && !this.f3240E) {
            i = 0;
        }
        this.f3279t.setVisibility(i);
        m3641p();
        m3636c(z2 ? false : true);
        m3640o();
    }

    /* renamed from: m */
    private boolean m3638m() {
        if (this.f3268h == null || !this.f3268h.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.f3268h.getVoiceSearchLaunchWebSearch()) {
            intent = this.f3283x;
        } else if (this.f3268h.getVoiceSearchLaunchRecognizer()) {
            intent = this.f3284y;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    /* renamed from: n */
    private boolean m3639n() {
        return (this.f3242G || this.f3247L) && !m3653c();
    }

    /* renamed from: b */
    private void m3633b(boolean z) {
        int i = 8;
        if (this.f3242G && m3639n() && hasFocus() && (z || !this.f3247L)) {
            i = 0;
        }
        this.f3263c.setVisibility(i);
    }

    /* renamed from: o */
    private void m3640o() {
        int i = 8;
        if (m3639n() && (this.f3263c.getVisibility() == 0 || this.f3265e.getVisibility() == 0)) {
            i = 0;
        }
        this.f3272m.setVisibility(i);
    }

    /* renamed from: p */
    private void m3641p() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f3259a.getText());
        if (!z2 && (!this.f3240E || this.f3250O)) {
            z = false;
        }
        this.f3264d.setVisibility(z ? 0 : 8);
        Drawable drawable = this.f3264d.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    /* renamed from: q */
    private void m3642q() {
        post(this.f3253R);
    }

    /* renamed from: d */
    void m3654d() {
        int[] iArr = this.f3259a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f3271l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f3272m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f3253R);
        post(this.f3254S);
        super.onDetachedFromWindow();
    }

    /* renamed from: a */
    void m3647a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: android.support.v7.widget.SearchView$6 */
    class ViewOnClickListenerC06246 implements View.OnClickListener {
        ViewOnClickListenerC06246() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == SearchView.this.f3262b) {
                SearchView.this.m3657g();
                return;
            }
            if (view == SearchView.this.f3264d) {
                SearchView.this.m3656f();
                return;
            }
            if (view == SearchView.this.f3263c) {
                SearchView.this.m3655e();
            } else if (view == SearchView.this.f3265e) {
                SearchView.this.m3658h();
            } else if (view == SearchView.this.f3259a) {
                SearchView.this.m3661l();
            }
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$7 */
    class ViewOnKeyListenerC06257 implements View.OnKeyListener {
        ViewOnKeyListenerC06257() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (SearchView.this.f3268h == null) {
                return false;
            }
            if (SearchView.this.f3259a.isPopupShowing() && SearchView.this.f3259a.getListSelection() != -1) {
                return SearchView.this.m3651a(view, i2, keyEvent);
            }
            if (SearchView.this.f3259a.m3665a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView.this.m3646a(0, (String) null, SearchView.this.f3259a.getText().toString());
            return true;
        }
    }

    /* renamed from: a */
    boolean m3651a(View view, int i, KeyEvent keyEvent) {
        if (this.f3268h == null || this.f3267g == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return m3650a(this.f3259a.getListSelection(), 0, (String) null);
        }
        if (i == 21 || i == 22) {
            this.f3259a.setSelection(i == 21 ? 0 : this.f3259a.length());
            this.f3259a.setListSelection(0);
            this.f3259a.clearListSelection();
            f3235i.m3668a(this.f3259a, true);
            return true;
        }
        if (i != 19 || this.f3259a.getListSelection() != 0) {
        }
        return false;
    }

    /* renamed from: c */
    private CharSequence m3635c(CharSequence charSequence) {
        if (this.f3240E && this.f3280u != null) {
            int textSize = (int) (this.f3259a.getTextSize() * 1.25d);
            this.f3280u.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.f3280u), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    /* renamed from: r */
    private void m3643r() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f3259a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(m3635c(queryHint));
    }

    /* renamed from: s */
    private void m3644s() {
        this.f3259a.setThreshold(this.f3268h.getSuggestThreshold());
        this.f3259a.setImeOptions(this.f3268h.getImeOptions());
        int inputType = this.f3268h.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f3268h.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f3259a.setInputType(inputType);
        if (this.f3267g != null) {
            this.f3267g.changeCursor(null);
        }
        if (this.f3268h.getSuggestAuthority() != null) {
            this.f3267g = new ViewOnClickListenerC0681be(getContext(), this, this.f3268h, this.f3255T);
            this.f3259a.setAdapter(this.f3267g);
            ((ViewOnClickListenerC0681be) this.f3267g).m4154a(this.f3244I ? 2 : 1);
        }
    }

    /* renamed from: c */
    private void m3636c(boolean z) {
        int i;
        if (this.f3247L && !m3653c() && z) {
            i = 0;
            this.f3263c.setVisibility(8);
        } else {
            i = 8;
        }
        this.f3265e.setVisibility(i);
    }

    /* renamed from: android.support.v7.widget.SearchView$8 */
    class C06268 implements TextView.OnEditorActionListener {
        C06268() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            SearchView.this.m3655e();
            return true;
        }
    }

    /* renamed from: b */
    void m3652b(CharSequence charSequence) {
        Editable text = this.f3259a.getText();
        this.f3249N = text;
        boolean z = !TextUtils.isEmpty(text);
        m3633b(z);
        m3636c(z ? false : true);
        m3641p();
        m3640o();
        if (this.f3236A != null && !TextUtils.equals(charSequence, this.f3248M)) {
            this.f3236A.m3672b(charSequence.toString());
        }
        this.f3248M = charSequence.toString();
    }

    /* renamed from: e */
    void m3655e() {
        Editable text = this.f3259a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.f3236A == null || !this.f3236A.m3671a(text.toString())) {
                if (this.f3268h != null) {
                    m3646a(0, (String) null, text.toString());
                }
                this.f3259a.setImeVisibility(false);
                m3645t();
            }
        }
    }

    /* renamed from: t */
    private void m3645t() {
        this.f3259a.dismissDropDown();
    }

    /* renamed from: f */
    void m3656f() {
        if (TextUtils.isEmpty(this.f3259a.getText())) {
            if (this.f3240E) {
                if (this.f3237B == null || !this.f3237B.m3670a()) {
                    clearFocus();
                    m3630a(true);
                    return;
                }
                return;
            }
            return;
        }
        this.f3259a.setText("");
        this.f3259a.requestFocus();
        this.f3259a.setImeVisibility(true);
    }

    /* renamed from: g */
    void m3657g() {
        m3630a(false);
        this.f3259a.requestFocus();
        this.f3259a.setImeVisibility(true);
        if (this.f3239D != null) {
            this.f3239D.onClick(this);
        }
    }

    /* renamed from: h */
    void m3658h() {
        if (this.f3268h != null) {
            SearchableInfo searchableInfo = this.f3268h;
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(m3625a(this.f3283x, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(m3632b(this.f3284y, searchableInfo));
                }
            } catch (ActivityNotFoundException e) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* renamed from: i */
    void m3659i() {
        m3630a(m3653c());
        m3642q();
        if (this.f3259a.hasFocus()) {
            m3661l();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m3642q();
    }

    @Override // android.support.v7.view.InterfaceC0528c
    /* renamed from: b */
    public void mo2744b() {
        m3648a("", false);
        clearFocus();
        m3630a(true);
        this.f3259a.setImeOptions(this.f3251P);
        this.f3250O = false;
    }

    @Override // android.support.v7.view.InterfaceC0528c
    /* renamed from: a */
    public void mo2743a() {
        if (!this.f3250O) {
            this.f3250O = true;
            this.f3251P = this.f3259a.getImeOptions();
            this.f3259a.setImeOptions(this.f3251P | MediaHttpDownloader.MAXIMUM_CHUNK_SIZE);
            this.f3259a.setText("");
            setIconified(false);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v7.widget.SearchView.SavedState.1
            C06281() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        boolean f3296a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3296a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f3296a));
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f3296a + "}";
        }

        /* renamed from: android.support.v7.widget.SearchView$SavedState$1 */
        static class C06281 implements Parcelable.ClassLoaderCreator<SavedState> {
            C06281() {
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3296a = m3653c();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        m3630a(savedState.f3296a);
        requestLayout();
    }

    /* renamed from: k */
    void m3660k() {
        int i;
        int i2;
        if (this.f3273n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f3271l.getPaddingLeft();
            Rect rect = new Rect();
            boolean m4245a = C0695bs.m4245a(this);
            if (this.f3240E) {
                i = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
            } else {
                i = 0;
            }
            this.f3259a.getDropDownBackground().getPadding(rect);
            if (m4245a) {
                i2 = -rect.left;
            } else {
                i2 = paddingLeft - (rect.left + i);
            }
            this.f3259a.setDropDownHorizontalOffset(i2);
            this.f3259a.setDropDownWidth((i + ((this.f3273n.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    /* renamed from: a */
    boolean m3650a(int i, int i2, String str) {
        if (this.f3238C != null && this.f3238C.m3674b(i)) {
            return false;
        }
        m3634b(i, 0, null);
        this.f3259a.setImeVisibility(false);
        m3645t();
        return true;
    }

    /* renamed from: a */
    boolean m3649a(int i) {
        if (this.f3238C != null && this.f3238C.m3673a(i)) {
            return false;
        }
        m3637e(i);
        return true;
    }

    /* renamed from: android.support.v7.widget.SearchView$9 */
    class C06279 implements AdapterView.OnItemClickListener {
        C06279() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
            SearchView.this.m3650a(i2, 0, (String) null);
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$10 */
    class C061910 implements AdapterView.OnItemSelectedListener {
        C061910() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
            SearchView.this.m3649a(i2);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: e */
    private void m3637e(int i) {
        Editable text = this.f3259a.getText();
        Cursor cursor = this.f3267g.getCursor();
        if (cursor != null) {
            if (cursor.moveToPosition(i)) {
                CharSequence convertToString = this.f3267g.convertToString(cursor);
                if (convertToString != null) {
                    setQuery(convertToString);
                    return;
                } else {
                    setQuery(text);
                    return;
                }
            }
            setQuery(text);
        }
    }

    /* renamed from: b */
    private boolean m3634b(int i, int i2, String str) {
        Cursor cursor = this.f3267g.getCursor();
        if (cursor == null || !cursor.moveToPosition(i)) {
            return false;
        }
        m3628a(m3626a(cursor, i2, str));
        return true;
    }

    /* renamed from: a */
    private void m3628a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e("SearchView", "Failed launch activity: " + intent, e);
            }
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f3259a.setText(charSequence);
        this.f3259a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: a */
    void m3646a(int i, String str, String str2) {
        getContext().startActivity(m3627a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i, str));
    }

    /* renamed from: a */
    private Intent m3627a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f3249N);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.f3252Q != null) {
            intent.putExtra("app_data", this.f3252Q);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f3268h.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    private Intent m3625a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: b */
    private Intent m3632b(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, C1167C.ENCODING_PCM_32BIT);
        Bundle bundle = new Bundle();
        if (this.f3252Q != null) {
            bundle.putParcelable("app_data", this.f3252Q);
        }
        Intent intent3 = new Intent(intent);
        String str = "free_form";
        int i = 1;
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str);
        intent3.putExtra("android.speech.extra.PROMPT", string);
        intent3.putExtra("android.speech.extra.LANGUAGE", string2);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* renamed from: a */
    private Intent m3626a(Cursor cursor, int i, String str) {
        int i2;
        String m4141a;
        try {
            String m4141a2 = ViewOnClickListenerC0681be.m4141a(cursor, "suggest_intent_action");
            if (m4141a2 == null) {
                m4141a2 = this.f3268h.getSuggestIntentAction();
            }
            if (m4141a2 == null) {
                m4141a2 = "android.intent.action.SEARCH";
            }
            String m4141a3 = ViewOnClickListenerC0681be.m4141a(cursor, "suggest_intent_data");
            if (m4141a3 == null) {
                m4141a3 = this.f3268h.getSuggestIntentData();
            }
            if (m4141a3 != null && (m4141a = ViewOnClickListenerC0681be.m4141a(cursor, "suggest_intent_data_id")) != null) {
                m4141a3 = m4141a3 + "/" + Uri.encode(m4141a);
            }
            return m3627a(m4141a2, m4141a3 == null ? null : Uri.parse(m4141a3), ViewOnClickListenerC0681be.m4141a(cursor, "suggest_intent_extra_data"), ViewOnClickListenerC0681be.m4141a(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException e2) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            return null;
        }
    }

    /* renamed from: l */
    void m3661l() {
        f3235i.m3667a(this.f3259a);
        f3235i.m3669b(this.f3259a);
    }

    /* renamed from: a */
    static boolean m3631a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: android.support.v7.widget.SearchView$2 */
    class C06202 implements TextWatcher {
        C06202() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            SearchView.this.m3652b(charSequence);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$e */
    private static class C0634e extends TouchDelegate {

        /* renamed from: a */
        private final View f3305a;

        /* renamed from: b */
        private final Rect f3306b;

        /* renamed from: c */
        private final Rect f3307c;

        /* renamed from: d */
        private final Rect f3308d;

        /* renamed from: e */
        private final int f3309e;

        /* renamed from: f */
        private boolean f3310f;

        public C0634e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f3309e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f3306b = new Rect();
            this.f3308d = new Rect();
            this.f3307c = new Rect();
            m3675a(rect, rect2);
            this.f3305a = view;
        }

        /* renamed from: a */
        public void m3675a(Rect rect, Rect rect2) {
            this.f3306b.set(rect);
            this.f3308d.set(rect);
            this.f3308d.inset(-this.f3309e, -this.f3309e);
            this.f3307c.set(rect2);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    if (this.f3306b.contains(x, y)) {
                        this.f3310f = true;
                        z2 = true;
                        z = true;
                        break;
                    }
                    z2 = true;
                    z = false;
                    break;
                case 1:
                case 2:
                    z = this.f3310f;
                    if (z && !this.f3308d.contains(x, y)) {
                        z2 = false;
                        break;
                    }
                    z2 = true;
                    break;
                case 3:
                    z = this.f3310f;
                    this.f3310f = false;
                    z2 = true;
                    break;
                default:
                    z2 = true;
                    z = false;
                    break;
            }
            if (!z) {
                return false;
            }
            if (z2 && !this.f3307c.contains(x, y)) {
                motionEvent.setLocation(this.f3305a.getWidth() / 2, this.f3305a.getHeight() / 2);
            } else {
                motionEvent.setLocation(x - this.f3307c.left, y - this.f3307c.top);
            }
            return this.f3305a.dispatchTouchEvent(motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SearchAutoComplete extends C0699e {

        /* renamed from: a */
        final Runnable f3297a;

        /* renamed from: b */
        private int f3298b;

        /* renamed from: c */
        private SearchView f3299c;

        /* renamed from: d */
        private boolean f3300d;

        /* renamed from: android.support.v7.widget.SearchView$SearchAutoComplete$1 */
        class RunnableC06291 implements Runnable {
            RunnableC06291() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m3666b();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f3297a = new Runnable() { // from class: android.support.v7.widget.SearchView.SearchAutoComplete.1
                RunnableC06291() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.m3666b();
                }
            };
            this.f3298b = getThreshold();
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        void setSearchView(SearchView searchView) {
            this.f3299c = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f3298b = i;
        }

        /* renamed from: a */
        boolean m3665a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f3299c.hasFocus() && getVisibility() == 0) {
                this.f3300d = true;
                if (SearchView.m3631a(getContext())) {
                    SearchView.f3235i.m3668a(this, true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f3299c.m3659i();
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f3298b <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f3299c.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i >= 600 || (i >= 640 && i2 >= 480)) {
                return PsExtractor.AUDIO_STREAM;
            }
            return 160;
        }

        @Override // android.support.v7.widget.C0699e, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f3300d) {
                removeCallbacks(this.f3297a);
                post(this.f3297a);
            }
            return onCreateInputConnection;
        }

        /* renamed from: b */
        void m3666b() {
            if (this.f3300d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f3300d = false;
            }
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f3300d = false;
                removeCallbacks(this.f3297a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.f3300d = false;
                    removeCallbacks(this.f3297a);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.f3300d = true;
            }
        }
    }

    /* renamed from: android.support.v7.widget.SearchView$a */
    private static class C0630a {

        /* renamed from: a */
        private Method f3302a;

        /* renamed from: b */
        private Method f3303b;

        /* renamed from: c */
        private Method f3304c;

        C0630a() {
            try {
                this.f3302a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f3302a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.f3303b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f3303b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.f3304c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f3304c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        void m3667a(AutoCompleteTextView autoCompleteTextView) {
            if (this.f3302a != null) {
                try {
                    this.f3302a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        void m3669b(AutoCompleteTextView autoCompleteTextView) {
            if (this.f3303b != null) {
                try {
                    this.f3303b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: a */
        void m3668a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            if (this.f3304c != null) {
                try {
                    this.f3304c.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception e) {
                }
            }
        }
    }
}
