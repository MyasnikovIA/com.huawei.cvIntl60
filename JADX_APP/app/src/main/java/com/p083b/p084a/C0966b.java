package com.p083b.p084a;

/* renamed from: com.b.a.b */
/* loaded from: classes.dex */
public class C0966b {

    /* renamed from: a */
    private static final char[] f4996a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m5451a(byte[] bArr, int i) {
        int i2;
        int length = bArr.length;
        char[] cArr = new char[(i > 0 ? length / i : 0) + (length << 1)];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (i <= 0 || i4 % i != 0 || i3 <= 0) {
                i2 = i3;
            } else {
                i2 = i3 + 1;
                cArr[i3] = '-';
            }
            int i5 = i2 + 1;
            cArr[i2] = f4996a[(bArr[i4] & 240) >>> 4];
            i3 = i5 + 1;
            cArr[i5] = f4996a[bArr[i4] & 15];
        }
        return new String(cArr);
    }
}
