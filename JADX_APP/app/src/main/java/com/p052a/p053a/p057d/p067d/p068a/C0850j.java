package com.p052a.p053a.p057d.p067d.p068a;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import com.google.android.exoplayer.C1167C;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p081j.C0954h;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* renamed from: com.a.a.d.d.a.j */
/* loaded from: classes.dex */
public final class C0850j implements InterfaceC0882f {

    /* renamed from: a */
    static final byte[] f4608a = "Exif\u0000\u0000".getBytes(Charset.forName(C1167C.UTF8_NAME));

    /* renamed from: b */
    private static final int[] f4609b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: com.a.a.d.d.a.j$c */
    private interface c {
        /* renamed from: a */
        int mo4990a();

        /* renamed from: a */
        int mo4991a(byte[] bArr, int i);

        /* renamed from: a */
        long mo4992a(long j);

        /* renamed from: b */
        short mo4993b();

        /* renamed from: c */
        int mo4994c();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0882f
    /* renamed from: a */
    public InterfaceC0882f.a mo4988a(InputStream inputStream) {
        return m4983a(new d((InputStream) C0954h.m5409a(inputStream)));
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0882f
    /* renamed from: a */
    public InterfaceC0882f.a mo4989a(ByteBuffer byteBuffer) {
        return m4983a(new a((ByteBuffer) C0954h.m5409a(byteBuffer)));
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0882f
    /* renamed from: a */
    public int mo4987a(InputStream inputStream, InterfaceC0762b interfaceC0762b) {
        return m4981a(new d((InputStream) C0954h.m5409a(inputStream)), (InterfaceC0762b) C0954h.m5409a(interfaceC0762b));
    }

    /* renamed from: a */
    private InterfaceC0882f.a m4983a(c cVar) {
        int mo4990a = cVar.mo4990a();
        if (mo4990a == 65496) {
            return InterfaceC0882f.a.JPEG;
        }
        int mo4990a2 = ((mo4990a << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo4990a() & SupportMenu.USER_MASK);
        if (mo4990a2 == -1991225785) {
            cVar.mo4992a(21L);
            return cVar.mo4994c() >= 3 ? InterfaceC0882f.a.PNG_A : InterfaceC0882f.a.PNG;
        }
        if ((mo4990a2 >> 8) == 4671814) {
            return InterfaceC0882f.a.GIF;
        }
        if (mo4990a2 != 1380533830) {
            return InterfaceC0882f.a.UNKNOWN;
        }
        cVar.mo4992a(4L);
        if ((((cVar.mo4990a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo4990a() & SupportMenu.USER_MASK)) != 1464156752) {
            return InterfaceC0882f.a.UNKNOWN;
        }
        int mo4990a3 = ((cVar.mo4990a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.mo4990a() & SupportMenu.USER_MASK);
        if ((mo4990a3 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
            return InterfaceC0882f.a.UNKNOWN;
        }
        if ((mo4990a3 & 255) == 88) {
            cVar.mo4992a(4L);
            return (cVar.mo4994c() & 16) != 0 ? InterfaceC0882f.a.WEBP_A : InterfaceC0882f.a.WEBP;
        }
        if ((mo4990a3 & 255) == 76) {
            cVar.mo4992a(4L);
            return (cVar.mo4994c() & 8) != 0 ? InterfaceC0882f.a.WEBP_A : InterfaceC0882f.a.WEBP;
        }
        return InterfaceC0882f.a.WEBP;
    }

    /* renamed from: a */
    private int m4981a(c cVar, InterfaceC0762b interfaceC0762b) {
        int mo4990a = cVar.mo4990a();
        if (!m4984a(mo4990a)) {
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + mo4990a);
            return -1;
        }
        int m4986b = m4986b(cVar);
        if (m4986b == -1) {
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            return -1;
        }
        byte[] bArr = (byte[]) interfaceC0762b.mo4657a(m4986b, byte[].class);
        try {
            return m4982a(cVar, bArr, m4986b);
        } finally {
            interfaceC0762b.mo4660a((InterfaceC0762b) bArr, (Class<InterfaceC0762b>) byte[].class);
        }
    }

    /* renamed from: a */
    private int m4982a(c cVar, byte[] bArr, int i) {
        int mo4991a = cVar.mo4991a(bArr, i);
        if (mo4991a != i) {
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + mo4991a);
            return -1;
        }
        if (m4985a(bArr, i)) {
            return m4980a(new b(bArr, i));
        }
        if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
            return -1;
        }
        Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
        return -1;
    }

    /* renamed from: a */
    private boolean m4985a(byte[] bArr, int i) {
        boolean z = bArr != null && i > f4608a.length;
        if (z) {
            for (int i2 = 0; i2 < f4608a.length; i2++) {
                if (bArr[i2] != f4608a[i2]) {
                    return false;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m4986b(c cVar) {
        short mo4993b;
        int mo4990a;
        long mo4992a;
        do {
            short mo4993b2 = cVar.mo4993b();
            if (mo4993b2 != 255) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) mo4993b2));
                return -1;
            }
            mo4993b = cVar.mo4993b();
            if (mo4993b == 218) {
                return -1;
            }
            if (mo4993b == 217) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                return -1;
            }
            mo4990a = cVar.mo4990a() - 2;
            if (mo4993b == 225) {
                return mo4990a;
            }
            mo4992a = cVar.mo4992a(mo4990a);
        } while (mo4992a == mo4990a);
        if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
            return -1;
        }
        Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + ((int) mo4993b) + ", wanted to skip: " + mo4990a + ", but actually skipped: " + mo4992a);
        return -1;
    }

    /* renamed from: a */
    private static int m4980a(b bVar) {
        ByteOrder byteOrder;
        int length = "Exif\u0000\u0000".length();
        short m4999b = bVar.m4999b(length);
        if (m4999b == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (m4999b == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) m4999b));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.m4998a(byteOrder);
        int m4997a = length + bVar.m4997a(length + 4);
        short m4999b2 = bVar.m4999b(m4997a);
        for (int i = 0; i < m4999b2; i++) {
            int m4979a = m4979a(m4997a, i);
            short m4999b3 = bVar.m4999b(m4979a);
            if (m4999b3 == 274) {
                short m4999b4 = bVar.m4999b(m4979a + 2);
                if (m4999b4 < 1 || m4999b4 > 12) {
                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) m4999b4));
                    }
                } else {
                    int m4997a2 = bVar.m4997a(m4979a + 4);
                    if (m4997a2 < 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + i + " tagType=" + ((int) m4999b3) + " formatCode=" + ((int) m4999b4) + " componentCount=" + m4997a2);
                        }
                        int i2 = m4997a2 + f4609b[m4999b4];
                        if (i2 > 4) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) m4999b4));
                            }
                        } else {
                            int i3 = m4979a + 8;
                            if (i3 < 0 || i3 > bVar.m4996a()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) m4999b3));
                                }
                            } else if (i2 < 0 || i3 + i2 > bVar.m4996a()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) m4999b3));
                                }
                            } else {
                                return bVar.m4999b(i3);
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static int m4979a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: a */
    private static boolean m4984a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    /* renamed from: com.a.a.d.d.a.j$b */
    private static final class b {

        /* renamed from: a */
        private final ByteBuffer f4611a;

        b(byte[] bArr, int i) {
            this.f4611a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        void m4998a(ByteOrder byteOrder) {
            this.f4611a.order(byteOrder);
        }

        /* renamed from: a */
        int m4996a() {
            return this.f4611a.remaining();
        }

        /* renamed from: a */
        int m4997a(int i) {
            if (m4995a(i, 4)) {
                return this.f4611a.getInt(i);
            }
            return -1;
        }

        /* renamed from: b */
        short m4999b(int i) {
            if (m4995a(i, 2)) {
                return this.f4611a.getShort(i);
            }
            return (short) -1;
        }

        /* renamed from: a */
        private boolean m4995a(int i, int i2) {
            return this.f4611a.remaining() - i >= i2;
        }
    }

    /* renamed from: com.a.a.d.d.a.j$a */
    private static final class a implements c {

        /* renamed from: a */
        private final ByteBuffer f4610a;

        a(ByteBuffer byteBuffer) {
            this.f4610a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public int mo4990a() {
            return ((mo4994c() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (mo4994c() & 255);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: b */
        public short mo4993b() {
            return (short) (mo4994c() & 255);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public long mo4992a(long j) {
            int min = (int) Math.min(this.f4610a.remaining(), j);
            this.f4610a.position(this.f4610a.position() + min);
            return min;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public int mo4991a(byte[] bArr, int i) {
            int min = Math.min(i, this.f4610a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f4610a.get(bArr, 0, min);
            return min;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: c */
        public int mo4994c() {
            if (this.f4610a.remaining() < 1) {
                return -1;
            }
            return this.f4610a.get();
        }
    }

    /* renamed from: com.a.a.d.d.a.j$d */
    private static final class d implements c {

        /* renamed from: a */
        private final InputStream f4612a;

        d(InputStream inputStream) {
            this.f4612a = inputStream;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public int mo4990a() {
            return ((this.f4612a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f4612a.read() & 255);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: b */
        public short mo4993b() {
            return (short) (this.f4612a.read() & 255);
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public long mo4992a(long j) {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f4612a.skip(j2);
                if (skip > 0) {
                    j2 -= skip;
                } else {
                    if (this.f4612a.read() == -1) {
                        break;
                    }
                    j2--;
                }
            }
            return j - j2;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: a */
        public int mo4991a(byte[] bArr, int i) {
            int i2 = i;
            while (i2 > 0) {
                int read = this.f4612a.read(bArr, i - i2, i2);
                if (read == -1) {
                    break;
                }
                i2 -= read;
            }
            return i - i2;
        }

        @Override // com.p052a.p053a.p057d.p067d.p068a.C0850j.c
        /* renamed from: c */
        public int mo4994c() {
            return this.f4612a.read();
        }
    }
}
