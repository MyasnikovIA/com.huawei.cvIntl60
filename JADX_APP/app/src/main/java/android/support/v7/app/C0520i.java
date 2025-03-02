package android.support.v7.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.PermissionChecker;
import android.util.Log;
import com.google.android.exoplayer.hls.HlsChunkSource;
import java.util.Calendar;

/* renamed from: android.support.v7.app.i */
/* loaded from: classes.dex */
class C0520i {

    /* renamed from: a */
    private static C0520i f2397a;

    /* renamed from: b */
    private final Context f2398b;

    /* renamed from: c */
    private final LocationManager f2399c;

    /* renamed from: d */
    private final a f2400d = new a();

    /* renamed from: a */
    static C0520i m2623a(@NonNull Context context) {
        if (f2397a == null) {
            Context applicationContext = context.getApplicationContext();
            f2397a = new C0520i(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f2397a;
    }

    @VisibleForTesting
    C0520i(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.f2398b = context;
        this.f2399c = locationManager;
    }

    /* renamed from: a */
    boolean m2627a() {
        a aVar = this.f2400d;
        if (m2626c()) {
            return aVar.f2401a;
        }
        Location m2625b = m2625b();
        if (m2625b != null) {
            m2624a(m2625b);
            return aVar.f2401a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private Location m2625b() {
        Location m2622a = PermissionChecker.checkSelfPermission(this.f2398b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m2622a("network") : null;
        Location m2622a2 = PermissionChecker.checkSelfPermission(this.f2398b, "android.permission.ACCESS_FINE_LOCATION") == 0 ? m2622a("gps") : null;
        if (m2622a2 != null && m2622a != null) {
            return m2622a2.getTime() > m2622a.getTime() ? m2622a2 : m2622a;
        }
        if (m2622a2 == null) {
            m2622a2 = m2622a;
        }
        return m2622a2;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    /* renamed from: a */
    private Location m2622a(String str) {
        try {
            if (this.f2399c.isProviderEnabled(str)) {
                return this.f2399c.getLastKnownLocation(str);
            }
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
        }
        return null;
    }

    /* renamed from: c */
    private boolean m2626c() {
        return this.f2400d.f2406f > System.currentTimeMillis();
    }

    /* renamed from: a */
    private void m2624a(@NonNull Location location) {
        long j;
        long j2;
        a aVar = this.f2400d;
        long currentTimeMillis = System.currentTimeMillis();
        C0519h m2620a = C0519h.m2620a();
        m2620a.m2621a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = m2620a.f2394a;
        m2620a.m2621a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = m2620a.f2396c == 1;
        long j4 = m2620a.f2395b;
        long j5 = m2620a.f2394a;
        m2620a.m2621a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = m2620a.f2395b;
        if (j4 == -1 || j5 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            if (currentTimeMillis > j5) {
                j2 = 0 + j6;
            } else if (currentTimeMillis > j4) {
                j2 = 0 + j5;
            } else {
                j2 = 0 + j4;
            }
            j = j2 + HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
        }
        aVar.f2401a = z;
        aVar.f2402b = j3;
        aVar.f2403c = j4;
        aVar.f2404d = j5;
        aVar.f2405e = j6;
        aVar.f2406f = j;
    }

    /* renamed from: android.support.v7.app.i$a */
    private static class a {

        /* renamed from: a */
        boolean f2401a;

        /* renamed from: b */
        long f2402b;

        /* renamed from: c */
        long f2403c;

        /* renamed from: d */
        long f2404d;

        /* renamed from: e */
        long f2405e;

        /* renamed from: f */
        long f2406f;

        a() {
        }
    }
}
