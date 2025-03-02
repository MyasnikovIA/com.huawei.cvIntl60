package GeneralFunction.p006f.p007a;

import GeneralFunction.C0052d;
import android.media.MediaFormat;
import android.media.MediaMuxer;

/* renamed from: GeneralFunction.f.a.a */
/* loaded from: classes.dex */
public class C0065a {

    /* renamed from: a */
    private static final String f517a = C0065a.class.getSimpleName();

    /* renamed from: b */
    private int f518b = 0;

    /* renamed from: c */
    private long f519c = 0;

    /* renamed from: d */
    private b f520d = new b();

    /* renamed from: GeneralFunction.f.a.a$a */
    public interface a {
    }

    /* renamed from: a */
    public void m589a(String str, int i) {
        C0052d.m465a(f517a, str, i);
    }

    /* renamed from: a */
    public void m588a() {
        m589a("user cancel", 4);
        this.f520d.f528h = true;
    }

    /* renamed from: GeneralFunction.f.a.a$b */
    private class b {

        /* renamed from: b */
        private MediaMuxer f522b;

        /* renamed from: c */
        private MediaFormat f523c;

        /* renamed from: d */
        private MediaFormat f524d;

        /* renamed from: e */
        private int f525e;

        /* renamed from: f */
        private int f526f;

        /* renamed from: g */
        private a f527g;

        /* renamed from: h */
        private boolean f528h;

        /* synthetic */ b(C0065a c0065a, AnonymousClass1 anonymousClass1) {
            this();
        }

        private b() {
            this.f522b = null;
            this.f523c = null;
            this.f524d = null;
            this.f525e = -1;
            this.f526f = -1;
            this.f527g = null;
            this.f528h = false;
        }
    }
}
