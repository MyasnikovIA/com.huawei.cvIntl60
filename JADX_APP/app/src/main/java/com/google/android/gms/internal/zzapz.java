package com.google.android.gms.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public final class zzapz {

    private static final class zza extends Writer {
        private final C1896zza bpA;
        private final Appendable bpz;

        /* renamed from: com.google.android.gms.internal.zzapz$zza$zza */
        static class C1896zza implements CharSequence {
            char[] bpB;

            C1896zza() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.bpB[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.bpB.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.bpB, i, i2 - i);
            }
        }

        private zza(Appendable appendable) {
            this.bpA = new C1896zza();
            this.bpz = appendable;
        }

        /* synthetic */ zza(Appendable appendable, C13131 c13131) {
            this(appendable);
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) {
            this.bpz.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            this.bpA.bpB = cArr;
            this.bpz.append(this.bpA, i, i + i2);
        }
    }

    public static Writer zza(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new zza(appendable);
    }

    public static void zzb(zzaoy zzaoyVar, zzaqr zzaqrVar) {
        zzaqn.bqY.zza(zzaqrVar, zzaoyVar);
    }

    public static zzaoy zzh(zzaqp zzaqpVar) {
        boolean z = true;
        try {
            zzaqpVar.mo6619bq();
            z = false;
            return zzaqn.bqY.zzb(zzaqpVar);
        } catch (zzaqs e) {
            throw new zzaph(e);
        } catch (EOFException e2) {
            if (z) {
                return zzapa.bou;
            }
            throw new zzaph(e2);
        } catch (IOException e3) {
            throw new zzaoz(e3);
        } catch (NumberFormatException e4) {
            throw new zzaph(e4);
        }
    }
}
