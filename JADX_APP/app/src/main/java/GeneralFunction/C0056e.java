package GeneralFunction;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;

/* renamed from: GeneralFunction.e */
/* loaded from: classes.dex */
public class C0056e {
    /* renamed from: a */
    public static int m476a(byte[] bArr) {
        byte[] bArr2;
        if (bArr.length < 5 || bArr == null) {
            return -1;
        }
        switch (bArr[4] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 8:
            case 10:
            case 11:
            case 12:
                return 1;
            case 5:
            case 7:
                return 0;
            case 9:
                int i = 5;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i >= bArr.length) {
                        bArr2 = null;
                    } else {
                        if (i3 == 0 && bArr[i] == 0) {
                            i3++;
                            i2 = i;
                        } else if (i3 < 3 && bArr[i] == 0) {
                            i3++;
                        } else if (i3 == 3 && bArr[i] == 1) {
                            bArr2 = new byte[5];
                            System.arraycopy(bArr, i2, bArr2, 0, 5);
                        } else {
                            i2 = 0;
                            i3 = 0;
                        }
                        i++;
                    }
                }
                return m476a(bArr2);
            default:
                return -1;
        }
    }

    /* renamed from: b */
    public static boolean m478b(byte[] bArr) {
        switch (m476a(bArr)) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    private static int m477a(byte[] bArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i < bArr.length) {
            if (i3 == 0 && bArr[i] == 0) {
                i3++;
                i2 = i;
            } else if (i3 < 3 && bArr[i] == 0) {
                i3++;
            } else {
                if (i3 == 3 && bArr[i] == 1) {
                    return i2;
                }
                i2 = 0;
                i3 = 0;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: c */
    public static byte[] m479c(byte[] bArr) {
        int i = 0;
        while (bArr != null && bArr.length >= i + 5) {
            int m477a = m477a(bArr, i);
            if (m477a == -1) {
                return null;
            }
            i = m477a + 1;
            if ((bArr[m477a + 4] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2) == 7) {
                int m477a2 = m477a(bArr, i);
                if (m477a2 == -1) {
                    return null;
                }
                byte[] bArr2 = new byte[m477a2 - m477a];
                System.arraycopy(bArr, m477a, bArr2, 0, m477a2 - m477a);
                return bArr2;
            }
        }
        return null;
    }

    /* renamed from: d */
    public static byte[] m480d(byte[] bArr) {
        int i = 0;
        while (bArr != null && bArr.length >= i + 5) {
            int m477a = m477a(bArr, i);
            if (m477a == -1) {
                return null;
            }
            i = m477a + 1;
            if ((bArr[m477a + 4] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2) == 8) {
                int m477a2 = m477a(bArr, i);
                if (m477a2 == -1) {
                    return null;
                }
                byte[] bArr2 = new byte[m477a2 - m477a];
                System.arraycopy(bArr, m477a, bArr2, 0, m477a2 - m477a);
                return bArr2;
            }
        }
        return null;
    }
}
