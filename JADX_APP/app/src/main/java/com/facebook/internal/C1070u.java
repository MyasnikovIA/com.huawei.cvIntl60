package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.support.v4.app.NotificationCompat;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.C1111p;
import com.facebook.EnumC1112q;
import com.facebook.GraphRequest;
import com.google.android.exoplayer.C1167C;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/* renamed from: com.facebook.internal.u */
/* loaded from: classes.dex */
public final class C1070u {

    /* renamed from: a */
    private static int f5551a = 0;

    /* renamed from: b */
    private static long f5552b = -1;

    /* renamed from: c */
    private static long f5553c = -1;

    /* renamed from: d */
    private static long f5554d = -1;

    /* renamed from: e */
    private static String f5555e = "";

    /* renamed from: f */
    private static String f5556f = "";

    /* renamed from: g */
    private static String f5557g = "NoCarrier";

    /* renamed from: com.facebook.internal.u$a */
    public interface a {
        /* renamed from: a */
        void mo5621a(C1048h c1048h);

        /* renamed from: a */
        void mo5622a(JSONObject jSONObject);
    }

    /* renamed from: a */
    public static <T> boolean m6099a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    /* renamed from: a */
    public static boolean m6098a(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: a */
    public static <T> Collection<T> m6077a(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    /* renamed from: b */
    public static String m6101b(String str) {
        return m6102b("MD5", str);
    }

    /* renamed from: a */
    public static String m6074a(byte[] bArr) {
        return m6072a("SHA-1", bArr);
    }

    /* renamed from: b */
    private static String m6102b(String str, String str2) {
        return m6072a(str, str2.getBytes());
    }

    /* renamed from: a */
    private static String m6072a(String str, byte[] bArr) {
        try {
            return m6073a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static String m6073a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : digest) {
            sb.append(Integer.toHexString((b2 >> 4) & 15));
            sb.append(Integer.toHexString((b2 >> 0) & 15));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static Uri m6065a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    /* renamed from: c */
    public static Bundle m6106c(String str) {
        Bundle bundle = new Bundle();
        if (!m6098a(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], C1167C.UTF8_NAME), URLDecoder.decode(split[1], C1167C.UTF8_NAME));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], C1167C.UTF8_NAME), "");
                    }
                } catch (UnsupportedEncodingException e) {
                    m6088a("FacebookSDK", (Exception) e);
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static void m6084a(Bundle bundle, String str, String str2) {
        if (!m6098a(str2)) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static void m6083a(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            m6084a(bundle, str, uri.toString());
        }
    }

    /* renamed from: a */
    public static boolean m6095a(Bundle bundle, String str, Object obj) {
        if (obj == null) {
            bundle.remove(str);
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, obj.toString());
        } else if (obj instanceof JSONObject) {
            bundle.putString(str, obj.toString());
        } else {
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public static void m6086a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m6091a(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    /* renamed from: a */
    public static String m6070a(Context context) {
        C1071v.m6125a(context, "context");
        C1074k.m6169a(context);
        return C1074k.m6185j();
    }

    /* renamed from: a */
    public static Object m6068a(JSONObject jSONObject, String str, String str2) {
        Object opt = jSONObject.opt(str);
        Object nextValue = (opt == null || !(opt instanceof String)) ? opt : new JSONTokener((String) opt).nextValue();
        if (nextValue == null || (nextValue instanceof JSONObject) || (nextValue instanceof JSONArray)) {
            return nextValue;
        }
        if (str2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, nextValue);
            return jSONObject2;
        }
        throw new C1048h("Got an unexpected non-JSON object.");
    }

    /* renamed from: a */
    public static String m6071a(InputStream inputStream) {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
            } catch (Throwable th) {
                th = th;
                inputStreamReader = null;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader = null;
            bufferedInputStream = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[2048];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read != -1) {
                    sb.append(cArr, 0, read);
                } else {
                    String sb2 = sb.toString();
                    m6086a((Closeable) bufferedInputStream);
                    m6086a(inputStreamReader);
                    return sb2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            m6086a((Closeable) bufferedInputStream);
            m6086a(inputStreamReader);
            throw th;
        }
    }

    /* renamed from: a */
    public static int m6063a(InputStream inputStream, OutputStream outputStream) {
        BufferedInputStream bufferedInputStream;
        int i = 0;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th) {
            th = th;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i += read;
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static void m6082a(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            String[] split = cookie.split(";");
            for (String str2 : split) {
                String[] split2 = str2.split("=");
                if (split2.length > 0) {
                    cookieManager.setCookie(str, split2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                }
            }
            cookieManager.removeExpiredCookie();
        }
    }

    /* renamed from: b */
    public static void m6104b(Context context) {
        m6082a(context, "facebook.com");
        m6082a(context, ".facebook.com");
        m6082a(context, "https://facebook.com");
        m6082a(context, "https://.facebook.com");
    }

    /* renamed from: a */
    public static void m6088a(String str, Exception exc) {
        if (C1074k.m6175b() && str != null && exc != null) {
            Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
        }
    }

    /* renamed from: a */
    public static void m6089a(String str, String str2) {
        if (C1074k.m6175b() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    /* renamed from: a */
    public static void m6090a(String str, String str2, Throwable th) {
        if (C1074k.m6175b() && !m6098a(str)) {
            Log.d(str, str2, th);
        }
    }

    /* renamed from: a */
    public static <T> boolean m6097a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        }
        return t.equals(t2);
    }

    /* renamed from: b */
    public static <T> List<T> m6103b(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m6079a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m6093a(JSONObject jSONObject, C1050a c1050a, String str, boolean z) {
        if (c1050a != null && c1050a.m5925a() != null) {
            jSONObject.put("attribution", c1050a.m5925a());
        }
        if (c1050a != null && c1050a.m5926b() != null) {
            jSONObject.put("advertiser_id", c1050a.m5926b());
            jSONObject.put("advertiser_tracking_enabled", !c1050a.m5928d());
        }
        if (c1050a != null && c1050a.m5927c() != null) {
            jSONObject.put("installer_package", c1050a.m5927c());
        }
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", z ? false : true);
    }

    /* renamed from: a */
    public static void m6092a(JSONObject jSONObject, Context context) {
        Locale locale;
        int i;
        int i2;
        double d;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        m6119g(context);
        String packageName = context.getPackageName();
        int i3 = -1;
        String str = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            i3 = packageInfo.versionCode;
            str = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i3);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e2) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
        jSONArray.put(f5555e);
        jSONArray.put(f5557g);
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                d = 0.0d;
                i = 0;
                i2 = 0;
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                i2 = displayMetrics.widthPixels;
                try {
                    i = displayMetrics.heightPixels;
                } catch (Exception e3) {
                    i = 0;
                }
                try {
                    d = displayMetrics.density;
                } catch (Exception e4) {
                    d = 0.0d;
                    jSONArray.put(i2);
                    jSONArray.put(i);
                    jSONArray.put(new DecimalFormat("#.##").format(d));
                    jSONArray.put(m6100b());
                    jSONArray.put(f5553c);
                    jSONArray.put(f5554d);
                    jSONArray.put(f5556f);
                    jSONObject.put("extinfo", jSONArray.toString());
                }
            }
        } catch (Exception e5) {
            i = 0;
            i2 = 0;
        }
        jSONArray.put(i2);
        jSONArray.put(i);
        jSONArray.put(new DecimalFormat("#.##").format(d));
        jSONArray.put(m6100b());
        jSONArray.put(f5553c);
        jSONArray.put(f5554d);
        jSONArray.put(f5556f);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    /* renamed from: a */
    public static Method m6075a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Method m6076a(String str, String str2, Class<?>... clsArr) {
        try {
            return m6075a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Object m6067a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            return null;
        } catch (InvocationTargetException e2) {
            return null;
        }
    }

    /* renamed from: c */
    public static String m6107c(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        return context.getClass().getSimpleName();
    }

    /* renamed from: a */
    public static boolean m6094a(Uri uri) {
        return uri != null && ("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme()));
    }

    /* renamed from: b */
    public static boolean m6105b(Uri uri) {
        return uri != null && "content".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: c */
    public static boolean m6109c(Uri uri) {
        return uri != null && "file".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: d */
    public static long m6110d(Uri uri) {
        Cursor cursor;
        try {
            cursor = C1074k.m6181f().getContentResolver().query(uri, null, null, null, null);
            try {
                int columnIndex = cursor.getColumnIndex("_size");
                cursor.moveToFirst();
                long j = cursor.getLong(columnIndex);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* renamed from: a */
    public static Date m6078a(Bundle bundle, String str, Date date) {
        long parseLong;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Long) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            try {
                parseLong = Long.parseLong((String) obj);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((parseLong * 1000) + date.getTime());
    }

    /* renamed from: a */
    public static void m6085a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* renamed from: a */
    public static Map<String, String> m6081a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m6096a(AccessToken accessToken) {
        return accessToken != null && accessToken.equals(AccessToken.m5496a());
    }

    /* renamed from: a */
    public static void m6087a(String str, a aVar) {
        JSONObject m6055a = C1067r.m6055a(str);
        if (m6055a != null) {
            aVar.mo5622a(m6055a);
            return;
        }
        AnonymousClass1 anonymousClass1 = new GraphRequest.InterfaceC0995b() { // from class: com.facebook.internal.u.1

            /* renamed from: b */
            final /* synthetic */ String f5559b;

            AnonymousClass1(String str2) {
                str = str2;
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                if (c1111p.m6419a() != null) {
                    a.this.mo5621a(c1111p.m6419a().m5533f());
                } else {
                    C1067r.m6056a(str, c1111p.m6420b());
                    a.this.mo5622a(c1111p.m6420b());
                }
            }
        };
        GraphRequest m6114e = m6114e(str2);
        m6114e.m5578a((GraphRequest.InterfaceC0995b) anonymousClass1);
        m6114e.m5591j();
    }

    /* renamed from: com.facebook.internal.u$1 */
    static class AnonymousClass1 implements GraphRequest.InterfaceC0995b {

        /* renamed from: b */
        final /* synthetic */ String f5559b;

        AnonymousClass1(String str2) {
            str = str2;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (c1111p.m6419a() != null) {
                a.this.mo5621a(c1111p.m6419a().m5533f());
            } else {
                C1067r.m6056a(str, c1111p.m6420b());
                a.this.mo5622a(c1111p.m6420b());
            }
        }
    }

    /* renamed from: d */
    public static JSONObject m6111d(String str) {
        JSONObject m6055a = C1067r.m6055a(str);
        if (m6055a == null) {
            C1111p m5590i = m6114e(str).m5590i();
            if (m5590i.m6419a() != null) {
                return null;
            }
            return m5590i.m6420b();
        }
        return m6055a;
    }

    /* renamed from: e */
    private static GraphRequest m6114e(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, EnumC1112q.GET, null);
    }

    /* renamed from: b */
    private static int m6100b() {
        if (f5551a > 0) {
            return f5551a;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.u.2
                AnonymousClass2() {
                }

                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return Pattern.matches("cpu[0-9]+", str);
                }
            });
            if (listFiles != null) {
                f5551a = listFiles.length;
            }
        } catch (Exception e) {
        }
        if (f5551a <= 0) {
            f5551a = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f5551a;
    }

    /* renamed from: com.facebook.internal.u$2 */
    static class AnonymousClass2 implements FilenameFilter {
        AnonymousClass2() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return Pattern.matches("cpu[0-9]+", str);
        }
    }

    /* renamed from: g */
    private static void m6119g(Context context) {
        if (f5552b == -1 || System.currentTimeMillis() - f5552b >= 1800000) {
            f5552b = System.currentTimeMillis();
            m6108c();
            m6120h(context);
            m6117f();
            m6115e();
        }
    }

    /* renamed from: c */
    private static void m6108c() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            f5555e = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            f5556f = timeZone.getID();
        } catch (AssertionError e) {
        } catch (Exception e2) {
        }
    }

    /* renamed from: h */
    private static void m6120h(Context context) {
        if (f5557g.equals("NoCarrier")) {
            try {
                f5557g = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: d */
    private static boolean m6112d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: e */
    private static void m6115e() {
        try {
            if (m6112d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f5554d = statFs.getBlockSize() * statFs.getAvailableBlocks();
            }
            f5554d = m6064a(f5554d);
        } catch (Exception e) {
        }
    }

    /* renamed from: f */
    private static void m6117f() {
        try {
            if (m6112d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f5553c = statFs.getBlockSize() * statFs.getBlockCount();
            }
            f5553c = m6064a(f5553c);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static long m6064a(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    /* renamed from: com.facebook.internal.u$b */
    public static class b {

        /* renamed from: a */
        List<String> f5560a;

        /* renamed from: b */
        List<String> f5561b;

        public b(List<String> list, List<String> list2) {
            this.f5560a = list;
            this.f5561b = list2;
        }

        /* renamed from: a */
        public List<String> m6121a() {
            return this.f5560a;
        }

        /* renamed from: b */
        public List<String> m6122b() {
            return this.f5561b;
        }
    }

    /* renamed from: a */
    public static b m6066a(JSONObject jSONObject) {
        String optString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (optString2 != null && !optString2.equals("installed") && (optString = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS)) != null) {
                if (optString.equals("granted")) {
                    arrayList.add(optString2);
                } else if (optString.equals("declined")) {
                    arrayList2.add(optString2);
                }
            }
        }
        return new b(arrayList, arrayList2);
    }

    /* renamed from: a */
    public static String m6069a(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }

    /* renamed from: d */
    public static boolean m6113d(Context context) {
        return m6116e(context);
    }

    /* renamed from: e */
    public static boolean m6116e(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
        return autofillManager != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
    }

    /* renamed from: f */
    public static boolean m6118f(Context context) {
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        return Build.DEVICE != null && Build.DEVICE.matches(".+_cheets|cheets_.+");
    }

    /* renamed from: a */
    public static Locale m6080a() {
        try {
            return C1074k.m6181f().getResources().getConfiguration().locale;
        } catch (Exception e) {
            return Locale.getDefault();
        }
    }
}
