package com.facebook.p089a;

import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.internal.C1070u;
import java.io.Serializable;

/* renamed from: com.facebook.a.a */
/* loaded from: classes.dex */
class C1003a implements Serializable {
    private static final long serialVersionUID = 1;

    /* renamed from: a */
    private final String f5125a;

    /* renamed from: b */
    private final String f5126b;

    public C1003a(AccessToken accessToken) {
        this(accessToken.m5506d(), C1074k.m6185j());
    }

    public C1003a(String str, String str2) {
        this.f5125a = C1070u.m6098a(str) ? null : str;
        this.f5126b = str2;
    }

    /* renamed from: a */
    public String m5633a() {
        return this.f5125a;
    }

    /* renamed from: b */
    public String m5634b() {
        return this.f5126b;
    }

    public int hashCode() {
        return (this.f5125a == null ? 0 : this.f5125a.hashCode()) ^ (this.f5126b != null ? this.f5126b.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1003a)) {
            return false;
        }
        C1003a c1003a = (C1003a) obj;
        return C1070u.m6097a(c1003a.f5125a, this.f5125a) && C1070u.m6097a(c1003a.f5126b, this.f5126b);
    }

    /* renamed from: com.facebook.a.a$a */
    static class a implements Serializable {
        private static final long serialVersionUID = -2488473066578201069L;

        /* renamed from: a */
        private final String f5128a;

        /* renamed from: b */
        private final String f5129b;

        /* synthetic */ a(String str, String str2, AnonymousClass1 anonymousClass1) {
            this(str, str2);
        }

        private a(String str, String str2) {
            this.f5128a = str;
            this.f5129b = str2;
        }

        private Object readResolve() {
            return new C1003a(this.f5128a, this.f5129b);
        }
    }

    private Object writeReplace() {
        return new a(this.f5125a, this.f5126b);
    }
}
