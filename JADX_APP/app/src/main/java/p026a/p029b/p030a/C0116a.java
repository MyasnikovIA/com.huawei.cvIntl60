package p026a.p029b.p030a;

import java.nio.ByteBuffer;
import java.util.Random;

/* renamed from: a.b.a.a */
/* loaded from: classes.dex */
public class C0116a {

    /* renamed from: a */
    private int f878a;

    /* renamed from: b */
    private int f879b;

    /* renamed from: c */
    private int f880c;

    /* renamed from: d */
    private byte f881d;

    /* renamed from: e */
    private byte f882e;

    /* renamed from: f */
    private byte f883f;

    /* renamed from: g */
    private byte[] f884g;

    public C0116a(int i, byte b) {
        this.f878a = 1431519811;
        this.f879b = m1124b();
        this.f880c = i;
        this.f881d = b;
        this.f882e = (byte) 0;
        this.f883f = (byte) 16;
    }

    public C0116a(int i, byte b, int i2) {
        this.f878a = 1431519811;
        this.f879b = i2;
        this.f880c = i;
        this.f881d = b;
        this.f882e = (byte) 0;
        this.f883f = (byte) 16;
    }

    /* renamed from: a */
    public void m1125a(byte[] bArr) {
        this.f884g = bArr;
    }

    /* renamed from: a */
    public byte[] m1126a() {
        ByteBuffer allocate = ByteBuffer.allocate(31);
        allocate.putInt(this.f878a);
        allocate.putInt(this.f879b);
        allocate.putInt(this.f880c);
        allocate.put(this.f881d);
        allocate.put(this.f882e);
        allocate.put(this.f883f);
        allocate.put(this.f884g);
        return allocate.array();
    }

    /* renamed from: b */
    private int m1124b() {
        return new Random().nextInt();
    }
}
