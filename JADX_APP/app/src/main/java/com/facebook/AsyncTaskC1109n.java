package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.internal.C1070u;
import java.net.HttpURLConnection;
import java.util.List;

/* renamed from: com.facebook.n */
/* loaded from: classes.dex */
public class AsyncTaskC1109n extends AsyncTask<Void, Void, List<C1111p>> {

    /* renamed from: a */
    private static final String f5749a = AsyncTaskC1109n.class.getCanonicalName();

    /* renamed from: b */
    private final HttpURLConnection f5750b;

    /* renamed from: c */
    private final C1110o f5751c;

    /* renamed from: d */
    private Exception f5752d;

    public AsyncTaskC1109n(C1110o c1110o) {
        this(null, c1110o);
    }

    public AsyncTaskC1109n(HttpURLConnection httpURLConnection, C1110o c1110o) {
        this.f5751c = c1110o;
        this.f5750b = httpURLConnection;
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f5750b + ", requests: " + this.f5751c + "}";
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Handler handler;
        super.onPreExecute();
        if (C1074k.m6175b()) {
            C1070u.m6089a(f5749a, String.format("execute async task: %s", this));
        }
        if (this.f5751c.m6404c() == null) {
            if (Thread.currentThread() instanceof HandlerThread) {
                handler = new Handler();
            } else {
                handler = new Handler(Looper.getMainLooper());
            }
            this.f5751c.m6398a(handler);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(List<C1111p> list) {
        super.onPostExecute(list);
        if (this.f5752d != null) {
            C1070u.m6089a(f5749a, String.format("onPostExecute: exception encountered during request: %s", this.f5752d.getMessage()));
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: a */
    public List<C1111p> doInBackground(Void... voidArr) {
        List<C1111p> m5543a;
        try {
            if (this.f5750b == null) {
                m5543a = this.f5751c.m6408g();
            } else {
                m5543a = GraphRequest.m5543a(this.f5750b, this.f5751c);
            }
            return m5543a;
        } catch (Exception e) {
            this.f5752d = e;
            return null;
        }
    }
}
