package GeneralFunction.p021r;

import GeneralFunction.C0052d;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* renamed from: GeneralFunction.r.a */
/* loaded from: classes.dex */
public class C0097a {

    /* renamed from: b */
    a f729b;

    /* renamed from: c */
    private MediaCodec f730c;

    /* renamed from: d */
    private AudioRecord f731d;

    /* renamed from: a */
    final int f728a = 50;

    /* renamed from: e */
    private boolean f732e = false;

    /* renamed from: f */
    private long f733f = 0;

    /* renamed from: g */
    private long f734g = 0;

    /* renamed from: h */
    private boolean f735h = false;

    /* renamed from: GeneralFunction.r.a$a */
    public interface a {
        /* renamed from: a */
        void mo927a();

        /* renamed from: a */
        void mo928a(MediaFormat mediaFormat);

        /* renamed from: a */
        void mo929a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);
    }

    /* renamed from: a */
    public void m922a(String str, int i) {
        C0052d.m465a("AudioProcess", str, i);
    }

    public C0097a(a aVar) {
        m921a(aVar);
        m916d();
        m918e();
    }

    /* renamed from: a */
    public void m923a(boolean z) {
        this.f735h = z;
    }

    /* renamed from: d */
    private void m916d() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(IMediaFormat.KEY_MIME, MimeTypes.AUDIO_AAC);
        mediaFormat.setInteger("aac-profile", 2);
        mediaFormat.setInteger("sample-rate", 44100);
        mediaFormat.setInteger("channel-count", 1);
        mediaFormat.setInteger(IjkMediaMeta.IJKM_KEY_BITRATE, 128000);
        mediaFormat.setInteger("max-input-size", 16384);
        try {
            this.f730c = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AAC);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.f730c.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
        this.f730c.start();
    }

    /* renamed from: e */
    private void m918e() {
        int minBufferSize = AudioRecord.getMinBufferSize(44100, 16, 2);
        int i = 10240;
        if (10240 < minBufferSize) {
            i = ((minBufferSize / 1024) + 1) * 1024 * 2;
        }
        this.f731d = new AudioRecord(5, 44100, 16, 2, i);
    }

    /* renamed from: a */
    public void m920a() {
        if (this.f731d != null) {
            this.f732e = false;
            this.f734g = 0L;
            new Thread(new Runnable() { // from class: GeneralFunction.r.a.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0097a.this.f731d.startRecording();
                    C0097a.this.f733f = System.currentTimeMillis() * 1000;
                    while (!C0097a.this.f732e) {
                        C0097a.this.m913a(C0097a.this.f730c, C0097a.this.f732e);
                        C0097a.this.m925b(false);
                    }
                    C0097a.this.m922a("Audio loop caught fullStopReceived " + C0097a.this.f732e, 2);
                    C0097a.this.m913a(C0097a.this.f730c, false);
                    C0097a.this.m925b(true);
                    C0097a.this.m922a("Stopping AudioRecord", 2);
                    C0097a.this.m913a(C0097a.this.f730c, C0097a.this.f732e);
                    C0097a.this.f731d.stop();
                    C0097a.this.m919f();
                }
            }).start();
        }
    }

    /* renamed from: GeneralFunction.r.a$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0097a.this.f731d.startRecording();
            C0097a.this.f733f = System.currentTimeMillis() * 1000;
            while (!C0097a.this.f732e) {
                C0097a.this.m913a(C0097a.this.f730c, C0097a.this.f732e);
                C0097a.this.m925b(false);
            }
            C0097a.this.m922a("Audio loop caught fullStopReceived " + C0097a.this.f732e, 2);
            C0097a.this.m913a(C0097a.this.f730c, false);
            C0097a.this.m925b(true);
            C0097a.this.m922a("Stopping AudioRecord", 2);
            C0097a.this.m913a(C0097a.this.f730c, C0097a.this.f732e);
            C0097a.this.f731d.stop();
            C0097a.this.m919f();
        }
    }

    /* renamed from: b */
    public void m924b() {
        this.f732e = true;
    }

    /* renamed from: b */
    public void m925b(boolean z) {
        try {
            ByteBuffer[] inputBuffers = this.f730c.getInputBuffers();
            int dequeueInputBuffer = this.f730c.dequeueInputBuffer(50L);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer = inputBuffers[dequeueInputBuffer];
                byteBuffer.clear();
                int read = this.f731d.read(byteBuffer, 2048);
                if (this.f735h) {
                    byteBuffer.clear();
                    byteBuffer.put(new byte[read]);
                    byteBuffer.clear();
                }
                if (read != 2048) {
                    m922a("audioInputLength not correct:" + read, 0);
                }
                if (read == -3) {
                    m922a("Audio read error: invalid operation", 0);
                } else if (read == -2) {
                    m922a("Audio read error: bad value", 0);
                }
                long j = this.f733f + ((((this.f734g * 1024) * 1000) * 1000) / 44100);
                if (z) {
                    m922a("EOS received in sendAudioToEncoder", 2);
                    this.f730c.queueInputBuffer(dequeueInputBuffer, 0, read, j, 4);
                } else {
                    this.f730c.queueInputBuffer(dequeueInputBuffer, 0, read, j, 0);
                }
                this.f734g++;
                return;
            }
            m922a("dequeueInputBuffer fail, inputBufferIndex:" + dequeueInputBuffer + ", endOfStream:" + z, 0);
        } catch (Throwable th) {
            m922a("_offerAudioEncoder exception", 0);
        }
    }

    /* renamed from: a */
    public void m913a(MediaCodec mediaCodec, boolean z) {
        m922a("pollAudioEncodeOutputAndFeedToMuxer:" + z, 4);
        ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
        int i = 0;
        while (true) {
            i++;
            if (i % 100 == 0) {
                m922a("lTempCount: " + i + ", endOfStream: " + z, 1);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int dequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(bufferInfo, 50L);
            m922a("encoderStatus:" + dequeueOutputBuffer + " endOfStream:" + z, 4);
            if (dequeueOutputBuffer == -1) {
                if (!z) {
                    return;
                }
            } else if (dequeueOutputBuffer == -3) {
                outputBuffers = mediaCodec.getOutputBuffers();
            } else {
                if (dequeueOutputBuffer == -2) {
                    if (this.f729b != null) {
                        this.f729b.mo928a(mediaCodec.getOutputFormat());
                        return;
                    }
                    return;
                }
                if (dequeueOutputBuffer < 0) {
                    m922a("unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer, 1);
                } else {
                    ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                    if (byteBuffer == null) {
                        throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                    }
                    if ((bufferInfo.flags & 2) != 0) {
                        bufferInfo.size = 0;
                    }
                    if (bufferInfo.size != 0) {
                        if (bufferInfo.presentationTimeUs < 0) {
                            bufferInfo.presentationTimeUs = 0L;
                        }
                        byteBuffer.position(bufferInfo.offset);
                        byte[] bArr = new byte[bufferInfo.size];
                        byteBuffer.get(bArr, 0, bufferInfo.size);
                        ByteBuffer wrap = ByteBuffer.wrap(bArr);
                        wrap.position(0);
                        bufferInfo.offset = 0;
                        if (this.f729b != null) {
                            this.f729b.mo929a(wrap, bufferInfo);
                        }
                    }
                    mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                    if ((bufferInfo.flags & 4) != 0) {
                        m922a("endOfStream:" + z, 2);
                        if (!z) {
                            m922a("reached end of stream unexpectedly", 0);
                            return;
                        } else {
                            if (this.f729b != null) {
                                this.f729b.mo927a();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public void m926c() {
        if (this.f730c != null) {
            this.f730c.stop();
            this.f730c.release();
            this.f730c = null;
        }
    }

    /* renamed from: f */
    public void m919f() {
        if (this.f731d != null) {
            this.f731d.release();
            this.f731d = null;
        }
    }

    /* renamed from: a */
    public void m921a(a aVar) {
        this.f729b = aVar;
    }
}
