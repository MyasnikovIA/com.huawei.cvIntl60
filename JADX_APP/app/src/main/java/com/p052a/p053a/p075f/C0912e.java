package com.p052a.p053a.p075f;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.f.e */
/* loaded from: classes.dex */
public final class C0912e {

    /* renamed from: a */
    private final Context f4795a;

    public C0912e(Context context) {
        this.f4795a = context;
    }

    /* renamed from: a */
    public List<InterfaceC0910c> m5180a() {
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f4795a.getPackageManager().getApplicationInfo(this.f4795a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable("ManifestParser", 2)) {
                Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(m5179a(str));
                    if (Log.isLoggable("ManifestParser", 3)) {
                        Log.d("ManifestParser", "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }

    /* renamed from: a */
    private static InterfaceC0910c m5179a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object newInstance = cls.newInstance();
                if (!(newInstance instanceof InterfaceC0910c)) {
                    throw new RuntimeException("Expected instanceof GlideModule, but found: " + newInstance);
                }
                return (InterfaceC0910c) newInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e3);
        }
    }
}
