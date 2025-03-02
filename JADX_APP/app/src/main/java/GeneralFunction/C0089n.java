package GeneralFunction;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.huawei.cvIntl60.R;

/* renamed from: GeneralFunction.n */
/* loaded from: classes.dex */
public class C0089n {

    /* renamed from: h */
    private static C0089n f683h = null;

    /* renamed from: a */
    private SoundPool.Builder f684a;

    /* renamed from: b */
    private AudioAttributes.Builder f685b;

    /* renamed from: d */
    private SoundPool f687d;

    /* renamed from: c */
    private int f686c = 1;

    /* renamed from: e */
    private int f688e = 0;

    /* renamed from: f */
    private int f689f = 0;

    /* renamed from: g */
    private int f690g = 0;

    public C0089n() {
        this.f684a = null;
        this.f685b = null;
        this.f687d = null;
        this.f684a = new SoundPool.Builder();
        this.f684a.setMaxStreams(this.f686c);
        this.f685b = new AudioAttributes.Builder();
        this.f685b.setLegacyStreamType(3);
        this.f684a.setAudioAttributes(this.f685b.build());
        this.f687d = this.f684a.build();
    }

    /* renamed from: a */
    public static synchronized C0089n m881a() {
        C0089n c0089n;
        synchronized (C0089n.class) {
            if (f683h == null) {
                f683h = new C0089n();
            }
            c0089n = f683h;
        }
        return c0089n;
    }

    /* renamed from: a */
    public void m882a(Context context) {
        this.f688e = this.f687d.load(context, R.raw.shutter_sound, 0);
        this.f689f = this.f687d.load(context, R.raw.video_sound, 0);
        this.f690g = this.f687d.load(context, R.raw.selftimer, 0);
    }

    /* renamed from: b */
    public void m883b() {
        this.f687d.play(this.f688e, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    /* renamed from: c */
    public void m884c() {
        this.f687d.play(this.f689f, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    /* renamed from: d */
    public void m885d() {
        this.f687d.play(this.f690g, 1.0f, 1.0f, 0, 0, 1.0f);
    }
}
