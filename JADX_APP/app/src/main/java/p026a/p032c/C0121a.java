package p026a.p032c;

import android.os.Bundle;
import android.os.Message;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: a.c.a */
/* loaded from: classes.dex */
public class C0121a {

    /* renamed from: a */
    private int f929a;

    /* renamed from: b */
    private Message f930b;

    /* renamed from: c */
    private Bundle f931c;

    public C0121a(int i) {
        this.f929a = -1;
        this.f930b = null;
        this.f931c = null;
        this.f929a = i;
        this.f930b = new Message();
        this.f930b.what = i;
        this.f931c = new Bundle();
    }

    public C0121a(Message message) {
        this.f929a = -1;
        this.f930b = null;
        this.f931c = null;
        this.f929a = message.what;
        this.f930b = new Message();
        this.f930b.what = message.what;
        this.f930b.obj = message.obj;
        this.f931c = message.getData();
    }

    /* renamed from: a */
    public int m1198a() {
        return this.f929a;
    }

    /* renamed from: b */
    public Message m1208b() {
        this.f930b.setData(this.f931c);
        return this.f930b;
    }

    /* renamed from: a */
    public void m1199a(Object obj) {
        this.f930b.obj = obj;
    }

    /* renamed from: c */
    public Object m1210c() {
        return this.f930b.obj;
    }

    /* renamed from: a */
    public void m1204a(String str, boolean z) {
        this.f931c.putBoolean(str, z);
    }

    /* renamed from: a */
    public boolean m1206a(String str) {
        return this.f931c.getBoolean(str);
    }

    /* renamed from: a */
    public void m1200a(String str, int i) {
        this.f931c.putInt(str, i);
    }

    /* renamed from: b */
    public int m1207b(String str) {
        return this.f931c.getInt(str);
    }

    /* renamed from: a */
    public void m1201a(String str, long j) {
        this.f931c.putLong(str, j);
    }

    /* renamed from: c */
    public long m1209c(String str) {
        return this.f931c.getLong(str);
    }

    /* renamed from: a */
    public void m1203a(String str, String str2) {
        this.f931c.putString(str, str2);
    }

    /* renamed from: d */
    public String m1211d(String str) {
        return this.f931c.getString(str);
    }

    /* renamed from: a */
    public void m1205a(String str, byte[] bArr) {
        this.f931c.putByteArray(str, bArr);
    }

    /* renamed from: e */
    public byte[] m1212e(String str) {
        return this.f931c.getByteArray(str);
    }

    /* renamed from: a */
    public void m1202a(String str, a aVar) {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(aVar);
        arrayList.add(arrayList2);
        this.f931c.putParcelableArrayList(str, arrayList);
    }

    /* renamed from: f */
    public a m1213f(String str) {
        ArrayList parcelableArrayList = this.f931c.getParcelableArrayList(str);
        if (parcelableArrayList == null || parcelableArrayList.get(0) == null) {
            return null;
        }
        return (a) ((ArrayList) parcelableArrayList.get(0)).get(0);
    }

    /* renamed from: a.c.a$a */
    public static class a<T> {

        /* renamed from: a */
        private T f932a;

        public a(T t) {
            this.f932a = t;
        }

        /* renamed from: a */
        public T m1214a() {
            return this.f932a;
        }
    }
}
