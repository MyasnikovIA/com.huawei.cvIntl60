package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.C1074k;
import com.facebook.C1075l;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.internal.v */
/* loaded from: classes.dex */
public final class C1071v {

    /* renamed from: a */
    private static final String f5562a = C1071v.class.getName();

    /* renamed from: a */
    public static void m6125a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    /* renamed from: a */
    public static <T> void m6127a(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    /* renamed from: b */
    public static <T> void m6131b(Collection<T> collection, String str) {
        m6125a((Object) collection, str);
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    /* renamed from: c */
    public static <T> void m6133c(Collection<T> collection, String str) {
        m6131b(collection, str);
        m6127a((Collection) collection, str);
    }

    /* renamed from: a */
    public static void m6126a(String str, String str2) {
        if (C1070u.m6098a(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    /* renamed from: a */
    public static void m6123a() {
        if (!C1074k.m6172a()) {
            throw new C1075l("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    /* renamed from: b */
    public static String m6129b() {
        String m6185j = C1074k.m6185j();
        if (m6185j == null) {
            throw new IllegalStateException("No App ID found, please set the App ID.");
        }
        return m6185j;
    }

    /* renamed from: c */
    public static String m6132c() {
        String m6186k = C1074k.m6186k();
        if (m6186k == null) {
            throw new IllegalStateException("No Client Token found, please set the Client Token.");
        }
        return m6186k;
    }

    /* renamed from: a */
    public static void m6124a(Context context, boolean z) {
        m6125a(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (z) {
                throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Log.w(f5562a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    /* renamed from: b */
    public static void m6130b(Context context, boolean z) {
        m6125a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (activityInfo == null) {
            if (z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            Log.w(f5562a, "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
        }
    }

    /* renamed from: a */
    public static boolean m6128a(Context context) {
        boolean z;
        m6125a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> list = null;
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse("fb" + C1074k.m6185j() + "://authorize"));
            list = packageManager.queryIntentActivities(intent, 64);
        }
        if (list != null) {
            Iterator<ResolveInfo> it = list.iterator();
            z = false;
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (!activityInfo.name.equals("com.facebook.CustomTabActivity") || !activityInfo.packageName.equals(context.getPackageName())) {
                    return false;
                }
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }
}
