package GeneralFunction.p022s;

import GeneralFunction.C0052d;
import GeneralFunction.p023t.C0104a;
import GeneralFunction.p023t.C0105b;
import com.p083b.p084a.p085a.C0961d;
import com.p083b.p084a.p085a.C0962e;
import com.p083b.p084a.p085a.C0963f;
import com.p083b.p084a.p085a.C0964g;
import com.p083b.p084a.p085a.C0965h;
import com.p083b.p084a.p085a.InterfaceC0958a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

/* renamed from: GeneralFunction.s.a */
/* loaded from: classes.dex */
public class C0101a {

    /* renamed from: GeneralFunction.s.a$a */
    private class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    private static void m951a(String str, int i) {
        C0052d.m465a("MetaDataTool", str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GeneralFunction.p022s.C0103c m955a(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p022s.C0101a.m955a(java.lang.String):GeneralFunction.s.c");
    }

    /* renamed from: a */
    public int m954a(String str, C0102b c0102b) {
        C0104a c0104a;
        C0961d c0961d;
        int m952b = m952b(str);
        if (m952b < 0) {
            m951a("Move error:" + m952b, 0);
            return -4;
        }
        int m953c = m953c(str);
        if (m953c < 0) {
            m951a("Remove error:" + m953c, 0);
            return -4;
        }
        String str2 = "<APP_VER>" + c0102b.f763a + "</APP_VER>\n<CAMERA_VER>" + c0102b.f764b + "</CAMERA_VER>";
        File file = new File(str);
        C0964g c0964g = new C0964g();
        C0962e c0962e = new C0962e();
        C0965h c0965h = new C0965h();
        c0965h.m5450a(str2);
        c0962e.m5485a(c0965h);
        c0964g.m5485a((InterfaceC0958a) c0962e);
        int a2 = (int) c0964g.mo5436a();
        try {
            byte[] array = c0964g.m5484a(0L, a2 - 8).array();
            UUID fromString = UUID.fromString("ffcc8263-f855-4a93-8814-587a02521fdd");
            ByteBuffer wrap = ByteBuffer.wrap(new byte[16]);
            wrap.putLong(fromString.getMostSignificantBits());
            wrap.putLong(fromString.getLeastSignificantBits());
            C0963f c0963f = new C0963f(wrap.array());
            c0963f.m5447a("<?xml version=\"1.0\"?><rdf:SphericalVideo\nxmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\nxmlns:GSpherical=\"http://ns.google.com/videos/1.0/spherical/\"><GSpherical:Spherical>true</GSpherical:Spherical><GSpherical:Stitched>true</GSpherical:Stitched><GSpherical:StitchingSoftware>Spherical Metadata Tool</GSpherical:StitchingSoftware><GSpherical:ProjectionType>equirectangular</GSpherical:ProjectionType></rdf:SphericalVideo>".getBytes());
            int a3 = (int) c0963f.mo5436a();
            byte[] g = c0963f.m5473g();
            byte[] m5448b = c0963f.m5448b();
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
                C0105b c0105b = new C0105b();
                c0105b.m960a(str);
                C0104a m956a = c0105b.m961a().m956a("moov");
                int i = ((int) m956a.f769b) + a2 + a3;
                c0105b.m962a(m956a, m956a.f768a, m956a.f769b - 8);
                C0104a m956a2 = m956a.m956a("trak");
                Iterator<C0104a> it = m956a.m957b("trak").iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c0104a = m956a2;
                        break;
                    }
                    c0104a = it.next();
                    c0105b.m962a(c0104a, c0104a.f768a, c0104a.f769b - 8);
                    C0104a m956a3 = c0104a.m956a("mdia");
                    c0105b.m962a(m956a3, m956a3.f768a, m956a3.f769b - 8);
                    try {
                        randomAccessFile.seek(m956a3.m956a("hdlr").f768a);
                        byte[] bArr = new byte[((int) r4.f769b) - 8];
                        randomAccessFile.read(bArr);
                        c0961d = new C0961d();
                        c0961d.mo5440a(ByteBuffer.wrap(bArr));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    if (c0961d.m5441b().equals("vide")) {
                        m951a("vide trak found", 3);
                        break;
                    }
                    continue;
                }
                int i2 = ((int) c0104a.f769b) + a3;
                if (m956a.m956a("udta") != null) {
                    m951a("udta still exist!", 3);
                }
                long j = (c0104a.f768a - 8) + c0104a.f769b;
                try {
                    try {
                        randomAccessFile.seek(m956a.f768a - 8);
                        randomAccessFile.write(ByteBuffer.allocate(4).putInt(i).array(), 0, 4);
                        randomAccessFile.seek(c0104a.f768a - 8);
                        randomAccessFile.write(ByteBuffer.allocate(4).putInt(i2).array(), 0, 4);
                        randomAccessFile.seek(j);
                        byte[] bArr2 = new byte[(int) (file.length() - j)];
                        randomAccessFile.read(bArr2);
                        randomAccessFile.seek(j);
                        randomAccessFile.write(ByteBuffer.allocate(4).putInt(a3).array(), 0, 4);
                        randomAccessFile.write("uuid".getBytes(), 0, 4);
                        randomAccessFile.write(g, 0, g.length);
                        randomAccessFile.write(m5448b, 0, m5448b.length);
                        randomAccessFile.write(bArr2, 0, bArr2.length);
                        randomAccessFile.seek(file.length());
                        randomAccessFile.write(ByteBuffer.allocate(4).putInt(a2).array(), 0, 4);
                        randomAccessFile.write("udta".getBytes(), 0, 4);
                        randomAccessFile.write(array, 0, array.length);
                        return 0;
                    } finally {
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                    if (randomAccessFile == null) {
                        return -3;
                    }
                    try {
                        randomAccessFile.close();
                        return -3;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        return -3;
                    }
                }
            } catch (FileNotFoundException e5) {
                e5.printStackTrace();
                return -2;
            }
        } catch (IOException e6) {
            e6.printStackTrace();
            return -1;
        }
    }

    /* renamed from: b */
    private int m952b(String str) {
        File file = new File(str);
        C0105b c0105b = new C0105b();
        c0105b.m960a(str);
        C0104a m956a = c0105b.m961a().m956a("moov");
        if ((m956a.f768a - 8) + m956a.f769b >= file.length()) {
            return 0;
        }
        m951a("Move moov: " + m956a.toString(), 3);
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
            try {
                try {
                    randomAccessFile.seek(m956a.f768a - 8);
                    byte[] bArr = new byte[(int) m956a.f769b];
                    randomAccessFile.read(bArr);
                    randomAccessFile.seek(m956a.f768a - 4);
                    randomAccessFile.write("free".getBytes(), 0, 4);
                    randomAccessFile.seek(file.length());
                    randomAccessFile.write(bArr, 0, bArr.length);
                    if (randomAccessFile == null) {
                        return 0;
                    }
                    try {
                        randomAccessFile.close();
                        return 0;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return 0;
                    }
                } catch (Throwable th) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                if (randomAccessFile == null) {
                    return -2;
                }
                try {
                    randomAccessFile.close();
                    return -2;
                } catch (IOException e4) {
                    e4.printStackTrace();
                    return -2;
                }
            }
        } catch (FileNotFoundException e5) {
            e5.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.RandomAccessFile] */
    /* renamed from: c */
    private int m953c(String str) {
        new File(str);
        C0105b c0105b = new C0105b();
        c0105b.m960a(str);
        C0104a m956a = c0105b.m961a().m956a("moov");
        c0105b.m962a(m956a, m956a.f768a, m956a.f769b - 8);
        ArrayList<C0104a> m957b = m956a.m957b("udta");
        RandomAccessFile isEmpty = m957b.isEmpty();
        if (isEmpty != 0) {
            return 0;
        }
        try {
            try {
                isEmpty = new RandomAccessFile(str, "rw");
                try {
                    Iterator<C0104a> it = m957b.iterator();
                    while (it.hasNext()) {
                        C0104a next = it.next();
                        m951a("Set udta to free: " + next.toString(), 3);
                        isEmpty.seek(next.f768a - 4);
                        isEmpty.write("free".getBytes(), 0, 4);
                    }
                    return 0;
                } catch (IOException e) {
                    e.printStackTrace();
                    if (isEmpty == 0) {
                        return -2;
                    }
                    try {
                        isEmpty.close();
                        return -2;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return -2;
                    }
                }
            } finally {
                if (isEmpty != 0) {
                    try {
                        isEmpty.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return -1;
        }
    }
}
