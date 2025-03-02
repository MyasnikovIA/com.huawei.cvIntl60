package ThirdParty.Rtmp;

import GeneralFunction.C0052d;
import GeneralFunction.C0056e;
import GeneralFunction.C0076j;
import GeneralFunction.p003c.C0051d;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.util.Timer;
import java.util.TimerTask;
import p026a.p032c.C0121a;

/* renamed from: ThirdParty.Rtmp.a */
/* loaded from: classes.dex */
public class C0106a {

    /* renamed from: b */
    private static C0106a f777b = null;

    /* renamed from: c */
    private HandlerThread f780c;

    /* renamed from: d */
    private Handler f781d;

    /* renamed from: g */
    private int f784g;

    /* renamed from: h */
    private int f785h;

    /* renamed from: i */
    private int f786i;

    /* renamed from: j */
    private byte[] f787j;

    /* renamed from: k */
    private int f788k;

    /* renamed from: l */
    private int f789l;

    /* renamed from: m */
    private int f790m;

    /* renamed from: n */
    private int f791n;

    /* renamed from: a */
    public a f779a = null;

    /* renamed from: e */
    private String f782e = null;

    /* renamed from: f */
    private boolean f783f = false;

    /* renamed from: o */
    private int f792o = 0;

    /* renamed from: p */
    private int f793p = 0;

    /* renamed from: q */
    private int f794q = 0;

    /* renamed from: r */
    private int f795r = 0;

    /* renamed from: s */
    private long f796s = 0;

    /* renamed from: t */
    private int f797t = 0;

    /* renamed from: u */
    private int f798u = 0;

    /* renamed from: v */
    private Timer f799v = null;

    /* renamed from: w */
    private final C0076j f800w = new C0076j();

    /* renamed from: x */
    private boolean f801x = false;

    /* renamed from: y */
    private boolean f802y = false;

    /* renamed from: z */
    private byte[] f803z = {-34, 2, 0, 76, 97, 118, 99, 53, 54, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, 54, 48, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, 49, 48, 48, 0, 2, 48, 64, 14};

    /* renamed from: A */
    private byte[] f778A = {1, 24, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, 7};

    /* renamed from: ThirdParty.Rtmp.a$a */
    public interface a {
        /* renamed from: a */
        void mo780a(int i, int i2);
    }

    /* renamed from: n */
    static /* synthetic */ int m992n(C0106a c0106a) {
        int i = c0106a.f797t;
        c0106a.f797t = i - 1;
        return i;
    }

    /* renamed from: q */
    static /* synthetic */ int m995q(C0106a c0106a) {
        int i = c0106a.f793p;
        c0106a.f793p = i + 1;
        return i;
    }

    /* renamed from: r */
    static /* synthetic */ int m996r(C0106a c0106a) {
        int i = c0106a.f795r;
        c0106a.f795r = i + 1;
        return i;
    }

    /* renamed from: w */
    static /* synthetic */ int m1001w(C0106a c0106a) {
        int i = c0106a.f792o;
        c0106a.f792o = i + 1;
        return i;
    }

    /* renamed from: b */
    public static void m976b(String str, int i) {
        C0052d.m465a("RtmpStreamer", str, i);
    }

    private C0106a() {
    }

    /* renamed from: a */
    public static synchronized C0106a m966a() {
        C0106a c0106a;
        synchronized (C0106a.class) {
            if (f777b == null) {
                f777b = new C0106a();
            }
            c0106a = f777b;
        }
        return c0106a;
    }

    /* renamed from: a */
    public void m1003a(int i) {
        Message message = new Message();
        message.what = i;
        m1007a(message);
    }

    /* renamed from: a */
    public void m1007a(Message message) {
        int i = message.what;
        if (message.what == 8193) {
            if (this.f797t > 210) {
                m976b("[RTMP DEBUG] lPendingVideoMsg > lPendingVideoMsg:" + this.f797t, 0);
                this.f802y = true;
            }
            if (this.f802y) {
                if (C0056e.m478b(((C0051d) new C0121a(message).m1213f("streamVideoData").m1214a()).m454a()) && this.f797t <= 150) {
                    m976b("[RTMP DEBUG] bIsDropFrameMsg = false", 0);
                    this.f802y = false;
                } else {
                    return;
                }
            }
            if (this.f797t > this.f798u) {
                this.f798u = this.f797t;
                m976b("MaxPending:" + this.f798u, 1);
            }
            this.f800w.m739a();
            this.f797t++;
            this.f800w.m740b();
        }
        if (message.what == 8195) {
            this.f781d.sendMessageAtFrontOfQueue(message);
        } else {
            this.f781d.sendMessage(message);
        }
    }

    /* renamed from: a */
    public void m1005a(int i, int i2, int i3, byte[] bArr, int i4, int i5, int i6, int i7, String str) {
        this.f784g = i;
        this.f785h = i2;
        this.f786i = i3;
        if (bArr != null) {
            this.f787j = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f787j, 0, bArr.length);
        } else {
            this.f787j = null;
        }
        this.f788k = i4;
        this.f789l = i5;
        this.f790m = i6;
        this.f791n = i7;
        this.f782e = str;
        m979c();
    }

    /* renamed from: c */
    private void m979c() {
        this.f780c = new HandlerThread("rtmpStreamer");
        this.f780c.start();
        this.f781d = new Handler(this.f780c.getLooper()) { // from class: ThirdParty.Rtmp.a.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i;
                int i2 = 0;
                super.handleMessage(message);
                if (message.what != 8192 && message.what != 8195) {
                    C0106a.this.f799v = new Timer();
                    C0106a.this.f799v.scheduleAtFixedRate(new TimerTask() { // from class: ThirdParty.Rtmp.a.1.1
                        C18671() {
                        }

                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            C0106a.m976b("[RTMP DEBUG] Timer timeout...", 0);
                            if (C0106a.this.f799v != null) {
                                C0106a.this.f799v.cancel();
                            }
                            C0106a.this.f780c.interrupt();
                            C0106a.this.f780c.quit();
                            C0106a.this.m982d();
                            C0106a.this.f781d.removeCallbacksAndMessages(null);
                            C0106a.this.m969a(8193, -999);
                        }
                    }, 30000L, 30000L);
                }
                if (message.what != 8194 && message.what != 8193) {
                    C0106a.m976b("rtmpStreamerThread: 0x" + Integer.toHexString(message.what), 1);
                }
                switch (message.what) {
                    case 8192:
                        long currentTimeMillis = System.currentTimeMillis();
                        C0106a.this.f793p = 0;
                        C0106a.this.f792o = 0;
                        C0106a.this.f794q = 0;
                        C0106a.m976b("[TEST] init:" + C0106a.this.f784g + " " + C0106a.this.f785h + " " + C0106a.this.f786i + " " + C0106a.this.f787j + " " + C0106a.this.f788k + " " + C0106a.this.f789l + " " + C0106a.this.f790m + " " + C0106a.this.f791n, 0);
                        int i3 = C0106a.this.m977b(C0106a.this.f784g, C0106a.this.f785h, C0106a.this.f786i, C0106a.this.f787j, C0106a.this.f788k, C0106a.this.f789l, C0106a.this.f790m, C0106a.this.f791n) ? 0 : -1;
                        C0106a.m976b("rtmpInit spend: " + (System.currentTimeMillis() - currentTimeMillis), 0);
                        i2 = i3;
                        break;
                    case 8193:
                        C0106a.this.f800w.m739a();
                        C0106a.m992n(C0106a.this);
                        C0106a.this.f800w.m740b();
                        if (!C0106a.this.f783f) {
                            i2 = -1;
                            break;
                        } else {
                            if (C0106a.this.f797t >= 150) {
                                C0106a.m976b("[RTMP DEBUG] lPendingVideoMsg >= 150", 3);
                                C0106a.this.f801x = true;
                            }
                            C0121a c0121a = new C0121a(message);
                            if (c0121a.m1213f("streamVideoData") == null) {
                                C0106a.m976b("messageEx.getCustomData(STREAM_VIDEO_DATA_KEY) == null", 3);
                                i2 = -1;
                                break;
                            } else {
                                C0051d c0051d = (C0051d) c0121a.m1213f("streamVideoData").m1214a();
                                int i4 = c0051d.f469a;
                                byte[] m454a = c0051d.m454a();
                                int m1207b = c0121a.m1207b("streamVideoPts");
                                C0106a.m995q(C0106a.this);
                                C0106a.m996r(C0106a.this);
                                if (C0106a.this.f801x) {
                                    if (C0056e.m478b(m454a) && C0106a.this.f797t <= 120) {
                                        C0106a.m976b("[RTMP DEBUG] bIsDropFrame = false", 3);
                                        C0106a.this.f801x = false;
                                    }
                                }
                                long currentTimeMillis2 = System.currentTimeMillis();
                                int encodeVideoFrame = RtmpFunc.encodeVideoFrame(m454a, i4, m1207b);
                                C0106a.m976b("[TEST] encodeVideoFrame:" + C0106a.this.f793p + " " + encodeVideoFrame + " " + m1207b + " " + C0056e.m478b(m454a) + " " + i4, 4);
                                C0106a.this.f796s = (System.currentTimeMillis() - currentTimeMillis2) + C0106a.this.f796s;
                                if (C0106a.this.f795r % 30 == 0) {
                                    C0106a.m976b("Frame cost:" + C0106a.this.f795r + "," + C0106a.this.f796s + ",average:" + (C0106a.this.f796s / C0106a.this.f795r), 0);
                                }
                                if (encodeVideoFrame < 0) {
                                    i2 = encodeVideoFrame;
                                    break;
                                }
                            }
                        }
                        break;
                    case 8194:
                        if (!C0106a.this.f783f) {
                            i2 = -1;
                            break;
                        } else {
                            C0121a c0121a2 = new C0121a(message);
                            if (c0121a2.m1213f("streamAudioData") == null) {
                                C0106a.m976b("messageEx.getCustomData(STREAM_AAC_DATA_KEY) == null", 3);
                                i = -1;
                            } else {
                                C0051d c0051d2 = (C0051d) c0121a2.m1213f("streamAudioData").m1214a();
                                int i5 = c0051d2.f469a;
                                byte[] m454a2 = c0051d2.m454a();
                                int m1207b2 = c0121a2.m1207b("streamAudioPts");
                                C0106a.m1001w(C0106a.this);
                                i = C0106a.this.f801x ? 0 : RtmpFunc.encodeAudioFrame(m454a2, i5, m1207b2);
                                C0106a.m976b("[TEST] encodeAudioFrame:" + C0106a.this.f792o + " " + i + " " + m1207b2, 4);
                                if (i >= 0) {
                                    i = 0;
                                }
                            }
                            i2 = i;
                            break;
                        }
                    case 8195:
                        C0106a.m976b("BARRY MSG_LIVE_STREAMING_RTMP_STREAMER_DESTORY", 0);
                        if (C0106a.this.f783f) {
                            C0106a.this.m982d();
                            break;
                        }
                        break;
                    default:
                        i2 = -1;
                        break;
                }
                C0106a.this.m969a(message.what, i2);
                if (C0106a.this.f799v != null) {
                    C0106a.this.f799v.cancel();
                    C0106a.this.f799v = null;
                }
            }

            /* renamed from: ThirdParty.Rtmp.a$1$1 */
            class C18671 extends TimerTask {
                C18671() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    C0106a.m976b("[RTMP DEBUG] Timer timeout...", 0);
                    if (C0106a.this.f799v != null) {
                        C0106a.this.f799v.cancel();
                    }
                    C0106a.this.f780c.interrupt();
                    C0106a.this.f780c.quit();
                    C0106a.this.m982d();
                    C0106a.this.f781d.removeCallbacksAndMessages(null);
                    C0106a.this.m969a(8193, -999);
                }
            }
        };
    }

    /* renamed from: ThirdParty.Rtmp.a$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            int i2 = 0;
            super.handleMessage(message);
            if (message.what != 8192 && message.what != 8195) {
                C0106a.this.f799v = new Timer();
                C0106a.this.f799v.scheduleAtFixedRate(new TimerTask() { // from class: ThirdParty.Rtmp.a.1.1
                    C18671() {
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        C0106a.m976b("[RTMP DEBUG] Timer timeout...", 0);
                        if (C0106a.this.f799v != null) {
                            C0106a.this.f799v.cancel();
                        }
                        C0106a.this.f780c.interrupt();
                        C0106a.this.f780c.quit();
                        C0106a.this.m982d();
                        C0106a.this.f781d.removeCallbacksAndMessages(null);
                        C0106a.this.m969a(8193, -999);
                    }
                }, 30000L, 30000L);
            }
            if (message.what != 8194 && message.what != 8193) {
                C0106a.m976b("rtmpStreamerThread: 0x" + Integer.toHexString(message.what), 1);
            }
            switch (message.what) {
                case 8192:
                    long currentTimeMillis = System.currentTimeMillis();
                    C0106a.this.f793p = 0;
                    C0106a.this.f792o = 0;
                    C0106a.this.f794q = 0;
                    C0106a.m976b("[TEST] init:" + C0106a.this.f784g + " " + C0106a.this.f785h + " " + C0106a.this.f786i + " " + C0106a.this.f787j + " " + C0106a.this.f788k + " " + C0106a.this.f789l + " " + C0106a.this.f790m + " " + C0106a.this.f791n, 0);
                    int i3 = C0106a.this.m977b(C0106a.this.f784g, C0106a.this.f785h, C0106a.this.f786i, C0106a.this.f787j, C0106a.this.f788k, C0106a.this.f789l, C0106a.this.f790m, C0106a.this.f791n) ? 0 : -1;
                    C0106a.m976b("rtmpInit spend: " + (System.currentTimeMillis() - currentTimeMillis), 0);
                    i2 = i3;
                    break;
                case 8193:
                    C0106a.this.f800w.m739a();
                    C0106a.m992n(C0106a.this);
                    C0106a.this.f800w.m740b();
                    if (!C0106a.this.f783f) {
                        i2 = -1;
                        break;
                    } else {
                        if (C0106a.this.f797t >= 150) {
                            C0106a.m976b("[RTMP DEBUG] lPendingVideoMsg >= 150", 3);
                            C0106a.this.f801x = true;
                        }
                        C0121a c0121a = new C0121a(message);
                        if (c0121a.m1213f("streamVideoData") == null) {
                            C0106a.m976b("messageEx.getCustomData(STREAM_VIDEO_DATA_KEY) == null", 3);
                            i2 = -1;
                            break;
                        } else {
                            C0051d c0051d = (C0051d) c0121a.m1213f("streamVideoData").m1214a();
                            int i4 = c0051d.f469a;
                            byte[] m454a = c0051d.m454a();
                            int m1207b = c0121a.m1207b("streamVideoPts");
                            C0106a.m995q(C0106a.this);
                            C0106a.m996r(C0106a.this);
                            if (C0106a.this.f801x) {
                                if (C0056e.m478b(m454a) && C0106a.this.f797t <= 120) {
                                    C0106a.m976b("[RTMP DEBUG] bIsDropFrame = false", 3);
                                    C0106a.this.f801x = false;
                                }
                            }
                            long currentTimeMillis2 = System.currentTimeMillis();
                            int encodeVideoFrame = RtmpFunc.encodeVideoFrame(m454a, i4, m1207b);
                            C0106a.m976b("[TEST] encodeVideoFrame:" + C0106a.this.f793p + " " + encodeVideoFrame + " " + m1207b + " " + C0056e.m478b(m454a) + " " + i4, 4);
                            C0106a.this.f796s = (System.currentTimeMillis() - currentTimeMillis2) + C0106a.this.f796s;
                            if (C0106a.this.f795r % 30 == 0) {
                                C0106a.m976b("Frame cost:" + C0106a.this.f795r + "," + C0106a.this.f796s + ",average:" + (C0106a.this.f796s / C0106a.this.f795r), 0);
                            }
                            if (encodeVideoFrame < 0) {
                                i2 = encodeVideoFrame;
                                break;
                            }
                        }
                    }
                    break;
                case 8194:
                    if (!C0106a.this.f783f) {
                        i2 = -1;
                        break;
                    } else {
                        C0121a c0121a2 = new C0121a(message);
                        if (c0121a2.m1213f("streamAudioData") == null) {
                            C0106a.m976b("messageEx.getCustomData(STREAM_AAC_DATA_KEY) == null", 3);
                            i = -1;
                        } else {
                            C0051d c0051d2 = (C0051d) c0121a2.m1213f("streamAudioData").m1214a();
                            int i5 = c0051d2.f469a;
                            byte[] m454a2 = c0051d2.m454a();
                            int m1207b2 = c0121a2.m1207b("streamAudioPts");
                            C0106a.m1001w(C0106a.this);
                            i = C0106a.this.f801x ? 0 : RtmpFunc.encodeAudioFrame(m454a2, i5, m1207b2);
                            C0106a.m976b("[TEST] encodeAudioFrame:" + C0106a.this.f792o + " " + i + " " + m1207b2, 4);
                            if (i >= 0) {
                                i = 0;
                            }
                        }
                        i2 = i;
                        break;
                    }
                case 8195:
                    C0106a.m976b("BARRY MSG_LIVE_STREAMING_RTMP_STREAMER_DESTORY", 0);
                    if (C0106a.this.f783f) {
                        C0106a.this.m982d();
                        break;
                    }
                    break;
                default:
                    i2 = -1;
                    break;
            }
            C0106a.this.m969a(message.what, i2);
            if (C0106a.this.f799v != null) {
                C0106a.this.f799v.cancel();
                C0106a.this.f799v = null;
            }
        }

        /* renamed from: ThirdParty.Rtmp.a$1$1 */
        class C18671 extends TimerTask {
            C18671() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                C0106a.m976b("[RTMP DEBUG] Timer timeout...", 0);
                if (C0106a.this.f799v != null) {
                    C0106a.this.f799v.cancel();
                }
                C0106a.this.f780c.interrupt();
                C0106a.this.f780c.quit();
                C0106a.this.m982d();
                C0106a.this.f781d.removeCallbacksAndMessages(null);
                C0106a.this.m969a(8193, -999);
            }
        }
    }

    /* renamed from: b */
    public boolean m977b(int i, int i2, int i3, byte[] bArr, int i4, int i5, int i6, int i7) {
        m976b("[TEST] rtmpInit:" + this.f782e, 0);
        m976b("RtmpFunc JNI ver. " + RtmpFunc.getVersion(), 3);
        this.f783f = RtmpFunc.init(this.f782e);
        return this.f783f;
    }

    /* renamed from: d */
    public void m982d() {
        m976b("BARRY rtmpDestory()", 3);
        RtmpFunc.shutdown();
        this.f783f = false;
        this.f795r = 0;
        this.f796s = 0L;
        this.f801x = false;
        this.f797t = 0;
        if (this.f799v != null) {
            this.f799v.cancel();
            this.f799v = null;
        }
    }

    /* renamed from: a */
    public void m1004a(int i, int i2, int i3, byte[] bArr, int i4, int i5, int i6, int i7) {
        this.f784g = i;
        this.f785h = i2;
        this.f786i = i3;
        if (bArr != null) {
            this.f787j = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f787j, 0, bArr.length);
        } else {
            this.f787j = null;
        }
        this.f788k = i4;
        this.f789l = i5;
        this.f790m = i6;
        this.f791n = i7;
    }

    /* renamed from: b */
    public boolean m1008b() {
        return this.f783f;
    }

    /* renamed from: a */
    public void m969a(int i, int i2) {
        if (this.f779a != null) {
            this.f779a.mo780a(i, i2);
        } else {
            m976b("No register rtmpStreamerOnResultHandler!", 0);
        }
    }

    /* renamed from: a */
    public void m1006a(a aVar) {
        this.f779a = aVar;
    }
}
