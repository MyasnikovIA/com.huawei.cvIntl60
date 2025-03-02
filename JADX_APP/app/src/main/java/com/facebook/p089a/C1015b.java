package com.facebook.p089a;

import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.C1074k;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: com.facebook.a.b */
/* loaded from: classes.dex */
class C1015b {

    /* renamed from: c */
    private static String f5220c;

    /* renamed from: a */
    private static final String f5218a = C1015b.class.getSimpleName();

    /* renamed from: b */
    private static ReentrantReadWriteLock f5219b = new ReentrantReadWriteLock();

    /* renamed from: d */
    private static volatile boolean f5221d = false;

    C1015b() {
    }

    /* renamed from: a */
    public static void m5708a() {
        if (!f5221d) {
            C1032g.m5852h().execute(new Runnable() { // from class: com.facebook.a.b.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1015b.m5711d();
                }
            });
        }
    }

    /* renamed from: com.facebook.a.b$1 */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1015b.m5711d();
        }
    }

    /* renamed from: b */
    public static String m5709b() {
        if (!f5221d) {
            Log.w(f5218a, "initStore should have been called before calling setUserID");
            m5711d();
        }
        f5219b.readLock().lock();
        try {
            return f5220c;
        } finally {
            f5219b.readLock().unlock();
        }
    }

    /* renamed from: d */
    public static void m5711d() {
        if (!f5221d) {
            f5219b.writeLock().lock();
            try {
                if (!f5221d) {
                    f5220c = PreferenceManager.getDefaultSharedPreferences(C1074k.m6181f()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                    f5221d = true;
                }
            } finally {
                f5219b.writeLock().unlock();
            }
        }
    }
}
