package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaqg extends zzaqr {
    private static final Writer bpO = new Writer() { // from class: com.google.android.gms.internal.zzaqg.1
        C13211() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final zzape bpP = new zzape("closed");
    private final List<zzaoy> bpN;
    private String bpQ;
    private zzaoy bpR;

    /* renamed from: com.google.android.gms.internal.zzaqg$1 */
    static class C13211 extends Writer {
        C13211() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public zzaqg() {
        super(bpO);
        this.bpN = new ArrayList();
        this.bpR = zzapa.bou;
    }

    /* renamed from: bv */
    private zzaoy m6621bv() {
        return this.bpN.get(this.bpN.size() - 1);
    }

    private void zzd(zzaoy zzaoyVar) {
        if (this.bpQ != null) {
            if (!zzaoyVar.m6597aY() || m6644bN()) {
                ((zzapb) m6621bv()).zza(this.bpQ, zzaoyVar);
            }
            this.bpQ = null;
            return;
        }
        if (this.bpN.isEmpty()) {
            this.bpR = zzaoyVar;
            return;
        }
        zzaoy m6621bv = m6621bv();
        if (!(m6621bv instanceof zzaov)) {
            throw new IllegalStateException();
        }
        ((zzaov) m6621bv).zzc(zzaoyVar);
    }

    @Override // com.google.android.gms.internal.zzaqr
    /* renamed from: bA */
    public zzaqr mo6622bA() {
        zzd(zzapa.bou);
        return this;
    }

    /* renamed from: bu */
    public zzaoy m6623bu() {
        if (this.bpN.isEmpty()) {
            return this.bpR;
        }
        String valueOf = String.valueOf(this.bpN);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 34).append("Expected one JSON element but was ").append(valueOf).toString());
    }

    @Override // com.google.android.gms.internal.zzaqr
    /* renamed from: bw */
    public zzaqr mo6624bw() {
        zzaov zzaovVar = new zzaov();
        zzd(zzaovVar);
        this.bpN.add(zzaovVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    /* renamed from: bx */
    public zzaqr mo6625bx() {
        if (this.bpN.isEmpty() || this.bpQ != null) {
            throw new IllegalStateException();
        }
        if (!(m6621bv() instanceof zzaov)) {
            throw new IllegalStateException();
        }
        this.bpN.remove(this.bpN.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    /* renamed from: by */
    public zzaqr mo6626by() {
        zzapb zzapbVar = new zzapb();
        zzd(zzapbVar);
        this.bpN.add(zzapbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    /* renamed from: bz */
    public zzaqr mo6627bz() {
        if (this.bpN.isEmpty() || this.bpQ != null) {
            throw new IllegalStateException();
        }
        if (!(m6621bv() instanceof zzapb)) {
            throw new IllegalStateException();
        }
        this.bpN.remove(this.bpN.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.bpN.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.bpN.add(bpP);
    }

    @Override // com.google.android.gms.internal.zzaqr, java.io.Flushable
    public void flush() {
    }

    @Override // com.google.android.gms.internal.zzaqr
    public zzaqr zza(Number number) {
        if (number == null) {
            return mo6622bA();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                String valueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(valueOf).toString());
            }
        }
        zzd(new zzape(number));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    public zzaqr zzcs(long j) {
        zzd(new zzape((Number) Long.valueOf(j)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    public zzaqr zzdh(boolean z) {
        zzd(new zzape(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    public zzaqr zzus(String str) {
        if (this.bpN.isEmpty() || this.bpQ != null) {
            throw new IllegalStateException();
        }
        if (!(m6621bv() instanceof zzapb)) {
            throw new IllegalStateException();
        }
        this.bpQ = str;
        return this;
    }

    @Override // com.google.android.gms.internal.zzaqr
    public zzaqr zzut(String str) {
        if (str == null) {
            return mo6622bA();
        }
        zzd(new zzape(str));
        return this;
    }
}
