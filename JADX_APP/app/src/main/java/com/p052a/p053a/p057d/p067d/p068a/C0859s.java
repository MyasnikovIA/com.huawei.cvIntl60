package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: com.a.a.d.d.a.s */
/* loaded from: classes.dex */
public class C0859s implements InterfaceC0887k<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a */
    public static final C0885i<Long> f4659a = C0885i.m5108a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C0885i.a<Long>() { // from class: com.a.a.d.d.a.s.1

        /* renamed from: a */
        private final ByteBuffer f4664a = ByteBuffer.allocate(8);

        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f4664a) {
                this.f4664a.position(0);
                messageDigest.update(this.f4664a.putLong(l.longValue()).array());
            }
        }
    });

    /* renamed from: b */
    public static final C0885i<Integer> f4660b = C0885i.m5108a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", null, new C0885i.a<Integer>() { // from class: com.a.a.d.d.a.s.2

        /* renamed from: a */
        private final ByteBuffer f4665a = ByteBuffer.allocate(4);

        AnonymousClass2() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num != null) {
                messageDigest.update(bArr);
                synchronized (this.f4665a) {
                    this.f4665a.position(0);
                    messageDigest.update(this.f4665a.putInt(num.intValue()).array());
                }
            }
        }
    });

    /* renamed from: c */
    private static final a f4661c = new a();

    /* renamed from: d */
    private final InterfaceC0765e f4662d;

    /* renamed from: e */
    private final a f4663e;

    /* renamed from: com.a.a.d.d.a.s$1 */
    static class AnonymousClass1 implements C0885i.a<Long> {

        /* renamed from: a */
        private final ByteBuffer f4664a = ByteBuffer.allocate(8);

        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f4664a) {
                this.f4664a.position(0);
                messageDigest.update(this.f4664a.putLong(l.longValue()).array());
            }
        }
    }

    /* renamed from: com.a.a.d.d.a.s$2 */
    static class AnonymousClass2 implements C0885i.a<Integer> {

        /* renamed from: a */
        private final ByteBuffer f4665a = ByteBuffer.allocate(4);

        AnonymousClass2() {
        }

        @Override // com.p052a.p053a.p057d.C0885i.a
        /* renamed from: a */
        public void mo5047a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num != null) {
                messageDigest.update(bArr);
                synchronized (this.f4665a) {
                    this.f4665a.position(0);
                    messageDigest.update(this.f4665a.putInt(num.intValue()).array());
                }
            }
        }
    }

    public C0859s(InterfaceC0765e interfaceC0765e) {
        this(interfaceC0765e, f4661c);
    }

    C0859s(InterfaceC0765e interfaceC0765e, a aVar) {
        this.f4662d = interfaceC0765e;
        this.f4663e = aVar;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public boolean mo4970a(ParcelFileDescriptor parcelFileDescriptor, C0886j c0886j) {
        return true;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0887k
    /* renamed from: a */
    public InterfaceC0804s<Bitmap> mo4969a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, C0886j c0886j) {
        Bitmap frameAtTime;
        long longValue = ((Long) c0886j.m5115a(f4659a)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) c0886j.m5115a(f4660b);
        MediaMetadataRetriever m5048a = this.f4663e.m5048a();
        try {
            try {
                m5048a.setDataSource(parcelFileDescriptor.getFileDescriptor());
                if (longValue == -1) {
                    frameAtTime = m5048a.getFrameAtTime();
                } else if (num == null) {
                    frameAtTime = m5048a.getFrameAtTime(longValue);
                } else {
                    frameAtTime = m5048a.getFrameAtTime(longValue, num.intValue());
                }
                m5048a.release();
                parcelFileDescriptor.close();
                return C0845e.m4976a(frameAtTime, this.f4662d);
            } catch (RuntimeException e) {
                throw new IOException(e);
            }
        } catch (Throwable th) {
            m5048a.release();
            throw th;
        }
    }

    /* renamed from: com.a.a.d.d.a.s$a */
    static class a {
        a() {
        }

        /* renamed from: a */
        public MediaMetadataRetriever m5048a() {
            return new MediaMetadataRetriever();
        }
    }
}
