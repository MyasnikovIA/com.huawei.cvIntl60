package com.facebook;

/* renamed from: com.facebook.m */
/* loaded from: classes.dex */
public class C1108m extends C1048h {
    private static final long serialVersionUID = 1;

    /* renamed from: a */
    private final FacebookRequestError f5748a;

    public C1108m(FacebookRequestError facebookRequestError, String str) {
        super(str);
        this.f5748a = facebookRequestError;
    }

    /* renamed from: a */
    public final FacebookRequestError m6392a() {
        return this.f5748a;
    }

    @Override // com.facebook.C1048h, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f5748a.m5528a() + ", facebookErrorCode: " + this.f5748a.m5529b() + ", facebookErrorType: " + this.f5748a.m5531d() + ", message: " + this.f5748a.m5532e() + "}";
    }
}
