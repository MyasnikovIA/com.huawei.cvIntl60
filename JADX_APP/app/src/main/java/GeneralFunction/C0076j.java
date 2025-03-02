package GeneralFunction;

import java.util.concurrent.Semaphore;

/* renamed from: GeneralFunction.j */
/* loaded from: classes.dex */
public class C0076j {

    /* renamed from: a */
    Semaphore f616a = new Semaphore(1, true);

    /* renamed from: a */
    public int m739a() {
        try {
            this.f616a.acquire();
            return 0;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: b */
    public void m740b() {
        this.f616a.release();
    }
}
