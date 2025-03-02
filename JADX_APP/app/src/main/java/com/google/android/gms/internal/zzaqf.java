package com.google.android.gms.internal;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzaqf extends zzaqp {
    private static final Reader bpL = new Reader() { // from class: com.google.android.gms.internal.zzaqf.1
        C13201() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final Object bpM = new Object();
    private final List<Object> bpN;

    /* renamed from: com.google.android.gms.internal.zzaqf$1 */
    static class C13201 extends Reader {
        C13201() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public zzaqf(zzaoy zzaoyVar) {
        super(bpL);
        this.bpN = new ArrayList();
        this.bpN.add(zzaoyVar);
    }

    /* renamed from: br */
    private Object m6617br() {
        return this.bpN.get(this.bpN.size() - 1);
    }

    /* renamed from: bs */
    private Object m6618bs() {
        return this.bpN.remove(this.bpN.size() - 1);
    }

    private void zza(zzaqq zzaqqVar) {
        if (mo6619bq() != zzaqqVar) {
            String valueOf = String.valueOf(zzaqqVar);
            String valueOf2 = String.valueOf(mo6619bq());
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void beginArray() {
        zza(zzaqq.BEGIN_ARRAY);
        this.bpN.add(((zzaov) m6617br()).iterator());
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void beginObject() {
        zza(zzaqq.BEGIN_OBJECT);
        this.bpN.add(((zzapb) m6617br()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.zzaqp
    /* renamed from: bq */
    public zzaqq mo6619bq() {
        if (this.bpN.isEmpty()) {
            return zzaqq.END_DOCUMENT;
        }
        Object m6617br = m6617br();
        if (m6617br instanceof Iterator) {
            boolean z = this.bpN.get(this.bpN.size() - 2) instanceof zzapb;
            Iterator it = (Iterator) m6617br;
            if (!it.hasNext()) {
                return z ? zzaqq.END_OBJECT : zzaqq.END_ARRAY;
            }
            if (z) {
                return zzaqq.NAME;
            }
            this.bpN.add(it.next());
            return mo6619bq();
        }
        if (m6617br instanceof zzapb) {
            return zzaqq.BEGIN_OBJECT;
        }
        if (m6617br instanceof zzaov) {
            return zzaqq.BEGIN_ARRAY;
        }
        if (!(m6617br instanceof zzape)) {
            if (m6617br instanceof zzapa) {
                return zzaqq.NULL;
            }
            if (m6617br == bpM) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        zzape zzapeVar = (zzape) m6617br;
        if (zzapeVar.m6604bf()) {
            return zzaqq.STRING;
        }
        if (zzapeVar.m6602bd()) {
            return zzaqq.BOOLEAN;
        }
        if (zzapeVar.m6603be()) {
            return zzaqq.NUMBER;
        }
        throw new AssertionError();
    }

    /* renamed from: bt */
    public void m6620bt() {
        zza(zzaqq.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m6617br()).next();
        this.bpN.add(entry.getValue());
        this.bpN.add(new zzape((String) entry.getKey()));
    }

    @Override // com.google.android.gms.internal.zzaqp, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.bpN.clear();
        this.bpN.add(bpM);
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void endArray() {
        zza(zzaqq.END_ARRAY);
        m6618bs();
        m6618bs();
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void endObject() {
        zza(zzaqq.END_OBJECT);
        m6618bs();
        m6618bs();
    }

    @Override // com.google.android.gms.internal.zzaqp
    public boolean hasNext() {
        zzaqq mo6619bq = mo6619bq();
        return (mo6619bq == zzaqq.END_OBJECT || mo6619bq == zzaqq.END_ARRAY) ? false : true;
    }

    @Override // com.google.android.gms.internal.zzaqp
    public boolean nextBoolean() {
        zza(zzaqq.BOOLEAN);
        return ((zzape) m6618bs()).getAsBoolean();
    }

    @Override // com.google.android.gms.internal.zzaqp
    public double nextDouble() {
        zzaqq mo6619bq = mo6619bq();
        if (mo6619bq != zzaqq.NUMBER && mo6619bq != zzaqq.STRING) {
            String valueOf = String.valueOf(zzaqq.NUMBER);
            String valueOf2 = String.valueOf(mo6619bq);
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
        double asDouble = ((zzape) m6617br()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException(new StringBuilder(57).append("JSON forbids NaN and infinities: ").append(asDouble).toString());
        }
        m6618bs();
        return asDouble;
    }

    @Override // com.google.android.gms.internal.zzaqp
    public int nextInt() {
        zzaqq mo6619bq = mo6619bq();
        if (mo6619bq == zzaqq.NUMBER || mo6619bq == zzaqq.STRING) {
            int asInt = ((zzape) m6617br()).getAsInt();
            m6618bs();
            return asInt;
        }
        String valueOf = String.valueOf(zzaqq.NUMBER);
        String valueOf2 = String.valueOf(mo6619bq);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaqp
    public long nextLong() {
        zzaqq mo6619bq = mo6619bq();
        if (mo6619bq == zzaqq.NUMBER || mo6619bq == zzaqq.STRING) {
            long asLong = ((zzape) m6617br()).getAsLong();
            m6618bs();
            return asLong;
        }
        String valueOf = String.valueOf(zzaqq.NUMBER);
        String valueOf2 = String.valueOf(mo6619bq);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaqp
    public String nextName() {
        zza(zzaqq.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m6617br()).next();
        this.bpN.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void nextNull() {
        zza(zzaqq.NULL);
        m6618bs();
    }

    @Override // com.google.android.gms.internal.zzaqp
    public String nextString() {
        zzaqq mo6619bq = mo6619bq();
        if (mo6619bq == zzaqq.STRING || mo6619bq == zzaqq.NUMBER) {
            return ((zzape) m6618bs()).mo6593aU();
        }
        String valueOf = String.valueOf(zzaqq.STRING);
        String valueOf2 = String.valueOf(mo6619bq);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaqp
    public void skipValue() {
        if (mo6619bq() == zzaqq.NAME) {
            nextName();
        } else {
            m6618bs();
        }
    }

    @Override // com.google.android.gms.internal.zzaqp
    public String toString() {
        return getClass().getSimpleName();
    }
}
