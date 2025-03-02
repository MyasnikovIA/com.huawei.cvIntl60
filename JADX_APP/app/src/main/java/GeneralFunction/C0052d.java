package GeneralFunction;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.media.AudioManager;
import android.media.ExifInterface;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import ui_Controller.p110b.C1662d;

/* renamed from: GeneralFunction.d */
/* loaded from: classes.dex */
public class C0052d {

    /* renamed from: b */
    private static char[] f478b = "0123456789abcdef".toCharArray();

    /* renamed from: a */
    public static int f477a = 3;

    /* renamed from: c */
    private static final AudioManager.OnAudioFocusChangeListener f479c = new AudioManager.OnAudioFocusChangeListener() { // from class: GeneralFunction.d.1
        AnonymousClass1() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0052d.m465a("General", "onAudioFocusChange focusChange = " + i, 1);
        }
    };

    /* renamed from: a */
    public static void m465a(String str, String str2, int i) {
        if (i <= f477a) {
            String format = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date());
            if (i == 0) {
                Log.e(str, format + "[ERROR]" + str2);
                return;
            }
            if (i == 1) {
                Log.w(str, format + "[WARNING]" + str2);
                return;
            }
            if (i == 2) {
                Log.i(str, format + "[INFO]" + str2);
            } else if (i == 3) {
                Log.i(str, format + "[DEBUG]" + str2);
            } else if (i == 4) {
                Log.i(str, format + "[MASS_DEBUG]" + str2);
            }
        }
    }

    /* renamed from: a */
    public static long m461a(String str, int i) {
        File file;
        StatFs statFs;
        long j = i;
        try {
            file = new File(str);
        } catch (NullPointerException e) {
            e.printStackTrace();
            file = null;
        }
        if (file != null) {
            try {
                statFs = new StatFs(file.getPath());
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                statFs = null;
            }
            if (statFs != null) {
                return statFs.getAvailableBytes();
            }
            return j;
        }
        return j;
    }

    /* renamed from: a */
    public static int m459a() {
        String language;
        if (Build.VERSION.SDK_INT >= 24) {
            language = LocaleList.getDefault().get(0).toString();
        } else {
            language = Locale.getDefault().getLanguage();
        }
        return m460a(language);
    }

    /* renamed from: b */
    public static int m467b() {
        String language;
        if (Build.VERSION.SDK_INT >= 24) {
            language = LocaleList.getDefault().get(0).toString();
        } else {
            language = Locale.getDefault().getLanguage();
        }
        return m460a(language);
    }

    /* renamed from: a */
    public static int m460a(String str) {
        if (str.contains("ar")) {
            return 11;
        }
        if (str.contains("cs")) {
            return 12;
        }
        if (str.contains("de")) {
            return 13;
        }
        if (str.contains("en")) {
            return 14;
        }
        if (str.contains("es")) {
            return 15;
        }
        if (str.contains("fr")) {
            return 16;
        }
        if (str.contains("pl")) {
            return 17;
        }
        if (str.contains("ro")) {
            return 18;
        }
        if (str.contains("sk")) {
            return 19;
        }
        if (str.contains("hu")) {
            return 20;
        }
        if (str.contains("it")) {
            return 21;
        }
        if (str.contains("iw")) {
            return 22;
        }
        if (str.contains("nl")) {
            return 23;
        }
        if (str.contains("pt")) {
            return 24;
        }
        if (str.contains("ru")) {
            return 25;
        }
        return str.contains("tr") ? 26 : 14;
    }

    /* renamed from: a */
    public static String m462a(Context context) {
        File[] externalFilesDirs = context.getExternalFilesDirs(null);
        for (int i = 0; i < externalFilesDirs.length; i++) {
            if (externalFilesDirs[i] != null) {
                if (!externalFilesDirs[i].getPath().split("/Android/")[0].equals("/storage/emulated/0")) {
                    m465a("General", "findSdCardPath" + externalFilesDirs[i].getPath().split("/Android/")[0], 3);
                    String str = externalFilesDirs[i].getPath().split("/Android/")[0];
                    if (str == null) {
                        return null;
                    }
                    String externalStorageState = Environment.getExternalStorageState(new File(str));
                    if (!externalStorageState.equals("mounted")) {
                        m465a("General", "SD card not mounted:" + externalStorageState, 3);
                        return null;
                    }
                    return str;
                }
            } else {
                m465a("General", "Can't find SD path, exist path as following!", 0);
                String[] list = new File("/storage").list();
                for (int i2 = 0; i2 < list.length; i2++) {
                    m465a("General", "[" + i2 + "]" + list[i2], 0);
                    if (list[i2].matches("[a-zA-z0-9]{4}-[a-zA-z0-9]{4}")) {
                        return "/storage/" + list[i2] + "/Android/data/com.huawei.cvIntl60/files";
                    }
                }
            }
        }
        m465a("General", "findSdCardPath null", 3);
        return null;
    }

    /* renamed from: b */
    public static int m468b(String str) {
        return new C0095q().m908a(str);
    }

    /* renamed from: c */
    public static int m470c(String str) {
        int m468b = m468b(str);
        if (m468b == -1) {
            try {
                return new ExifInterface(str).getAttributeInt("Orientation", 1);
            } catch (IOException e) {
                e.printStackTrace();
                return m468b;
            }
        }
        return m468b;
    }

    /* renamed from: a */
    public static boolean m466a(Context context, boolean z) {
        boolean z2;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (z) {
            z2 = audioManager.requestAudioFocus(f479c, 3, 1) == 1;
        } else {
            z2 = audioManager.abandonAudioFocus(f479c) == 1;
        }
        m465a("General", "pauseMusic bMute=" + z + " result=" + z2, 1);
        return z2;
    }

    /* renamed from: GeneralFunction.d$1 */
    static class AnonymousClass1 implements AudioManager.OnAudioFocusChangeListener {
        AnonymousClass1() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0052d.m465a("General", "onAudioFocusChange focusChange = " + i, 1);
        }
    }

    /* renamed from: b */
    public static List<Integer> m469b(Context context) {
        ArrayList arrayList = new ArrayList();
        for (ApplicationInfo applicationInfo : context.getPackageManager().getInstalledApplications(0)) {
            if (applicationInfo.packageName.equals("com.google.android.youtube")) {
                arrayList.add(0);
            } else if (applicationInfo.packageName.equals("com.facebook.katana")) {
                arrayList.add(1);
            } else if (applicationInfo.packageName.equals("com.sina.weibo")) {
                arrayList.add(2);
            } else if (!applicationInfo.packageName.equals("com.tencent.mm")) {
                if (applicationInfo.packageName.equals("com.tencent.mobileqq")) {
                    arrayList.add(4);
                } else if (applicationInfo.packageName.equals("com.twitter.android")) {
                    arrayList.add(9);
                } else if (applicationInfo.packageName.equals("com.qzone")) {
                    arrayList.add(5);
                } else if (applicationInfo.packageName.equals("jp.naver.line.android")) {
                    arrayList.add(7);
                } else if (applicationInfo.packageName.equals("com.whatsapp")) {
                    arrayList.add(8);
                } else if (applicationInfo.packageName.equals("com.youku.phone")) {
                    arrayList.add(11);
                } else if (applicationInfo.packageName.equals("com.vkontakte.android")) {
                    arrayList.add(12);
                } else if (applicationInfo.packageName.equals("com.snapchat.android")) {
                    arrayList.add(13);
                } else if (applicationInfo.packageName.equals("com.instagram.android")) {
                    arrayList.add(14);
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static void m464a(Activity activity, int i) {
        C1662d.m7093a().m7094a(i);
        activity.setRequestedOrientation(i);
    }

    /* renamed from: a */
    public static String m463a(InputStream inputStream) {
        try {
            byte[] bArr = new byte[4096];
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(32);
            for (byte b : digest) {
                sb.append(f478b[(b >> 4) & 15]);
                sb.append(f478b[b & 15]);
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
