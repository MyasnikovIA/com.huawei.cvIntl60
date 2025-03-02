package GeneralFunction;

import java.lang.reflect.Method;

/* renamed from: GeneralFunction.l */
/* loaded from: classes.dex */
public class C0081l {

    /* renamed from: a */
    private static volatile Method f650a = null;

    /* renamed from: b */
    private static volatile Method f651b = null;

    /* renamed from: a */
    public static String m788a(String str, String str2) {
        try {
            if (f651b == null) {
                synchronized (C0081l.class) {
                    if (f651b == null) {
                        f651b = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
                    }
                }
            }
            return (String) f651b.invoke(null, str, str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return str2;
        }
    }
}
