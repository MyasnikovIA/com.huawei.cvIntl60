package ThirdParty.OpenCV;

import android.content.Context;
import android.util.Log;

/* loaded from: classes.dex */
public class OpenCVFunc {

    /* renamed from: a */
    private static final String f775a = OpenCVFunc.class.getSimpleName();

    /* renamed from: b */
    private Context f776b = null;

    public native boolean PanoramaPath(String str, String str2, double d, int i);

    public native boolean cancelStitchMatch();

    /* renamed from: a */
    private void m963a(String str, int i) {
        Log.e(f775a, str);
    }

    public OpenCVFunc() {
        m963a("Load lib S", 0);
        System.loadLibrary("ViewController");
        m963a("Load lib E", 0);
    }
}
