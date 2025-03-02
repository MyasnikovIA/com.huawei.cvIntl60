package GeneralFunction.Player.GifGenerate;

import GeneralFunction.Player.p000a.C0013a;
import GeneralFunction.Player.p000a.C0014b;
import GeneralFunction.Player.player.C0035b;
import GeneralFunction.Player.player.C0041h;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
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
import android.view.Surface;
import android.view.TextureView;
import android.view.WindowManager;
import android.widget.MediaController;
import com.huawei.cvIntl60.R;
import com.p052a.p053a.p056c.C0736a;
import com.p052a.p053a.p056c.C0739d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class GifGenerate extends TextureView implements TextureView.SurfaceTextureListener, MediaController.MediaPlayerControl {

    /* renamed from: c */
    private static final String f0c = GifGenerate.class.getSimpleName();

    /* renamed from: A */
    private InterfaceC0007c f1A;

    /* renamed from: a */
    protected IjkMediaPlayer f2a;

    /* renamed from: b */
    int f3b;

    /* renamed from: d */
    private C0041h f4d;

    /* renamed from: e */
    private int f5e;

    /* renamed from: f */
    private int f6f;

    /* renamed from: g */
    private int f7g;

    /* renamed from: h */
    private int f8h;

    /* renamed from: i */
    private boolean f9i;

    /* renamed from: j */
    private boolean f10j;

    /* renamed from: k */
    private boolean f11k;

    /* renamed from: l */
    private int f12l;

    /* renamed from: m */
    private int f13m;

    /* renamed from: n */
    private int f14n;

    /* renamed from: o */
    private int f15o;

    /* renamed from: p */
    private Context f16p;

    /* renamed from: q */
    private final String f17q;

    /* renamed from: r */
    private C0006b f18r;

    /* renamed from: s */
    private HandlerThreadC0009e f19s;

    /* renamed from: t */
    private String f20t;

    /* renamed from: u */
    private WindowManager f21u;

    /* renamed from: v */
    private SurfaceTexture f22v;

    /* renamed from: w */
    private int f23w;

    /* renamed from: x */
    private BlockingQueue<Message> f24x;

    /* renamed from: y */
    private InterfaceC0008d f25y;

    /* renamed from: z */
    private InterfaceC0011g f26z;

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$c */
    public interface InterfaceC0007c {
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$d */
    public interface InterfaceC0008d {
        /* renamed from: a */
        void mo47a(int i);
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$f */
    private class C0010f {

        /* renamed from: a */
        float f78a;

        /* renamed from: b */
        float f79b;
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$g */
    public interface InterfaceC0011g {
        /* renamed from: a */
        void mo106a(int i);
    }

    /* renamed from: c */
    public static void m16c(String str, int i) {
        C0035b.m274a(f0c, str, i);
    }

    /* renamed from: a */
    public void m37a(String str, int i) {
        m16c("setGifSavePathAndWatermarkIndex:" + i, 3);
        Message obtain = Message.obtain();
        obtain.what = 14;
        obtain.obj = str;
        obtain.arg1 = i;
        m1a(obtain);
    }

    /* renamed from: a */
    public void m33a(int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = 23;
        obtain.obj = Integer.valueOf(i);
        obtain.arg1 = i2;
        m1a(obtain);
    }

    public void setGifFromImageDirect(int i) {
        Message obtain = Message.obtain();
        obtain.what = 13;
        obtain.arg1 = i;
        m1a(obtain);
    }

    /* renamed from: a */
    public void m32a(int i) {
        m16c("isPreplay:" + i, 3);
        this.f11k = false;
        Message obtain = Message.obtain();
        obtain.what = 15;
        obtain.arg1 = i;
        m1a(obtain);
    }

    /* renamed from: a */
    public void m34a(int i, int i2, int i3) {
        m16c("getGifFromVideo:" + i3, 3);
        m16c("getGifFromVideo:startTime" + i, 3);
        m16c("getGifFromVideo:endTime" + i2, 3);
        this.f13m = i;
        this.f12l = i2;
        this.f14n = this.f12l - this.f13m;
        this.f11k = false;
        seekTo(i * 1000);
        Message obtain = Message.obtain();
        obtain.what = 16;
        obtain.arg1 = i3;
        obtain.arg2 = i * 1000;
        m1a(obtain);
        start();
    }

    /* renamed from: a */
    public void m31a() {
        this.f11k = true;
        Message obtain = Message.obtain();
        obtain.what = 19;
        m1a(obtain);
    }

    public void setPlayerStatusListener(InterfaceC0008d interfaceC0008d) {
        this.f25y = interfaceC0008d;
    }

    public void setGifGenerateStatusListener(InterfaceC0011g interfaceC0011g) {
        this.f26z = interfaceC0011g;
    }

    public void setOnClickListener(InterfaceC0007c interfaceC0007c) {
        this.f1A = interfaceC0007c;
    }

    public void setEnable(boolean z) {
        this.f9i = z;
        this.f10j = z;
    }

    public void setSphericalParameter(C0041h c0041h) {
        if (c0041h == null) {
            m16c("parameter is null", 1);
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 21;
        obtain.obj = c0041h;
        m1a(obtain);
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.f9i;
    }

    public void setZoomInEnable(boolean z) {
        this.f10j = z;
    }

    /* renamed from: b */
    public void m10b(int i) {
        if (this.f25y != null) {
            m16c("StutasChange:" + i, 3);
            this.f25y.mo47a(i);
        }
    }

    /* renamed from: b */
    public void m38b() {
        Message obtain = Message.obtain();
        obtain.what = 20;
        m1a(obtain);
    }

    /* renamed from: c */
    public void m15c(int i) {
        if (this.f26z != null) {
            m16c("gifGenerateStatusChange:" + i, 3);
            this.f26z.mo106a(i);
        }
    }

    /* renamed from: c */
    public int m39c() {
        return this.f5e;
    }

    /* renamed from: d */
    public void m17d(int i) {
        this.f5e = i;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (this.f4d.f376m == 1 && this.f2a != null) {
            this.f2a.start();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (this.f4d.f376m == 1 && this.f2a != null && this.f2a.isPlaying()) {
            this.f2a.pause();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (this.f4d.f376m != 1 || this.f2a == null) {
            return 0;
        }
        return (int) this.f2a.getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        int currentPosition;
        if (this.f4d.f376m == 1 && this.f2a != null) {
            if (this.f2a.getDuration() != this.f2a.getCurrentPosition()) {
                currentPosition = (((int) this.f2a.getCurrentPosition()) / 1000) * 1000;
            } else {
                currentPosition = (int) this.f2a.getCurrentPosition();
            }
            m16c("lCurrentPosition+++++-+" + currentPosition, currentPosition);
            return currentPosition;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        if (this.f4d.f376m == 1 && this.f2a != null) {
            this.f2a.seekTo(i);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        if (this.f4d.f376m != 1 || this.f2a == null) {
            return false;
        }
        return this.f2a.isPlaying();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f4d.f376m != 1 || this.f2a == null || this.f2a.getDuration() == 0) {
            return 0;
        }
        return (((((int) this.f2a.getCurrentPosition()) * 100) / ((int) this.f2a.getDuration())) / 2) * 2;
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

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$a */
    private class C0005a {

        /* renamed from: a */
        Bitmap f32a;

        /* renamed from: b */
        int f33b;

        /* renamed from: c */
        boolean f34c;

        C0005a(Bitmap bitmap, int i, boolean z) {
            this.f32a = bitmap;
            this.f33b = i;
            this.f34c = z;
        }
    }

    public GifGenerate(Context context) {
        this(context, null);
        this.f16p = context;
        setSurfaceTextureListener(this);
    }

    public GifGenerate(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.f16p = context;
        setSurfaceTextureListener(this);
    }

    public GifGenerate(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4d = new C0041h();
        this.f5e = 0;
        this.f6f = 30;
        this.f7g = 640;
        this.f8h = 480;
        this.f9i = true;
        this.f10j = true;
        this.f11k = false;
        this.f12l = 0;
        this.f13m = 0;
        this.f14n = 0;
        this.f15o = 0;
        this.f17q = null;
        this.f24x = new ArrayBlockingQueue(90);
        this.f25y = null;
        this.f26z = null;
        this.f1A = null;
        this.f3b = 0;
        this.f4d.m386a(context);
        this.f16p = context;
        setSurfaceTextureListener(this);
        m17d(0);
        this.f21u = (WindowManager) context.getSystemService("window");
        this.f23w = this.f21u.getDefaultDisplay().getRotation();
    }

    /* renamed from: d */
    public void m40d() {
        if (this.f19s == null) {
            this.f19s = new HandlerThreadC0009e("GifRenderThread");
            this.f19s.start();
        }
    }

    /* renamed from: e */
    public int m41e() {
        m16c("Play:" + m39c(), 3);
        if (m39c() != 1) {
            m16c("Invalid operation in status:" + m39c(), 0);
            return -1;
        }
        if (this.f4d.f376m == 0) {
            m16c("Invalid operation in mode:" + this.f4d.f376m, 0);
            return -1;
        }
        m16c("[Video Player]Play", 2);
        m36a(this.f22v, this.f4d.f378o, this.f4d.f379p);
        return 0;
    }

    /* renamed from: i */
    public void m26i() {
        this.f18r = new C0006b();
        this.f18r.m46a(this.f6f);
        this.f18r.start();
        m16c("MJPGThread is start", 3);
        m17d(2);
        m10b(2);
    }

    /* renamed from: a */
    public void m7a(String str) {
        if (this.f19s == null) {
            throw new IllegalStateException("RenderThread has not been initialized");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("Cannot begin playback: video path is empty");
        }
        this.f2a = new IjkMediaPlayer();
        if (this.f4d.f376m != 3) {
            this.f2a.setSurface(this.f19s.m49a());
        }
        this.f2a.setVolume(0.0f, 0.0f);
        this.f2a.setAudioStreamType(3);
        this.f2a.setOption(4, "mediacodec", 1L);
        this.f2a.setOption(4, "mediacodec-handle-resolution-change", 1L);
        this.f2a.setOption(4, "mediacodec-avc", 1L);
        this.f2a.setOption(4, "start-on-prepared", 1L);
        this.f2a.setLogEnabled(false);
        this.f2a.setKeepInBackground(true);
        try {
            this.f2a.setDataSource(getContext(), Uri.parse(str), (Map<String, String>) null);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.f2a.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.1
            C00001() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                Message obtain = Message.obtain();
                obtain.what = 11;
                obtain.arg1 = GifGenerate.this.f2a.getVideoWidth();
                obtain.arg2 = GifGenerate.this.f2a.getVideoHeight();
                GifGenerate.this.m1a(obtain);
                GifGenerate.this.seekTo(0);
                GifGenerate.this.m28j();
                GifGenerate.m16c("getCurrentPosition()" + GifGenerate.this.getCurrentPosition(), 3);
                if (GifGenerate.this.getCurrentPosition() != 0) {
                    GifGenerate.this.seekTo(0);
                    GifGenerate.m16c("twice_getCurrentPosition()" + GifGenerate.this.getCurrentPosition(), 3);
                    GifGenerate.this.m38b();
                }
            }
        });
        this.f2a.setOnBufferingUpdateListener(new IMediaPlayer.OnBufferingUpdateListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.2
            C00012() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
            }
        });
        this.f2a.setOnErrorListener(new IMediaPlayer.OnErrorListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.3
            C00023() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
                GifGenerate.m16c("ijkplayer+++++++onError:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 1);
                return false;
            }
        });
        this.f2a.setOnInfoListener(new IMediaPlayer.OnInfoListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.4
            C00034() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
                switch (i) {
                    case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                        if (!iMediaPlayer.isPlaying()) {
                            GifGenerate.m16c("+++++++++OnInfoListener:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 3);
                            GifGenerate.this.m38b();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        this.f2a.prepareAsync();
        this.f2a.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.5
            C00045() {
            }

            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                GifGenerate.this.f2a.pause();
                Log.e(GifGenerate.f0c, "isPrePlay" + GifGenerate.this.f15o);
                if (GifGenerate.this.f15o != 4 && GifGenerate.this.f15o != 3) {
                    Message obtain = Message.obtain();
                    obtain.what = 22;
                    GifGenerate.this.m1a(obtain);
                }
                GifGenerate.m16c("Video play complete", 3);
                GifGenerate.this.m17d(3);
                GifGenerate.this.m10b(3);
            }
        });
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$1 */
    class C00001 implements IMediaPlayer.OnPreparedListener {
        C00001() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            Message obtain = Message.obtain();
            obtain.what = 11;
            obtain.arg1 = GifGenerate.this.f2a.getVideoWidth();
            obtain.arg2 = GifGenerate.this.f2a.getVideoHeight();
            GifGenerate.this.m1a(obtain);
            GifGenerate.this.seekTo(0);
            GifGenerate.this.m28j();
            GifGenerate.m16c("getCurrentPosition()" + GifGenerate.this.getCurrentPosition(), 3);
            if (GifGenerate.this.getCurrentPosition() != 0) {
                GifGenerate.this.seekTo(0);
                GifGenerate.m16c("twice_getCurrentPosition()" + GifGenerate.this.getCurrentPosition(), 3);
                GifGenerate.this.m38b();
            }
        }
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$2 */
    class C00012 implements IMediaPlayer.OnBufferingUpdateListener {
        C00012() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
        }
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$3 */
    class C00023 implements IMediaPlayer.OnErrorListener {
        C00023() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
            GifGenerate.m16c("ijkplayer+++++++onError:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 1);
            return false;
        }
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$4 */
    class C00034 implements IMediaPlayer.OnInfoListener {
        C00034() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
        public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
            switch (i) {
                case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                    if (!iMediaPlayer.isPlaying()) {
                        GifGenerate.m16c("+++++++++OnInfoListener:" + iMediaPlayer.isPlaying() + ",what " + i + ",extra " + i2, 3);
                        GifGenerate.this.m38b();
                        break;
                    }
                    break;
            }
            return false;
        }
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$5 */
    class C00045 implements IMediaPlayer.OnCompletionListener {
        C00045() {
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(IMediaPlayer iMediaPlayer) {
            GifGenerate.this.f2a.pause();
            Log.e(GifGenerate.f0c, "isPrePlay" + GifGenerate.this.f15o);
            if (GifGenerate.this.f15o != 4 && GifGenerate.this.f15o != 3) {
                Message obtain = Message.obtain();
                obtain.what = 22;
                GifGenerate.this.m1a(obtain);
            }
            GifGenerate.m16c("Video play complete", 3);
            GifGenerate.this.m17d(3);
            GifGenerate.this.m10b(3);
        }
    }

    /* renamed from: j */
    public void m28j() {
        if (!this.f2a.isPlaying()) {
            this.f2a.start();
        }
        m17d(2);
        m10b(2);
    }

    /* renamed from: a */
    public void m36a(SurfaceTexture surfaceTexture, int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = surfaceTexture;
        obtain.arg1 = i;
        obtain.arg2 = i2;
        m1a(obtain);
    }

    /* renamed from: a */
    public void m35a(Bitmap bitmap, int i, boolean z) {
        if (m39c() == 2) {
            Message message = new Message();
            message.what = 8;
            message.obj = new C0005a(bitmap, i, z);
            try {
                this.f24x.put(message);
                return;
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
        m16c("360 Player can't receive Bitmap ", 0);
    }

    /* renamed from: f */
    public void m42f() {
        m8a(false);
    }

    /* renamed from: a */
    private void m8a(boolean z) {
        m16c("releaseResources " + z, 3);
        if (this.f19s != null) {
            Message message = new Message();
            message.what = 4;
            message.obj = Boolean.valueOf(z);
            m1a(message);
        }
    }

    public void setVideoFilePath(String str) {
        this.f20t = str;
    }

    /* renamed from: g */
    public int m43g() {
        if (m39c() != 2) {
            m16c("Invalid operation in status:" + m39c(), 0);
            return -1;
        }
        switch (this.f4d.f376m) {
            case 1:
                if (this.f2a.isPlaying()) {
                    this.f2a.pause();
                    break;
                }
                break;
            case 3:
                this.f18r.m45a();
                if (this.f2a != null) {
                    this.f2a.pause();
                    break;
                }
                break;
        }
        m17d(4);
        m10b(4);
        return 0;
    }

    public void setFrameRate(int i) {
        this.f6f = i;
        switch (this.f4d.f376m) {
            case 3:
                this.f18r.m46a(i);
                break;
        }
    }

    public void setPlayerMode(int i) {
        if (i < 4) {
            this.f4d.f376m = i;
        } else {
            m16c("Not support player mode:" + i, 0);
        }
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.arg1 = i;
        m1a(obtain);
    }

    public int getPlayerMode() {
        return this.f4d.f376m;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        m16c("onSurfaceTextureAvailable:" + i + "x" + i2, 3);
        this.f4d.f378o = i;
        this.f4d.f379p = i2;
        this.f22v = surfaceTexture;
        try {
            Thread.sleep(30L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        m17d(1);
        m10b(1);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        m16c("onSurfaceTextureSizeChanged:" + i + "x" + i2, 3);
        this.f4d.f378o = i;
        this.f4d.f379p = i2;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        m16c("onSurfaceTextureDestroyed", 3);
        this.f11k = true;
        if (m39c() != 0 && m39c() != 5) {
            m8a(true);
        }
        m17d(0);
        m10b(0);
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    /* renamed from: a */
    public int m1a(Message message) {
        if (this.f19s != null) {
            this.f19s.m103a(message);
            return 0;
        }
        m16c("objRenderThread is null!", 0);
        return -1;
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$e */
    private class HandlerThreadC0009e extends HandlerThread {

        /* renamed from: A */
        private int f41A;

        /* renamed from: B */
        private int f42B;

        /* renamed from: C */
        private ArrayList<Bitmap> f43C;

        /* renamed from: D */
        private int f44D;

        /* renamed from: E */
        private int f45E;

        /* renamed from: F */
        private int f46F;

        /* renamed from: G */
        private int f47G;

        /* renamed from: H */
        private C0012a f48H;

        /* renamed from: a */
        int f49a;

        /* renamed from: c */
        private int f51c;

        /* renamed from: d */
        private Handler f52d;

        /* renamed from: e */
        private Choreographer.FrameCallback f53e;

        /* renamed from: f */
        private C0013a f54f;

        /* renamed from: g */
        private SurfaceTexture f55g;

        /* renamed from: h */
        private int f56h;

        /* renamed from: i */
        private int f57i;

        /* renamed from: j */
        private int f58j;

        /* renamed from: k */
        private float[] f59k;

        /* renamed from: l */
        private float[] f60l;

        /* renamed from: m */
        private float[] f61m;

        /* renamed from: n */
        private float[] f62n;

        /* renamed from: o */
        private float[] f63o;

        /* renamed from: p */
        private boolean f64p;

        /* renamed from: q */
        private boolean f65q;

        /* renamed from: r */
        private boolean f66r;

        /* renamed from: s */
        private boolean f67s;

        /* renamed from: t */
        private boolean f68t;

        /* renamed from: u */
        private int f69u;

        /* renamed from: v */
        private int f70v;

        /* renamed from: w */
        private int f71w;

        /* renamed from: x */
        private String f72x;

        /* renamed from: y */
        private int f73y;

        /* renamed from: z */
        private int f74z;

        /* renamed from: a */
        public int m103a(Message message) {
            if (this.f52d == null) {
                return -1;
            }
            this.f52d.sendMessage(message);
            return 0;
        }

        /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$e$a */
        private class a implements Choreographer.FrameCallback {
            private a() {
            }

            /* synthetic */ a(HandlerThreadC0009e handlerThreadC0009e, C00001 c00001) {
                this();
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                HandlerThreadC0009e.this.m103a(obtain);
            }
        }

        public HandlerThreadC0009e(String str) {
            super(str);
            this.f51c = 0;
            this.f53e = new a();
            this.f56h = -1;
            this.f57i = 1;
            this.f58j = 1;
            this.f59k = new float[16];
            this.f60l = new float[16];
            this.f61m = new float[16];
            this.f62n = new float[16];
            this.f63o = new float[3];
            this.f64p = false;
            this.f65q = false;
            this.f68t = false;
            this.f69u = 0;
            this.f70v = 0;
            this.f71w = 0;
            this.f72x = null;
            this.f73y = 0;
            this.f74z = 360;
            this.f41A = 360;
            this.f42B = 0;
            this.f44D = IjkMediaCodecInfo.RANK_LAST_CHANCE;
            this.f45E = 300;
            this.f46F = 212;
            this.f47G = 30;
            this.f49a = 0;
            this.f54f = new C0013a();
        }

        @Override // java.lang.Thread
        public synchronized void start() {
            super.start();
            this.f52d = new Handler(getLooper()) { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.e.1
                AnonymousClass1(Looper looper) {
                    super(looper);
                }

                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    switch (message.what) {
                        case 1:
                            HandlerThreadC0009e.this.m62a((SurfaceTexture) message.obj, message.arg1, message.arg2);
                            break;
                        case 2:
                            HandlerThreadC0009e.this.m66b();
                            break;
                        case 3:
                            HandlerThreadC0009e.this.m97j();
                            break;
                        case 4:
                            HandlerThreadC0009e.this.f41A = HandlerThreadC0009e.this.f74z;
                            HandlerThreadC0009e.this.m63a(((Boolean) message.obj).booleanValue());
                            break;
                        case 5:
                            HandlerThreadC0009e.this.m60a((C0010f) message.obj);
                            break;
                        case 6:
                            HandlerThreadC0009e.this.m52a(((Float) message.obj).floatValue(), false);
                            break;
                        case 7:
                            GifGenerate.this.f4d.f389z = (float[]) ((float[]) message.obj).clone();
                            HandlerThreadC0009e.this.f67s = true;
                            break;
                        case 8:
                            C0005a c0005a = (C0005a) message.obj;
                            HandlerThreadC0009e.this.f51c = c0005a.f33b;
                            HandlerThreadC0009e.this.m61a(c0005a.f32a);
                            HandlerThreadC0009e.this.f64p = c0005a.f34c;
                            break;
                        case 10:
                            HandlerThreadC0009e.this.m53a(((Integer) message.obj).intValue());
                            HandlerThreadC0009e.this.f67s = true;
                            break;
                        case 11:
                            HandlerThreadC0009e.this.f51c = 0;
                            HandlerThreadC0009e.this.f57i = message.arg1;
                            HandlerThreadC0009e.this.f58j = message.arg2;
                            break;
                        case 12:
                            HandlerThreadC0009e.this.m52a(0.0f, true);
                            break;
                        case 13:
                            HandlerThreadC0009e.this.f69u = message.arg1;
                            break;
                        case 14:
                            HandlerThreadC0009e.this.f72x = (String) message.obj;
                            HandlerThreadC0009e.this.f70v = message.arg1;
                            break;
                        case 15:
                            GifGenerate.this.f15o = message.arg1;
                            GifGenerate.this.m15c(GifGenerate.this.f15o);
                            HandlerThreadC0009e.this.f67s = true;
                            HandlerThreadC0009e.this.m67b(HandlerThreadC0009e.this.f69u);
                            if (GifGenerate.this.f15o == 2) {
                                HandlerThreadC0009e.this.m82e();
                                break;
                            }
                            break;
                        case 16:
                            GifGenerate.m16c("MSG_GIF_FROM_VIDEO", 3);
                            HandlerThreadC0009e.this.f73y = message.arg2;
                            GifGenerate.this.f15o = message.arg1;
                            GifGenerate.this.m15c(GifGenerate.this.f15o);
                            HandlerThreadC0009e.this.f67s = true;
                            if (GifGenerate.this.f15o == 2) {
                                HandlerThreadC0009e.this.m82e();
                                break;
                            }
                            break;
                        case 17:
                            GifGenerate.this.f4d.f376m = message.arg1;
                            break;
                        case 18:
                            HandlerThreadC0009e.this.f71w = message.arg1;
                            if (HandlerThreadC0009e.this.f71w == 3) {
                                if (HandlerThreadC0009e.this.f43C.size() != 0 && !GifGenerate.this.f11k) {
                                    HandlerThreadC0009e.this.m104a(HandlerThreadC0009e.this.f72x, HandlerThreadC0009e.this.f43C);
                                }
                                HandlerThreadC0009e.this.m85f();
                                if (GifGenerate.this.f15o == 1) {
                                    GifGenerate.this.f15o = 0;
                                    GifGenerate.this.m15c(0);
                                    break;
                                } else if (!GifGenerate.this.f11k) {
                                    GifGenerate.this.f15o = 4;
                                    GifGenerate.this.m15c(4);
                                    break;
                                } else {
                                    GifGenerate.this.f15o = 3;
                                    GifGenerate.this.m15c(3);
                                    break;
                                }
                            }
                            break;
                        case 19:
                            HandlerThreadC0009e.this.f68t = true;
                            break;
                        case 20:
                            HandlerThreadC0009e.this.f66r = true;
                            HandlerThreadC0009e.this.f67s = true;
                            HandlerThreadC0009e.this.m66b();
                            break;
                        case 21:
                            C0041h c0041h = (C0041h) message.obj;
                            if (c0041h.f376m != 0 && c0041h.f331a != 0) {
                                GifGenerate.this.f4d.f331a = ((C0041h) message.obj).f331a;
                                GifGenerate.this.f4d.f375l = ((C0041h) message.obj).f375l;
                                GifGenerate.this.f4d.f382s = ((C0041h) message.obj).f382s;
                                if (c0041h.f382s != 1) {
                                    Matrix.setIdentityM(GifGenerate.this.f4d.f389z, 0);
                                    GifGenerate.this.f4d.f389z = (float[]) ((C0041h) message.obj).f389z.clone();
                                }
                                GifGenerate.this.f4d.f380q = ((C0041h) message.obj).f380q;
                                GifGenerate.this.f4d.f381r = ((C0041h) message.obj).f381r;
                                GifGenerate.this.f4d.f369f = ((C0041h) message.obj).f368e - 35.0f;
                                HandlerThreadC0009e.this.f67s = true;
                                break;
                            }
                            break;
                        case 22:
                            GifGenerate.m16c("MSG_SET_PLAY_COMPLETE", 3);
                            if (GifGenerate.this.f15o == 2) {
                                if (HandlerThreadC0009e.this.f43C.size() != 0 && !GifGenerate.this.f11k) {
                                    HandlerThreadC0009e.this.m104a(HandlerThreadC0009e.this.f72x, HandlerThreadC0009e.this.f43C);
                                }
                                HandlerThreadC0009e.this.m85f();
                            }
                            HandlerThreadC0009e.this.f67s = false;
                            GifGenerate.this.f2a.pause();
                            GifGenerate.this.seekTo(HandlerThreadC0009e.this.f73y);
                            HandlerThreadC0009e.this.f41A = HandlerThreadC0009e.this.f74z;
                            if (GifGenerate.this.f15o == 1) {
                                GifGenerate.this.f15o = 0;
                                GifGenerate.this.m15c(0);
                                break;
                            } else if (!GifGenerate.this.f11k) {
                                GifGenerate.this.f15o = 4;
                                GifGenerate.this.m15c(4);
                                break;
                            } else {
                                GifGenerate.this.f15o = 3;
                                GifGenerate.this.m15c(3);
                                break;
                            }
                        case 23:
                            HandlerThreadC0009e.this.f44D = ((Integer) message.obj).intValue();
                            HandlerThreadC0009e.this.f45E = message.arg1;
                            break;
                    }
                }
            };
        }

        /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$e$1 */
        class AnonymousClass1 extends Handler {
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        HandlerThreadC0009e.this.m62a((SurfaceTexture) message.obj, message.arg1, message.arg2);
                        break;
                    case 2:
                        HandlerThreadC0009e.this.m66b();
                        break;
                    case 3:
                        HandlerThreadC0009e.this.m97j();
                        break;
                    case 4:
                        HandlerThreadC0009e.this.f41A = HandlerThreadC0009e.this.f74z;
                        HandlerThreadC0009e.this.m63a(((Boolean) message.obj).booleanValue());
                        break;
                    case 5:
                        HandlerThreadC0009e.this.m60a((C0010f) message.obj);
                        break;
                    case 6:
                        HandlerThreadC0009e.this.m52a(((Float) message.obj).floatValue(), false);
                        break;
                    case 7:
                        GifGenerate.this.f4d.f389z = (float[]) ((float[]) message.obj).clone();
                        HandlerThreadC0009e.this.f67s = true;
                        break;
                    case 8:
                        C0005a c0005a = (C0005a) message.obj;
                        HandlerThreadC0009e.this.f51c = c0005a.f33b;
                        HandlerThreadC0009e.this.m61a(c0005a.f32a);
                        HandlerThreadC0009e.this.f64p = c0005a.f34c;
                        break;
                    case 10:
                        HandlerThreadC0009e.this.m53a(((Integer) message.obj).intValue());
                        HandlerThreadC0009e.this.f67s = true;
                        break;
                    case 11:
                        HandlerThreadC0009e.this.f51c = 0;
                        HandlerThreadC0009e.this.f57i = message.arg1;
                        HandlerThreadC0009e.this.f58j = message.arg2;
                        break;
                    case 12:
                        HandlerThreadC0009e.this.m52a(0.0f, true);
                        break;
                    case 13:
                        HandlerThreadC0009e.this.f69u = message.arg1;
                        break;
                    case 14:
                        HandlerThreadC0009e.this.f72x = (String) message.obj;
                        HandlerThreadC0009e.this.f70v = message.arg1;
                        break;
                    case 15:
                        GifGenerate.this.f15o = message.arg1;
                        GifGenerate.this.m15c(GifGenerate.this.f15o);
                        HandlerThreadC0009e.this.f67s = true;
                        HandlerThreadC0009e.this.m67b(HandlerThreadC0009e.this.f69u);
                        if (GifGenerate.this.f15o == 2) {
                            HandlerThreadC0009e.this.m82e();
                            break;
                        }
                        break;
                    case 16:
                        GifGenerate.m16c("MSG_GIF_FROM_VIDEO", 3);
                        HandlerThreadC0009e.this.f73y = message.arg2;
                        GifGenerate.this.f15o = message.arg1;
                        GifGenerate.this.m15c(GifGenerate.this.f15o);
                        HandlerThreadC0009e.this.f67s = true;
                        if (GifGenerate.this.f15o == 2) {
                            HandlerThreadC0009e.this.m82e();
                            break;
                        }
                        break;
                    case 17:
                        GifGenerate.this.f4d.f376m = message.arg1;
                        break;
                    case 18:
                        HandlerThreadC0009e.this.f71w = message.arg1;
                        if (HandlerThreadC0009e.this.f71w == 3) {
                            if (HandlerThreadC0009e.this.f43C.size() != 0 && !GifGenerate.this.f11k) {
                                HandlerThreadC0009e.this.m104a(HandlerThreadC0009e.this.f72x, HandlerThreadC0009e.this.f43C);
                            }
                            HandlerThreadC0009e.this.m85f();
                            if (GifGenerate.this.f15o == 1) {
                                GifGenerate.this.f15o = 0;
                                GifGenerate.this.m15c(0);
                                break;
                            } else if (!GifGenerate.this.f11k) {
                                GifGenerate.this.f15o = 4;
                                GifGenerate.this.m15c(4);
                                break;
                            } else {
                                GifGenerate.this.f15o = 3;
                                GifGenerate.this.m15c(3);
                                break;
                            }
                        }
                        break;
                    case 19:
                        HandlerThreadC0009e.this.f68t = true;
                        break;
                    case 20:
                        HandlerThreadC0009e.this.f66r = true;
                        HandlerThreadC0009e.this.f67s = true;
                        HandlerThreadC0009e.this.m66b();
                        break;
                    case 21:
                        C0041h c0041h = (C0041h) message.obj;
                        if (c0041h.f376m != 0 && c0041h.f331a != 0) {
                            GifGenerate.this.f4d.f331a = ((C0041h) message.obj).f331a;
                            GifGenerate.this.f4d.f375l = ((C0041h) message.obj).f375l;
                            GifGenerate.this.f4d.f382s = ((C0041h) message.obj).f382s;
                            if (c0041h.f382s != 1) {
                                Matrix.setIdentityM(GifGenerate.this.f4d.f389z, 0);
                                GifGenerate.this.f4d.f389z = (float[]) ((C0041h) message.obj).f389z.clone();
                            }
                            GifGenerate.this.f4d.f380q = ((C0041h) message.obj).f380q;
                            GifGenerate.this.f4d.f381r = ((C0041h) message.obj).f381r;
                            GifGenerate.this.f4d.f369f = ((C0041h) message.obj).f368e - 35.0f;
                            HandlerThreadC0009e.this.f67s = true;
                            break;
                        }
                        break;
                    case 22:
                        GifGenerate.m16c("MSG_SET_PLAY_COMPLETE", 3);
                        if (GifGenerate.this.f15o == 2) {
                            if (HandlerThreadC0009e.this.f43C.size() != 0 && !GifGenerate.this.f11k) {
                                HandlerThreadC0009e.this.m104a(HandlerThreadC0009e.this.f72x, HandlerThreadC0009e.this.f43C);
                            }
                            HandlerThreadC0009e.this.m85f();
                        }
                        HandlerThreadC0009e.this.f67s = false;
                        GifGenerate.this.f2a.pause();
                        GifGenerate.this.seekTo(HandlerThreadC0009e.this.f73y);
                        HandlerThreadC0009e.this.f41A = HandlerThreadC0009e.this.f74z;
                        if (GifGenerate.this.f15o == 1) {
                            GifGenerate.this.f15o = 0;
                            GifGenerate.this.m15c(0);
                            break;
                        } else if (!GifGenerate.this.f11k) {
                            GifGenerate.this.f15o = 4;
                            GifGenerate.this.m15c(4);
                            break;
                        } else {
                            GifGenerate.this.f15o = 3;
                            GifGenerate.this.m15c(3);
                            break;
                        }
                    case 23:
                        HandlerThreadC0009e.this.f44D = ((Integer) message.obj).intValue();
                        HandlerThreadC0009e.this.f45E = message.arg1;
                        break;
                }
            }
        }

        /* renamed from: a */
        public void m53a(int i) {
            if (GifGenerate.this.f4d.f379p > GifGenerate.this.f4d.f378o) {
                GifGenerate.this.f4d.m385a(i, false);
            } else {
                GifGenerate.this.f4d.m385a(i, true);
            }
        }

        /* renamed from: a */
        public void m61a(Bitmap bitmap) {
            this.f57i = bitmap.getWidth();
            this.f58j = bitmap.getHeight();
            GLES20.glBindTexture(3553, this.f56h);
            if (bitmap.isRecycled()) {
                GifGenerate.m16c("updateBitmap with recycle bitmap!", 1);
            } else {
                GLUtils.texImage2D(3553, 0, bitmap, 0);
            }
            this.f67s = true;
        }

        /* renamed from: a */
        public Surface m49a() {
            if (this.f54f.m121e()) {
                this.f56h = C0014b.m123a(GifGenerate.this.f4d.f376m);
                this.f55g = new SurfaceTexture(this.f56h);
                this.f55g.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: GeneralFunction.Player.GifGenerate.GifGenerate.e.2
                    AnonymousClass2() {
                    }

                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                        Message obtain = Message.obtain();
                        obtain.what = 3;
                        HandlerThreadC0009e.this.m103a(obtain);
                    }
                });
                return new Surface(this.f55g);
            }
            throw new IllegalStateException("Cannot get video decode surface without GL context");
        }

        /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$e$2 */
        class AnonymousClass2 implements SurfaceTexture.OnFrameAvailableListener {
            AnonymousClass2() {
            }

            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                Message obtain = Message.obtain();
                obtain.what = 3;
                HandlerThreadC0009e.this.m103a(obtain);
            }
        }

        /* renamed from: a */
        public void m62a(SurfaceTexture surfaceTexture, int i, int i2) {
            if (!this.f65q) {
                this.f65q = true;
                GifGenerate.m16c("surfacePrepare w: " + i + " h: " + i2, 3);
                this.f54f.m117a(surfaceTexture);
                Choreographer.getInstance().postFrameCallback(this.f53e);
                GLES20.glViewport(0, 0, i, i2);
                C0014b.m124a("glViewport");
                m91h();
                Matrix.setIdentityM(this.f61m, 0);
                Matrix.setRotateM(this.f60l, 0, 90.0f, 1.0f, 0.0f, 0.0f);
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                this.f48H = new C0012a(GifGenerate.this.getContext(), GifGenerate.this.f4d.f376m);
                switch (GifGenerate.this.f4d.f376m) {
                    case 1:
                        if (GifGenerate.this.f2a == null) {
                            GifGenerate.this.m7a(GifGenerate.this.f20t);
                            break;
                        } else {
                            GifGenerate.this.f2a.setSurface(GifGenerate.this.f19s.m49a());
                            GifGenerate.this.m17d(2);
                            GifGenerate.this.m10b(2);
                            break;
                        }
                    case 3:
                        this.f56h = C0014b.m123a(GifGenerate.this.f4d.f376m);
                        GifGenerate.this.m26i();
                        if (GifGenerate.this.f17q != null) {
                            GifGenerate.this.m7a(GifGenerate.this.f17q);
                            break;
                        }
                        break;
                }
                if (GifGenerate.this.f4d.f382s == 1 || GifGenerate.this.f4d.f382s == 0) {
                    Matrix.setIdentityM(GifGenerate.this.f4d.f389z, 0);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011e  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void m66b() {
            /*
                Method dump skipped, instructions count: 378
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.GifGenerate.GifGenerate.HandlerThreadC0009e.m66b():void");
        }

        /* renamed from: c */
        private void m70c() {
            if (this.f67s) {
                if (GifGenerate.this.f4d.f376m == 3 && !this.f68t) {
                    if (GifGenerate.this.f15o == 1 || GifGenerate.this.f15o == 2) {
                        if (this.f41A <= this.f42B) {
                            if (GifGenerate.this.f15o == 2) {
                                if (this.f43C.size() != 0) {
                                    GifGenerate.m16c("bitmapArrayList.size()" + this.f43C.size(), 2);
                                    if (!GifGenerate.this.f11k) {
                                        m104a(this.f72x, this.f43C);
                                    }
                                }
                                m85f();
                            }
                            this.f41A = this.f74z;
                            this.f67s = false;
                            if (GifGenerate.this.f15o == 1) {
                                GifGenerate.this.f15o = 0;
                                GifGenerate.this.m15c(0);
                                return;
                            } else if (!GifGenerate.this.f11k) {
                                GifGenerate.this.f15o = 4;
                                GifGenerate.this.m15c(4);
                                return;
                            } else {
                                GifGenerate.this.f15o = 3;
                                GifGenerate.this.m15c(3);
                                return;
                            }
                        }
                        m67b(this.f69u);
                        return;
                    }
                    this.f67s = false;
                    return;
                }
                if (this.f68t) {
                    GifGenerate.this.f15o = 0;
                    if (GifGenerate.this.f2a != null) {
                        GifGenerate.this.f2a.pause();
                        GifGenerate.this.seekTo(this.f73y);
                    }
                    m71c(this.f69u);
                    m85f();
                    this.f41A = this.f74z;
                    this.f68t = false;
                    this.f67s = true;
                    GifGenerate.this.m15c(0);
                    GifGenerate.this.f15o = 0;
                    return;
                }
                this.f67s = false;
            }
        }

        /* renamed from: d */
        private void m78d() {
            if (GifGenerate.this.f4d.f376m == 1) {
                if (!this.f68t) {
                    Log.e(GifGenerate.f0c, "getCurrentPosition" + GifGenerate.this.f2a.getCurrentPosition());
                    Log.e(GifGenerate.f0c, "playVideoEndTime" + GifGenerate.this.f12l);
                    if (GifGenerate.this.getCurrentPosition() / 1000 >= GifGenerate.this.f12l) {
                        if (GifGenerate.this.f15o == 2) {
                            if (this.f43C.size() != 0 && !GifGenerate.this.f11k) {
                                m104a(this.f72x, this.f43C);
                            }
                            m85f();
                        }
                        this.f67s = false;
                        GifGenerate.this.f2a.pause();
                        GifGenerate.this.seekTo(this.f73y);
                        this.f41A = this.f74z;
                        if (GifGenerate.this.f15o == 1) {
                            GifGenerate.this.f15o = 0;
                            GifGenerate.this.m15c(0);
                        } else if (!GifGenerate.this.f11k) {
                            GifGenerate.this.f15o = 4;
                            GifGenerate.this.m15c(4);
                        } else {
                            GifGenerate.this.f15o = 3;
                            GifGenerate.this.m15c(3);
                        }
                    }
                } else {
                    GifGenerate.this.f15o = 0;
                    this.f67s = false;
                    if (GifGenerate.this.f2a != null) {
                        GifGenerate.this.f2a.pause();
                        GifGenerate.this.seekTo(this.f73y);
                    }
                    m85f();
                    this.f41A = this.f74z;
                    this.f68t = false;
                    GifGenerate.this.m15c(0);
                    GifGenerate.this.f15o = 0;
                }
                this.f67s = false;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void m104a(java.lang.String r4, java.util.ArrayList<android.graphics.Bitmap> r5) {
            /*
                r3 = this;
                r2 = 0
                java.io.File r0 = new java.io.File     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L41
                r0.<init>(r4)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L41
                java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L41
                r1.<init>(r0)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L41
                byte[] r0 = r3.m105a(r5)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L50
                if (r0 == 0) goto L14
                r1.write(r0)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L50
            L14:
                if (r1 == 0) goto L19
                r1.close()     // Catch: java.io.IOException -> L2c
            L19:
                GeneralFunction.Player.GifGenerate.GifGenerate r0 = GeneralFunction.Player.GifGenerate.GifGenerate.this
                boolean r0 = GeneralFunction.Player.GifGenerate.GifGenerate.m19d(r0)
                r1 = 1
                if (r0 == r1) goto L2b
                GeneralFunction.Player.GifGenerate.GifGenerate r0 = GeneralFunction.Player.GifGenerate.GifGenerate.this
                android.content.Context r0 = GeneralFunction.Player.GifGenerate.GifGenerate.m27j(r0)
                GeneralFunction.p008g.C0069a.m641a(r0, r4)
            L2b:
                return
            L2c:
                r0 = move-exception
                r0.printStackTrace()
                goto L19
            L31:
                r0 = move-exception
                r1 = r2
            L33:
                r0.printStackTrace()     // Catch: java.lang.Throwable -> L4d
                if (r1 == 0) goto L19
                r1.close()     // Catch: java.io.IOException -> L3c
                goto L19
            L3c:
                r0 = move-exception
                r0.printStackTrace()
                goto L19
            L41:
                r0 = move-exception
            L42:
                if (r2 == 0) goto L47
                r2.close()     // Catch: java.io.IOException -> L48
            L47:
                throw r0
            L48:
                r1 = move-exception
                r1.printStackTrace()
                goto L47
            L4d:
                r0 = move-exception
                r2 = r1
                goto L42
            L50:
                r0 = move-exception
                goto L33
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.GifGenerate.GifGenerate.HandlerThreadC0009e.m104a(java.lang.String, java.util.ArrayList):void");
        }

        /* renamed from: b */
        public void m67b(int i) {
            if (GifGenerate.this.f15o == 1) {
                try {
                    Thread.sleep(230L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if ((this.f41A >= this.f42B && GifGenerate.this.f15o == 1) || (this.f41A >= this.f42B && GifGenerate.this.f15o == 2)) {
                if (i == 0) {
                    GifGenerate.this.f4d.f380q += 10.0f;
                } else {
                    GifGenerate.this.f4d.f380q -= 10.0f;
                }
                this.f41A -= 10;
            }
            m91h();
            GifGenerate.this.f4d.f381r = Math.max(-85.0f, Math.min(85.0f, GifGenerate.this.f4d.f381r));
            float radians = (float) Math.toRadians(90.0f - GifGenerate.this.f4d.f381r);
            float radians2 = (float) Math.toRadians(GifGenerate.this.f4d.f380q);
            this.f63o[0] = (float) (GifGenerate.this.f4d.f375l * Math.sin(radians) * Math.cos(radians2));
            this.f63o[1] = (float) (GifGenerate.this.f4d.f375l * Math.cos(radians));
            this.f63o[2] = (float) (GifGenerate.this.f4d.f375l * Math.sin(radians) * Math.sin(radians2));
            float[] fArr = {(float) ((GifGenerate.this.f4d.f373j - 100.0f) * Math.sin(radians) * Math.cos(radians2)), (float) ((GifGenerate.this.f4d.f373j - 100.0f) * Math.cos(radians)), (float) (Math.sin(radians2) * (GifGenerate.this.f4d.f373j - 100.0f) * Math.sin(radians))};
            Matrix.setLookAtM(this.f61m, 0, this.f63o[0], this.f63o[1], this.f63o[2], fArr[0], fArr[1], fArr[2], 0.0f, 1.0f, 0.0f);
        }

        /* renamed from: c */
        private void m71c(int i) {
            if (i == 0) {
                GifGenerate.this.f4d.f380q -= this.f74z - this.f41A;
            } else {
                GifGenerate.this.f4d.f380q += this.f74z - this.f41A;
            }
        }

        /* renamed from: a */
        public byte[] m105a(ArrayList<Bitmap> arrayList) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C0736a c0736a = new C0736a();
            this.f49a = 0;
            c0736a.m4586b(0);
            c0736a.m4587c(18);
            if (this.f70v == 2 || this.f70v == 4) {
                C0739d[] c0739dArr = {new C0739d(10.0f, 10, this.f45E - ((this.f45E / 7) - 10), this.f46F - 20, this.f47G)};
                c0736a.m4581a(new int[]{255, 255, 255, 254, 254, 254});
                c0736a.m4582a(c0739dArr);
            }
            if (GifGenerate.this.f4d.f376m == 3) {
                c0736a.m4579a(230);
            } else {
                c0736a.m4579a(100);
            }
            GifGenerate.m16c("bitmaps.size()" + arrayList.size(), 3);
            c0736a.m4585a(byteArrayOutputStream);
            Iterator<Bitmap> it = arrayList.iterator();
            while (it.hasNext()) {
                Bitmap next = it.next();
                GifGenerate.m16c("count" + this.f49a, 3);
                if (!GifGenerate.this.f11k) {
                    if (next != null) {
                        c0736a.m4584a(next);
                        next.recycle();
                    }
                    this.f49a++;
                } else {
                    byteArrayOutputStream.reset();
                    c0736a.m4583a();
                    return null;
                }
            }
            c0736a.m4583a();
            return byteArrayOutputStream.toByteArray();
        }

        /* renamed from: e */
        public void m82e() {
            this.f43C = new ArrayList<>();
        }

        /* renamed from: f */
        public void m85f() {
            GifGenerate.m16c("imageListClean", 2);
            if (this.f43C != null) {
                if (this.f43C.size() != 0) {
                    for (int i = 0; i < this.f43C.size(); i++) {
                        this.f43C.get(i).recycle();
                    }
                    this.f43C.clear();
                }
                GifGenerate.m16c("imageListCleaEnd", 2);
            }
            GifGenerate.this.f3b = 0;
        }

        /* renamed from: a */
        private void m54a(int i, int i2) {
            Bitmap bitmap;
            if (!this.f68t) {
                if (!GifGenerate.this.f11k) {
                    bitmap = GifGenerate.this.getBitmap();
                } else {
                    bitmap = null;
                }
                if (bitmap != null) {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, this.f44D, this.f45E, true);
                    if (!GifGenerate.this.f11k) {
                        try {
                            Thread.sleep(40L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    Bitmap m65b = m65b(createScaledBitmap);
                    if (!GifGenerate.this.f11k) {
                        this.f43C.add(m65b);
                    }
                    if (!GifGenerate.this.f11k) {
                        try {
                            Thread.sleep(40L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                    bitmap.recycle();
                    if (createScaledBitmap != m65b) {
                        createScaledBitmap.recycle();
                    }
                    if (!GifGenerate.this.f11k) {
                        try {
                            Thread.sleep(40L);
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                    }
                    GifGenerate.m16c("++++Finish++++++", 2);
                }
            }
            GifGenerate.m16c("++++Finish++++++", 2);
        }

        /* renamed from: b */
        private Bitmap m65b(Bitmap bitmap) {
            Bitmap m77d = m77d(this.f70v);
            if (m77d == null) {
                GifGenerate.m16c("No WarterMark", 3);
            } else {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(m77d, this.f46F, this.f47G, false);
                Canvas canvas = new Canvas(bitmap);
                canvas.drawBitmap(bitmap, new android.graphics.Matrix(), null);
                canvas.drawBitmap(createScaledBitmap, 10.0f, this.f45E - (this.f45E / 7), (Paint) null);
                canvas.save();
                canvas.restore();
                m77d.recycle();
                createScaledBitmap.recycle();
            }
            return bitmap;
        }

        /* renamed from: d */
        private Bitmap m77d(int i) {
            switch (i) {
                case 0:
                default:
                    return null;
                case 1:
                    return BitmapFactory.decodeResource(GifGenerate.this.f16p.getResources(), R.drawable.gallery_logolist_logo_1_500x70);
                case 2:
                    return BitmapFactory.decodeResource(GifGenerate.this.f16p.getResources(), R.drawable.gallery_logolist_logo_2_original);
                case 3:
                    return BitmapFactory.decodeResource(GifGenerate.this.f16p.getResources(), R.drawable.gallery_logolist_logo_3_500x70);
                case 4:
                    return BitmapFactory.decodeResource(GifGenerate.this.f16p.getResources(), R.drawable.gallery_logolist_logo_4_original);
            }
        }

        /* renamed from: g */
        private float m87g() {
            return GifGenerate.this.f4d.f365b == 0 ? GifGenerate.this.f4d.f378o / GifGenerate.this.f4d.f379p : (GifGenerate.this.f4d.f378o / 2.0f) / GifGenerate.this.f4d.f379p;
        }

        /* renamed from: h */
        private void m91h() {
            float m87g = m87g();
            int i = GifGenerate.this.f4d.f331a;
            C0041h unused = GifGenerate.this.f4d;
            if (i != 5) {
                int i2 = GifGenerate.this.f4d.f331a;
                C0041h unused2 = GifGenerate.this.f4d;
                if (i2 != 3) {
                    int i3 = GifGenerate.this.f4d.f331a;
                    C0041h unused3 = GifGenerate.this.f4d;
                    if (i3 != 6) {
                        if (GifGenerate.this.f4d.f375l < 0.0f) {
                            Matrix.perspectiveM(this.f62n, 0, GifGenerate.this.f4d.f369f, m87g, 0.1f, GifGenerate.this.f4d.f366c);
                            return;
                        } else {
                            Matrix.perspectiveM(this.f62n, 0, GifGenerate.this.f4d.f369f, m87g, GifGenerate.this.f4d.f375l, GifGenerate.this.f4d.f366c);
                            return;
                        }
                    }
                }
                if (GifGenerate.this.f4d.f375l < 0.0f) {
                    Matrix.perspectiveM(this.f62n, 0, GifGenerate.this.f4d.f369f, m87g, 0.1f, GifGenerate.this.f4d.f366c);
                    return;
                } else {
                    Matrix.perspectiveM(this.f62n, 0, GifGenerate.this.f4d.f369f, m87g, GifGenerate.this.f4d.f375l - 300.0f, GifGenerate.this.f4d.f366c);
                    return;
                }
            }
            Matrix.perspectiveM(this.f62n, 0, GifGenerate.this.f4d.f369f, m87g, 0.1f, GifGenerate.this.f4d.f366c);
        }

        /* renamed from: i */
        private void m95i() {
            float radians;
            m91h();
            GifGenerate.this.f4d.f381r = Math.max(-85.0f, Math.min(85.0f, GifGenerate.this.f4d.f381r));
            float radians2 = (float) Math.toRadians(90.0f - GifGenerate.this.f4d.f381r);
            if (GifGenerate.this.f4d.f382s == 1) {
                radians = (float) Math.toRadians(GifGenerate.this.f4d.f380q + 90.0f);
            } else {
                radians = GifGenerate.this.f4d.f382s == 3 ? (float) Math.toRadians(90.0d) : (float) Math.toRadians(GifGenerate.this.f4d.f380q);
            }
            this.f63o[0] = (float) (GifGenerate.this.f4d.f375l * Math.sin(radians2) * Math.cos(radians));
            this.f63o[1] = (float) (GifGenerate.this.f4d.f375l * Math.cos(radians2));
            this.f63o[2] = (float) (GifGenerate.this.f4d.f375l * Math.sin(radians2) * Math.sin(radians));
            float[] fArr = {(float) ((GifGenerate.this.f4d.f373j - 100.0f) * Math.sin(radians2) * Math.cos(radians)), (float) ((GifGenerate.this.f4d.f373j - 100.0f) * Math.cos(radians2)), (float) (Math.sin(radians2) * (GifGenerate.this.f4d.f373j - 100.0f) * Math.sin(radians))};
            Matrix.setLookAtM(this.f61m, 0, this.f63o[0], this.f63o[1], this.f63o[2], fArr[0], fArr[1], fArr[2], 0.0f, 1.0f, 0.0f);
        }

        /* renamed from: j */
        public void m97j() {
            this.f66r = true;
        }

        /* renamed from: a */
        public void m63a(boolean z) {
            GifGenerate.m16c("surfaceDestroy", 3);
            if (this.f65q) {
                this.f65q = false;
                GifGenerate.m16c("start_surfaceDestroy", 3);
                GifGenerate.this.f15o = 3;
                GifGenerate.this.m15c(3);
                GifGenerate.this.f4d.f376m = 0;
                GifGenerate.this.f15o = 0;
                Choreographer.getInstance().removeFrameCallback(this.f53e);
                if (!z) {
                    this.f52d = null;
                    if (this.f54f != null) {
                        m101k();
                        this.f54f.m120d();
                        this.f54f = null;
                    }
                    if (GifGenerate.this.f19s != null) {
                        GifGenerate.this.f19s.quit();
                        GifGenerate.this.f19s = null;
                    }
                    GifGenerate.this.f4d.f331a = 0;
                    if (GifGenerate.this.f2a != null) {
                        try {
                            Thread.sleep(30L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        GifGenerate.this.f2a.stop();
                        GifGenerate.this.f2a.release();
                        GifGenerate.this.f2a = null;
                    }
                    this.f43C = null;
                } else {
                    if (this.f54f != null) {
                        this.f54f.m120d();
                    }
                    if (GifGenerate.this.f2a != null) {
                        try {
                            Thread.sleep(30L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                        GifGenerate.this.f2a.setSurface(null);
                    }
                }
                if (GifGenerate.this.f18r != null) {
                    GifGenerate.this.f18r.m45a();
                    GifGenerate.this.f18r.interrupt();
                    GifGenerate.this.f18r = null;
                }
                if (this.f56h != -1) {
                    GLES20.glDeleteTextures(1, new int[]{this.f56h}, 0);
                    this.f56h = -1;
                }
                if (this.f55g != null) {
                    this.f55g.release();
                    this.f55g = null;
                    this.f66r = false;
                }
                Matrix.setIdentityM(GifGenerate.this.f4d.f389z, 0);
                this.f67s = false;
                if (this.f48H != null) {
                    this.f48H.m113a();
                    this.f48H = null;
                }
                GifGenerate.this.f24x.clear();
                if (!z) {
                    GifGenerate.this.m17d(5);
                    GifGenerate.this.m10b(5);
                    GifGenerate.this.m17d(1);
                    GifGenerate.this.m10b(1);
                }
                GifGenerate.m16c("finish_surfaceDestroy", 3);
            }
        }

        /* renamed from: k */
        private void m101k() {
            GLES20.glClear(16384);
            C0014b.m124a("glClear");
            this.f54f.m118b();
        }

        /* renamed from: a */
        public void m60a(C0010f c0010f) {
            GifGenerate.this.f4d.f380q = (((-c0010f.f78a) * 0.1f) + GifGenerate.this.f4d.f380q) % 360.0f;
            GifGenerate.this.f4d.f381r = ((-c0010f.f79b) * 0.1f) + GifGenerate.this.f4d.f381r;
            this.f67s = true;
        }

        /* renamed from: a */
        public void m52a(float f, boolean z) {
            float f2 = 50.0f;
            if (z) {
                GifGenerate.this.f4d.m388b();
            } else {
                if (((int) f) == 1) {
                    f2 = -50.0f;
                }
                GifGenerate.this.f4d.m383a(f2 + GifGenerate.this.f4d.f375l);
            }
            this.f67s = true;
        }
    }

    /* renamed from: GeneralFunction.Player.GifGenerate.GifGenerate$b */
    public class C0006b extends Thread {

        /* renamed from: b */
        private int f37b = 30;

        /* renamed from: c */
        private int f38c = m44a(this.f37b, 0);

        /* renamed from: d */
        private long f39d = 0;

        /* renamed from: e */
        private boolean f40e = false;

        public C0006b() {
        }

        /* renamed from: a */
        public void m46a(int i) {
            this.f37b = i;
            this.f38c = m44a(this.f37b, 0);
        }

        /* renamed from: a */
        private int m44a(int i, int i2) {
            float f = i;
            return (int) (1000.0f / ((f + ((i2 / (f / 6.0f)) * (f / 15.0f))) + 1.0f));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!Thread.interrupted()) {
                if (!this.f40e && !GifGenerate.this.f24x.isEmpty()) {
                    try {
                        Message message = (Message) GifGenerate.this.f24x.poll(50L, TimeUnit.MICROSECONDS);
                        this.f38c = m44a(this.f37b, GifGenerate.this.f24x.size());
                        long currentTimeMillis = this.f38c - (System.currentTimeMillis() - this.f39d);
                        if (currentTimeMillis > 0) {
                            Thread.sleep(currentTimeMillis);
                        }
                        this.f39d = System.currentTimeMillis();
                        if (message != null) {
                            GifGenerate.this.m1a(message);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* renamed from: a */
        public void m45a() {
            this.f40e = true;
        }
    }
}
