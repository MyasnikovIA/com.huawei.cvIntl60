package ui_Controller.p110b;

import java.util.ArrayList;

/* renamed from: ui_Controller.b.a */
/* loaded from: classes.dex */
public class C1659a {

    /* renamed from: a */
    public int f7473a;

    /* renamed from: b */
    public ArrayList<Integer> f7474b;

    /* renamed from: c */
    public int f7475c;

    /* renamed from: d */
    public int f7476d;

    public C1659a(int i, ArrayList<Integer> arrayList, int i2, int i3) {
        this.f7474b = null;
        this.f7473a = i;
        this.f7474b = arrayList;
        this.f7475c = i2;
        this.f7476d = i3;
    }

    /* renamed from: a */
    public String m7079a() {
        String str = "lParentIndex:" + this.f7473a + "\r\nlActionType:" + this.f7475c + "\r\nlImageType:" + this.f7476d + "\r\n";
        if (this.f7474b != null) {
            String str2 = str + "lChildIndex:";
            for (int i = 0; i < this.f7474b.size(); i++) {
                str2 = str2 + this.f7474b.get(i) + " ";
            }
            return str2;
        }
        return str + "lChildIndex:" + this.f7474b + "\r\n";
    }
}
