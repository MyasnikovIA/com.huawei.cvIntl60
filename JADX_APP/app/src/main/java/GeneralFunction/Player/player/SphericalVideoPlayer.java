package GeneralFunction.Player.player;

import GeneralFunction.Player.p000a.C0013a;
import GeneralFunction.Player.p000a.C0014b;
import GeneralFunction.Player.p000a.C0017e;
import GeneralFunction.Player.player.C0039f;
import GeneralFunction.p003c.C0051d;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import java.io.IOException;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import ui_Controller.p110b.C1662d;

/* loaded from: classes.dex */
public class SphericalVideoPlayer extends TextureView implements TextureView.SurfaceTextureListener, MediaController.MediaPlayerControl {

    /* renamed from: b */
    private static final String f132b = SphericalVideoPlayer.class.getSimpleName();

    /* renamed from: A */
    private C0042i f133A;

    /* renamed from: B */
    private int f134B;

    /* renamed from: C */
    private int f135C;

    /* renamed from: D */
    private Surface f136D;

    /* renamed from: a */
    protected IjkMediaPlayer f137a;

    /* renamed from: c */
    private C0041h f138c;

    /* renamed from: d */
    private int f139d;

    /* renamed from: e */
    private int f140e;

    /* renamed from: f */
    private boolean f141f;

    /* renamed from: g */
    private boolean f142g;

    /* renamed from: h */
    private boolean f143h;

    /* renamed from: i */
    private boolean f144i;

    /* renamed from: j */
    private boolean f145j;

    /* renamed from: k */
    private boolean f146k;

    /* renamed from: l */
    private int f147l;

    /* renamed from: m */
    private int f148m;

    /* renamed from: n */
    private final String f149n;

    /* renamed from: o */
    private C0038e f150o;

    /* renamed from: p */
    private C0036c f151p;

    /* renamed from: q */
    private C0037d f152q;

    /* renamed from: r */
    private HandlerThreadC0033g f153r;

    /* renamed from: s */
    private String f154s;

    /* renamed from: t */
    private long f155t;

    /* renamed from: u */
    private SurfaceTexture f156u;

    /* renamed from: v */
    private InterfaceC0032f f157v;

    /* renamed from: w */
    private InterfaceC0030d f158w;

    /* renamed from: x */
    private InterfaceC0031e f159x;

    /* renamed from: y */
    private InterfaceC0027a f160y;

    /* renamed from: z */
    private C0039f f161z;

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$a */
    public interface InterfaceC0027a {
        /* renamed from: a */
        void mo229a();

        /* renamed from: a */
        void mo230a(int i);
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$b */
    public interface InterfaceC0028b {
        /* renamed from: a */
        void mo221a(Message message);

        /* renamed from: a */
        void mo222a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo223b(Message message);

        /* renamed from: c */
        void mo224c(Message message);

        /* renamed from: d */
        void mo225d(Message message);

        /* renamed from: e */
        void mo226e(Message message);
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$c */
    public interface InterfaceC0029c {
        /* renamed from: a */
        void mo228a(Message message);
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$d */
    public interface InterfaceC0030d {
        /* renamed from: a */
        void mo231a(MotionEvent motionEvent);
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$e */
    public interface InterfaceC0031e {
        /* renamed from: a */
        void m232a();
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$f */
    public interface InterfaceC0032f {
        /* renamed from: a */
        void mo233a(int i);
    }

    /* renamed from: b */
    public static void m171b(String str, int i) {
        C0035b.m274a(f132b, str, i);
    }

    public void setViewType(int i) {
        if (this != null) {
            Message obtain = Message.obtain();
            obtain.what = 10;
            obtain.obj = Integer.valueOf(i);
            m159a(obtain);
        }
    }

    public void setViewMode(int i) {
        if (this.f138c.f365b == i) {
            m171b("already same viewMode", 2);
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 13;
        obtain.obj = Integer.valueOf(i);
        m159a(obtain);
    }

    /* renamed from: a */
    public void m194a() {
        Message obtain = Message.obtain();
        obtain.what = 22;
        m159a(obtain);
    }

    public void setIsShowThumbNail(boolean z) {
        if (this != null) {
            this.f143h = z;
            m171b("isShow:" + z, 3);
            Message obtain = Message.obtain();
            obtain.what = 14;
            obtain.obj = Boolean.valueOf(z);
            m159a(obtain);
        }
    }

    /* renamed from: a */
    public void m196a(int i, int i2) {
        m171b("OrientationChange:" + i + " " + i2, 3);
    }

    public C0041h getSphericalParameter() {
        return this.f138c;
    }

    public void setSphericalParameter(C0041h c0041h) {
        Message obtain = Message.obtain();
        obtain.what = 21;
        obtain.obj = c0041h;
        m159a(obtain);
    }

    /* renamed from: b */
    public void m202b() {
        Message obtain = Message.obtain();
        obtain.what = 20;
        m159a(obtain);
    }

    /* renamed from: p */
    private void m189p() {
        Message obtain = Message.obtain();
        obtain.what = 24;
        m159a(obtain);
    }

    public void setPlayerStatusListener(InterfaceC0032f interfaceC0032f) {
        this.f157v = interfaceC0032f;
    }

    public void setPlayerDrawFirstFrameListener(InterfaceC0031e interfaceC0031e) {
        this.f159x = interfaceC0031e;
    }

    public void setOnClickListener(InterfaceC0030d interfaceC0030d) {
        this.f158w = interfaceC0030d;
    }

    public void setEnable(boolean z) {
        this.f141f = z;
        this.f142g = z;
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.f141f;
    }

    public void setZoomInEnable(boolean z) {
        this.f142g = z;
    }

    /* renamed from: c */
    public boolean m208c() {
        return this.f142g;
    }

    /* renamed from: d */
    public void m175d(int i) {
        if (this.f157v != null) {
            this.f157v.mo233a(i);
        }
    }

    /* renamed from: d */
    public int m209d() {
        return this.f139d;
    }

    /* renamed from: a */
    public void m195a(int i) {
        this.f139d = i;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (this.f138c.f376m == 1 && this.f137a != null) {
            m195a(2);
            m175d(2);
            if (this.f146k) {
                this.f137a.setVolume(1.0f, 1.0f);
            } else {
                this.f137a.setVolume(0.0f, 0.0f);
            }
            this.f137a.start();
            if (this.f150o != null) {
                this.f150o.m361b(true);
            }
        }
    }

    /* renamed from: e */
    public void m210e() {
        if (this.f138c.f376m == 1 && this.f137a != null) {
            this.f150o.m355a(3);
            this.f137a.start();
            if (this.f146k) {
                this.f137a.setVolume(1.0f, 1.0f);
            } else {
                this.f137a.setVolume(0.0f, 0.0f);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (this.f138c.f376m == 1 && this.f137a != null && this.f137a.isPlaying()) {
            this.f137a.pause();
            this.f137a.setVolume(0.0f, 0.0f);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (this.f138c.f376m != 1 || this.f137a == null) {
            return 0;
        }
        return (int) this.f137a.getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (this.f138c.f376m != 1 || this.f137a == null) {
            return 0;
        }
        if (this.f137a.getDuration() != this.f137a.getCurrentPosition()) {
            return (int) this.f137a.getCurrentPosition();
        }
        return (int) this.f137a.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        if (this.f138c.f376m == 1 && this.f137a != null) {
            try {
                this.f137a.seekTo(i);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        if (this.f138c.f376m != 1 || this.f137a == null) {
            return false;
        }
        return this.f137a.isPlaying();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f138c.f376m != 1 || this.f137a == null || this.f137a.getDuration() == 0) {
            return 0;
        }
        return (((((int) this.f137a.getCurrentPosition()) * 100) / ((int) this.f137a.getDuration())) / 2) * 2;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m171b("motionStrategy unregisterSensor", 3);
        if (this.f161z != null) {
            this.f161z.m373a();
            this.f161z = null;
        }
    }

    public SphericalVideoPlayer(Context context) {
        this(context, null);
        setSurfaceTextureListener(this);
    }

    public SphericalVideoPlayer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        setSurfaceTextureListener(this);
    }

    public SphericalVideoPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f138c = new C0041h();
        this.f139d = 0;
        this.f140e = 30;
        this.f141f = true;
        this.f142g = true;
        this.f143h = false;
        this.f144i = true;
        this.f145j = false;
        this.f146k = true;
        this.f147l = 1920;
        this.f148m = 960;
        this.f149n = null;
        this.f157v = null;
        this.f158w = null;
        this.f159x = null;
        this.f160y = null;
        this.f161z = null;
        this.f134B = 0;
        this.f135C = 0;
        this.f136D = null;
        setSurfaceTextureListener(this);
        this.f138c.m386a(context);
        m195a(0);
        this.f150o = new C0038e(context, this);
        this.f150o.setMediaPlayer(this);
        this.f150o.setAnchorView(this);
        this.f150o.setEnabled(true);
        this.f150o.m357a(C1662d.m7093a().m7096b());
        this.f133A = new C0042i(context);
        this.f133A.m399a(new InterfaceC0028b() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.1
            C00181() {
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: a */
            public void mo221a(Message message) {
                SphericalVideoPlayer.this.m159a(message);
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: b */
            public void mo223b(Message message) {
                if (SphericalVideoPlayer.this.isEnabled()) {
                    SphericalVideoPlayer.this.m159a(message);
                }
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: a */
            public void mo222a(MotionEvent motionEvent) {
                if (SphericalVideoPlayer.this.f158w != null) {
                    SphericalVideoPlayer.this.f158w.mo231a(motionEvent);
                    if (SphericalVideoPlayer.this.f138c.f376m == 1) {
                        motionEvent.getAction();
                    }
                }
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: c */
            public void mo224c(Message message) {
                SphericalVideoPlayer.this.m159a(message);
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: d */
            public void mo225d(Message message) {
                if (SphericalVideoPlayer.this.m208c()) {
                    SphericalVideoPlayer.this.m159a(message);
                }
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
            /* renamed from: e */
            public void mo226e(Message message) {
                SphericalVideoPlayer.this.m159a(message);
            }
        });
        this.f133A.m400a(this.f138c, this.f153r);
        setOnTouchListener(new View.OnTouchListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.2
            ViewOnTouchListenerC00192() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return SphericalVideoPlayer.this.f133A.m401a(motionEvent);
            }
        });
        if (this.f161z == null) {
            m171b("motionStrategy registerSensor", 3);
            this.f161z = new C0039f();
            this.f161z.m375a(getContext(), this.f138c);
            this.f161z.m374a(new C0039f.c() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.3
                C00203() {
                }

                @Override // GeneralFunction.Player.player.C0039f.c
                /* renamed from: a */
                public void mo227a(Message message) {
                    if (SphericalVideoPlayer.this.f153r != null) {
                        SphericalVideoPlayer.this.m159a(message);
                    }
                }
            });
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$1 */
    class C00181 implements InterfaceC0028b {
        C00181() {
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: a */
        public void mo221a(Message message) {
            SphericalVideoPlayer.this.m159a(message);
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: b */
        public void mo223b(Message message) {
            if (SphericalVideoPlayer.this.isEnabled()) {
                SphericalVideoPlayer.this.m159a(message);
            }
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: a */
        public void mo222a(MotionEvent motionEvent) {
            if (SphericalVideoPlayer.this.f158w != null) {
                SphericalVideoPlayer.this.f158w.mo231a(motionEvent);
                if (SphericalVideoPlayer.this.f138c.f376m == 1) {
                    motionEvent.getAction();
                }
            }
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: c */
        public void mo224c(Message message) {
            SphericalVideoPlayer.this.m159a(message);
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: d */
        public void mo225d(Message message) {
            if (SphericalVideoPlayer.this.m208c()) {
                SphericalVideoPlayer.this.m159a(message);
            }
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0028b
        /* renamed from: e */
        public void mo226e(Message message) {
            SphericalVideoPlayer.this.m159a(message);
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$2 */
    class ViewOnTouchListenerC00192 implements View.OnTouchListener {
        ViewOnTouchListenerC00192() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return SphericalVideoPlayer.this.f133A.m401a(motionEvent);
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$3 */
    class C00203 implements C0039f.c {
        C00203() {
        }

        @Override // GeneralFunction.Player.player.C0039f.c
        /* renamed from: a */
        public void mo227a(Message message) {
            if (SphericalVideoPlayer.this.f153r != null) {
                SphericalVideoPlayer.this.m159a(message);
            }
        }
    }

    /* renamed from: a */
    public void m201a(boolean z) {
        this.f144i = z;
    }

    /* renamed from: f */
    public void m211f() {
        if (this.f153r == null) {
            this.f153r = new HandlerThreadC0033g("360RenderThread");
            this.f153r.start();
        }
    }

    /* renamed from: g */
    public int m212g() {
        m171b("Play:" + m209d(), 3);
        if (m209d() != 1) {
            m171b("Invalid operation in status:" + m209d(), 0);
            return -1;
        }
        if (this.f138c.f376m == 0) {
            m171b("Invalid operation in mode:" + this.f138c.f376m, 0);
            return -1;
        }
        SurfaceTexture surfaceTexture = this.f156u;
        m171b("[Video Player]Play:" + surfaceTexture, 2);
        if (surfaceTexture != null) {
            m200a(surfaceTexture, this.f138c.f378o, this.f138c.f379p);
        }
        return 0;
    }

    /* renamed from: q */
    public void m191q() {
        this.f152q = new C0037d();
        this.f152q.m308a(this.f140e, this.f153r);
        this.f152q.m309a(new InterfaceC0029c() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.4
            C00214() {
            }

            @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0029c
            /* renamed from: a */
            public void mo228a(Message message) {
                SphericalVideoPlayer.this.m159a(message);
            }
        });
        m171b("MJPGThread is start", 3);
        m195a(2);
        m175d(2);
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$4 */
    class C00214 implements InterfaceC0029c {
        C00214() {
        }

        @Override // GeneralFunction.Player.player.SphericalVideoPlayer.InterfaceC0029c
        /* renamed from: a */
        public void mo228a(Message message) {
            SphericalVideoPlayer.this.m159a(message);
        }
    }

    /* renamed from: r */
    public void m192r() {
        Log.e(f132b, "livePlay++++");
        this.f151p = new C0036c();
        this.f151p.m291a(this.f153r.m235a(), this.f147l, this.f148m, this.f140e);
        m195a(2);
        m175d(2);
    }

    /* renamed from: a */
    public void m167a(String str) {
        if (this.f153r == null) {
            throw new IllegalStateException("RenderThread has not been initialized");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("Cannot begin playback: video path is empty");
        }
        this.f137a = new IjkMediaPlayer();
        this.f137a.setOption(4, "mediacodec", 1L);
        this.f137a.setOption(4, "mediacodec-handle-resolution-change", 1L);
        this.f137a.setOption(4, "mediacodec-avc", 1L);
        this.f137a.setOption(4, "start-on-prepared", 1L);
        this.f137a.setLogEnabled(false);
        this.f137a.setKeepInBackground(true);
        this.f137a.setVolume(0.0f, 0.0f);
        Surface m235a = this.f153r.m235a();
        if (m235a.isValid()) {
            this.f137a.setSurface(m235a);
        } else {
            m171b("is fail Surface", 1);
        }
        this.f137a.setAudioStreamType(3);
        try {
            this.f137a.setDataSource(getContext(), Uri.parse(str), (Map<String, String>) null);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.f137a.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.5
            C00225() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                SphericalVideoPlayer.m171b("ijkplayer+++++++onPreparedListener:" + iMediaPlayer.isPlaying(), 1);
            }
        });
        this.f137a.setOnErrorListener(new IMediaPlayer.OnErrorListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.6
            C00236() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
                SphericalVideoPlayer.m171b("ijkplayer+++++++onError:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 1);
                return false;
            }
        });
        this.f137a.setOnInfoListener(new IMediaPlayer.OnInfoListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.7
            C00247() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
                SphericalVideoPlayer.m171b("+++++++++OnInfoListener:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 3);
                switch (i) {
                    case 3:
                        if (!iMediaPlayer.isPlaying()) {
                            SphericalVideoPlayer.this.m202b();
                            break;
                        }
                        break;
                    case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                        if (!iMediaPlayer.isPlaying()) {
                            SphericalVideoPlayer.this.m202b();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        this.f137a.setOnBufferingUpdateListener(new IMediaPlayer.OnBufferingUpdateListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.8
            C00258() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
            }
        });
        this.f137a.prepareAsync();
        this.f145j = true;
        this.f137a.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.9
            C00269() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                SphericalVideoPlayer.this.f150o.m361b(false);
                SphericalVideoPlayer.this.f137a.pause();
                SphericalVideoPlayer.this.f137a.setVolume(0.0f, 0.0f);
                try {
                    Thread.sleep(25L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                SphericalVideoPlayer.this.m195a(2);
                SphericalVideoPlayer.this.m175d(3);
            }
        });
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$5 */
    class C00225 implements IMediaPlayer.OnPreparedListener {
        C00225() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            SphericalVideoPlayer.m171b("ijkplayer+++++++onPreparedListener:" + iMediaPlayer.isPlaying(), 1);
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$6 */
    class C00236 implements IMediaPlayer.OnErrorListener {
        C00236() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
            SphericalVideoPlayer.m171b("ijkplayer+++++++onError:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 1);
            return false;
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$7 */
    class C00247 implements IMediaPlayer.OnInfoListener {
        C00247() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
        public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
            SphericalVideoPlayer.m171b("+++++++++OnInfoListener:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 3);
            switch (i) {
                case 3:
                    if (!iMediaPlayer.isPlaying()) {
                        SphericalVideoPlayer.this.m202b();
                        break;
                    }
                    break;
                case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                    if (!iMediaPlayer.isPlaying()) {
                        SphericalVideoPlayer.this.m202b();
                        break;
                    }
                    break;
            }
            return false;
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$8 */
    class C00258 implements IMediaPlayer.OnBufferingUpdateListener {
        C00258() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
        }
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$9 */
    class C00269 implements IMediaPlayer.OnCompletionListener {
        C00269() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(IMediaPlayer iMediaPlayer) {
            SphericalVideoPlayer.this.f150o.m361b(false);
            SphericalVideoPlayer.this.f137a.pause();
            SphericalVideoPlayer.this.f137a.setVolume(0.0f, 0.0f);
            try {
                Thread.sleep(25L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            SphericalVideoPlayer.this.m195a(2);
            SphericalVideoPlayer.this.m175d(3);
        }
    }

    /* renamed from: b */
    public void m203b(int i) {
        this.f150o.m359b(i);
    }

    /* renamed from: h */
    public void m213h() {
        this.f150o.m354a();
    }

    /* renamed from: s */
    public void m193s() {
        if (!this.f137a.isPlaying()) {
            this.f137a.start();
        }
        m195a(2);
        m175d(2);
    }

    /* renamed from: a */
    public void m200a(SurfaceTexture surfaceTexture, int i, int i2) {
        m171b("----StartPlay---", 3);
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = surfaceTexture;
        obtain.arg1 = i;
        obtain.arg2 = i2;
        m159a(obtain);
    }

    /* renamed from: a */
    public void m198a(C0051d c0051d, int i, int i2) {
        if (i != this.f147l || i2 != this.f148m) {
            this.f147l = i;
            this.f148m = i2;
            Message obtain = Message.obtain();
            obtain.what = 11;
            obtain.arg1 = this.f147l;
            obtain.arg2 = this.f148m;
            m159a(obtain);
        }
        this.f155t = System.currentTimeMillis();
        if (m209d() == 2) {
            this.f151p.m290a(c0051d, i, i2);
        } else {
            m171b("360 Player can't receive Buffer", 0);
        }
    }

    /* renamed from: a */
    public void m199a(Bitmap bitmap, int i, boolean z) {
        this.f155t = System.currentTimeMillis();
        if (bitmap == null) {
            Log.e(f132b, "bitmap is null");
        }
        if (m209d() == 2) {
            if (this.f152q != null) {
                this.f152q.m310a(bitmap, i, z);
                return;
            }
            return;
        }
        m171b("360 Player can't receive Bitmap ", 0);
    }

    /* renamed from: i */
    public void m214i() {
        m173c(false);
    }

    /* renamed from: c */
    private void m173c(boolean z) {
        m171b("releaseResources " + z, 3);
        this.f136D = null;
        if (this.f153r != null) {
            Message message = new Message();
            message.what = 4;
            message.obj = Boolean.valueOf(z);
            m159a(message);
        }
    }

    public void setVideoFilePath(String str) {
        this.f154s = str;
    }

    /* renamed from: j */
    public int m215j() {
        if (m209d() != 2) {
            m171b("Invalid operation(flushDecoder) in status:" + m209d(), 0);
            return -1;
        }
        switch (this.f138c.f376m) {
            case 2:
                this.f151p.m288a();
                return 0;
            default:
                m171b("playerFormat not handle flushDecoder:" + this.f138c.f376m, 0);
                return -2;
        }
    }

    /* renamed from: k */
    public int m216k() {
        if (m209d() != 2) {
            m171b("Invalid operation in status:" + m209d(), 0);
            return -1;
        }
        switch (this.f138c.f376m) {
            case 1:
                if (this.f137a == null) {
                    m171b("objMediaPlayerInternal is null:", 0);
                    break;
                } else if (this.f137a.isPlaying()) {
                    this.f137a.pause();
                    break;
                }
                break;
            case 2:
                this.f151p.m292b();
                m189p();
                break;
            case 3:
                this.f152q.m306a();
                if (this.f137a != null) {
                    this.f137a.pause();
                    break;
                }
                break;
        }
        m195a(4);
        m175d(4);
        return 0;
    }

    /* renamed from: l */
    public int m217l() {
        if (m209d() != 4) {
            m171b("Invalid operation in status:" + m209d(), 0);
            return -1;
        }
        switch (this.f138c.f376m) {
            case 1:
                this.f137a.start();
                break;
            case 2:
                this.f151p.m293c();
                break;
            case 3:
                this.f152q.m311b();
                if (this.f137a != null) {
                    this.f137a.start();
                    break;
                }
                break;
        }
        m195a(2);
        m175d(2);
        return 0;
    }

    public void setFrameRate(int i) {
        this.f140e = i;
        switch (this.f138c.f376m) {
            case 2:
                this.f151p.m289a(i);
                break;
            case 3:
                this.f152q.m307a(i);
                break;
        }
    }

    /* renamed from: b */
    public void m204b(int i, int i2) {
        this.f147l = i;
        this.f148m = i2;
        Message obtain = Message.obtain();
        obtain.what = 11;
        obtain.arg1 = this.f147l;
        obtain.arg2 = this.f148m;
        m159a(obtain);
    }

    public void setVideoAutoPlay(boolean z) {
        this.f138c.f377n = z;
    }

    public void setPlayerMode(int i) {
        if (i < 4) {
            this.f138c.f376m = i;
        } else {
            m171b("Not support player mode:" + i, 0);
        }
    }

    public int getPlayerMode() {
        return this.f138c.f376m;
    }

    public void setInteractiveMode(int i) {
        if (this.f138c.f382s == i) {
            m171b("setInteractiveMode is the same:" + i, 3);
        }
        Message obtain = Message.obtain();
        obtain.what = 9;
        obtain.arg1 = i;
        m159a(obtain);
    }

    public int getInteractiveMode() {
        return this.f138c.f382s;
    }

    public int getViewType() {
        return this.f138c.f331a;
    }

    /* renamed from: b */
    public void m206b(boolean z) {
        this.f146k = z;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f134B++;
        m171b("[PLAYER]onSurfaceTextureAvailable:" + i + "x" + i2 + "surfaceAvailableCount" + this.f134B + " " + this.f138c.f376m, 3);
        this.f138c.f378o = i;
        this.f138c.f379p = i2;
        this.f156u = surfaceTexture;
        if (this.f138c.f376m == 2) {
            Message obtain = Message.obtain();
            obtain.what = 26;
            m159a(obtain);
        } else if (this.f138c.f376m != 0) {
            Message obtain2 = Message.obtain();
            obtain2.what = 26;
            m159a(obtain2);
        } else {
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            m195a(1);
            m175d(1);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        m171b("[PLAYER]onSurfaceTextureSizeChanged:" + i + "x" + i2, 3);
        if (this.f138c.f376m != 2) {
            this.f138c.f378o = i;
            this.f138c.f379p = i2;
            m202b();
            m202b();
            return;
        }
        this.f138c.f378o = i;
        this.f138c.f379p = i2;
        Message obtain = Message.obtain();
        obtain.what = 16;
        m159a(obtain);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f135C++;
        this.f156u = null;
        m171b("[PLAYER]onSurfaceTextureDestroyed surfaceDestoryCount" + this.f135C, 1);
        m171b("GetPlayerStatus()" + m209d(), 3);
        if (m209d() != 0 && m209d() != 5) {
            m173c(true);
            return false;
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    /* renamed from: a */
    public int m159a(Message message) {
        if (this.f153r != null) {
            this.f153r.m273a(message);
            return 0;
        }
        m171b("objRenderThread is null! " + message.what, 0);
        return -1;
    }

    public int getMediaControllerHeight() {
        return this.f150o.getHeight();
    }

    public void setMediaControllerHide(boolean z) {
        this.f150o.setControllerHide(z);
    }

    /* renamed from: m */
    public void m218m() {
        this.f150o.m362c();
    }

    /* renamed from: n */
    public void m219n() {
        this.f150o.m364d();
    }

    /* renamed from: a */
    public void m197a(int i, boolean z) {
        this.f150o.m356a(i, z);
    }

    /* renamed from: b */
    public void m205b(int i, boolean z) {
        this.f150o.m360b(i, z);
    }

    /* renamed from: c */
    protected void m207c(int i) {
        switch (i) {
            case 0:
                m177e(0);
                break;
            case 1:
                m177e(1);
                break;
            case 2:
                m177e(2);
                break;
            case 3:
                m177e(3);
                break;
            case 4:
                m177e(4);
                break;
            case 5:
                m177e(5);
                break;
        }
    }

    public void setAdditionalButtonCallback(InterfaceC0027a interfaceC0027a) {
        this.f160y = interfaceC0027a;
    }

    /* renamed from: e */
    private void m177e(int i) {
        if (this.f160y != null) {
            m171b("AdditionalButtonClick:" + i, 3);
            this.f160y.mo230a(i);
            m220o();
        }
    }

    /* renamed from: o */
    protected void m220o() {
        if (this.f160y != null) {
            m171b("UserInteraction:", 3);
            this.f160y.mo229a();
        }
    }

    public String getMatrixText() {
        String str = "";
        float[] fArr = new float[9];
        getMatrix().getValues(fArr);
        for (float f : fArr) {
            str = str + " " + f;
        }
        return str;
    }

    /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$g */
    public class HandlerThreadC0033g extends HandlerThread {

        /* renamed from: b */
        private Handler f172b;

        /* renamed from: c */
        private Choreographer.FrameCallback f173c;

        /* renamed from: d */
        private C0013a f174d;

        /* renamed from: e */
        private SurfaceTexture f175e;

        /* renamed from: f */
        private int f176f;

        /* renamed from: g */
        private int f177g;

        /* renamed from: h */
        private int f178h;

        /* renamed from: i */
        private int f179i;

        /* renamed from: j */
        private float[] f180j;

        /* renamed from: k */
        private float[] f181k;

        /* renamed from: l */
        private float[] f182l;

        /* renamed from: m */
        private float[] f183m;

        /* renamed from: n */
        private boolean f184n;

        /* renamed from: o */
        private boolean f185o;

        /* renamed from: p */
        private boolean f186p;

        /* renamed from: q */
        private boolean f187q;

        /* renamed from: r */
        private boolean f188r;

        /* renamed from: s */
        private boolean f189s;

        /* renamed from: t */
        private C0017e f190t;

        /* renamed from: u */
        private int f191u;

        /* renamed from: v */
        private long f192v;

        /* renamed from: w */
        private long f193w;

        /* renamed from: a */
        public int m273a(Message message) {
            if (this.f172b == null) {
                return -1;
            }
            this.f172b.sendMessage(message);
            return 0;
        }

        /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$g$a */
        private class a implements Choreographer.FrameCallback {
            private a() {
            }

            /* synthetic */ a(HandlerThreadC0033g handlerThreadC0033g, C00181 c00181) {
                this();
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                HandlerThreadC0033g.this.m273a(obtain);
            }
        }

        public HandlerThreadC0033g(String str) {
            super(str);
            this.f173c = new a();
            this.f176f = -1;
            this.f177g = 0;
            this.f178h = 1;
            this.f179i = 1;
            this.f180j = new float[16];
            this.f181k = new float[16];
            this.f182l = new float[16];
            this.f183m = new float[16];
            this.f185o = false;
            this.f186p = true;
            this.f187q = false;
            this.f188r = false;
            this.f189s = false;
            this.f191u = 0;
            this.f192v = 0L;
            this.f193w = 0L;
            this.f174d = new C0013a();
        }

        @Override // java.lang.Thread
        public synchronized void start() {
            super.start();
            this.f172b = new Handler(getLooper()) { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.g.1
                AnonymousClass1(Looper looper) {
                    super(looper);
                }

                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    switch (message.what) {
                        case 1:
                            HandlerThreadC0033g.this.m246a((SurfaceTexture) message.obj, message.arg1, message.arg2);
                            break;
                        case 2:
                            HandlerThreadC0033g.this.m259d();
                            break;
                        case 3:
                            HandlerThreadC0033g.this.m270h();
                            break;
                        case 4:
                            SphericalVideoPlayer.this.m195a(0);
                            SphericalVideoPlayer.this.m175d(0);
                            HandlerThreadC0033g.this.m247a(((Boolean) message.obj).booleanValue());
                            break;
                        case 5:
                            HandlerThreadC0033g.this.m244a((C0040g) message.obj);
                            break;
                        case 6:
                            if (SphericalVideoPlayer.this.f138c.f331a != 6) {
                                HandlerThreadC0033g.this.m237a(((Float) message.obj).floatValue(), false);
                                break;
                            }
                            break;
                        case 7:
                            SphericalVideoPlayer.this.f138c.f389z = (float[]) ((float[]) message.obj).clone();
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        case 8:
                            SphericalVideoPlayer.m171b("MSG_ON_RECEIVE_BITMAP", 3);
                            C0034a c0034a = (C0034a) message.obj;
                            HandlerThreadC0033g.this.f177g = c0034a.f199b;
                            HandlerThreadC0033g.this.m245a(c0034a.f198a);
                            HandlerThreadC0033g.this.f187q = c0034a.f200c;
                            break;
                        case 9:
                            SphericalVideoPlayer.this.f138c.f382s = message.arg1;
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        case 10:
                            if (this != null) {
                                HandlerThreadC0033g.this.m238a(((Integer) message.obj).intValue());
                                SphericalVideoPlayer.this.f138c.f388y = true;
                                break;
                            }
                            break;
                        case 11:
                            SphericalVideoPlayer.m171b("MSG_UPDATE_TEXTURE_SIZE:" + message.arg1 + " " + message.arg2, 2);
                            if (SphericalVideoPlayer.this.f138c.f376m == 1) {
                                HandlerThreadC0033g.this.f177g = 0;
                            }
                            HandlerThreadC0033g.this.f178h = message.arg1;
                            HandlerThreadC0033g.this.f179i = message.arg2;
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            HandlerThreadC0033g.this.f184n = true;
                            break;
                        case 12:
                            HandlerThreadC0033g.this.m237a(0.0f, true);
                            break;
                        case 13:
                            SphericalVideoPlayer.this.f138c.f365b = ((Integer) message.obj).intValue();
                            HandlerThreadC0033g.this.m250b(SphericalVideoPlayer.this.f138c.f365b);
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        case 14:
                            if (this != null) {
                                HandlerThreadC0033g.this.f185o = ((Boolean) message.obj).booleanValue();
                                SphericalVideoPlayer.this.f138c.f388y = true;
                                break;
                            }
                            break;
                        case 15:
                            if (SphericalVideoPlayer.this.f138c.f331a != 6) {
                                HandlerThreadC0033g.this.m272j();
                                SphericalVideoPlayer.this.f138c.f388y = true;
                                break;
                            }
                            break;
                        case 16:
                            SphericalVideoPlayer.m171b("[PLAYER]MSG_UPDATE_SURFACE_SIZE:" + SphericalVideoPlayer.this.f138c.f378o + " " + SphericalVideoPlayer.this.f138c.f379p, 0);
                            if (SphericalVideoPlayer.this.f138c.f378o > SphericalVideoPlayer.this.f138c.f379p) {
                                SphericalVideoPlayer.this.f138c.m391b(true);
                                break;
                            } else {
                                SphericalVideoPlayer.this.f138c.m391b(false);
                                break;
                            }
                        case 18:
                            C0040g c0040g = (C0040g) message.obj;
                            SphericalVideoPlayer.this.f138c.m384a(c0040g.f301a, c0040g.f302b);
                            break;
                        case 19:
                            SphericalVideoPlayer.this.f138c.m394e();
                            SphericalVideoPlayer.this.f138c.f384u = 0.0f;
                            SphericalVideoPlayer.this.f138c.f385v = 0.0f;
                            break;
                        case 20:
                            HandlerThreadC0033g.this.f184n = true;
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            HandlerThreadC0033g.this.m259d();
                            break;
                        case 21:
                            C0041h c0041h = (C0041h) message.obj;
                            SphericalVideoPlayer.this.f138c.m394e();
                            if (c0041h.f376m != 0 && c0041h.f331a != 0) {
                                SphericalVideoPlayer.this.f138c.f375l = c0041h.f375l;
                                SphericalVideoPlayer.this.f138c.f380q = c0041h.f380q;
                                SphericalVideoPlayer.this.f138c.m389b(c0041h.f381r);
                                HandlerThreadC0033g.this.f184n = true;
                                SphericalVideoPlayer.this.f138c.f388y = true;
                                break;
                            }
                            break;
                        case 22:
                            SphericalVideoPlayer.this.f138c.m394e();
                            HandlerThreadC0033g.this.m262e();
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        case 23:
                            SphericalVideoPlayer.this.f138c.f306A = (float[]) ((float[]) message.obj).clone();
                            break;
                        case 24:
                            HandlerThreadC0033g.this.f189s = true;
                            HandlerThreadC0033g.this.m271i();
                            break;
                        case 26:
                            SphericalVideoPlayer.this.m195a(1);
                            SphericalVideoPlayer.this.m175d(1);
                            break;
                    }
                }
            };
        }

        /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$g$1 */
        class AnonymousClass1 extends Handler {
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        HandlerThreadC0033g.this.m246a((SurfaceTexture) message.obj, message.arg1, message.arg2);
                        break;
                    case 2:
                        HandlerThreadC0033g.this.m259d();
                        break;
                    case 3:
                        HandlerThreadC0033g.this.m270h();
                        break;
                    case 4:
                        SphericalVideoPlayer.this.m195a(0);
                        SphericalVideoPlayer.this.m175d(0);
                        HandlerThreadC0033g.this.m247a(((Boolean) message.obj).booleanValue());
                        break;
                    case 5:
                        HandlerThreadC0033g.this.m244a((C0040g) message.obj);
                        break;
                    case 6:
                        if (SphericalVideoPlayer.this.f138c.f331a != 6) {
                            HandlerThreadC0033g.this.m237a(((Float) message.obj).floatValue(), false);
                            break;
                        }
                        break;
                    case 7:
                        SphericalVideoPlayer.this.f138c.f389z = (float[]) ((float[]) message.obj).clone();
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        break;
                    case 8:
                        SphericalVideoPlayer.m171b("MSG_ON_RECEIVE_BITMAP", 3);
                        C0034a c0034a = (C0034a) message.obj;
                        HandlerThreadC0033g.this.f177g = c0034a.f199b;
                        HandlerThreadC0033g.this.m245a(c0034a.f198a);
                        HandlerThreadC0033g.this.f187q = c0034a.f200c;
                        break;
                    case 9:
                        SphericalVideoPlayer.this.f138c.f382s = message.arg1;
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        break;
                    case 10:
                        if (this != null) {
                            HandlerThreadC0033g.this.m238a(((Integer) message.obj).intValue());
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        }
                        break;
                    case 11:
                        SphericalVideoPlayer.m171b("MSG_UPDATE_TEXTURE_SIZE:" + message.arg1 + " " + message.arg2, 2);
                        if (SphericalVideoPlayer.this.f138c.f376m == 1) {
                            HandlerThreadC0033g.this.f177g = 0;
                        }
                        HandlerThreadC0033g.this.f178h = message.arg1;
                        HandlerThreadC0033g.this.f179i = message.arg2;
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        HandlerThreadC0033g.this.f184n = true;
                        break;
                    case 12:
                        HandlerThreadC0033g.this.m237a(0.0f, true);
                        break;
                    case 13:
                        SphericalVideoPlayer.this.f138c.f365b = ((Integer) message.obj).intValue();
                        HandlerThreadC0033g.this.m250b(SphericalVideoPlayer.this.f138c.f365b);
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        break;
                    case 14:
                        if (this != null) {
                            HandlerThreadC0033g.this.f185o = ((Boolean) message.obj).booleanValue();
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        }
                        break;
                    case 15:
                        if (SphericalVideoPlayer.this.f138c.f331a != 6) {
                            HandlerThreadC0033g.this.m272j();
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        }
                        break;
                    case 16:
                        SphericalVideoPlayer.m171b("[PLAYER]MSG_UPDATE_SURFACE_SIZE:" + SphericalVideoPlayer.this.f138c.f378o + " " + SphericalVideoPlayer.this.f138c.f379p, 0);
                        if (SphericalVideoPlayer.this.f138c.f378o > SphericalVideoPlayer.this.f138c.f379p) {
                            SphericalVideoPlayer.this.f138c.m391b(true);
                            break;
                        } else {
                            SphericalVideoPlayer.this.f138c.m391b(false);
                            break;
                        }
                    case 18:
                        C0040g c0040g = (C0040g) message.obj;
                        SphericalVideoPlayer.this.f138c.m384a(c0040g.f301a, c0040g.f302b);
                        break;
                    case 19:
                        SphericalVideoPlayer.this.f138c.m394e();
                        SphericalVideoPlayer.this.f138c.f384u = 0.0f;
                        SphericalVideoPlayer.this.f138c.f385v = 0.0f;
                        break;
                    case 20:
                        HandlerThreadC0033g.this.f184n = true;
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        HandlerThreadC0033g.this.m259d();
                        break;
                    case 21:
                        C0041h c0041h = (C0041h) message.obj;
                        SphericalVideoPlayer.this.f138c.m394e();
                        if (c0041h.f376m != 0 && c0041h.f331a != 0) {
                            SphericalVideoPlayer.this.f138c.f375l = c0041h.f375l;
                            SphericalVideoPlayer.this.f138c.f380q = c0041h.f380q;
                            SphericalVideoPlayer.this.f138c.m389b(c0041h.f381r);
                            HandlerThreadC0033g.this.f184n = true;
                            SphericalVideoPlayer.this.f138c.f388y = true;
                            break;
                        }
                        break;
                    case 22:
                        SphericalVideoPlayer.this.f138c.m394e();
                        HandlerThreadC0033g.this.m262e();
                        SphericalVideoPlayer.this.f138c.f388y = true;
                        break;
                    case 23:
                        SphericalVideoPlayer.this.f138c.f306A = (float[]) ((float[]) message.obj).clone();
                        break;
                    case 24:
                        HandlerThreadC0033g.this.f189s = true;
                        HandlerThreadC0033g.this.m271i();
                        break;
                    case 26:
                        SphericalVideoPlayer.this.m195a(1);
                        SphericalVideoPlayer.this.m175d(1);
                        break;
                }
            }
        }

        /* renamed from: a */
        public void m238a(int i) {
            if (SphericalVideoPlayer.this.f138c.f379p > SphericalVideoPlayer.this.f138c.f378o) {
                SphericalVideoPlayer.this.f138c.m385a(i, false);
            } else {
                SphericalVideoPlayer.this.f138c.m385a(i, true);
            }
        }

        /* renamed from: b */
        public void m250b(int i) {
            if (i == 1) {
                SphericalVideoPlayer.this.f138c.m390b(i, true);
            } else if (SphericalVideoPlayer.this.f138c.f379p > SphericalVideoPlayer.this.f138c.f378o) {
                SphericalVideoPlayer.this.f138c.m390b(i, false);
            } else {
                SphericalVideoPlayer.this.f138c.m390b(i, true);
            }
        }

        /* renamed from: a */
        public void m245a(Bitmap bitmap) {
            SphericalVideoPlayer.m171b("updateBitmap", 3);
            this.f178h = bitmap.getWidth();
            this.f179i = bitmap.getHeight();
            GLES20.glBindTexture(3553, this.f176f);
            C0014b.m124a("glBindTexture");
            if (bitmap.isRecycled()) {
                SphericalVideoPlayer.m171b("updateBitmap with recycle bitmap!", 1);
            } else {
                GLUtils.texImage2D(3553, 0, bitmap, 0);
            }
            SphericalVideoPlayer.this.f138c.f388y = true;
        }

        /* renamed from: a */
        public Surface m235a() {
            if (SphericalVideoPlayer.this.f136D == null) {
                SphericalVideoPlayer.m171b("new surface is corrent", 3);
            } else {
                SphericalVideoPlayer.m171b("not new surface is error", 1);
            }
            if (this.f174d.m121e()) {
                this.f176f = C0014b.m123a(SphericalVideoPlayer.this.f138c.f376m);
                this.f175e = new SurfaceTexture(this.f176f);
                this.f175e.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: GeneralFunction.Player.player.SphericalVideoPlayer.g.2

                    /* renamed from: a */
                    boolean f195a = true;

                    AnonymousClass2() {
                    }

                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                        Message obtain = Message.obtain();
                        obtain.what = 3;
                        HandlerThreadC0033g.this.m273a(obtain);
                        if (SphericalVideoPlayer.this.f145j) {
                            SphericalVideoPlayer.this.f145j = false;
                            HandlerThreadC0033g.this.m249b();
                        }
                        if (this.f195a) {
                            if (SphericalVideoPlayer.this.f159x != null) {
                                SphericalVideoPlayer.this.f159x.m232a();
                            }
                            this.f195a = false;
                        }
                    }
                });
                SphericalVideoPlayer.this.f136D = new Surface(this.f175e);
                return SphericalVideoPlayer.this.f136D;
            }
            throw new IllegalStateException("Cannot get video decode surface without GL context");
        }

        /* renamed from: GeneralFunction.Player.player.SphericalVideoPlayer$g$2 */
        class AnonymousClass2 implements SurfaceTexture.OnFrameAvailableListener {

            /* renamed from: a */
            boolean f195a = true;

            AnonymousClass2() {
            }

            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                Message obtain = Message.obtain();
                obtain.what = 3;
                HandlerThreadC0033g.this.m273a(obtain);
                if (SphericalVideoPlayer.this.f145j) {
                    SphericalVideoPlayer.this.f145j = false;
                    HandlerThreadC0033g.this.m249b();
                }
                if (this.f195a) {
                    if (SphericalVideoPlayer.this.f159x != null) {
                        SphericalVideoPlayer.this.f159x.m232a();
                    }
                    this.f195a = false;
                }
            }
        }

        /* renamed from: b */
        public void m249b() {
            Message obtain = Message.obtain();
            obtain.what = 11;
            obtain.arg1 = SphericalVideoPlayer.this.f137a.getVideoWidth();
            obtain.arg2 = SphericalVideoPlayer.this.f137a.getVideoHeight();
            SphericalVideoPlayer.this.m159a(obtain);
            if (SphericalVideoPlayer.this.f150o != null) {
                SphericalVideoPlayer.this.f150o.m361b(true);
                SphericalVideoPlayer.this.f150o.m358b();
            }
            SphericalVideoPlayer.this.seekTo(0);
            SphericalVideoPlayer.this.m193s();
            if (SphericalVideoPlayer.this.f138c.f377n) {
                if (SphericalVideoPlayer.this.f146k) {
                    SphericalVideoPlayer.this.f137a.setVolume(1.0f, 1.0f);
                    return;
                } else {
                    SphericalVideoPlayer.this.f137a.setVolume(0.0f, 0.0f);
                    return;
                }
            }
            SphericalVideoPlayer.this.f137a.pause();
            SphericalVideoPlayer.m171b("getCurrentPosition()" + SphericalVideoPlayer.this.getCurrentPosition(), 3);
            if (SphericalVideoPlayer.this.getCurrentPosition() != 0) {
                SphericalVideoPlayer.this.seekTo(0);
                SphericalVideoPlayer.m171b("twice_getCurrentPosition()" + SphericalVideoPlayer.this.getCurrentPosition(), 3);
                SphericalVideoPlayer.this.m202b();
            }
        }

        /* renamed from: a */
        public void m246a(SurfaceTexture surfaceTexture, int i, int i2) {
            SphericalVideoPlayer.m171b("surfacePrepare w: " + i + " h: " + i2 + " " + this.f188r, 3);
            SphericalVideoPlayer.m171b("surfacePrepare:" + SphericalVideoPlayer.this.m209d(), 3);
            if (SphericalVideoPlayer.this.m209d() != 1) {
                SphericalVideoPlayer.m171b("Invalid operation in status:" + SphericalVideoPlayer.this.m209d(), 0);
                return;
            }
            if (!this.f188r) {
                this.f188r = true;
                this.f174d.m117a(surfaceTexture);
                Choreographer.getInstance().postFrameCallback(this.f173c);
                GLES20.glViewport(0, 0, i, i2);
                C0014b.m124a("glViewport");
                GLES20.glEnable(3024);
                GLES20.glEnable(3042);
                Matrix.perspectiveM(this.f183m, 0, SphericalVideoPlayer.this.f138c.f368e, i / i2, SphericalVideoPlayer.this.f138c.f367d, SphericalVideoPlayer.this.f138c.f366c);
                Matrix.setIdentityM(this.f182l, 0);
                m255c();
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                this.f190t = new C0017e(SphericalVideoPlayer.this.getContext(), SphericalVideoPlayer.this.f138c.f376m, 500.0f);
                switch (SphericalVideoPlayer.this.f138c.f376m) {
                    case 1:
                        if (SphericalVideoPlayer.this.f137a == null) {
                            SphericalVideoPlayer.this.m167a(SphericalVideoPlayer.this.f154s);
                            break;
                        } else {
                            SphericalVideoPlayer.this.f137a.setSurface(SphericalVideoPlayer.this.f153r.m235a());
                            if (SphericalVideoPlayer.this.f138c.f377n) {
                                SphericalVideoPlayer.this.m193s();
                                break;
                            } else {
                                SphericalVideoPlayer.this.m195a(2);
                                SphericalVideoPlayer.this.m175d(2);
                                break;
                            }
                        }
                    case 2:
                        SphericalVideoPlayer.this.m192r();
                        break;
                    case 3:
                        this.f176f = C0014b.m123a(SphericalVideoPlayer.this.f138c.f376m);
                        SphericalVideoPlayer.this.m191q();
                        if (SphericalVideoPlayer.this.f149n != null) {
                            SphericalVideoPlayer.this.m167a(SphericalVideoPlayer.this.f149n);
                            break;
                        }
                        break;
                }
                Matrix.setIdentityM(SphericalVideoPlayer.this.f138c.f389z, 0);
                SphericalVideoPlayer.m171b("surfacePrepare finish", 3);
            }
        }

        /* renamed from: c */
        private void m255c() {
            Matrix.setRotateM(this.f181k, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x01f3  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0204  */
        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void m259d() {
            /*
                Method dump skipped, instructions count: 636
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.SphericalVideoPlayer.HandlerThreadC0033g.m259d():void");
        }

        /* renamed from: e */
        public void m262e() {
            SphericalVideoPlayer.this.f138c.m389b(0.0f);
            SphericalVideoPlayer.this.f138c.f380q = 0.0f;
            SphericalVideoPlayer.this.f138c.m392c();
        }

        /* renamed from: f */
        private float m266f() {
            return SphericalVideoPlayer.this.f138c.f365b == 0 ? SphericalVideoPlayer.this.f138c.f378o / SphericalVideoPlayer.this.f138c.f379p : (SphericalVideoPlayer.this.f138c.f378o / 2.0f) / SphericalVideoPlayer.this.f138c.f379p;
        }

        /* renamed from: a */
        private void m248a(float[] fArr, float f, float f2, float f3) {
            float m266f = m266f();
            Matrix.perspectiveM(fArr, 0, SphericalVideoPlayer.this.f138c.f378o > SphericalVideoPlayer.this.f138c.f379p ? (float) Math.toDegrees(Math.atan(Math.tan(Math.toRadians(f3 / 2.0f)) / m266f) * 2.0d) : f3, m266f, f2 <= f ? 2.0f : (f2 - ((f * f) / f2)) + 2.0f, f2 + f + 100.0f);
        }

        /* renamed from: g */
        private void m268g() {
            float radians;
            float[] fArr = new float[3];
            float f = SphericalVideoPlayer.this.f138c.f375l;
            float f2 = SphericalVideoPlayer.this.f138c.f368e;
            float f3 = SphericalVideoPlayer.this.f138c.f380q;
            float f4 = SphericalVideoPlayer.this.f138c.f381r;
            m248a(this.f183m, 500.0f, f, f2);
            float radians2 = (float) Math.toRadians(90.0f - f4);
            if (SphericalVideoPlayer.this.f138c.f382s != 1) {
                if (SphericalVideoPlayer.this.f138c.f382s == 3) {
                    radians = (float) Math.toRadians(90.0d);
                } else {
                    radians = (float) Math.toRadians(f3);
                }
            } else {
                radians = (float) Math.toRadians(90.0f + f3);
            }
            fArr[0] = (float) (f * Math.sin(radians2) * Math.cos(radians));
            fArr[1] = (float) (f * Math.cos(radians2));
            fArr[2] = (float) (f * Math.sin(radians2) * Math.sin(radians));
            float[] fArr2 = {(float) ((f - 100.0f) * Math.sin(radians2) * Math.cos(radians)), (float) ((f - 100.0f) * Math.cos(radians2)), (float) ((f - 100.0f) * Math.sin(radians2) * Math.sin(radians))};
            Matrix.setLookAtM(this.f182l, 0, fArr[0], fArr[1], fArr[2], fArr2[0], fArr2[1], fArr2[2], 0.0f, 1.0f, 0.0f);
        }

        /* renamed from: h */
        public void m270h() {
            this.f184n = true;
        }

        /* renamed from: a */
        public void m247a(boolean z) {
            if (this.f188r) {
                SphericalVideoPlayer.m171b("start_surfaceDestroy:" + z, 3);
                this.f188r = false;
                Choreographer.getInstance().removeFrameCallback(this.f173c);
                if (!z) {
                    if (this.f174d != null) {
                        m271i();
                        GLES20.glDisable(3553);
                        this.f174d.m120d();
                        this.f174d = null;
                    }
                    if (SphericalVideoPlayer.this.f153r != null) {
                        SphericalVideoPlayer.this.f153r.quit();
                        SphericalVideoPlayer.this.f153r = null;
                    }
                    this.f172b = null;
                    try {
                        Thread.sleep(30L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    SphericalVideoPlayer.this.f138c.f331a = 0;
                    if (SphericalVideoPlayer.this.f137a != null) {
                        SphericalVideoPlayer.this.f137a.reset();
                        SphericalVideoPlayer.this.f137a.stop();
                        SphericalVideoPlayer.this.f137a.release();
                        SphericalVideoPlayer.this.f137a = null;
                    }
                } else {
                    if (this.f174d != null) {
                        this.f174d.m120d();
                    }
                    if (SphericalVideoPlayer.this.f137a != null) {
                        try {
                            Thread.sleep(30L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                        if (SphericalVideoPlayer.this.f138c.f377n) {
                            SphericalVideoPlayer.this.f137a.pause();
                        }
                        SphericalVideoPlayer.this.f137a.setSurface(null);
                    }
                }
                if (SphericalVideoPlayer.this.f150o != null && SphericalVideoPlayer.this.f137a != null) {
                    SphericalVideoPlayer.this.f150o.m361b(false);
                }
                if (SphericalVideoPlayer.this.f151p != null) {
                    SphericalVideoPlayer.this.f151p.m292b();
                    SphericalVideoPlayer.this.f151p.m294d();
                    SphericalVideoPlayer.this.f151p = null;
                }
                if (SphericalVideoPlayer.this.f152q != null) {
                    SphericalVideoPlayer.this.f152q.m312c();
                    SphericalVideoPlayer.this.f152q = null;
                }
                if (this.f176f != -1) {
                    GLES20.glDeleteTextures(1, new int[]{this.f176f}, 0);
                    this.f176f = -1;
                }
                if (this.f175e != null) {
                    this.f175e.release();
                    this.f175e = null;
                    this.f184n = false;
                }
                Matrix.setIdentityM(SphericalVideoPlayer.this.f138c.f389z, 0);
                SphericalVideoPlayer.this.f138c.f388y = false;
                if (this.f190t != null) {
                    this.f190t.m156a();
                    this.f190t = null;
                }
                if (!z) {
                    SphericalVideoPlayer.this.m195a(5);
                    SphericalVideoPlayer.this.m175d(5);
                    SphericalVideoPlayer.this.m195a(1);
                    SphericalVideoPlayer.this.m175d(1);
                }
                SphericalVideoPlayer.m171b("finish_surfaceDestroy", 3);
                return;
            }
            SphericalVideoPlayer.m171b("surfaceDestroy_fail", 3);
        }

        /* renamed from: a */
        public void m244a(C0040g c0040g) {
            SphericalVideoPlayer.this.f138c.f380q = (((-c0040g.f301a) * 0.1f) + SphericalVideoPlayer.this.f138c.f380q) % 360.0f;
            SphericalVideoPlayer.this.f138c.m389b(((-c0040g.f302b) * 0.1f) + SphericalVideoPlayer.this.f138c.f381r);
            SphericalVideoPlayer.this.f138c.f388y = true;
        }

        /* renamed from: i */
        public void m271i() {
            GLES20.glClear(16384);
            C0014b.m124a("glClear");
            this.f174d.m118b();
        }

        /* renamed from: a */
        public void m237a(float f, boolean z) {
            float f2 = SphericalVideoPlayer.this.f138c.f383t;
            if (z) {
                SphericalVideoPlayer.this.f138c.m388b();
            } else {
                if (((int) f) >= 1) {
                    f2 = -f2;
                }
                SphericalVideoPlayer.this.f138c.m383a(f2 + SphericalVideoPlayer.this.f138c.f375l);
            }
            SphericalVideoPlayer.this.f138c.f388y = true;
        }

        /* renamed from: j */
        public void m272j() {
            SphericalVideoPlayer.this.f138c.m393d();
            this.f186p = true;
        }
    }
}
