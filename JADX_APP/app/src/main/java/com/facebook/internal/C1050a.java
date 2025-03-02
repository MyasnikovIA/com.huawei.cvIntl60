package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.C1048h;
import com.facebook.C1074k;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.internal.a */
/* loaded from: classes.dex */
public class C1050a {

    /* renamed from: a */
    private static final String f5427a = C1050a.class.getCanonicalName();

    /* renamed from: g */
    private static C1050a f5428g;

    /* renamed from: b */
    private String f5429b;

    /* renamed from: c */
    private String f5430c;

    /* renamed from: d */
    private String f5431d;

    /* renamed from: e */
    private boolean f5432e;

    /* renamed from: f */
    private long f5433f;

    /* renamed from: b */
    private static C1050a m5921b(Context context) {
        C1050a m5922c = m5922c(context);
        if (m5922c == null) {
            C1050a m5923d = m5923d(context);
            if (m5923d == null) {
                return new C1050a();
            }
            return m5923d;
        }
        return m5922c;
    }

    /* renamed from: c */
    private static C1050a m5922c(Context context) {
        Object m6067a;
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new C1048h("getAndroidId cannot be called on the main thread.");
            }
            Method m6076a = C1070u.m6076a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
            if (m6076a == null) {
                return null;
            }
            Object m6067a2 = C1070u.m6067a((Object) null, m6076a, context);
            if (!(m6067a2 instanceof Integer) || ((Integer) m6067a2).intValue() != 0) {
                return null;
            }
            Method m6076a2 = C1070u.m6076a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
            if (m6076a2 != null && (m6067a = C1070u.m6067a((Object) null, m6076a2, context)) != null) {
                Method m6075a = C1070u.m6075a(m6067a.getClass(), "getId", (Class<?>[]) new Class[0]);
                Method m6075a2 = C1070u.m6075a(m6067a.getClass(), "isLimitAdTrackingEnabled", (Class<?>[]) new Class[0]);
                if (m6075a == null || m6075a2 == null) {
                    return null;
                }
                C1050a c1050a = new C1050a();
                c1050a.f5430c = (String) C1070u.m6067a(m6067a, m6075a, new Object[0]);
                c1050a.f5432e = ((Boolean) C1070u.m6067a(m6067a, m6075a2, new Object[0])).booleanValue();
                return c1050a;
            }
            return null;
        } catch (Exception e) {
            C1070u.m6088a("android_id", e);
            return null;
        }
    }

    /* renamed from: d */
    private static C1050a m5923d(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, bVar, 1)) {
                a aVar = new a(bVar.m5931a());
                C1050a c1050a = new C1050a();
                c1050a.f5430c = aVar.m5929a();
                c1050a.f5432e = aVar.m5930b();
                return c1050a;
            }
        } catch (Exception e) {
            C1070u.m6088a("android_id", e);
        } finally {
            context.unbindService(bVar);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fe  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.internal.C1050a m5919a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1050a.m5919a(android.content.Context):com.facebook.internal.a");
    }

    /* renamed from: a */
    private static C1050a m5920a(C1050a c1050a) {
        c1050a.f5433f = System.currentTimeMillis();
        f5428g = c1050a;
        return c1050a;
    }

    /* renamed from: a */
    public String m5925a() {
        return this.f5429b;
    }

    /* renamed from: b */
    public String m5926b() {
        if (C1074k.m6172a() && C1074k.m6189n()) {
            return this.f5430c;
        }
        return null;
    }

    /* renamed from: c */
    public String m5927c() {
        return this.f5431d;
    }

    /* renamed from: d */
    public boolean m5928d() {
        return this.f5432e;
    }

    @Nullable
    /* renamed from: e */
    private static String m5924e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }

    /* renamed from: com.facebook.internal.a$b */
    private static final class b implements ServiceConnection {

        /* renamed from: a */
        private AtomicBoolean f5435a;

        /* renamed from: b */
        private final BlockingQueue<IBinder> f5436b;

        private b() {
            this.f5435a = new AtomicBoolean(false);
            this.f5436b = new LinkedBlockingDeque();
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f5436b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        /* renamed from: a */
        public IBinder m5931a() {
            if (this.f5435a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.f5436b.take();
        }
    }

    /* renamed from: com.facebook.internal.a$a */
    private static final class a implements IInterface {

        /* renamed from: a */
        private IBinder f5434a;

        a(IBinder iBinder) {
            this.f5434a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f5434a;
        }

        /* renamed from: a */
        public String m5929a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f5434a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: b */
        public boolean m5930b() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.f5434a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
