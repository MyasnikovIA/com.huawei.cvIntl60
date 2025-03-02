package GeneralFunction;

import android.media.ExifInterface;
import java.io.IOException;

/* renamed from: GeneralFunction.b */
/* loaded from: classes.dex */
public class C0045b {
    /* renamed from: a */
    public static int m418a(String str) {
        return m419a(str, "ImageWidth");
    }

    /* renamed from: b */
    public static int m420b(String str) {
        return m419a(str, "ImageLength");
    }

    /* renamed from: a */
    private static int m419a(String str, String str2) {
        try {
            return new ExifInterface(str).getAttributeInt(str2, -1);
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
