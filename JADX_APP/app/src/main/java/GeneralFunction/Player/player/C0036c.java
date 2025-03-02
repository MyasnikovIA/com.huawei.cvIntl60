package GeneralFunction.Player.player;

import GeneralFunction.p003c.C0049b;
import GeneralFunction.p003c.C0051d;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/* renamed from: GeneralFunction.Player.player.c */
/* loaded from: classes.dex */
public class C0036c {

    /* renamed from: a */
    private static final String f201a = C0036c.class.getSimpleName();

    /* renamed from: d */
    private a f204d;

    /* renamed from: b */
    private BlockingQueue<Message> f202b = new ArrayBlockingQueue(90);

    /* renamed from: c */
    private BlockingQueue<Integer> f203c = new ArrayBlockingQueue(16);

    /* renamed from: e */
    private int f205e = 0;

    /* renamed from: f */
    private long f206f = 0;

    /* renamed from: g */
    private long f207g = 0;

    /* renamed from: h */
    private long f208h = 0;

    /* renamed from: i */
    private int f209i = 0;

    /* renamed from: j */
    private boolean f210j = false;

    /* renamed from: k */
    private long f211k = 0;

    /* renamed from: l */
    private long f212l = 0;

    /* renamed from: m */
    private long f213m = 0;

    /* renamed from: n */
    private long f214n = 0;

    /* renamed from: b */
    public static void m282b(String str, int i) {
        C0035b.m274a(f201a, str, i);
    }

    /* renamed from: a */
    public void m291a(Surface surface, int i, int i2, int i3) {
        this.f204d = new a(surface);
        this.f204d.m302a(i, i2);
        this.f204d.m301a(i3);
        this.f204d.start();
    }

    /* renamed from: a */
    public void m288a() {
        this.f210j = true;
    }

    /* renamed from: b */
    public void m292b() {
        try {
            this.f203c.put(new Integer(1));
            m281b(2);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m293c() {
        try {
            this.f203c.put(new Integer(2));
            m281b(1);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m289a(int i) {
        this.f204d.m301a(i);
    }

    /* renamed from: a */
    public void m290a(C0051d c0051d, int i, int i2) {
        if (c0051d != null) {
            Bundle bundle = new Bundle();
            Message message = new Message();
            message.obj = c0051d;
            bundle.putInt("width", i);
            bundle.putInt("height", i2);
            if (this.f210j) {
                this.f210j = false;
                bundle.putBoolean("needReinitial", true);
            } else {
                bundle.putBoolean("needReinitial", false);
            }
            message.setData(bundle);
            try {
                this.f202b.put(message);
                int size = this.f202b.size();
                if (size > this.f209i) {
                    this.f209i = size;
                    m282b("@-------currentQueyeCount:" + this.f209i, 2);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    private void m281b(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        while (this.f205e != i) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (System.currentTimeMillis() - currentTimeMillis > 2000) {
                m282b("waitDecoderStatus error:" + this.f205e + " " + i, 0);
            }
        }
    }

    /* renamed from: d */
    public void m294d() {
        if (this.f204d != null) {
            this.f204d.m300a();
            m281b(0);
            this.f204d = null;
        }
    }

    /* renamed from: GeneralFunction.Player.player.c$a */
    private class a extends Thread {

        /* renamed from: b */
        private MediaCodec f216b;

        /* renamed from: c */
        private Surface f217c;

        /* renamed from: d */
        private int f218d;

        /* renamed from: e */
        private int f219e;

        /* renamed from: f */
        private int f220f;

        /* renamed from: g */
        private int f221g;

        /* renamed from: h */
        private long f222h;

        /* renamed from: i */
        private int f223i;

        /* renamed from: j */
        private boolean f224j;

        /* renamed from: k */
        private boolean f225k;

        /* renamed from: l */
        private int f226l;

        /* renamed from: m */
        private ArrayList<C0049b> f227m;

        public a(Surface surface) {
            super("MediaCodecThread");
            this.f218d = 30;
            this.f219e = 1920;
            this.f220f = 960;
            this.f221g = m296b(this.f218d, 0);
            this.f222h = 0L;
            this.f223i = 0;
            this.f224j = false;
            this.f225k = false;
            this.f226l = 0;
            this.f227m = new ArrayList<>();
            this.f217c = surface;
        }

        /* renamed from: a */
        public void m301a(int i) {
            this.f218d = i;
            this.f221g = m296b(this.f218d, 0);
        }

        /* renamed from: a */
        public void m302a(int i, int i2) {
            this.f219e = i;
            this.f220f = i2;
        }

        /* renamed from: a */
        public void m300a() {
            this.f225k = true;
        }

        /* renamed from: b */
        private int m296b(int i, int i2) {
            float f = i;
            return (int) (1000.0f / ((f + ((i2 / (f / 6.0f)) * (f / 15.0f))) + 1.0f));
        }

        /* renamed from: a */
        private C0049b m295a(long j) {
            C0049b c0049b;
            C0049b c0049b2 = null;
            int size = this.f227m.size() - 1;
            while (size >= 0) {
                long m450a = this.f227m.get(size).m450a();
                if (m450a < j) {
                    this.f227m.remove(size);
                    C0036c.this.f202b.remove(Integer.valueOf(size));
                    C0036c.m282b("Frame decode fail:" + m450a + "<" + j, 0);
                    c0049b = c0049b2;
                } else if (m450a == j) {
                    c0049b = this.f227m.get(size);
                    this.f227m.remove(size);
                } else {
                    c0049b = c0049b2;
                }
                size--;
                c0049b2 = c0049b;
            }
            return c0049b2;
        }

        /* renamed from: b */
        private long m297b() {
            this.f223i++;
            return this.f223i;
        }

        /* renamed from: c */
        private MediaFormat m298c(int i, int i2) {
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, i, i2);
            createVideoFormat.setInteger("frame-rate", 60);
            return createVideoFormat;
        }

        /* renamed from: d */
        private int m299d(int i, int i2) {
            try {
                this.f216b.stop();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
            this.f216b.release();
            MediaFormat m298c = m298c(i, i2);
            try {
                this.f216b = MediaCodec.createDecoderByType(MimeTypes.VIDEO_H264);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (this.f217c == null || !this.f217c.isValid()) {
                C0036c.m282b("surface is " + this.f217c, 0);
                return -1;
            }
            this.f216b.configure(m298c, this.f217c, (MediaCrypto) null, 0);
            this.f216b.start();
            return 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Can't wrap try/catch for region: R(11:6|(14:9|10|(3:12|13|168)|27|28|72|(2:75|73)|76|77|78|79|80|81|7)|166|72|(1:73)|76|77|78|79|80|81) */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0453, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0454, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:104:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0122 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0467 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x02f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01f1 A[LOOP:1: B:73:0x01eb->B:75:0x01f1, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01e1 A[SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1156
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.C0036c.a.run():void");
        }
    }
}
