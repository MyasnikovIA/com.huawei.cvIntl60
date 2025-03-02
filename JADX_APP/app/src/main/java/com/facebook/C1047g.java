package com.facebook;

/* renamed from: com.facebook.g */
/* loaded from: classes.dex */
public class C1047g extends C1048h {
    static final long serialVersionUID = 1;

    /* renamed from: a */
    private int f5423a;

    /* renamed from: b */
    private String f5424b;

    public C1047g(String str, int i, String str2) {
        super(str);
        this.f5423a = i;
        this.f5424b = str2;
    }

    /* renamed from: a */
    public int m5917a() {
        return this.f5423a;
    }

    /* renamed from: b */
    public String m5918b() {
        return this.f5424b;
    }

    @Override // com.facebook.C1048h, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + m5917a() + ", message: " + getMessage() + ", url: " + m5918b() + "}";
    }
}
