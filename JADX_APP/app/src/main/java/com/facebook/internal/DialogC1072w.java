package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.C1047g;
import com.facebook.C1048h;
import com.facebook.C1049i;
import com.facebook.C1073j;
import com.facebook.C1074k;
import com.facebook.C1108m;
import com.facebook.C1111p;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.R;
import com.facebook.share.internal.C1121b;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* renamed from: com.facebook.internal.w */
/* loaded from: classes.dex */
public class DialogC1072w extends Dialog {

    /* renamed from: a */
    private static final int f5563a = R.style.com_facebook_activity_theme;

    /* renamed from: m */
    private static volatile int f5564m;

    /* renamed from: b */
    private String f5565b;

    /* renamed from: c */
    private String f5566c;

    /* renamed from: d */
    private c f5567d;

    /* renamed from: e */
    private WebView f5568e;

    /* renamed from: f */
    private ProgressDialog f5569f;

    /* renamed from: g */
    private ImageView f5570g;

    /* renamed from: h */
    private FrameLayout f5571h;

    /* renamed from: i */
    private d f5572i;

    /* renamed from: j */
    private boolean f5573j;

    /* renamed from: k */
    private boolean f5574k;

    /* renamed from: l */
    private boolean f5575l;

    /* renamed from: n */
    private WindowManager.LayoutParams f5576n;

    /* renamed from: com.facebook.internal.w$c */
    public interface c {
        /* renamed from: a */
        void mo5949a(Bundle bundle, C1048h c1048h);
    }

    /* renamed from: a */
    protected static void m6140a(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null && f5564m == 0) {
                    m6139a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static DialogC1072w m6136a(Context context, String str, Bundle bundle, int i, c cVar) {
        m6140a(context);
        return new DialogC1072w(context, str, bundle, i, cVar);
    }

    /* renamed from: a */
    public static int m6134a() {
        C1071v.m6123a();
        return f5564m;
    }

    /* renamed from: a */
    public static void m6139a(int i) {
        if (i == 0) {
            i = f5563a;
        }
        f5564m = i;
    }

    protected DialogC1072w(Context context, String str) {
        this(context, str, m6134a());
    }

    private DialogC1072w(Context context, String str, int i) {
        super(context, i == 0 ? m6134a() : i);
        this.f5566c = "fbconnect://success";
        this.f5573j = false;
        this.f5574k = false;
        this.f5575l = false;
        this.f5565b = str;
    }

    private DialogC1072w(Context context, String str, Bundle bundle, int i, c cVar) {
        super(context, i == 0 ? m6134a() : i);
        this.f5566c = "fbconnect://success";
        this.f5573j = false;
        this.f5574k = false;
        this.f5575l = false;
        bundle = bundle == null ? new Bundle() : bundle;
        this.f5566c = C1070u.m6118f(context) ? "fbconnect://chrome_os_success" : "fbconnect://success";
        bundle.putString("redirect_uri", this.f5566c);
        bundle.putString("display", "touch");
        bundle.putString("client_id", C1074k.m6185j());
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", C1074k.m6183h()));
        this.f5567d = cVar;
        if (str.equals("share") && bundle.containsKey("media")) {
            this.f5572i = new d(str, bundle);
        } else {
            this.f5565b = C1070u.m6065a(C1068s.m6057a(), C1074k.m6182g() + "/dialog/" + str, bundle).toString();
        }
    }

    /* renamed from: a */
    public void m6151a(c cVar) {
        this.f5567d = cVar;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f5568e != null) {
            this.f5568e.stopLoading();
        }
        if (!this.f5574k && this.f5569f != null && this.f5569f.isShowing()) {
            this.f5569f.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (this.f5572i != null && this.f5572i.getStatus() == AsyncTask.Status.PENDING) {
            this.f5572i.execute(new Void[0]);
            this.f5569f.show();
        } else {
            m6157e();
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        if (this.f5572i != null) {
            this.f5572i.cancel(true);
            this.f5569f.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f5574k = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f5574k = false;
        if (C1070u.m6113d(getContext()) && this.f5576n != null && this.f5576n.token == null) {
            this.f5576n.token = getOwnerActivity().getWindow().getAttributes().token;
            C1070u.m6089a("FacebookSDK.WebDialog", "Set token on onAttachedToWindow(): " + this.f5576n.token);
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.f5576n = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5569f = new ProgressDialog(getContext());
        this.f5569f.requestWindowFeature(1);
        this.f5569f.setMessage(getContext().getString(R.string.com_facebook_loading));
        this.f5569f.setCanceledOnTouchOutside(false);
        this.f5569f.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.w.1
            AnonymousClass1() {
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                DialogC1072w.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.f5571h = new FrameLayout(getContext());
        m6157e();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        m6149f();
        if (this.f5565b != null) {
            m6143b((this.f5570g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.f5571h.addView(this.f5570g, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.f5571h);
    }

    /* renamed from: com.facebook.internal.w$1 */
    class AnonymousClass1 implements DialogInterface.OnCancelListener {
        AnonymousClass1() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            DialogC1072w.this.cancel();
        }
    }

    /* renamed from: b */
    protected void m6153b(String str) {
        this.f5566c = str;
    }

    /* renamed from: a */
    protected Bundle mo5960a(String str) {
        Uri parse = Uri.parse(str);
        Bundle m6106c = C1070u.m6106c(parse.getQuery());
        m6106c.putAll(C1070u.m6106c(parse.getFragment()));
        return m6106c;
    }

    /* renamed from: b */
    protected boolean m6154b() {
        return this.f5573j;
    }

    /* renamed from: c */
    protected boolean m6155c() {
        return this.f5575l;
    }

    /* renamed from: d */
    protected WebView m6156d() {
        return this.f5568e;
    }

    /* renamed from: e */
    public void m6157e() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(m6135a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(m6135a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }

    /* renamed from: a */
    private int m6135a(int i, float f, int i2, int i3) {
        double d2 = 0.5d;
        int i4 = (int) (i / f);
        if (i4 <= i2) {
            d2 = 1.0d;
        } else if (i4 < i3) {
            d2 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (d2 * i);
    }

    /* renamed from: a */
    protected void m6150a(Bundle bundle) {
        if (this.f5567d != null && !this.f5573j) {
            this.f5573j = true;
            this.f5567d.mo5949a(bundle, null);
            dismiss();
        }
    }

    /* renamed from: a */
    protected void m6152a(Throwable th) {
        C1048h c1048h;
        if (this.f5567d != null && !this.f5573j) {
            this.f5573j = true;
            if (th instanceof C1048h) {
                c1048h = (C1048h) th;
            } else {
                c1048h = new C1048h(th);
            }
            this.f5567d.mo5949a(null, c1048h);
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f5567d != null && !this.f5573j) {
            m6152a(new C1073j());
        }
    }

    /* renamed from: f */
    private void m6149f() {
        this.f5570g = new ImageView(getContext());
        this.f5570g.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.w.2
            AnonymousClass2() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC1072w.this.cancel();
            }
        });
        this.f5570g.setImageDrawable(getContext().getResources().getDrawable(R.drawable.com_facebook_close));
        this.f5570g.setVisibility(4);
    }

    /* renamed from: com.facebook.internal.w$2 */
    class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC1072w.this.cancel();
        }
    }

    /* renamed from: com.facebook.internal.w$3 */
    class AnonymousClass3 extends WebView {
        AnonymousClass3(Context context) {
            super(context);
        }

        @Override // android.webkit.WebView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            try {
                super.onWindowFocusChanged(z);
            } catch (NullPointerException e) {
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: b */
    public void m6143b(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f5568e = new WebView(getContext()) { // from class: com.facebook.internal.w.3
            AnonymousClass3(Context context) {
                super(context);
            }

            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException e) {
                }
            }
        };
        this.f5568e.setVerticalScrollBarEnabled(false);
        this.f5568e.setHorizontalScrollBarEnabled(false);
        this.f5568e.setWebViewClient(new b());
        this.f5568e.getSettings().setJavaScriptEnabled(true);
        this.f5568e.loadUrl(this.f5565b);
        this.f5568e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f5568e.setVisibility(4);
        this.f5568e.getSettings().setSavePassword(false);
        this.f5568e.getSettings().setSaveFormData(false);
        this.f5568e.setFocusable(true);
        this.f5568e.setFocusableInTouchMode(true);
        this.f5568e.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.w.4
            AnonymousClass4() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f5568e);
        linearLayout.setBackgroundColor(-872415232);
        this.f5571h.addView(linearLayout);
    }

    /* renamed from: com.facebook.internal.w$4 */
    class AnonymousClass4 implements View.OnTouchListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!view.hasFocus()) {
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.facebook.internal.w$b */
    private class b extends WebViewClient {
        private b() {
        }

        /* synthetic */ b(DialogC1072w dialogC1072w, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            int i;
            C1070u.m6089a("FacebookSDK.WebDialog", "Redirect URL: " + str);
            if (str.startsWith(DialogC1072w.this.f5566c)) {
                Bundle mo5960a = DialogC1072w.this.mo5960a(str);
                String string = mo5960a.getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
                if (string == null) {
                    string = mo5960a.getString("error_type");
                }
                String string2 = mo5960a.getString("error_msg");
                if (string2 == null) {
                    string2 = mo5960a.getString("error_message");
                }
                if (string2 == null) {
                    string2 = mo5960a.getString("error_description");
                }
                String string3 = mo5960a.getString("error_code");
                if (C1070u.m6098a(string3)) {
                    i = -1;
                } else {
                    try {
                        i = Integer.parseInt(string3);
                    } catch (NumberFormatException e) {
                        i = -1;
                    }
                }
                if (C1070u.m6098a(string) && C1070u.m6098a(string2) && i == -1) {
                    DialogC1072w.this.m6150a(mo5960a);
                } else if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                    DialogC1072w.this.cancel();
                } else if (i == 4201) {
                    DialogC1072w.this.cancel();
                } else {
                    DialogC1072w.this.m6152a(new C1108m(new FacebookRequestError(i, string, string2), string2));
                }
                return true;
            }
            if (str.startsWith("fbconnect://cancel")) {
                DialogC1072w.this.cancel();
                return true;
            }
            if (str.contains("touch")) {
                return false;
            }
            try {
                DialogC1072w.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } catch (ActivityNotFoundException e2) {
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            DialogC1072w.this.m6152a(new C1047g(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            DialogC1072w.this.m6152a(new C1047g(null, -11, null));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C1070u.m6089a("FacebookSDK.WebDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
            if (!DialogC1072w.this.f5574k) {
                DialogC1072w.this.f5569f.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!DialogC1072w.this.f5574k) {
                DialogC1072w.this.f5569f.dismiss();
            }
            DialogC1072w.this.f5571h.setBackgroundColor(0);
            DialogC1072w.this.f5568e.setVisibility(0);
            DialogC1072w.this.f5570g.setVisibility(0);
            DialogC1072w.this.f5575l = true;
        }
    }

    /* renamed from: com.facebook.internal.w$a */
    public static class a {

        /* renamed from: a */
        private Context f5581a;

        /* renamed from: b */
        private String f5582b;

        /* renamed from: c */
        private String f5583c;

        /* renamed from: d */
        private int f5584d;

        /* renamed from: e */
        private c f5585e;

        /* renamed from: f */
        private Bundle f5586f;

        /* renamed from: g */
        private AccessToken f5587g;

        public a(Context context, String str, Bundle bundle) {
            this.f5587g = AccessToken.m5496a();
            if (!AccessToken.m5503b()) {
                String m6070a = C1070u.m6070a(context);
                if (m6070a != null) {
                    this.f5582b = m6070a;
                } else {
                    throw new C1048h("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            m6158a(context, str, bundle);
        }

        public a(Context context, String str, String str2, Bundle bundle) {
            str = str == null ? C1070u.m6070a(context) : str;
            C1071v.m6126a(str, "applicationId");
            this.f5582b = str;
            m6158a(context, str2, bundle);
        }

        /* renamed from: a */
        public a m6159a(c cVar) {
            this.f5585e = cVar;
            return this;
        }

        /* renamed from: a */
        public DialogC1072w mo6160a() {
            if (this.f5587g != null) {
                this.f5586f.putString("app_id", this.f5587g.m5513k());
                this.f5586f.putString("access_token", this.f5587g.m5506d());
            } else {
                this.f5586f.putString("app_id", this.f5582b);
            }
            return DialogC1072w.m6136a(this.f5581a, this.f5583c, this.f5586f, this.f5584d, this.f5585e);
        }

        /* renamed from: b */
        public String m6161b() {
            return this.f5582b;
        }

        /* renamed from: c */
        public Context m6162c() {
            return this.f5581a;
        }

        /* renamed from: d */
        public int m6163d() {
            return this.f5584d;
        }

        /* renamed from: e */
        public Bundle m6164e() {
            return this.f5586f;
        }

        /* renamed from: f */
        public c m6165f() {
            return this.f5585e;
        }

        /* renamed from: a */
        private void m6158a(Context context, String str, Bundle bundle) {
            this.f5581a = context;
            this.f5583c = str;
            if (bundle != null) {
                this.f5586f = bundle;
            } else {
                this.f5586f = new Bundle();
            }
        }
    }

    /* renamed from: com.facebook.internal.w$d */
    private class d extends AsyncTask<Void, Void, String[]> {

        /* renamed from: b */
        private String f5590b;

        /* renamed from: c */
        private Bundle f5591c;

        /* renamed from: d */
        private Exception[] f5592d;

        d(String str, Bundle bundle) {
            this.f5590b = str;
            this.f5591c = bundle;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a */
        public String[] doInBackground(Void... voidArr) {
            String[] stringArray = this.f5591c.getStringArray("media");
            String[] strArr = new String[stringArray.length];
            this.f5592d = new Exception[stringArray.length];
            CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            AccessToken m5496a = AccessToken.m5496a();
            for (int i = 0; i < stringArray.length; i++) {
                try {
                    if (isCancelled()) {
                        Iterator it = concurrentLinkedQueue.iterator();
                        while (it.hasNext()) {
                            ((AsyncTask) it.next()).cancel(true);
                        }
                        return null;
                    }
                    Uri parse = Uri.parse(stringArray[i]);
                    if (C1070u.m6094a(parse)) {
                        strArr[i] = parse.toString();
                        countDownLatch.countDown();
                    } else {
                        concurrentLinkedQueue.add(C1121b.m6456a(m5496a, parse, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.internal.w.d.1

                            /* renamed from: a */
                            final /* synthetic */ String[] f5593a;

                            /* renamed from: b */
                            final /* synthetic */ int f5594b;

                            /* renamed from: c */
                            final /* synthetic */ CountDownLatch f5595c;

                            AnonymousClass1(String[] strArr2, int i2, CountDownLatch countDownLatch2) {
                                strArr = strArr2;
                                i = i2;
                                countDownLatch = countDownLatch2;
                            }

                            @Override // com.facebook.GraphRequest.InterfaceC0995b
                            /* renamed from: a */
                            public void mo777a(C1111p c1111p) {
                                FacebookRequestError m6419a;
                                try {
                                    m6419a = c1111p.m6419a();
                                } catch (Exception e) {
                                    d.this.f5592d[i] = e;
                                }
                                if (m6419a != null) {
                                    String m5532e = m6419a.m5532e();
                                    if (m5532e == null) {
                                        m5532e = "Error staging photo.";
                                    }
                                    throw new C1049i(c1111p, m5532e);
                                }
                                JSONObject m6420b = c1111p.m6420b();
                                if (m6420b == null) {
                                    throw new C1048h("Error staging photo.");
                                }
                                String optString = m6420b.optString("uri");
                                if (optString == null) {
                                    throw new C1048h("Error staging photo.");
                                }
                                strArr[i] = optString;
                                countDownLatch.countDown();
                            }
                        }).m5591j());
                    }
                } catch (Exception e) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((AsyncTask) it2.next()).cancel(true);
                    }
                    return null;
                }
            }
            countDownLatch2.await();
            return strArr2;
        }

        /* renamed from: com.facebook.internal.w$d$1 */
        class AnonymousClass1 implements GraphRequest.InterfaceC0995b {

            /* renamed from: a */
            final /* synthetic */ String[] f5593a;

            /* renamed from: b */
            final /* synthetic */ int f5594b;

            /* renamed from: c */
            final /* synthetic */ CountDownLatch f5595c;

            AnonymousClass1(String[] strArr2, int i2, CountDownLatch countDownLatch2) {
                strArr = strArr2;
                i = i2;
                countDownLatch = countDownLatch2;
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                FacebookRequestError m6419a;
                try {
                    m6419a = c1111p.m6419a();
                } catch (Exception e) {
                    d.this.f5592d[i] = e;
                }
                if (m6419a != null) {
                    String m5532e = m6419a.m5532e();
                    if (m5532e == null) {
                        m5532e = "Error staging photo.";
                    }
                    throw new C1049i(c1111p, m5532e);
                }
                JSONObject m6420b = c1111p.m6420b();
                if (m6420b == null) {
                    throw new C1048h("Error staging photo.");
                }
                String optString = m6420b.optString("uri");
                if (optString == null) {
                    throw new C1048h("Error staging photo.");
                }
                strArr[i] = optString;
                countDownLatch.countDown();
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(String[] strArr) {
            DialogC1072w.this.f5569f.dismiss();
            for (Exception exc : this.f5592d) {
                if (exc != null) {
                    DialogC1072w.this.m6152a(exc);
                    return;
                }
            }
            if (strArr == null) {
                DialogC1072w.this.m6152a(new C1048h("Failed to stage photos for web dialog"));
                return;
            }
            List asList = Arrays.asList(strArr);
            if (asList.contains(null)) {
                DialogC1072w.this.m6152a(new C1048h("Failed to stage photos for web dialog"));
                return;
            }
            C1070u.m6095a(this.f5591c, "media", new JSONArray((Collection) asList));
            DialogC1072w.this.f5565b = C1070u.m6065a(C1068s.m6057a(), C1074k.m6182g() + "/dialog/" + this.f5590b, this.f5591c).toString();
            DialogC1072w.this.m6143b((DialogC1072w.this.f5570g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
    }
}
