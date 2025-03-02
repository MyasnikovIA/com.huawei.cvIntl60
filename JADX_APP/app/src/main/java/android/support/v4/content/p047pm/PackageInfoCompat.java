package android.support.v4.content.p047pm;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public final class PackageInfoCompat {
    public static long getLongVersionCode(@NonNull PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }

    private PackageInfoCompat() {
    }
}
