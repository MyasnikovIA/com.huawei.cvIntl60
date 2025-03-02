package GeneralFunction.Player.player;

import GeneralFunction.Player.player.SphericalVideoPlayer;
import android.graphics.Bitmap;
import android.os.Message;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

/* renamed from: GeneralFunction.Player.player.d */
/* loaded from: classes.dex */
public class C0037d extends Thread {

    /* renamed from: a */
    private static final String f228a = C0037d.class.getSimpleName();

    /* renamed from: b */
    private BlockingQueue<Message> f229b = new ArrayBlockingQueue(90);

    /* renamed from: c */
    private a f230c;

    /* renamed from: d */
    private SphericalVideoPlayer.HandlerThreadC0033g f231d;

    /* renamed from: e */
    private SphericalVideoPlayer.InterfaceC0029c f232e;

    /* renamed from: a */
    private static void m304a(String str, int i) {
        C0035b.m274a(f228a, str, i);
    }

    /* renamed from: a */
    public void m308a(int i, SphericalVideoPlayer.HandlerThreadC0033g handlerThreadC0033g) {
        this.f231d = handlerThreadC0033g;
        this.f230c = new a();
        this.f230c.m315a(i);
        this.f230c.start();
    }

    /* renamed from: a */
    public void m310a(Bitmap bitmap, int i, boolean z) {
        if (bitmap != null) {
            Message message = new Message();
            SphericalVideoPlayer.HandlerThreadC0033g handlerThreadC0033g = this.f231d;
            message.what = 8;
            message.obj = new C0034a(bitmap, i, z);
            try {
                this.f229b.put(message);
                return;
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
        m304a("360 Player can't receive Bitmap ", 0);
    }

    /* renamed from: a */
    public void m309a(SphericalVideoPlayer.InterfaceC0029c interfaceC0029c) {
        this.f232e = interfaceC0029c;
    }

    /* renamed from: a */
    public void m306a() {
        this.f230c.m314a();
    }

    /* renamed from: b */
    public void m311b() {
        this.f230c.m316b();
    }

    /* renamed from: a */
    public void m307a(int i) {
        this.f230c.m315a(i);
    }

    /* renamed from: c */
    public void m312c() {
        if (this.f230c != null) {
            this.f230c.m314a();
            this.f230c.interrupt();
            this.f230c = null;
            this.f229b.clear();
        }
    }

    /* renamed from: GeneralFunction.Player.player.d$a */
    private class a extends Thread {

        /* renamed from: b */
        private int f234b;

        /* renamed from: c */
        private int f235c;

        /* renamed from: d */
        private long f236d;

        /* renamed from: e */
        private boolean f237e;

        private a() {
            this.f234b = 30;
            this.f235c = m313a(this.f234b, 0);
            this.f236d = 0L;
            this.f237e = false;
        }

        /* synthetic */ a(C0037d c0037d, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: a */
        public void m315a(int i) {
            this.f234b = i;
            this.f235c = m313a(this.f234b, 0);
        }

        /* renamed from: a */
        private int m313a(int i, int i2) {
            float f = i;
            return (int) (1000.0f / ((f + ((i2 / (f / 6.0f)) * (f / 15.0f))) + 1.0f));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!Thread.interrupted()) {
                if (!this.f237e && !C0037d.this.f229b.isEmpty()) {
                    try {
                        Message message = (Message) C0037d.this.f229b.poll(50L, TimeUnit.MICROSECONDS);
                        this.f235c = m313a(this.f234b, C0037d.this.f229b.size());
                        long currentTimeMillis = this.f235c - (System.currentTimeMillis() - this.f236d);
                        if (currentTimeMillis > 0) {
                            Thread.sleep(currentTimeMillis);
                        }
                        this.f236d = System.currentTimeMillis();
                        C0037d.this.f232e.mo228a(message);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* renamed from: a */
        public void m314a() {
            this.f237e = true;
        }

        /* renamed from: b */
        public void m316b() {
            this.f237e = false;
        }
    }
}
