package GeneralFunction.p006f.p007a;

import GeneralFunction.C0052d;
import GeneralFunction.p019p.C0094a;
import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.os.AsyncTask;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* renamed from: GeneralFunction.f.a.b */
/* loaded from: classes.dex */
public class C0066b {

    /* renamed from: a */
    private static final String f529a = C0066b.class.getSimpleName();

    /* renamed from: b */
    private int f530b = 0;

    /* renamed from: c */
    private long f531c = 0;

    /* renamed from: d */
    private c f532d = new c();

    /* renamed from: GeneralFunction.f.a.b$b */
    public interface b {
        /* renamed from: a */
        void mo598a(int i);
    }

    /* renamed from: a */
    public void m596a(String str, int i) {
        C0052d.m465a(f529a, str, i);
    }

    /* renamed from: a */
    public void m595a() {
        m596a("user cancel", 4);
        this.f532d.f546m = true;
    }

    /* renamed from: a */
    public void m597a(ArrayList<String> arrayList, String str, b bVar, int i, int i2) {
        this.f532d.f545l = bVar;
        new a().execute(new d(arrayList), str, this.f532d.f545l);
        this.f530b = i;
        this.f531c = i2 - i;
        if (this.f531c == 0) {
            this.f531c = 2147483647L;
        }
    }

    /* renamed from: a */
    public int m594a(ArrayList<String> arrayList, String str) {
        int i = -1;
        long currentTimeMillis = System.currentTimeMillis();
        this.f532d.f546m = false;
        try {
            this.f532d.f535b = new MediaMuxer(str, 0);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(arrayList.get(0));
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            if (extractMetadata != null) {
                this.f532d.f535b.setOrientationHint(Integer.valueOf(extractMetadata).intValue());
            }
            mediaMetadataRetriever.release();
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                i = m592a(this.f532d, arrayList.get(i2));
                if (this.f532d.f546m) {
                    i = -5;
                    break;
                }
                if (i < 0) {
                    break;
                }
                i2++;
            }
            m596a("total video frame:" + this.f532d.f548o, 4);
            if (this.f532d.f535b != null) {
                try {
                    this.f532d.f535b.stop();
                    this.f532d.f535b.release();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
                this.f532d.f535b = null;
            }
            if (this.f532d.f546m) {
                File file = new File(str);
                if (file.exists() && !file.delete()) {
                    m596a("can't delete file:" + str, 0);
                }
            }
            m596a("time cost:" + (System.currentTimeMillis() - currentTimeMillis), 4);
            return i;
        } catch (IOException e2) {
            e2.printStackTrace();
            return -4;
        }
    }

    /* renamed from: a */
    private int m591a(c cVar) {
        cVar.f540g = cVar.f535b.addTrack(cVar.f536c);
        cVar.f541h = cVar.f535b.addTrack(cVar.f537d);
        cVar.f535b.start();
        return 0;
    }

    /* renamed from: b */
    private void m593b(c cVar) {
        if (cVar.f539f != null) {
            cVar.f539f.release();
            cVar.f539f = null;
        }
        if (cVar.f538e == null) {
            return;
        }
        cVar.f538e.release();
        cVar.f538e = null;
    }

    /* renamed from: a */
    private int m592a(c cVar, String str) {
        long j;
        int i;
        m596a("extractFileAndFeedToMuxer:" + str, 4);
        cVar.f539f = new MediaExtractor();
        try {
            cVar.f539f.setDataSource(str);
            MediaFormat m905a = C0094a.m905a(cVar.f539f, "audio/");
            if (m905a == null) {
                m596a("No audio track!", 0);
                m593b(cVar);
                return -3;
            }
            m596a("audio format:" + m905a, 4);
            cVar.f538e = new MediaExtractor();
            try {
                cVar.f538e.setDataSource(str);
                MediaFormat m905a2 = C0094a.m905a(cVar.f538e, "video/");
                if (m905a2 == null) {
                    m596a("No video track!", 0);
                    m593b(cVar);
                    return -2;
                }
                m596a("video format:" + m905a2, 4);
                if (!cVar.f547n) {
                    cVar.f547n = true;
                    cVar.f543j = m905a.getInteger("channel-count");
                    cVar.f544k = m905a.getInteger("sample-rate");
                    cVar.f542i = m905a2.getInteger("frame-rate");
                    cVar.f536c = m905a2;
                    cVar.f537d = m905a;
                    m596a("lAudioChannel:" + cVar.f543j, 4);
                    m596a("lSampleRate:" + cVar.f544k, 4);
                    m596a("lVideoFrameRate:" + cVar.f542i, 4);
                    m596a("sVideoFormat:" + cVar.f536c, 4);
                    m596a("sAudioFormat:" + cVar.f537d, 4);
                    int m591a = m591a(cVar);
                    if (m591a < 0) {
                        return m591a;
                    }
                }
                int integer = m905a2.getInteger("max-input-size");
                if (integer <= 0) {
                    m596a("Not have lVideoMaxInputSize:" + integer, 1);
                    integer = 1048576;
                }
                long j2 = ((cVar.f548o * 1000) * 1000) / cVar.f542i;
                ByteBuffer allocate = ByteBuffer.allocate(integer);
                cVar.f538e.seekTo(this.f530b * 1000000, 2);
                long j3 = -1;
                int i2 = 0;
                while (!cVar.f546m) {
                    int readSampleData = cVar.f538e.readSampleData(allocate, 0);
                    if (readSampleData < 0) {
                        j = j3;
                        i = i2;
                    } else {
                        j = j3 == -1 ? cVar.f538e.getSampleTime() : j3;
                        long j4 = ((cVar.f548o * 1000) * 1000) / cVar.f542i;
                        int sampleFlags = cVar.f538e.getSampleFlags();
                        c.m624m(cVar);
                        allocate.position(0);
                        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                        bufferInfo.set(0, readSampleData, j4, sampleFlags);
                        cVar.f535b.writeSampleData(cVar.f540g, allocate, bufferInfo);
                        i = i2 + 1;
                        if (cVar.f538e.advance() && i < this.f531c * cVar.f542i) {
                            j3 = j;
                            i2 = i;
                        }
                    }
                    m596a("video frame count:" + i, 4);
                    long j5 = (((cVar.f548o - 1) * 1000) * 1000) / cVar.f542i;
                    int i3 = 0;
                    ByteBuffer allocate2 = ByteBuffer.allocate(cVar.f543j * 1024 * 2);
                    cVar.f539f.seekTo(this.f530b * 1000000, 2);
                    while (!cVar.f546m) {
                        int readSampleData2 = cVar.f539f.readSampleData(allocate2, 0);
                        if (readSampleData2 >= 0) {
                            long sampleTime = (cVar.f539f.getSampleTime() - j) + j2;
                            if (sampleTime >= j2) {
                                if (sampleTime <= j5) {
                                    int sampleFlags2 = cVar.f539f.getSampleFlags();
                                    allocate2.position(0);
                                    MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                                    bufferInfo2.set(0, readSampleData2, sampleTime, sampleFlags2);
                                    cVar.f535b.writeSampleData(cVar.f541h, allocate2, bufferInfo2);
                                    i3++;
                                }
                            }
                            if (cVar.f539f.advance() && i3 < this.f531c * (cVar.f544k / 1024.0f)) {
                            }
                        }
                        m593b(cVar);
                        m596a("audio frame count:" + i3, 4);
                        return 0;
                    }
                    m593b(cVar);
                    return -5;
                }
                m593b(cVar);
                return -5;
            } catch (IOException e) {
                e.printStackTrace();
                m593b(cVar);
                return -1;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            m593b(cVar);
            return -1;
        }
    }

    /* renamed from: GeneralFunction.f.a.b$c */
    private class c {

        /* renamed from: b */
        private MediaMuxer f535b;

        /* renamed from: c */
        private MediaFormat f536c;

        /* renamed from: d */
        private MediaFormat f537d;

        /* renamed from: e */
        private MediaExtractor f538e;

        /* renamed from: f */
        private MediaExtractor f539f;

        /* renamed from: g */
        private int f540g;

        /* renamed from: h */
        private int f541h;

        /* renamed from: i */
        private int f542i;

        /* renamed from: j */
        private int f543j;

        /* renamed from: k */
        private int f544k;

        /* renamed from: l */
        private b f545l;

        /* renamed from: m */
        private boolean f546m;

        /* renamed from: n */
        private boolean f547n;

        /* renamed from: o */
        private long f548o;

        /* synthetic */ c(C0066b c0066b, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: m */
        static /* synthetic */ long m624m(c cVar) {
            long j = cVar.f548o;
            cVar.f548o = 1 + j;
            return j;
        }

        private c() {
            this.f535b = null;
            this.f536c = null;
            this.f537d = null;
            this.f538e = null;
            this.f539f = null;
            this.f540g = -1;
            this.f541h = -1;
            this.f542i = -1;
            this.f543j = -1;
            this.f544k = -1;
            this.f545l = null;
            this.f546m = false;
            this.f547n = false;
            this.f548o = 0L;
        }
    }

    @SuppressLint({"StaticFieldLeak"})
    /* renamed from: GeneralFunction.f.a.b$a */
    private class a extends AsyncTask<Object, Object, Object> {
        private a() {
        }

        /* synthetic */ a(C0066b c0066b, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object... objArr) {
            int m594a = C0066b.this.m594a(((d) objArr[0]).f549a, (String) objArr[1]);
            if (objArr[2] != null) {
                ((b) objArr[2]).mo598a(m594a);
            }
            return Integer.valueOf(m594a);
        }
    }

    /* renamed from: GeneralFunction.f.a.b$d */
    private class d {

        /* renamed from: a */
        ArrayList<String> f549a;

        d(ArrayList<String> arrayList) {
            this.f549a = null;
            this.f549a = arrayList;
        }
    }
}
