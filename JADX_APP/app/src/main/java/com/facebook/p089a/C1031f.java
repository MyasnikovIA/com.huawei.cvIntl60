package com.facebook.p089a;

import android.content.Context;
import android.util.Log;
import com.facebook.C1074k;
import com.facebook.internal.C1070u;
import com.facebook.p089a.C1003a;
import com.facebook.p089a.C1028c;
import com.facebook.p089a.p092b.C1017b;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;

/* renamed from: com.facebook.a.f */
/* loaded from: classes.dex */
class C1031f {

    /* renamed from: a */
    private static final String f5320a = C1031f.class.getName();

    C1031f() {
    }

    /* renamed from: a */
    public static synchronized void m5834a(C1003a c1003a, C1037l c1037l) {
        synchronized (C1031f.class) {
            C1017b.m5744a();
            C1036k m5833a = m5833a();
            if (m5833a.m5861b(c1003a)) {
                m5833a.m5858a(c1003a).addAll(c1037l.m5867b());
            } else {
                m5833a.m5860a(c1003a, c1037l.m5867b());
            }
            m5836a(m5833a);
        }
    }

    /* renamed from: a */
    public static synchronized void m5835a(C1029d c1029d) {
        synchronized (C1031f.class) {
            C1017b.m5744a();
            C1036k m5833a = m5833a();
            for (C1003a c1003a : c1029d.m5814a()) {
                m5833a.m5860a(c1003a, c1029d.m5813a(c1003a).m5867b());
            }
            m5836a(m5833a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f A[Catch: all -> 0x003f, TRY_ENTER, TRY_LEAVE, TryCatch #10 {, blocks: (B:4:0x0004, B:9:0x0021, B:11:0x0024, B:14:0x002f, B:21:0x0037, B:48:0x007e, B:50:0x0081, B:51:0x008a, B:54:0x008c, B:35:0x0065, B:37:0x0068, B:41:0x0074, B:25:0x0044, B:27:0x0047, B:31:0x0053), top: B:3:0x0004, inners: #2, #6, #7, #9 }] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Exception, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized com.facebook.p089a.C1036k m5833a() {
        /*
            r2 = 0
            java.lang.Class<com.facebook.a.f> r3 = com.facebook.p089a.C1031f.class
            monitor-enter(r3)
            com.facebook.p089a.p092b.C1017b.m5744a()     // Catch: java.lang.Throwable -> L3f
            android.content.Context r4 = com.facebook.C1074k.m6181f()     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = "AppEventsLogger.persistedevents"
            java.io.FileInputStream r0 = r4.openFileInput(r0)     // Catch: java.io.FileNotFoundException -> L42 java.lang.Exception -> L5c java.lang.Throwable -> L7d
            com.facebook.a.f$a r1 = new com.facebook.a.f$a     // Catch: java.io.FileNotFoundException -> L42 java.lang.Exception -> L5c java.lang.Throwable -> L7d
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.io.FileNotFoundException -> L42 java.lang.Exception -> L5c java.lang.Throwable -> L7d
            r5.<init>(r0)     // Catch: java.io.FileNotFoundException -> L42 java.lang.Exception -> L5c java.lang.Throwable -> L7d
            r1.<init>(r5)     // Catch: java.io.FileNotFoundException -> L42 java.lang.Exception -> L5c java.lang.Throwable -> L7d
            java.lang.Object r0 = r1.readObject()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L97 java.io.FileNotFoundException -> L99
            com.facebook.a.k r0 = (com.facebook.p089a.C1036k) r0     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L97 java.io.FileNotFoundException -> L99
            com.facebook.internal.C1070u.m6086a(r1)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r1 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r4.getFileStreamPath(r1)     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L3f
            r1.delete()     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L3f
        L2d:
            if (r0 != 0) goto L34
            com.facebook.a.k r0 = new com.facebook.a.k     // Catch: java.lang.Throwable -> L3f
            r0.<init>()     // Catch: java.lang.Throwable -> L3f
        L34:
            monitor-exit(r3)
            return r0
        L36:
            r1 = move-exception
            java.lang.String r2 = com.facebook.p089a.C1031f.f5320a     // Catch: java.lang.Throwable -> L3f
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r2, r4, r1)     // Catch: java.lang.Throwable -> L3f
            goto L2d
        L3f:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L42:
            r0 = move-exception
            r0 = r2
        L44:
            com.facebook.internal.C1070u.m6086a(r0)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = "AppEventsLogger.persistedevents"
            java.io.File r0 = r4.getFileStreamPath(r0)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L52
            r0.delete()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L52
            r0 = r2
            goto L2d
        L52:
            r0 = move-exception
            java.lang.String r1 = com.facebook.p089a.C1031f.f5320a     // Catch: java.lang.Throwable -> L3f
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r1, r4, r0)     // Catch: java.lang.Throwable -> L3f
            r0 = r2
            goto L2d
        L5c:
            r0 = move-exception
            r1 = r2
        L5e:
            java.lang.String r5 = com.facebook.p089a.C1031f.f5320a     // Catch: java.lang.Throwable -> L94
            java.lang.String r6 = "Got unexpected exception while reading events: "
            android.util.Log.w(r5, r6, r0)     // Catch: java.lang.Throwable -> L94
            com.facebook.internal.C1070u.m6086a(r1)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = "AppEventsLogger.persistedevents"
            java.io.File r0 = r4.getFileStreamPath(r0)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L73
            r0.delete()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L73
            r0 = r2
            goto L2d
        L73:
            r0 = move-exception
            java.lang.String r1 = com.facebook.p089a.C1031f.f5320a     // Catch: java.lang.Throwable -> L3f
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r1, r4, r0)     // Catch: java.lang.Throwable -> L3f
            r0 = r2
            goto L2d
        L7d:
            r0 = move-exception
        L7e:
            com.facebook.internal.C1070u.m6086a(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r1 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r4.getFileStreamPath(r1)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L8b
            r1.delete()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L8b
        L8a:
            throw r0     // Catch: java.lang.Throwable -> L3f
        L8b:
            r1 = move-exception
            java.lang.String r2 = com.facebook.p089a.C1031f.f5320a     // Catch: java.lang.Throwable -> L3f
            java.lang.String r4 = "Got unexpected exception when removing events file: "
            android.util.Log.w(r2, r4, r1)     // Catch: java.lang.Throwable -> L3f
            goto L8a
        L94:
            r0 = move-exception
            r2 = r1
            goto L7e
        L97:
            r0 = move-exception
            goto L5e
        L99:
            r0 = move-exception
            r0 = r1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p089a.C1031f.m5833a():com.facebook.a.k");
    }

    /* renamed from: a */
    private static void m5836a(C1036k c1036k) {
        ObjectOutputStream objectOutputStream;
        Context m6181f = C1074k.m6181f();
        try {
            objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(m6181f.openFileOutput("AppEventsLogger.persistedevents", 0)));
        } catch (Exception e) {
            e = e;
            objectOutputStream = null;
        } catch (Throwable th) {
            th = th;
            objectOutputStream = null;
            C1070u.m6086a(objectOutputStream);
            throw th;
        }
        try {
            try {
                objectOutputStream.writeObject(c1036k);
                C1070u.m6086a(objectOutputStream);
            } catch (Throwable th2) {
                th = th2;
                C1070u.m6086a(objectOutputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            Log.w(f5320a, "Got unexpected exception while persisting events: ", e);
            try {
                m6181f.getFileStreamPath("AppEventsLogger.persistedevents").delete();
            } catch (Exception e3) {
            }
            C1070u.m6086a(objectOutputStream);
        }
    }

    /* renamed from: com.facebook.a.f$a */
    private static class a extends ObjectInputStream {
        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected ObjectStreamClass readClassDescriptor() {
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                return ObjectStreamClass.lookup(C1003a.a.class);
            }
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1")) {
                return ObjectStreamClass.lookup(C1028c.a.class);
            }
            return readClassDescriptor;
        }
    }
}
