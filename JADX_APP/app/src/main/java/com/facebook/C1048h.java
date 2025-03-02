package com.facebook;

/* renamed from: com.facebook.h */
/* loaded from: classes.dex */
public class C1048h extends RuntimeException {
    static final long serialVersionUID = 1;

    public C1048h() {
    }

    public C1048h(String str) {
        super(str);
    }

    public C1048h(String str, Throwable th) {
        super(str, th);
    }

    public C1048h(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
