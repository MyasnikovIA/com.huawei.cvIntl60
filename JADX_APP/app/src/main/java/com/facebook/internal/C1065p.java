package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.C1048h;
import com.facebook.C1073j;
import com.facebook.C1074k;
import com.facebook.login.EnumC1100a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* renamed from: com.facebook.internal.p */
/* loaded from: classes.dex */
public final class C1065p {

    /* renamed from: a */
    private static final String f5522a = C1065p.class.getName();

    /* renamed from: b */
    private static final List<e> f5523b = m6036e();

    /* renamed from: c */
    private static final List<e> f5524c = m6037f();

    /* renamed from: d */
    private static final Map<String, List<e>> f5525d = m6038g();

    /* renamed from: e */
    private static final AtomicBoolean f5526e = new AtomicBoolean(false);

    /* renamed from: f */
    private static final List<Integer> f5527f = Arrays.asList(20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    /* renamed from: com.facebook.internal.p$e */
    private static abstract class e {

        /* renamed from: a */
        private TreeSet<Integer> f5528a;

        /* renamed from: a */
        protected abstract String mo6039a();

        /* renamed from: b */
        protected abstract String mo6040b();

        private e() {
        }

        /* synthetic */ e(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: c */
        public TreeSet<Integer> m6043c() {
            if (this.f5528a == null || this.f5528a.isEmpty()) {
                m6042a(false);
            }
            return this.f5528a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x000d, code lost:
        
            if (r1.f5528a.isEmpty() == false) goto L25;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public synchronized void m6042a(boolean r2) {
            /*
                r1 = this;
                monitor-enter(r1)
                if (r2 != 0) goto Lf
                java.util.TreeSet<java.lang.Integer> r0 = r1.f5528a     // Catch: java.lang.Throwable -> L17
                if (r0 == 0) goto Lf
                java.util.TreeSet<java.lang.Integer> r0 = r1.f5528a     // Catch: java.lang.Throwable -> L17
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L17
                if (r0 == 0) goto L15
            Lf:
                java.util.TreeSet r0 = com.facebook.internal.C1065p.m6024a(r1)     // Catch: java.lang.Throwable -> L17
                r1.f5528a = r0     // Catch: java.lang.Throwable -> L17
            L15:
                monitor-exit(r1)
                return
            L17:
                r0 = move-exception
                monitor-exit(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1065p.e.m6042a(boolean):void");
        }
    }

    /* renamed from: com.facebook.internal.p$c */
    private static class c extends e {
        private c() {
            super();
        }

        /* synthetic */ c(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: a */
        protected String mo6039a() {
            return "com.facebook.katana";
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: b */
        protected String mo6040b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* renamed from: com.facebook.internal.p$d */
    private static class d extends e {
        private d() {
            super();
        }

        /* synthetic */ d(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: a */
        protected String mo6039a() {
            return "com.facebook.orca";
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: b */
        protected String mo6040b() {
            return null;
        }
    }

    /* renamed from: com.facebook.internal.p$g */
    private static class g extends e {
        private g() {
            super();
        }

        /* synthetic */ g(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: a */
        protected String mo6039a() {
            return "com.facebook.wakizashi";
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: b */
        protected String mo6040b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* renamed from: com.facebook.internal.p$b */
    private static class b extends e {
        private b() {
            super();
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: a */
        protected String mo6039a() {
            return "com.facebook.lite";
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: b */
        protected String mo6040b() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }
    }

    /* renamed from: com.facebook.internal.p$a */
    private static class a extends e {
        private a() {
            super();
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: a */
        protected String mo6039a() {
            return "com.facebook.arstudio.player";
        }

        @Override // com.facebook.internal.C1065p.e
        /* renamed from: b */
        protected String mo6040b() {
            return null;
        }
    }

    /* renamed from: e */
    private static List<e> m6036e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c());
        arrayList.add(new g());
        return arrayList;
    }

    /* renamed from: f */
    private static List<e> m6037f() {
        ArrayList arrayList = new ArrayList(m6036e());
        arrayList.add(0, new a());
        return arrayList;
    }

    /* renamed from: g */
    private static Map<String, List<e>> m6038g() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new d());
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", f5523b);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", f5523b);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", f5523b);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", f5523b);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f5524c);
        hashMap.put("com.facebook.platform.action.request.SHARE_STORY", f5523b);
        return hashMap;
    }

    /* renamed from: a */
    static Intent m6017a(Context context, Intent intent, e eVar) {
        ResolveInfo resolveActivity;
        if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !C1057h.m5957a(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    /* renamed from: b */
    static Intent m6027b(Context context, Intent intent, e eVar) {
        ResolveInfo resolveService;
        if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null || !C1057h.m5957a(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m6018a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC1100a enumC1100a, String str3, String str4) {
        b bVar = new b();
        return m6017a(context, m6020a(bVar, str, collection, str2, z, z2, enumC1100a, str3, str4), bVar);
    }

    /* renamed from: a */
    private static Intent m6020a(e eVar, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC1100a enumC1100a, String str3, String str4) {
        String mo6040b = eVar.mo6040b();
        if (mo6040b == null) {
            return null;
        }
        Intent putExtra = new Intent().setClassName(eVar.mo6039a(), mo6040b).putExtra("client_id", str);
        putExtra.putExtra("facebook_sdk_version", C1074k.m6183h());
        if (!C1070u.m6099a(collection)) {
            putExtra.putExtra("scope", TextUtils.join(",", collection));
        }
        if (!C1070u.m6098a(str2)) {
            putExtra.putExtra("e2e", str2);
        }
        putExtra.putExtra("state", str3);
        putExtra.putExtra("response_type", "token,signed_request");
        putExtra.putExtra("return_scopes", "true");
        if (z2) {
            putExtra.putExtra("default_audience", enumC1100a.m6345a());
        }
        putExtra.putExtra("legacy_override", C1074k.m6182g());
        putExtra.putExtra("auth_type", str4);
        return putExtra;
    }

    /* renamed from: b */
    public static Intent m6028b(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, EnumC1100a enumC1100a, String str3, String str4) {
        for (e eVar : f5523b) {
            Intent m6017a = m6017a(context, m6020a(eVar, str, collection, str2, z, z2, enumC1100a, str3, str4), eVar);
            if (m6017a != null) {
                return m6017a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final int m6013a() {
        return f5527f.get(0).intValue();
    }

    /* renamed from: a */
    public static boolean m6025a(int i) {
        return f5527f.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    /* renamed from: a */
    public static Intent m6019a(Intent intent, Bundle bundle, C1048h c1048h) {
        UUID m6030b = m6030b(intent);
        if (m6030b == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", m6014a(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", m6030b.toString());
        if (c1048h != null) {
            bundle2.putBundle(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, m6021a(c1048h));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
        if (bundle != null) {
            intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            return intent2;
        }
        return intent2;
    }

    /* renamed from: a */
    public static Intent m6016a(Context context) {
        for (e eVar : f5523b) {
            Intent m6027b = m6027b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(eVar.mo6039a()).addCategory("android.intent.category.DEFAULT"), eVar);
            if (m6027b != null) {
                return m6027b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static int m6014a(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    /* renamed from: b */
    public static UUID m6030b(Intent intent) {
        String stringExtra;
        if (intent == null) {
            return null;
        }
        if (m6025a(m6014a(intent))) {
            Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        if (stringExtra == null) {
            return null;
        }
        try {
            return UUID.fromString(stringExtra);
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    /* renamed from: c */
    public static Bundle m6033c(Intent intent) {
        return !m6025a(m6014a(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    /* renamed from: a */
    public static C1048h m6022a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        if (string == null) {
            string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        String string2 = bundle.getString("error_description");
        if (string2 == null) {
            string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        if (string != null && string.equalsIgnoreCase("UserCanceled")) {
            return new C1073j(string2);
        }
        return new C1048h(string2);
    }

    /* renamed from: a */
    public static Bundle m6021a(C1048h c1048h) {
        if (c1048h == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", c1048h.toString());
        if (c1048h instanceof C1073j) {
            bundle.putString("error_type", "UserCanceled");
            return bundle;
        }
        return bundle;
    }

    /* renamed from: b */
    public static int m6026b(int i) {
        return m6023a(f5523b, new int[]{i}).m6046b();
    }

    /* renamed from: a */
    private static f m6023a(List<e> list, int[] iArr) {
        m6031b();
        if (list == null) {
            return f.m6044a();
        }
        for (e eVar : list) {
            int m6015a = m6015a(eVar.m6043c(), m6013a(), iArr);
            if (m6015a != -1) {
                return f.m6045a(eVar, m6015a);
            }
        }
        return f.m6044a();
    }

    /* renamed from: b */
    public static void m6031b() {
        if (f5526e.compareAndSet(false, true)) {
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.internal.p.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Iterator it = C1065p.f5523b.iterator();
                        while (it.hasNext()) {
                            ((e) it.next()).m6042a(true);
                        }
                    } finally {
                        C1065p.f5526e.set(false);
                    }
                }
            });
        }
    }

    /* renamed from: com.facebook.internal.p$1 */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator it = C1065p.f5523b.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).m6042a(true);
                }
            } finally {
                C1065p.f5526e.set(false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.TreeSet<java.lang.Integer> m6029b(com.facebook.internal.C1065p.e r8) {
        /*
            r3 = 0
            r6 = 0
            java.util.TreeSet r7 = new java.util.TreeSet
            r7.<init>()
            android.content.Context r0 = com.facebook.C1074k.m6181f()
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = 1
            java.lang.String[] r2 = new java.lang.String[r1]
            java.lang.String r1 = "version"
            r2[r3] = r1
            android.net.Uri r1 = m6032c(r8)
            android.content.Context r3 = com.facebook.C1074k.m6181f()     // Catch: java.lang.Throwable -> L87
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L87
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L87
            r4.<init>()     // Catch: java.lang.Throwable -> L87
            java.lang.String r5 = r8.mo6039a()     // Catch: java.lang.Throwable -> L87
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L87
            java.lang.String r5 = ".provider.PlatformProvider"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L87
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L87
            r5 = 0
            android.content.pm.ProviderInfo r3 = r3.resolveContentProvider(r4, r5)     // Catch: java.lang.RuntimeException -> L68 java.lang.Throwable -> L87
        L3e:
            if (r3 == 0) goto L7c
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.NullPointerException -> L72 java.lang.SecurityException -> L83 java.lang.IllegalArgumentException -> L85 java.lang.Throwable -> L87
        L47:
            if (r1 == 0) goto L7d
        L49:
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L7d
            java.lang.String r0 = "version"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L61
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L61
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L61
            r7.add(r0)     // Catch: java.lang.Throwable -> L61
            goto L49
        L61:
            r0 = move-exception
        L62:
            if (r1 == 0) goto L67
            r1.close()
        L67:
            throw r0
        L68:
            r3 = move-exception
            java.lang.String r4 = com.facebook.internal.C1065p.f5522a     // Catch: java.lang.Throwable -> L87
            java.lang.String r5 = "Failed to query content resolver."
            android.util.Log.e(r4, r5, r3)     // Catch: java.lang.Throwable -> L87
            r3 = r6
            goto L3e
        L72:
            r0 = move-exception
        L73:
            java.lang.String r0 = com.facebook.internal.C1065p.f5522a     // Catch: java.lang.Throwable -> L87
            java.lang.String r1 = "Failed to query content resolver."
            android.util.Log.e(r0, r1)     // Catch: java.lang.Throwable -> L87
            r1 = r6
            goto L47
        L7c:
            r1 = r6
        L7d:
            if (r1 == 0) goto L82
            r1.close()
        L82:
            return r7
        L83:
            r0 = move-exception
            goto L73
        L85:
            r0 = move-exception
            goto L73
        L87:
            r0 = move-exception
            r1 = r6
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1065p.m6029b(com.facebook.internal.p$e):java.util.TreeSet");
    }

    /* renamed from: a */
    public static int m6015a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        int length = iArr.length - 1;
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i2 = -1;
        int i3 = length;
        while (descendingIterator.hasNext()) {
            int intValue = descendingIterator.next().intValue();
            int max = Math.max(i2, intValue);
            while (i3 >= 0 && iArr[i3] > intValue) {
                i3--;
            }
            if (i3 < 0) {
                return -1;
            }
            if (iArr[i3] == intValue) {
                if (i3 % 2 == 0) {
                    return Math.min(max, i);
                }
                return -1;
            }
            i2 = max;
        }
        return -1;
    }

    /* renamed from: c */
    private static Uri m6032c(e eVar) {
        return Uri.parse("content://" + eVar.mo6039a() + ".provider.PlatformProvider/versions");
    }

    /* renamed from: com.facebook.internal.p$f */
    public static class f {

        /* renamed from: a */
        private e f5529a;

        /* renamed from: b */
        private int f5530b;

        /* renamed from: a */
        public static f m6045a(e eVar, int i) {
            f fVar = new f();
            fVar.f5529a = eVar;
            fVar.f5530b = i;
            return fVar;
        }

        /* renamed from: a */
        public static f m6044a() {
            f fVar = new f();
            fVar.f5530b = -1;
            return fVar;
        }

        private f() {
        }

        /* renamed from: b */
        public int m6046b() {
            return this.f5530b;
        }
    }
}
