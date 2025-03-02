package GeneralFunction.p023t;

import java.io.File;
import java.nio.ByteBuffer;

/* renamed from: GeneralFunction.t.b */
/* loaded from: classes.dex */
public class C0105b {

    /* renamed from: a */
    private File f773a = null;

    /* renamed from: b */
    private C0104a f774b = new C0104a();

    /* renamed from: a */
    public int m960a(String str) {
        this.f773a = new File(str);
        return this.f773a.exists() ? 0 : -1;
    }

    /* renamed from: a */
    public C0104a m961a() {
        m962a(this.f774b, 0L, this.f773a.length());
        return this.f774b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m962a(GeneralFunction.p023t.C0104a r11, long r12, long r14) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p023t.C0105b.m962a(GeneralFunction.t.a, long, long):void");
    }

    /* renamed from: a */
    private int m958a(byte[] bArr, int i, int i2) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.put(bArr, i, i2);
        allocate.flip();
        return allocate.getInt();
    }

    /* renamed from: b */
    private long m959b(byte[] bArr, int i, int i2) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(bArr, i, i2);
        allocate.flip();
        return allocate.getLong();
    }
}
