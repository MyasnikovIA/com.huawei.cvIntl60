package android.support.v4.util;

import android.support.annotation.RestrictTo;
import java.io.PrintWriter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class TimeUtils {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private static int accumField(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    private static int printField(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        int i5;
        if (z || i > 0) {
            if ((!z || i3 < 3) && i <= 99) {
                i4 = i2;
                i5 = i;
            } else {
                int i6 = i / 100;
                cArr[i2] = (char) (i6 + 48);
                i4 = i2 + 1;
                i5 = i - (i6 * 100);
            }
            if ((z && i3 >= 2) || i5 > 9 || i2 != i4) {
                int i7 = i5 / 10;
                cArr[i4] = (char) (i7 + 48);
                i4++;
                i5 -= i7 * 10;
            }
            cArr[i4] = (char) (i5 + 48);
            int i8 = i4 + 1;
            cArr[i8] = c;
            return i8 + 1;
        }
        return i2;
    }

    private static int formatDurationLocked(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        if (j == 0) {
            int i6 = i - 1;
            while (0 < i6) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j > 0) {
            c = '+';
        } else {
            j = -j;
            c = '-';
        }
        int i7 = (int) (j % 1000);
        int floor = (int) Math.floor(j / 1000);
        int i8 = 0;
        if (floor > SECONDS_PER_DAY) {
            i8 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i8;
        }
        if (floor > SECONDS_PER_HOUR) {
            int i9 = floor / SECONDS_PER_HOUR;
            floor -= i9 * SECONDS_PER_HOUR;
            i2 = i9;
        } else {
            i2 = 0;
        }
        if (floor > 60) {
            int i10 = floor / 60;
            i3 = i10;
            i4 = floor - (i10 * 60);
        } else {
            i3 = 0;
            i4 = floor;
        }
        if (i == 0) {
            i5 = 0;
        } else {
            int accumField = accumField(i8, 1, false, 0);
            int accumField2 = accumField + accumField(i2, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i3, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i4, 1, accumField3 > 0, 2);
            i5 = 0;
            for (int accumField5 = accumField4 + accumField(i7, 2, true, accumField4 > 0 ? 3 : 0) + 1; accumField5 < i; accumField5++) {
                cArr[i5] = ' ';
                i5++;
            }
        }
        cArr[i5] = c;
        int i11 = i5 + 1;
        boolean z = i != 0;
        int printField = printField(cArr, i8, 'd', i11, false, 0);
        int printField2 = printField(cArr, i2, 'h', printField, printField != i11, z ? 2 : 0);
        int printField3 = printField(cArr, i3, 'm', printField2, printField2 != i11, z ? 2 : 0);
        int printField4 = printField(cArr, i4, 's', printField3, printField3 != i11, z ? 2 : 0);
        int printField5 = printField(cArr, i7, 'm', printField4, true, (!z || printField4 == i11) ? 0 : 3);
        cArr[printField5] = 's';
        return printField5 + 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    private TimeUtils() {
    }
}
