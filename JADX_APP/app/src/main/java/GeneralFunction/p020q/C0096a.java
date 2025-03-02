package GeneralFunction.p020q;

import ThirdParty.OpenCV.OpenCVFunc;

/* renamed from: GeneralFunction.q.a */
/* loaded from: classes.dex */
public class C0096a {

    /* renamed from: a */
    private OpenCVFunc f724a;

    /* renamed from: b */
    private a f725b;

    /* renamed from: c */
    private Thread f726c;

    /* renamed from: GeneralFunction.q.a$a */
    private class a {

        /* renamed from: a */
        public boolean f727a;
    }

    /* renamed from: GeneralFunction.q.a$b */
    public interface b {
    }

    /* renamed from: a */
    public void m909a() {
        this.f725b.f727a = true;
        this.f724a.cancelStitchMatch();
        this.f726c.interrupt();
    }
}
