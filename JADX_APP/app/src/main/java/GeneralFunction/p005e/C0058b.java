package GeneralFunction.p005e;

import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: GeneralFunction.e.b */
/* loaded from: classes.dex */
public class C0058b implements Cloneable {

    /* renamed from: a */
    public ArrayList<C0057a> f492a = new ArrayList<>();

    /* renamed from: b */
    public HashMap<Integer, C0059c> f493b = new HashMap<>();

    /* renamed from: a */
    public void m481a() {
        this.f492a.clear();
        this.f493b.clear();
    }

    public Object clone() {
        C0058b c0058b = new C0058b();
        c0058b.f492a.addAll(this.f492a);
        c0058b.f493b.putAll(this.f493b);
        return c0058b;
    }
}
