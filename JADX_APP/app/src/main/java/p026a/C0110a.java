package p026a;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: a.a */
/* loaded from: classes.dex */
public class C0110a {

    /* renamed from: a */
    public static int f840a = 3;

    /* renamed from: a */
    public static void m1074a(String str, String str2, int i) {
        if (i <= f840a) {
            String format = new SimpleDateFormat("HH:mm:ss.SSS").format(new Date());
            if (i == 0) {
                Log.e(str, format + "[ERROR][Remote]" + str2);
                return;
            }
            if (i == 1) {
                Log.w(str, format + "[WARNING][Remote]" + str2);
                return;
            }
            if (i == 2) {
                Log.i(str, format + "[INFO][Remote]" + str2);
            } else if (i == 3) {
                Log.i(str, format + "[DEBUG][Remote]" + str2);
            } else if (i == 4) {
                Log.i(str, format + "[MASS_DEBUG][Remote]" + str2);
            }
        }
    }
}
