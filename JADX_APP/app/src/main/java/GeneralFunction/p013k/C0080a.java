package GeneralFunction.p013k;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import java.io.InputStream;
import java.io.InputStreamReader;

/* renamed from: GeneralFunction.k.a */
/* loaded from: classes.dex */
public class C0080a {

    /* renamed from: d */
    private static C0080a f644d = null;

    /* renamed from: b */
    private ConnectivityManager f646b = null;

    /* renamed from: c */
    private Network f647c = null;

    /* renamed from: e */
    private Context f648e = null;

    /* renamed from: a */
    NetworkInfo f645a = null;

    /* renamed from: f */
    private NetworkCapabilities f649f = null;

    private C0080a(Context context) {
    }

    /* renamed from: a */
    public static synchronized C0080a m786a(Context context) {
        C0080a c0080a;
        synchronized (C0080a.class) {
            if (f644d == null) {
                f644d = new C0080a(context);
            }
            c0080a = f644d;
        }
        return c0080a;
    }

    /* renamed from: a */
    public double m787a(int i) {
        int i2 = 0;
        String str = i == 0 ? "live-360.facebook.com" : "a.rtmp.youtube.com";
        double d = 0.0d;
        while (true) {
            int i3 = i2;
            if (i3 >= 4) {
                return d / 4.0d;
            }
            try {
                Process start = new ProcessBuilder(new String[0]).command("/system/bin/ping", "-c 1", str).redirectErrorStream(true).start();
                try {
                    String str2 = "";
                    InputStream inputStream = start.getInputStream();
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
                    while (true) {
                        int read = inputStream.read();
                        if (read == -1) {
                            break;
                        }
                        str2 = str2 + ((char) read);
                    }
                    inputStream.close();
                    inputStreamReader.close();
                    if (!str2.contains("time=")) {
                        start.destroy();
                        start.destroy();
                        return -1.0d;
                    }
                    String substring = str2.substring(str2.indexOf("time=") + 5, str2.length());
                    d += Double.valueOf(substring.substring(0, substring.indexOf(" ms"))).doubleValue();
                    start.destroy();
                    i2 = i3 + 1;
                } catch (Exception e) {
                    start.destroy();
                    return -1.0d;
                } catch (Throwable th) {
                    start.destroy();
                    throw th;
                }
            } catch (Exception e2) {
                return -1.0d;
            }
        }
    }
}
