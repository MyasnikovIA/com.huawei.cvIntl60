package p026a.p029b.p030a;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: a.b.a.d */
/* loaded from: classes.dex */
public class C0119d {

    /* renamed from: a */
    private static int f928a = 3;

    /* renamed from: a */
    public static void m1195a(String str, String str2, int i) {
        if (i <= f928a) {
            String format = new SimpleDateFormat("HH:mm:ss.SSS").format(new Date());
            if (i == 0) {
                Log.e(str, format + "[ERROR][SCSI]" + str2);
                return;
            }
            if (i == 1) {
                Log.w(str, format + "[WARNING][SCSI]" + str2);
                return;
            }
            if (i == 2) {
                Log.i(str, format + "[INFO][SCSI]" + str2);
            } else if (i == 3) {
                Log.d(str, format + "[DEBUG][SCSI]" + str2);
            } else if (i == 4) {
                Log.v(str, format + "[MASS_DEBUG][SCSI]" + str2);
            }
        }
    }
}
