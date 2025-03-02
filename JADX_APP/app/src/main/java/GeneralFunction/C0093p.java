package GeneralFunction;

import java.io.IOException;
import java.io.RandomAccessFile;

/* renamed from: GeneralFunction.p */
/* loaded from: classes.dex */
public class C0093p {

    /* renamed from: a */
    private static int f715a = 1;

    /* renamed from: b */
    private RandomAccessFile f716b = null;

    /* renamed from: GeneralFunction.p$a */
    private class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    private void m903a(String str, int i) {
        if (i != 7) {
            C0052d.m465a("XMPEditor", str, i);
        }
    }

    /* renamed from: a */
    public int m904a(String str) {
        m903a("Add GanoCroppedArea Tag - szPath: " + str, f715a);
        byte[] bArr = new byte[1024];
        try {
            try {
                try {
                    this.f716b = new RandomAccessFile(str, "rw");
                    this.f716b.seek(2L);
                    String num = Integer.toString(this.f716b.read(), 16);
                    String num2 = Integer.toString(this.f716b.read(), 16);
                    String str2 = "" + num + num2;
                    if (!str2.equals("ffe1")) {
                        m903a("not ffe1, break", 1);
                        throw new a("");
                    }
                    m903a("tmp1:" + num, f715a);
                    m903a("tmp2:" + num2, f715a);
                    m903a("tmp:" + str2, f715a);
                    String num3 = Integer.toString(this.f716b.read(), 16);
                    String num4 = Integer.toString(this.f716b.read(), 16);
                    if (num3.length() != 2) {
                        num3 = "0" + num3;
                    }
                    if (num4.length() != 2) {
                        num4 = "0" + num4;
                    }
                    String str3 = "" + num3 + num4;
                    m903a("tmp1:" + num3, f715a);
                    m903a("tmp2:" + num4, f715a);
                    m903a("tmp:" + str3, f715a);
                    long parseLong = Long.parseLong(str3, 16);
                    m903a("offset:" + parseLong, f715a);
                    long j = parseLong + 4;
                    if (j > this.f716b.length()) {
                        m903a("size > pFile size, break", 1);
                        throw new a("");
                    }
                    this.f716b.seek(j);
                    String num5 = Integer.toString(this.f716b.read(), 16);
                    String num6 = Integer.toString(this.f716b.read(), 16);
                    String str4 = "" + num5 + num6;
                    if (!str4.equals("ffe1")) {
                        m903a("not ffe1, break", 1);
                        throw new a("");
                    }
                    m903a("tmp1:" + num5, f715a);
                    m903a("tmp2:" + num6, f715a);
                    m903a("tmp:" + str4, f715a);
                    if (j + bArr.length > this.f716b.length()) {
                        m903a("size > pFile size, break", 1);
                        throw new a("");
                    }
                    long filePointer = this.f716b.getFilePointer();
                    m903a("ffe1EndIndex: " + filePointer, 0);
                    this.f716b.read(bArr);
                    String str5 = new String(bArr);
                    int indexOf = str5.indexOf("</rdf:Description>");
                    m903a("lFooterIndex: " + indexOf, 0);
                    m903a("getFilePointer: " + this.f716b.getFilePointer(), 0);
                    if (str5.indexOf("</rdf:Description>") == -1) {
                        m903a("Not found XmpFooter", 0);
                        throw new a("");
                    }
                    byte[] bytes = "<GPano:CroppedAreaLeftPixels>0</GPano:CroppedAreaLeftPixels><GPano:CroppedAreaTopPixels>0</GPano:CroppedAreaTopPixels></rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n \n<?xpacket end=\"w\"?>".getBytes();
                    this.f716b.seek(filePointer + indexOf + 2);
                    m903a("NewTag: <GPano:CroppedAreaLeftPixels>0</GPano:CroppedAreaLeftPixels><GPano:CroppedAreaTopPixels>0</GPano:CroppedAreaTopPixels></rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n \n<?xpacket end=\"w\"?>, length: " + bytes.length, 0);
                    this.f716b.write(bytes);
                    m903a("Add GanoCroppedArea Tag - lResult: 0", 0);
                    if (this.f716b == null) {
                        return 0;
                    }
                    try {
                        this.f716b.close();
                        return 0;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return 0;
                    }
                } catch (a e2) {
                    e2.printStackTrace();
                    m903a("Add GanoCroppedArea Tag - lResult: -1", 0);
                    if (this.f716b != null) {
                        try {
                            this.f716b.close();
                            return -1;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return -1;
                        }
                    }
                    return -1;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
                m903a("Add GanoCroppedArea Tag - lResult: -1", 0);
                if (this.f716b != null) {
                    try {
                        this.f716b.close();
                        return -1;
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        return -1;
                    }
                }
                return -1;
            }
        } catch (Throwable th) {
            m903a("Add GanoCroppedArea Tag - lResult: -1", 0);
            if (this.f716b != null) {
                try {
                    this.f716b.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }
}
