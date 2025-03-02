package GeneralFunction;

import java.io.IOException;
import java.io.RandomAccessFile;

/* renamed from: GeneralFunction.q */
/* loaded from: classes.dex */
public class C0095q {

    /* renamed from: a */
    private RandomAccessFile f718a = null;

    /* renamed from: b */
    private String f719b = null;

    /* renamed from: c */
    private String f720c = null;

    /* renamed from: d */
    private String f721d = null;

    /* renamed from: e */
    private int f722e = 7;

    /* renamed from: GeneralFunction.q$a */
    private class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    private void m907a(String str, int i) {
        if (i != 7) {
            C0052d.m465a("XMPReader", str, i);
        }
    }

    /* renamed from: a */
    public int m908a(String str) {
        int i;
        int i2;
        String num;
        String num2;
        String str2;
        m907a("szPath:" + str, this.f722e);
        byte[] bArr = new byte[1024];
        try {
            try {
                try {
                    this.f718a = new RandomAccessFile(str, "rw");
                    this.f718a.seek(2L);
                    num = Integer.toString(this.f718a.read(), 16);
                    num2 = Integer.toString(this.f718a.read(), 16);
                    str2 = "" + num + num2;
                } catch (a e) {
                    if (this.f718a != null) {
                        try {
                            this.f718a.close();
                            i = 0;
                            i2 = -1;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            i = 0;
                            i2 = -1;
                        }
                    }
                    i = 0;
                    i2 = -1;
                } catch (NumberFormatException e3) {
                    e3.printStackTrace();
                    if (this.f718a != null) {
                        try {
                            this.f718a.close();
                            i = 0;
                            i2 = -1;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            i = 0;
                            i2 = -1;
                        }
                    }
                    i = 0;
                    i2 = -1;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
                if (this.f718a != null) {
                    try {
                        this.f718a.close();
                        i = 0;
                        i2 = -1;
                    } catch (IOException e6) {
                        e6.printStackTrace();
                        i = 0;
                        i2 = -1;
                    }
                }
                i = 0;
                i2 = -1;
            }
            if (!str2.equals("ffe1")) {
                m907a("not ffe1, break", 1);
                throw new a("");
            }
            m907a("tmp1:" + num, this.f722e);
            m907a("tmp2:" + num2, this.f722e);
            m907a("tmp:" + str2, this.f722e);
            String num3 = Integer.toString(this.f718a.read(), 16);
            String num4 = Integer.toString(this.f718a.read(), 16);
            if (num3.length() != 2) {
                num3 = "0" + num3;
            }
            if (num4.length() != 2) {
                num4 = "0" + num4;
            }
            String str3 = "" + num3 + num4;
            m907a("tmp1:" + num3, this.f722e);
            m907a("tmp2:" + num4, this.f722e);
            m907a("tmp:" + str3, this.f722e);
            long parseLong = Long.parseLong(str3, 16);
            m907a("offset:" + parseLong, this.f722e);
            long j = parseLong + 4;
            if (j > this.f718a.length()) {
                m907a("size > pFile size, break", 1);
                throw new a("");
            }
            this.f718a.seek(j);
            String num5 = Integer.toString(this.f718a.read(), 16);
            String num6 = Integer.toString(this.f718a.read(), 16);
            String str4 = "" + num5 + num6;
            if (!str4.equals("ffe1")) {
                m907a("not ffe1, break", 1);
                throw new a("");
            }
            m907a("tmp1:" + num5, this.f722e);
            m907a("tmp2:" + num6, this.f722e);
            m907a("tmp:" + str4, this.f722e);
            if (j + bArr.length > this.f718a.length()) {
                m907a("size > pFile size, break", 1);
                throw new a("");
            }
            this.f718a.read(bArr);
            String str5 = new String(bArr);
            m907a("xmp:" + str5, this.f722e);
            m907a("PoseRollDegreesStart:" + str5.contains("<GPano:PoseRollDegrees>"), this.f722e);
            m907a("PoseRollDegreesStart:" + str5.indexOf("<GPano:PoseRollDegrees>"), this.f722e);
            m907a("PoseRollDegreesEnd:" + str5.indexOf("</GPano:PoseRollDegrees>"), this.f722e);
            if (str5.indexOf("<GPano:PoseRollDegrees>") == -1 || str5.indexOf("</GPano:PoseRollDegrees>") == -1) {
                throw new a("");
            }
            this.f720c = str5.substring(str5.indexOf("<GPano:PoseRollDegrees>") + "<GPano:PoseRollDegrees>".length(), str5.indexOf("</GPano:PoseRollDegrees>"));
            m907a("PoseRollDegrees:" + this.f720c, this.f722e);
            i = (int) Float.parseFloat(this.f720c);
            if (this.f718a != null) {
                try {
                    this.f718a.close();
                    i2 = 0;
                } catch (IOException e7) {
                    e7.printStackTrace();
                    i2 = 0;
                }
            } else {
                i2 = 0;
            }
            return i2 == 0 ? m906a(i) : i2;
        } catch (Throwable th) {
            if (this.f718a != null) {
                try {
                    this.f718a.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    private int m906a(int i) {
        switch (i) {
            case -90:
                return 8;
            case 0:
            default:
                return 1;
            case 90:
                return 6;
            case 180:
                return 3;
        }
    }
}
