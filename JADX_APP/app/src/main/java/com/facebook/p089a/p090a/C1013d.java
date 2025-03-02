package com.facebook.p089a.p090a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.C1111p;
import com.facebook.EnumC1160t;
import com.facebook.GraphRequest;
import com.facebook.internal.C1062m;
import com.facebook.internal.C1064o;
import com.facebook.internal.C1070u;
import com.facebook.p089a.p090a.p091a.C1009e;
import com.facebook.p089a.p090a.p091a.C1010f;
import com.facebook.p089a.p092b.C1016a;
import com.facebook.p089a.p092b.C1017b;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.a.d */
/* loaded from: classes.dex */
public class C1013d {

    /* renamed from: a */
    private static final String f5203a = C1013d.class.getCanonicalName();

    /* renamed from: f */
    private static C1013d f5204f;

    /* renamed from: c */
    private WeakReference<Activity> f5206c;

    /* renamed from: d */
    private Timer f5207d;

    /* renamed from: e */
    private String f5208e = null;

    /* renamed from: b */
    private final Handler f5205b = new Handler(Looper.getMainLooper());

    public C1013d(Activity activity) {
        this.f5206c = new WeakReference<>(activity);
        f5204f = this;
    }

    /* renamed from: a */
    public void m5703a() {
        Activity activity = this.f5206c.get();
        if (activity != null) {
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.a.d.2

                /* renamed from: a */
                final /* synthetic */ TimerTask f5212a;

                AnonymousClass2(TimerTask timerTask) {
                    timerTask = timerTask;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (C1013d.this.f5207d != null) {
                            C1013d.this.f5207d.cancel();
                        }
                        C1013d.this.f5208e = null;
                        C1013d.this.f5207d = new Timer();
                        C1013d.this.f5207d.scheduleAtFixedRate(timerTask, 0L, 1000L);
                    } catch (Exception e) {
                        Log.e(C1013d.f5203a, "Error scheduling indexing job", e);
                    }
                }
            });
        }
    }

    /* renamed from: com.facebook.a.a.d$1 */
    class AnonymousClass1 extends TimerTask {

        /* renamed from: a */
        final /* synthetic */ Activity f5209a;

        /* renamed from: b */
        final /* synthetic */ String f5210b;

        AnonymousClass1(Activity activity, String str) {
            activity = activity;
            simpleName = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            String str;
            try {
                View rootView = activity.getWindow().getDecorView().getRootView();
                if (C1016a.m5727d()) {
                    if (C1062m.m5996b()) {
                        C1009e.m5655a();
                        return;
                    }
                    FutureTask futureTask = new FutureTask(new a(rootView));
                    C1013d.this.f5205b.post(futureTask);
                    try {
                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                    } catch (Exception e) {
                        Log.e(C1013d.f5203a, "Failed to take screenshot.", e);
                        str = "";
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("screenname", simpleName);
                        jSONObject.put("screenshot", str);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(C1010f.m5663b(rootView));
                        jSONObject.put("view", jSONArray);
                    } catch (JSONException e2) {
                        Log.e(C1013d.f5203a, "Failed to create JSONObject");
                    }
                    C1013d.this.m5698a(jSONObject.toString());
                }
            } catch (Exception e3) {
                Log.e(C1013d.f5203a, "UI Component tree indexing failure!", e3);
            }
        }
    }

    /* renamed from: com.facebook.a.a.d$2 */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ TimerTask f5212a;

        AnonymousClass2(TimerTask timerTask) {
            timerTask = timerTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (C1013d.this.f5207d != null) {
                    C1013d.this.f5207d.cancel();
                }
                C1013d.this.f5208e = null;
                C1013d.this.f5207d = new Timer();
                C1013d.this.f5207d.scheduleAtFixedRate(timerTask, 0L, 1000L);
            } catch (Exception e) {
                Log.e(C1013d.f5203a, "Error scheduling indexing job", e);
            }
        }
    }

    /* renamed from: b */
    public void m5704b() {
        if (this.f5206c.get() != null && this.f5207d != null) {
            try {
                this.f5207d.cancel();
                this.f5207d = null;
            } catch (Exception e) {
                Log.e(f5203a, "Error unscheduling indexing job", e);
            }
        }
    }

    /* renamed from: com.facebook.a.a.d$3 */
    class AnonymousClass3 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f5214a;

        AnonymousClass3(String str) {
            str = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GraphRequest m5695a;
            String m6101b = C1070u.m6101b(str);
            AccessToken m5496a = AccessToken.m5496a();
            if ((m6101b == null || !m6101b.equals(C1013d.this.f5208e)) && (m5695a = C1013d.m5695a(str, m5496a, C1074k.m6185j(), "app_indexing")) != null) {
                C1111p m5590i = m5695a.m5590i();
                try {
                    JSONObject m6420b = m5590i.m6420b();
                    if (m6420b != null) {
                        if ("true".equals(m6420b.optString("success"))) {
                            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1013d.f5203a, "Successfully send UI component tree to server");
                            C1013d.this.f5208e = m6101b;
                        }
                        if (m6420b.has("is_app_indexing_enabled")) {
                            C1016a.m5716a(Boolean.valueOf(m6420b.getBoolean("is_app_indexing_enabled")));
                            return;
                        }
                        return;
                    }
                    Log.e(C1013d.f5203a, "Error sending UI component tree to Facebook: " + m5590i.m6419a());
                } catch (JSONException e) {
                    Log.e(C1013d.f5203a, "Error decoding server response.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public void m5698a(String str) {
        C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.a.d.3

            /* renamed from: a */
            final /* synthetic */ String f5214a;

            AnonymousClass3(String str2) {
                str = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                GraphRequest m5695a;
                String m6101b = C1070u.m6101b(str);
                AccessToken m5496a = AccessToken.m5496a();
                if ((m6101b == null || !m6101b.equals(C1013d.this.f5208e)) && (m5695a = C1013d.m5695a(str, m5496a, C1074k.m6185j(), "app_indexing")) != null) {
                    C1111p m5590i = m5695a.m5590i();
                    try {
                        JSONObject m6420b = m5590i.m6420b();
                        if (m6420b != null) {
                            if ("true".equals(m6420b.optString("success"))) {
                                C1064o.m6002a(EnumC1160t.APP_EVENTS, C1013d.f5203a, "Successfully send UI component tree to server");
                                C1013d.this.f5208e = m6101b;
                            }
                            if (m6420b.has("is_app_indexing_enabled")) {
                                C1016a.m5716a(Boolean.valueOf(m6420b.getBoolean("is_app_indexing_enabled")));
                                return;
                            }
                            return;
                        }
                        Log.e(C1013d.f5203a, "Error sending UI component tree to Facebook: " + m5590i.m6419a());
                    } catch (JSONException e) {
                        Log.e(C1013d.f5203a, "Error decoding server response.", e);
                    }
                }
            }
        });
    }

    @Nullable
    /* renamed from: a */
    public static GraphRequest m5695a(String str, AccessToken accessToken, String str2, String str3) {
        if (str == null) {
            return null;
        }
        GraphRequest m5538a = GraphRequest.m5538a(accessToken, String.format(Locale.US, "%s/app_indexing", str2), (JSONObject) null, (GraphRequest.InterfaceC0995b) null);
        Bundle m5586e = m5538a.m5586e();
        if (m5586e == null) {
            m5586e = new Bundle();
        }
        m5586e.putString("tree", str);
        m5586e.putString("app_version", C1017b.m5747d());
        m5586e.putString("platform", "android");
        m5586e.putString("request_type", str3);
        if (str3.equals("app_indexing")) {
            m5586e.putString("device_session_id", C1016a.m5724c());
        }
        m5538a.m5577a(m5586e);
        m5538a.m5578a((GraphRequest.InterfaceC0995b) new GraphRequest.InterfaceC0995b() { // from class: com.facebook.a.a.d.4
            AnonymousClass4() {
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                C1064o.m6002a(EnumC1160t.APP_EVENTS, C1013d.f5203a, "App index sent to FB!");
            }
        });
        return m5538a;
    }

    /* renamed from: com.facebook.a.a.d$4 */
    static class AnonymousClass4 implements GraphRequest.InterfaceC0995b {
        AnonymousClass4() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            C1064o.m6002a(EnumC1160t.APP_EVENTS, C1013d.f5203a, "App index sent to FB!");
        }
    }

    /* renamed from: com.facebook.a.a.d$a */
    private static class a implements Callable<String> {

        /* renamed from: a */
        private WeakReference<View> f5216a;

        a(View view) {
            this.f5216a = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public String call() {
            View view = this.f5216a.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                return "";
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            view.draw(new Canvas(createBitmap));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        }
    }
}
