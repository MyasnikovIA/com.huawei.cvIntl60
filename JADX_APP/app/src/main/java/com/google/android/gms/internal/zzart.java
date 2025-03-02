package com.google.android.gms.internal;

import com.google.android.exoplayer.extractor.p095ts.PsExtractor;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public final class zzart {
    private final ByteBuffer btF;

    public static class zza extends IOException {
        zza(int i, int i2) {
            super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
        }
    }

    private zzart(ByteBuffer byteBuffer) {
        this.btF = byteBuffer;
        this.btF.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzart(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char charAt = charSequence.charAt(i4);
            if (charAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) charAt2;
            } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & '?') | 128);
            } else {
                if ((charAt2 >= 55296 && 57343 >= charAt2) || i6 > i5 - 3) {
                    if (i6 > i5 - 4) {
                        throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i6).toString());
                    }
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char charAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i8 = i6 + 1;
                            bArr[i6] = (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i10 + 1;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i4 - 1).toString());
                }
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((charAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int zzagz(int i) {
        if (i >= 0) {
            return zzahe(i);
        }
        return 10;
    }

    public static int zzah(int i, int i2) {
        return zzahc(i) + zzagz(i2);
    }

    public static int zzaha(int i) {
        return zzahe(zzahg(i));
    }

    public static int zzahc(int i) {
        return zzahe(zzasd.zzak(i, 0));
    }

    public static int zzahe(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int zzahg(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzai(int i, int i2) {
        return zzahc(i) + zzaha(i2);
    }

    public static int zzb(int i, double d) {
        return zzahc(i) + 8;
    }

    public static int zzb(int i, zzasa zzasaVar) {
        return (zzahc(i) * 2) + zzd(zzasaVar);
    }

    private static int zzb(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i < length) {
                char charAt = charSequence.charAt(i);
                if (charAt >= 2048) {
                    i2 += zza(charSequence, i);
                    break;
                }
                i2 += (127 - charAt) >>> 31;
                i++;
            } else {
                break;
            }
        }
        if (i2 >= length) {
            return i2;
        }
        throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i2 + IjkMediaMeta.AV_CH_WIDE_RIGHT).toString());
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else {
                if (charAt >= 55296 && 57343 >= charAt) {
                    if (i + 1 != charSequence.length()) {
                        i++;
                        char charAt2 = charSequence.charAt(i);
                        if (Character.isSurrogatePair(charAt, charAt2)) {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i - 1).toString());
                }
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i++;
        }
    }

    public static zzart zzbe(byte[] bArr) {
        return zzc(bArr, 0, bArr.length);
    }

    public static int zzbg(byte[] bArr) {
        return zzahe(bArr.length) + bArr.length;
    }

    public static int zzc(int i, zzasa zzasaVar) {
        return zzahc(i) + zze(zzasaVar);
    }

    public static int zzc(int i, byte[] bArr) {
        return zzahc(i) + zzbg(bArr);
    }

    public static zzart zzc(byte[] bArr, int i, int i2) {
        return new zzart(bArr, i, i2);
    }

    public static int zzcy(long j) {
        return zzdc(j);
    }

    public static int zzcz(long j) {
        return zzdc(j);
    }

    public static int zzd(int i, float f) {
        return zzahc(i) + 4;
    }

    public static int zzd(zzasa zzasaVar) {
        return zzasaVar.m6676cz();
    }

    public static int zzda(long j) {
        return zzdc(zzde(j));
    }

    public static int zzdc(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzde(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zze(int i, long j) {
        return zzahc(i) + zzcy(j);
    }

    public static int zze(zzasa zzasaVar) {
        int m6676cz = zzasaVar.m6676cz();
        return m6676cz + zzahe(m6676cz);
    }

    public static int zzf(int i, long j) {
        return zzahc(i) + zzcz(j);
    }

    public static int zzg(int i, long j) {
        return zzahc(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzahc(i) + zzda(j);
    }

    public static int zzh(int i, boolean z) {
        return zzahc(i) + 1;
    }

    public static int zzr(int i, String str) {
        return zzahc(i) + zzuy(str);
    }

    public static int zzuy(String str) {
        int zzb = zzb(str);
        return zzb + zzahe(zzb);
    }

    /* renamed from: cl */
    public int m6662cl() {
        return this.btF.remaining();
    }

    /* renamed from: cm */
    public void m6663cm() {
        if (m6662cl() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void zza(int i, double d) {
        zzaj(i, 1);
        zzn(d);
    }

    public void zza(int i, long j) {
        zzaj(i, 0);
        zzcu(j);
    }

    public void zza(int i, zzasa zzasaVar) {
        zzaj(i, 2);
        zzc(zzasaVar);
    }

    public void zzaf(int i, int i2) {
        zzaj(i, 0);
        zzagx(i2);
    }

    public void zzag(int i, int i2) {
        zzaj(i, 0);
        zzagy(i2);
    }

    public void zzagx(int i) {
        if (i >= 0) {
            zzahd(i);
        } else {
            zzdb(i);
        }
    }

    public void zzagy(int i) {
        zzahd(zzahg(i));
    }

    public void zzahb(int i) {
        zzc((byte) i);
    }

    public void zzahd(int i) {
        while ((i & (-128)) != 0) {
            zzahb((i & 127) | 128);
            i >>>= 7;
        }
        zzahb(i);
    }

    public void zzahf(int i) {
        if (this.btF.remaining() < 4) {
            throw new zza(this.btF.position(), this.btF.limit());
        }
        this.btF.putInt(i);
    }

    public void zzaj(int i, int i2) {
        zzahd(zzasd.zzak(i, i2));
    }

    public void zzb(int i, long j) {
        zzaj(i, 0);
        zzcv(j);
    }

    public void zzb(int i, byte[] bArr) {
        zzaj(i, 2);
        zzbf(bArr);
    }

    public void zzb(zzasa zzasaVar) {
        zzasaVar.zza(this);
    }

    public void zzbf(byte[] bArr) {
        zzahd(bArr.length);
        zzbh(bArr);
    }

    public void zzbh(byte[] bArr) {
        zzd(bArr, 0, bArr.length);
    }

    public void zzc(byte b) {
        if (!this.btF.hasRemaining()) {
            throw new zza(this.btF.position(), this.btF.limit());
        }
        this.btF.put(b);
    }

    public void zzc(int i, float f) {
        zzaj(i, 5);
        zzk(f);
    }

    public void zzc(int i, long j) {
        zzaj(i, 1);
        zzcw(j);
    }

    public void zzc(zzasa zzasaVar) {
        zzahd(zzasaVar.m6675cy());
        zzasaVar.zza(this);
    }

    public void zzcu(long j) {
        zzdb(j);
    }

    public void zzcv(long j) {
        zzdb(j);
    }

    public void zzcw(long j) {
        zzdd(j);
    }

    public void zzcx(long j) {
        zzdb(zzde(j));
    }

    public void zzd(int i, long j) {
        zzaj(i, 0);
        zzcx(j);
    }

    public void zzd(byte[] bArr, int i, int i2) {
        if (this.btF.remaining() < i2) {
            throw new zza(this.btF.position(), this.btF.limit());
        }
        this.btF.put(bArr, i, i2);
    }

    public void zzdb(long j) {
        while (((-128) & j) != 0) {
            zzahb((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzahb((int) j);
    }

    public void zzdd(long j) {
        if (this.btF.remaining() < 8) {
            throw new zza(this.btF.position(), this.btF.limit());
        }
        this.btF.putLong(j);
    }

    public void zzdm(boolean z) {
        zzahb(z ? 1 : 0);
    }

    public void zzg(int i, boolean z) {
        zzaj(i, 0);
        zzdm(z);
    }

    public void zzk(float f) {
        zzahf(Float.floatToIntBits(f));
    }

    public void zzn(double d) {
        zzdd(Double.doubleToLongBits(d));
    }

    public void zzq(int i, String str) {
        zzaj(i, 2);
        zzux(str);
    }

    public void zzux(String str) {
        try {
            int zzahe = zzahe(str.length());
            if (zzahe != zzahe(str.length() * 3)) {
                zzahd(zzb(str));
                zza(str, this.btF);
                return;
            }
            int position = this.btF.position();
            if (this.btF.remaining() < zzahe) {
                throw new zza(zzahe + position, this.btF.limit());
            }
            this.btF.position(position + zzahe);
            zza(str, this.btF);
            int position2 = this.btF.position();
            this.btF.position(position);
            zzahd((position2 - position) - zzahe);
            this.btF.position(position2);
        } catch (BufferOverflowException e) {
            zza zzaVar = new zza(this.btF.position(), this.btF.limit());
            zzaVar.initCause(e);
            throw zzaVar;
        }
    }
}
