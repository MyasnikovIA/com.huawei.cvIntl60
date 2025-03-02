package org.p097a.p098a.p099a;

/* renamed from: org.a.a.a.b */
/* loaded from: classes.dex */
public class C1581b extends RuntimeException {

    /* renamed from: a */
    Throwable f7142a;

    public C1581b(String str, Throwable th) {
        super(th != null ? new StringBuffer().append("Exception while initializing ").append(str).append(": ").append(th).toString() : str);
        this.f7142a = th;
    }

    public C1581b() {
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7142a;
    }
}
