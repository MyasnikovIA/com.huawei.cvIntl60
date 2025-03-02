package GeneralFunction.p002b;

import GeneralFunction.p008g.C0069a;
import android.content.Context;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

/* renamed from: GeneralFunction.b.a */
/* loaded from: classes.dex */
public class C0046a {

    /* renamed from: f */
    private static String f423f = "Debug";

    /* renamed from: g */
    private static double f424g = 100.0d;

    /* renamed from: h */
    private static long f425h = 100;

    /* renamed from: m */
    private static long f426m = 0;

    /* renamed from: n */
    private static int f427n = 65;

    /* renamed from: i */
    private Context f433i;

    /* renamed from: a */
    private final long f428a = System.currentTimeMillis();

    /* renamed from: b */
    private final String f429b = C0069a.m638a() + "/AutoDump/";

    /* renamed from: c */
    private final String f430c = C0069a.m638a() + "/AutoDump/Log/";

    /* renamed from: d */
    private final String f431d = C0069a.m638a() + "/AutoDump/Log/" + this.f428a + ".log";

    /* renamed from: e */
    private final String f432e = C0069a.m638a() + "/AutoDump/Log/" + this.f428a + ".dbg";

    /* renamed from: j */
    private String f434j = "";

    /* renamed from: k */
    private long f435k = 0;

    /* renamed from: l */
    private long f436l = 0;

    public C0046a(Context context) {
        this.f433i = null;
        this.f433i = context;
    }

    public C0046a(Context context, String str, double d, long j) {
        this.f433i = null;
        this.f433i = context;
        f423f = str;
        f424g = d;
        f425h = j;
        File file = new File(this.f429b);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(this.f430c);
        if (!file2.exists()) {
            file2.mkdir();
        }
        m425e();
    }

    /* renamed from: a */
    public void m427a(boolean z, boolean z2) {
        try {
            Thread.sleep(f427n);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m426a() {
    }

    /* renamed from: b */
    public void m428b() {
        File file = new File(this.f430c);
        long m421a = m421a(file);
        if (file.exists() && m421a != 0) {
            m422a(this.f430c, m421a);
        }
    }

    /* renamed from: a */
    private long m421a(File file) {
        File[] listFiles = file.listFiles();
        if (!file.isDirectory() || listFiles == null) {
            return 0L;
        }
        return listFiles.length;
    }

    /* renamed from: a */
    private void m422a(String str, long j) {
        File[] listFiles = new File(str).listFiles();
        Arrays.sort(listFiles, new Comparator<File>() { // from class: GeneralFunction.b.a.1
            AnonymousClass1() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(File file, File file2) {
                long lastModified = file.lastModified() - file2.lastModified();
                if (lastModified > 0) {
                    return 1;
                }
                if (lastModified == 0) {
                    return 0;
                }
                return -1;
            }

            @Override // java.util.Comparator
            public boolean equals(Object obj) {
                return true;
            }
        });
        for (int i = 0; i < j; i++) {
            new File(str + listFiles[i].getName()).delete();
        }
    }

    /* renamed from: GeneralFunction.b.a$1 */
    class AnonymousClass1 implements Comparator<File> {
        AnonymousClass1() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            long lastModified = file.lastModified() - file2.lastModified();
            if (lastModified > 0) {
                return 1;
            }
            if (lastModified == 0) {
                return 0;
            }
            return -1;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return true;
        }
    }

    /* renamed from: e */
    private void m425e() {
        long m421a = (m421a(new File(this.f430c)) + 1) - f425h;
        if (m421a > 0) {
            m422a(this.f430c, m421a);
        }
    }

    /* renamed from: c */
    public static double m423c() {
        return f424g;
    }

    /* renamed from: d */
    public static long m424d() {
        return f425h;
    }
}
