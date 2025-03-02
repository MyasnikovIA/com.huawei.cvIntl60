package com.google.android.gms.internal;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public abstract class zzaoy {
    /* renamed from: aT */
    public Number mo6592aT() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: aU */
    public String mo6593aU() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: aV */
    public boolean m6594aV() {
        return this instanceof zzaov;
    }

    /* renamed from: aW */
    public boolean m6595aW() {
        return this instanceof zzapb;
    }

    /* renamed from: aX */
    public boolean m6596aX() {
        return this instanceof zzape;
    }

    /* renamed from: aY */
    public boolean m6597aY() {
        return this instanceof zzapa;
    }

    /* renamed from: aZ */
    public zzapb m6598aZ() {
        if (m6595aW()) {
            return (zzapb) this;
        }
        String valueOf = String.valueOf(this);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Not a JSON Object: ").append(valueOf).toString());
    }

    /* renamed from: ba */
    public zzaov m6599ba() {
        if (m6594aV()) {
            return (zzaov) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    /* renamed from: bb */
    public zzape m6600bb() {
        if (m6596aX()) {
            return (zzape) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    /* renamed from: bc */
    Boolean mo6601bc() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean getAsBoolean() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double getAsDouble() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int getAsInt() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long getAsLong() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            zzaqr zzaqrVar = new zzaqr(stringWriter);
            zzaqrVar.setLenient(true);
            zzapz.zzb(this, zzaqrVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
