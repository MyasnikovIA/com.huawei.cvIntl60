package com.p052a.p053a.p057d.p058a;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.C0881e;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import com.p052a.p053a.p057d.p065c.C0821g;
import com.p052a.p053a.p081j.C0948b;
import com.p052a.p053a.p081j.C0950d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* renamed from: com.a.a.d.a.h */
/* loaded from: classes.dex */
public class C0754h implements InterfaceC0748b<InputStream> {

    /* renamed from: a */
    static final b f4181a = new a();

    /* renamed from: b */
    private final C0821g f4182b;

    /* renamed from: c */
    private final int f4183c;

    /* renamed from: d */
    private final b f4184d;

    /* renamed from: e */
    private HttpURLConnection f4185e;

    /* renamed from: f */
    private InputStream f4186f;

    /* renamed from: g */
    private volatile boolean f4187g;

    /* renamed from: com.a.a.d.a.h$b */
    interface b {
        /* renamed from: a */
        HttpURLConnection mo4644a(URL url);
    }

    public C0754h(C0821g c0821g, int i) {
        this(c0821g, i, f4181a);
    }

    C0754h(C0821g c0821g, int i, b bVar) {
        this.f4182b = c0821g;
        this.f4183c = i;
        this.f4184d = bVar;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super InputStream> aVar) {
        long m5397a = C0950d.m5397a();
        try {
            InputStream m4643a = m4643a(this.f4182b.m4931a(), 0, null, this.f4182b.m4932b());
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + C0950d.m5396a(m5397a) + " ms and loaded " + m4643a);
            }
            aVar.mo4631a((InterfaceC0748b.a<? super InputStream>) m4643a);
        } catch (IOException e) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e);
            }
            aVar.mo4630a((Exception) e);
        }
    }

    /* renamed from: a */
    private InputStream m4643a(URL url, int i, URL url2, Map<String, String> map) {
        if (i >= 5) {
            throw new C0881e("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new C0881e("In re-direct loop");
                }
            } catch (URISyntaxException e) {
            }
        }
        this.f4185e = this.f4184d.mo4644a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f4185e.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f4185e.setConnectTimeout(this.f4183c);
        this.f4185e.setReadTimeout(this.f4183c);
        this.f4185e.setUseCaches(false);
        this.f4185e.setDoInput(true);
        this.f4185e.setInstanceFollowRedirects(false);
        this.f4185e.connect();
        this.f4186f = this.f4185e.getInputStream();
        if (this.f4187g) {
            return null;
        }
        int responseCode = this.f4185e.getResponseCode();
        if (responseCode / 100 == 2) {
            return m4642a(this.f4185e);
        }
        if (responseCode / 100 == 3) {
            String headerField = this.f4185e.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new C0881e("Received empty or null redirect url");
            }
            URL url3 = new URL(url, headerField);
            mo4609a();
            return m4643a(url3, i + 1, url, map);
        }
        if (responseCode == -1) {
            throw new C0881e(responseCode);
        }
        throw new C0881e(this.f4185e.getResponseMessage(), responseCode);
    }

    /* renamed from: a */
    private InputStream m4642a(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f4186f = C0948b.m5391a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f4186f = httpURLConnection.getInputStream();
        }
        return this.f4186f;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4609a() {
        if (this.f4186f != null) {
            try {
                this.f4186f.close();
            } catch (IOException e) {
            }
        }
        if (this.f4185e != null) {
            this.f4185e.disconnect();
        }
        this.f4185e = null;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: b */
    public void mo4612b() {
        this.f4187g = true;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<InputStream> mo4626d() {
        return InputStream.class;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: c */
    public EnumC0741a mo4613c() {
        return EnumC0741a.REMOTE;
    }

    /* renamed from: com.a.a.d.a.h$a */
    private static class a implements b {
        a() {
        }

        @Override // com.p052a.p053a.p057d.p058a.C0754h.b
        /* renamed from: a */
        public HttpURLConnection mo4644a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }
}
