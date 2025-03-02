package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.i */
/* loaded from: classes.dex */
public class DialogC1058i extends DialogC1072w {

    /* renamed from: a */
    private static final String f5467a = DialogC1058i.class.getName();

    /* renamed from: b */
    private boolean f5468b;

    /* renamed from: a */
    public static DialogC1058i m5958a(Context context, String str, String str2) {
        DialogC1072w.m6140a(context);
        return new DialogC1058i(context, str, str2);
    }

    private DialogC1058i(Context context, String str, String str2) {
        super(context, str);
        m6153b(str2);
    }

    @Override // com.facebook.internal.DialogC1072w
    /* renamed from: a */
    protected Bundle mo5960a(String str) {
        Bundle m6106c = C1070u.m6106c(Uri.parse(str).getQuery());
        String string = m6106c.getString("bridge_args");
        m6106c.remove("bridge_args");
        if (!C1070u.m6098a(string)) {
            try {
                m6106c.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", C1052c.m5935a(new JSONObject(string)));
            } catch (JSONException e) {
                C1070u.m6090a(f5467a, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = m6106c.getString("method_results");
        m6106c.remove("method_results");
        if (!C1070u.m6098a(string2)) {
            if (C1070u.m6098a(string2)) {
                string2 = "{}";
            }
            try {
                m6106c.putBundle("com.facebook.platform.protocol.RESULT_ARGS", C1052c.m5935a(new JSONObject(string2)));
            } catch (JSONException e2) {
                C1070u.m6090a(f5467a, "Unable to parse bridge_args JSON", e2);
            }
        }
        m6106c.remove("version");
        m6106c.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", C1065p.m6013a());
        return m6106c;
    }

    @Override // com.facebook.internal.DialogC1072w, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView d = m6156d();
        if (!m6155c() || m6154b() || d == null || !d.isShown()) {
            super.cancel();
        } else if (!this.f5468b) {
            this.f5468b = true;
            d.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.i.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    DialogC1058i.super.cancel();
                }
            }, 1500L);
        }
    }

    /* renamed from: com.facebook.internal.i$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC1058i.super.cancel();
        }
    }
}
