package com.facebook.p093b.p094a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import com.facebook.C1074k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1070u;
import com.facebook.internal.EnumC1069t;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.b.a.a */
/* loaded from: classes.dex */
public class C1042a {

    /* renamed from: a */
    private static final String f5407a = C1042a.class.getCanonicalName();

    /* renamed from: b */
    private static HashMap<String, NsdManager.RegistrationListener> f5408b = new HashMap<>();

    /* renamed from: a */
    public static String m5907a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", Build.DEVICE);
            jSONObject.put("model", Build.MODEL);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public static boolean m5908a(String str) {
        if (m5910b()) {
            return m5912d(str);
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m5910b() {
        return Build.VERSION.SDK_INT >= 16 && C1061l.m5978a(C1074k.m6185j()).m5968e().contains(EnumC1069t.Enabled);
    }

    /* renamed from: b */
    public static Bitmap m5909b(String str) {
        EnumMap enumMap = new EnumMap(EncodeHintType.class);
        enumMap.put((EnumMap) EncodeHintType.MARGIN, (EncodeHintType) 2);
        try {
            BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, 200, 200, enumMap);
            int height = encode.getHeight();
            int width = encode.getWidth();
            int[] iArr = new int[height * width];
            for (int i = 0; i < height; i++) {
                int i2 = i * width;
                for (int i3 = 0; i3 < width; i3++) {
                    iArr[i2 + i3] = encode.get(i3, i) ? ViewCompat.MEASURED_STATE_MASK : -1;
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            try {
                createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                return createBitmap;
            } catch (WriterException e) {
                return createBitmap;
            }
        } catch (WriterException e2) {
            return null;
        }
    }

    /* renamed from: c */
    public static void m5911c(String str) {
        m5913e(str);
    }

    @TargetApi(16)
    /* renamed from: d */
    private static boolean m5912d(String str) {
        if (!f5408b.containsKey(str)) {
            String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", "android", C1074k.m6183h().replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager nsdManager = (NsdManager) C1074k.m6181f().getSystemService("servicediscovery");
            AnonymousClass1 anonymousClass1 = new NsdManager.RegistrationListener() { // from class: com.facebook.b.a.a.1

                /* renamed from: a */
                final /* synthetic */ String f5409a;

                /* renamed from: b */
                final /* synthetic */ String f5410b;

                AnonymousClass1(String format2, String str2) {
                    format = format2;
                    str = str2;
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    if (!format.equals(nsdServiceInfo2.getServiceName())) {
                        C1042a.m5911c(str);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                    C1042a.m5911c(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                }
            };
            f5408b.put(str2, anonymousClass1);
            nsdManager.registerService(nsdServiceInfo, 1, anonymousClass1);
        }
        return true;
    }

    /* renamed from: com.facebook.b.a.a$1 */
    static class AnonymousClass1 implements NsdManager.RegistrationListener {

        /* renamed from: a */
        final /* synthetic */ String f5409a;

        /* renamed from: b */
        final /* synthetic */ String f5410b;

        AnonymousClass1(String format2, String str2) {
            format = format2;
            str = str2;
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
            if (!format.equals(nsdServiceInfo2.getServiceName())) {
                C1042a.m5911c(str);
            }
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
            C1042a.m5911c(str);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
        }
    }

    @TargetApi(16)
    /* renamed from: e */
    private static void m5913e(String str) {
        NsdManager.RegistrationListener registrationListener = f5408b.get(str);
        if (registrationListener != null) {
            try {
                ((NsdManager) C1074k.m6181f().getSystemService("servicediscovery")).unregisterService(registrationListener);
            } catch (IllegalArgumentException e) {
                C1070u.m6088a(f5407a, (Exception) e);
            }
            f5408b.remove(str);
        }
    }
}
