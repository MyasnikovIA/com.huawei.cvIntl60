package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.Log;
import java.io.File;

/* loaded from: classes.dex */
public class zzw {
    @TargetApi(21)
    public static File getNoBackupFilesDir(Context context) {
        return zzs.zzayx() ? context.getNoBackupFilesDir() : zze(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    private static synchronized File zze(File file) {
        synchronized (zzw.class) {
            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                String valueOf = String.valueOf(file.getPath());
                Log.w("SupportV4Utils", valueOf.length() != 0 ? "Unable to create no-backup dir ".concat(valueOf) : new String("Unable to create no-backup dir "));
                file = null;
            }
        }
        return file;
    }
}
