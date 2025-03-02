package com.p052a.p053a.p057d.p065c;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.p052a.p053a.p057d.InterfaceC0884h;
import com.p052a.p053a.p081j.C0954h;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.a.a.d.c.g */
/* loaded from: classes.dex */
public class C0821g implements InterfaceC0884h {

    /* renamed from: b */
    private final InterfaceC0822h f4529b;

    /* renamed from: c */
    @Nullable
    private final URL f4530c;

    /* renamed from: d */
    @Nullable
    private final String f4531d;

    /* renamed from: e */
    @Nullable
    private String f4532e;

    /* renamed from: f */
    @Nullable
    private URL f4533f;

    /* renamed from: g */
    @Nullable
    private volatile byte[] f4534g;

    /* renamed from: h */
    private int f4535h;

    public C0821g(URL url) {
        this(url, InterfaceC0822h.f4537b);
    }

    public C0821g(String str) {
        this(str, InterfaceC0822h.f4537b);
    }

    public C0821g(URL url, InterfaceC0822h interfaceC0822h) {
        this.f4530c = (URL) C0954h.m5409a(url);
        this.f4531d = null;
        this.f4529b = (InterfaceC0822h) C0954h.m5409a(interfaceC0822h);
    }

    public C0821g(String str, InterfaceC0822h interfaceC0822h) {
        this.f4530c = null;
        this.f4531d = C0954h.m5411a(str);
        this.f4529b = (InterfaceC0822h) C0954h.m5409a(interfaceC0822h);
    }

    /* renamed from: a */
    public URL m4931a() {
        return m4928d();
    }

    /* renamed from: d */
    private URL m4928d() {
        if (this.f4533f == null) {
            this.f4533f = new URL(m4929e());
        }
        return this.f4533f;
    }

    /* renamed from: e */
    private String m4929e() {
        if (TextUtils.isEmpty(this.f4532e)) {
            String str = this.f4531d;
            if (TextUtils.isEmpty(str)) {
                str = this.f4530c.toString();
            }
            this.f4532e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        }
        return this.f4532e;
    }

    /* renamed from: b */
    public Map<String, String> m4932b() {
        return this.f4529b.mo4934a();
    }

    /* renamed from: c */
    public String m4933c() {
        return this.f4531d != null ? this.f4531d : this.f4530c.toString();
    }

    public String toString() {
        return m4933c();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        messageDigest.update(m4930f());
    }

    /* renamed from: f */
    private byte[] m4930f() {
        if (this.f4534g == null) {
            this.f4534g = m4933c().getBytes(f4739a);
        }
        return this.f4534g;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (!(obj instanceof C0821g)) {
            return false;
        }
        C0821g c0821g = (C0821g) obj;
        return m4933c().equals(c0821g.m4933c()) && this.f4529b.equals(c0821g.f4529b);
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        if (this.f4535h == 0) {
            this.f4535h = m4933c().hashCode();
            this.f4535h = (this.f4535h * 31) + this.f4529b.hashCode();
        }
        return this.f4535h;
    }
}
