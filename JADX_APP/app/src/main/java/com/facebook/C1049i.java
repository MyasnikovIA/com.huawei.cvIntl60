package com.facebook;

/* renamed from: com.facebook.i */
/* loaded from: classes.dex */
public class C1049i extends C1048h {

    /* renamed from: a */
    private final C1111p f5425a;

    public C1049i(C1111p c1111p, String str) {
        super(str);
        this.f5425a = c1111p;
    }

    @Override // com.facebook.C1048h, java.lang.Throwable
    public final String toString() {
        FacebookRequestError m6419a = this.f5425a != null ? this.f5425a.m6419a() : null;
        StringBuilder append = new StringBuilder().append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            append.append(message);
            append.append(" ");
        }
        if (m6419a != null) {
            append.append("httpResponseCode: ").append(m6419a.m5528a()).append(", facebookErrorCode: ").append(m6419a.m5529b()).append(", facebookErrorType: ").append(m6419a.m5531d()).append(", message: ").append(m6419a.m5532e()).append("}");
        }
        return append.toString();
    }
}
