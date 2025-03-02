package GeneralFunction.p021r;

import GeneralFunction.C0052d;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p022s.C0101a;
import GeneralFunction.p022s.C0102b;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: GeneralFunction.r.b */
/* loaded from: classes.dex */
public class C0098b {

    /* renamed from: a */
    private String f737a;

    /* renamed from: b */
    private String f738b;

    /* renamed from: c */
    private String f739c;

    /* renamed from: d */
    private C0099c f740d;

    /* renamed from: h */
    private boolean f744h;

    /* renamed from: e */
    private MediaMuxer f741e = null;

    /* renamed from: f */
    private HandlerThread f742f = null;

    /* renamed from: g */
    private Handler f743g = null;

    /* renamed from: i */
    private a f745i = null;

    /* renamed from: GeneralFunction.r.b$a */
    public interface a {
        /* renamed from: a */
        void mo948a(long j);

        /* renamed from: a */
        void mo949a(String str);

        /* renamed from: a */
        void mo950a(boolean z);
    }

    /* renamed from: a */
    private static void m932a(String str, int i) {
        C0052d.m465a("Mp4Muxer", str, i);
    }

    public C0098b(String str, boolean z, String str2, String str3) {
        this.f737a = null;
        this.f738b = null;
        this.f739c = null;
        this.f740d = null;
        this.f744h = true;
        this.f737a = str;
        this.f744h = z;
        this.f738b = str2;
        this.f739c = str3;
        this.f740d = new C0099c();
        m933c();
        m942a(1, 0L);
    }

    /* renamed from: a */
    public int m938a(MediaFormat mediaFormat) {
        if (!this.f744h) {
            m932a("Should not do AddAudioTrack.", 0);
            return -1;
        }
        Message message = new Message();
        message.what = 3;
        message.obj = mediaFormat;
        m944a(message, 0L);
        return 0;
    }

    /* renamed from: b */
    public void m947b(MediaFormat mediaFormat) {
        Message message = new Message();
        message.what = 2;
        message.obj = mediaFormat;
        m944a(message, 0L);
    }

    /* renamed from: a */
    public void m941a(int i) {
        this.f740d.f758l = i;
    }

    /* renamed from: a */
    public int m937a() {
        if (!this.f744h) {
            m932a("Should not do FinishAudioTrack.", 0);
            return -1;
        }
        m942a(7, 0L);
        return 0;
    }

    /* renamed from: b */
    public void m946b() {
        m942a(6, 0L);
    }

    /* renamed from: a */
    public int m939a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (!this.f744h) {
            m932a("Should not do InputAudioFrame.", 0);
            return -1;
        }
        C0100d c0100d = new C0100d(-1, byteBuffer, bufferInfo);
        Message message = new Message();
        message.what = 4;
        message.obj = c0100d;
        m944a(message, 0L);
        return 0;
    }

    /* renamed from: a */
    public int m940a(byte[] bArr, int i, long j, boolean z) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.position(0);
        wrap.limit(i);
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        if (z) {
            bufferInfo.set(this.f740d.f758l, bArr.length - this.f740d.f758l, j * 1000, 1);
        } else {
            bufferInfo.set(0, i, j * 1000, 0);
        }
        return m945b(wrap, bufferInfo);
    }

    /* renamed from: b */
    public int m945b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        C0100d c0100d = new C0100d(-1, byteBuffer, bufferInfo);
        Message message = new Message();
        message.what = 5;
        message.obj = c0100d;
        m944a(message, 0L);
        return 0;
    }

    /* renamed from: c */
    private void m933c() {
        this.f742f = new HandlerThread("RecordingServer");
        this.f742f.start();
        this.f743g = new Handler(this.f742f.getLooper()) { // from class: GeneralFunction.r.b.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                C0098b.this.m931a(message);
            }
        };
    }

    /* renamed from: GeneralFunction.r.b$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            C0098b.this.m931a(message);
        }
    }

    /* renamed from: a */
    public void m942a(int i, long j) {
        Message message = new Message();
        message.what = i;
        m944a(message, j);
    }

    /* renamed from: a */
    public void m944a(Message message, long j) {
        this.f743g.sendMessageDelayed(message, j);
    }

    /* renamed from: a */
    public void m931a(Message message) {
        switch (message.what) {
            case 1:
                try {
                    this.f741e = new MediaMuxer(this.f737a, 0);
                    this.f745i.mo950a(this.f741e != null);
                    break;
                } catch (IOException e) {
                    e.printStackTrace();
                    m932a("MediaMuxer init fail with IOException:" + this.f737a, 2);
                    this.f745i.mo950a(false);
                    return;
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    m932a("MediaMuxer init fail with IllegalArgumentException:" + this.f737a, 2);
                    this.f745i.mo950a(false);
                    return;
                }
            case 2:
                if (this.f741e == null) {
                    m932a("MSG_RECORDING_ADD_VIDEO_TRACK fail: muxer == null", 0);
                    break;
                } else {
                    this.f740d.f748b = (MediaFormat) message.obj;
                    if (this.f740d.f748b != null && this.f740d.f750d < 0) {
                        this.f740d.f750d = this.f741e.addTrack(this.f740d.f748b);
                    }
                    if (this.f740d.f749c >= 0 && this.f740d.f750d >= 0) {
                        this.f741e.start();
                        this.f740d.f755i = true;
                        break;
                    }
                }
                break;
            case 3:
                if (this.f741e == null) {
                    m932a("MSG_RECORDING_ADD_AUDIO_TRACK fail: muxer == null", 0);
                    break;
                } else {
                    this.f740d.f747a = (MediaFormat) message.obj;
                    if (this.f740d.f747a != null && this.f741e != null && this.f740d.f749c < 0) {
                        this.f740d.f749c = this.f741e.addTrack(this.f740d.f747a);
                    }
                    if (this.f740d.f749c >= 0 && this.f740d.f750d >= 0) {
                        this.f741e.start();
                        this.f740d.f755i = true;
                        break;
                    }
                }
                break;
            case 4:
                C0100d c0100d = (C0100d) message.obj;
                if (this.f740d.f755i && this.f740d.f756j && c0100d.f761c.presentationTimeUs > this.f740d.f757k) {
                    this.f740d.f751e++;
                    c0100d.f759a = this.f740d.f749c;
                    this.f741e.writeSampleData(c0100d.f759a, c0100d.f760b, c0100d.f761c);
                    break;
                }
                break;
            case 5:
                C0100d c0100d2 = (C0100d) message.obj;
                if (this.f740d.f755i) {
                    if (!this.f740d.f756j) {
                        if ((c0100d2.f761c.flags & 1) != 0) {
                            this.f740d.f756j = true;
                            this.f740d.f757k = c0100d2.f761c.presentationTimeUs;
                            this.f740d.f752f++;
                            c0100d2.f759a = this.f740d.f750d;
                            this.f741e.writeSampleData(c0100d2.f759a, c0100d2.f760b, c0100d2.f761c);
                            if (this.f745i != null) {
                                this.f745i.mo948a(this.f740d.f757k);
                                break;
                            }
                        } else {
                            m932a("InputVideoFrame Fail: First I frame not ready!!! Skip this frame.  TimeStamp:" + c0100d2.f761c.presentationTimeUs, 1);
                            break;
                        }
                    } else {
                        this.f740d.f752f++;
                        c0100d2.f759a = this.f740d.f750d;
                        this.f741e.writeSampleData(c0100d2.f759a, c0100d2.f760b, c0100d2.f761c);
                        break;
                    }
                } else {
                    m932a("InputVideoFrame Fail: Muxer not ready!!! Skip this frame.  TimeStamp:" + c0100d2.f761c.presentationTimeUs, 1);
                    break;
                }
                break;
            case 6:
            case 7:
                if (message.what == 6) {
                    this.f740d.f754h = true;
                } else {
                    this.f740d.f753g = true;
                }
                if (this.f740d.f753g && this.f740d.f754h) {
                    try {
                        m934d();
                        if (this.f740d.f752f != 0) {
                            m932a("createThumbnail Start: " + System.currentTimeMillis(), 3);
                            m935e();
                            m932a("createThumbnail End, addMetaDataInfo Start: " + System.currentTimeMillis(), 3);
                            m936f();
                            m932a("addMetaDataInfo End: " + System.currentTimeMillis(), 3);
                        } else {
                            r0 = true;
                        }
                    } catch (IllegalStateException e3) {
                        e3.printStackTrace();
                        m932a("Muxer Stop Fail", 2);
                        r0 = true;
                    }
                    if (r0) {
                        File file = new File(this.f737a);
                        if (file.exists()) {
                            file.delete();
                        }
                        this.f737a = null;
                    }
                    if (this.f745i != null) {
                        this.f745i.mo949a(this.f737a);
                    }
                    this.f742f.quit();
                    break;
                }
                break;
        }
    }

    /* renamed from: d */
    private void m934d() {
        if (this.f741e != null) {
            if (this.f740d.f755i) {
                this.f741e.stop();
            }
            this.f741e.release();
            this.f741e = null;
            this.f740d.f755i = false;
            this.f740d.f756j = false;
        }
    }

    /* renamed from: e */
    private void m935e() {
        if (new File(this.f737a).exists()) {
            C0069a.m648d(this.f737a, C0069a.m649d(this.f737a));
        } else {
            m932a("Original File Not Exist!", 1);
        }
    }

    /* renamed from: f */
    private void m936f() {
        if (new File(this.f737a).exists()) {
            C0101a c0101a = new C0101a();
            C0102b c0102b = new C0102b();
            c0102b.f763a = this.f738b;
            c0102b.f764b = this.f739c;
            int m954a = c0101a.m954a(this.f737a, c0102b);
            if (m954a != 0) {
                m932a("addMetaDataInfo fail: " + m954a, 1);
                return;
            }
            return;
        }
        m932a("Original File Not Exist!", 1);
    }

    /* renamed from: a */
    public void m943a(a aVar) {
        this.f745i = aVar;
    }
}
