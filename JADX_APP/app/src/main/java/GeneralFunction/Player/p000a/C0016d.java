package GeneralFunction.Player.p000a;

import GeneralFunction.C0076j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;

/* renamed from: GeneralFunction.Player.a.d */
/* loaded from: classes.dex */
public class C0016d {

    /* renamed from: a */
    private static final String f97a = C0016d.class.getSimpleName();

    /* renamed from: b */
    private FloatBuffer f98b;

    /* renamed from: c */
    private ShortBuffer[] f99c;

    /* renamed from: d */
    private int[] f100d;

    /* renamed from: e */
    private int f101e;

    /* renamed from: f */
    private C0076j f102f = new C0076j();

    public C0016d(int i, float f, float f2, float f3, float f4, int i2, int i3) {
        int i4 = i + 1;
        int i5 = i4 * i4;
        if (i5 > 32767) {
            throw new RuntimeException("nSlices " + i + " too big for vertex");
        }
        this.f101e = i * i * 6;
        float f5 = 3.1415927f / i;
        float f6 = 6.2831855f / i;
        this.f98b = ByteBuffer.allocateDirect(i5 * 5 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f99c = new ShortBuffer[i2];
        this.f100d = new int[i2];
        int i6 = ((this.f101e / i2) / 6) * 6;
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.f100d[i7] = i6;
        }
        this.f100d[i2 - 1] = this.f101e - (i6 * (i2 - 1));
        for (int i8 = 0; i8 < i2; i8++) {
            this.f99c[i8] = ByteBuffer.allocateDirect(this.f100d[i8] * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        }
        if (i3 <= 1) {
            m135a(0, i4, i4, f5, f6, f, f2, f3, f4, i);
            m134a(i, i4);
        } else {
            m133a(i4, f5, f6, f, f2, f3, f4, i, i3);
        }
        this.f98b.position(0);
        for (int i9 = 0; i9 < i2; i9++) {
            this.f99c[i9].position(0);
        }
    }

    /* renamed from: a */
    private void m133a(int i, float f, float f2, float f3, float f4, float f5, float f6, int i2, int i3) {
        ArrayList<b> arrayList = new ArrayList<>();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i3) {
                break;
            }
            b bVar = new b((i * i5) / i3, ((i5 + 1) * i) / i3, i, f, f2, f3, f4, f5, f6, i2);
            arrayList.add(bVar);
            bVar.start();
            i4 = i5 + 1;
        }
        a aVar = new a(i2, i);
        aVar.start();
        while (true) {
            if (!m138a(arrayList) || !aVar.m143a()) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private boolean m138a(ArrayList<b> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (!arrayList.get(i).m144a()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public void m134a(int i, int i2) {
        short[] sArr = new short[m132a(this.f100d)];
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = i5 + 1;
                int i8 = i6 + 1;
                if (i4 >= this.f100d[i3]) {
                    this.f99c[i3].put(sArr, 0, this.f100d[i3]);
                    i3++;
                    i4 = 0;
                }
                int i9 = i4 + 1;
                sArr[i4] = (short) ((i5 * i2) + i6);
                int i10 = i9 + 1;
                sArr[i9] = (short) ((i7 * i2) + i6);
                int i11 = i10 + 1;
                sArr[i10] = (short) ((i7 * i2) + i8);
                int i12 = i11 + 1;
                sArr[i11] = (short) ((i5 * i2) + i6);
                int i13 = i12 + 1;
                sArr[i12] = (short) ((i7 * i2) + i8);
                i4 = i13 + 1;
                sArr[i13] = (short) ((i5 * i2) + i8);
            }
        }
        this.f99c[i3].put(sArr, 0, this.f100d[i3]);
    }

    /* renamed from: a */
    public void m135a(int i, int i2, int i3, float f, float f2, float f3, float f4, float f5, float f6, int i4) {
        float[] fArr = new float[i3 * 5];
        while (i < i2) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = i5 * 5;
                float sin = (float) Math.sin(i * f);
                float sin2 = (float) Math.sin(i5 * f2);
                float cos = (float) Math.cos(i * f);
                float cos2 = (float) Math.cos(i5 * f2);
                fArr[i6 + 0] = (sin2 * f6 * sin) + f3;
                fArr[i6 + 1] = (sin * f6 * cos2) + f4;
                fArr[i6 + 2] = (f6 * cos) + f5;
                fArr[i6 + 3] = i5 / i4;
                fArr[i6 + 4] = (0.0f - i) / i4;
            }
            this.f102f.m739a();
            this.f98b.position(fArr.length * i);
            this.f98b.put(fArr, 0, fArr.length);
            this.f102f.m740b();
            i++;
        }
    }

    /* renamed from: a */
    public FloatBuffer m139a() {
        return this.f98b;
    }

    /* renamed from: b */
    public int m140b() {
        return 20;
    }

    /* renamed from: c */
    public ShortBuffer[] m141c() {
        return this.f99c;
    }

    /* renamed from: d */
    public int[] m142d() {
        return this.f100d;
    }

    /* renamed from: a */
    private int m132a(int[] iArr) {
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    /* renamed from: GeneralFunction.Player.a.d$b */
    private class b extends Thread {

        /* renamed from: b */
        private boolean f108b = false;

        /* renamed from: c */
        private int f109c;

        /* renamed from: d */
        private int f110d;

        /* renamed from: e */
        private int f111e;

        /* renamed from: f */
        private float f112f;

        /* renamed from: g */
        private float f113g;

        /* renamed from: h */
        private float f114h;

        /* renamed from: i */
        private float f115i;

        /* renamed from: j */
        private float f116j;

        /* renamed from: k */
        private float f117k;

        /* renamed from: l */
        private int f118l;

        public b(int i, int i2, int i3, float f, float f2, float f3, float f4, float f5, float f6, int i4) {
            this.f109c = i;
            this.f110d = i2;
            this.f111e = i3;
            this.f112f = f;
            this.f113g = f2;
            this.f114h = f3;
            this.f115i = f4;
            this.f116j = f5;
            this.f117k = f6;
            this.f118l = i4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C0016d.this.m135a(this.f109c, this.f110d, this.f111e, this.f112f, this.f113g, this.f114h, this.f115i, this.f116j, this.f117k, this.f118l);
            this.f108b = true;
        }

        /* renamed from: a */
        public boolean m144a() {
            return this.f108b;
        }
    }

    /* renamed from: GeneralFunction.Player.a.d$a */
    private class a extends Thread {

        /* renamed from: b */
        private boolean f104b = false;

        /* renamed from: c */
        private int f105c;

        /* renamed from: d */
        private int f106d;

        public a(int i, int i2) {
            this.f105c = 0;
            this.f106d = 0;
            this.f105c = i;
            this.f106d = i2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C0016d.this.m134a(this.f105c, this.f106d);
            this.f104b = true;
        }

        /* renamed from: a */
        public boolean m143a() {
            return this.f104b;
        }
    }
}
