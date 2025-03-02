package com.google.android.gms.internal;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzape extends zzaoy {
    private static final Class<?>[] bow = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object value;

    public zzape(Boolean bool) {
        setValue(bool);
    }

    public zzape(Number number) {
        setValue(number);
    }

    zzape(Object obj) {
        setValue(obj);
    }

    public zzape(String str) {
        setValue(str);
    }

    private static boolean zza(zzape zzapeVar) {
        if (!(zzapeVar.value instanceof Number)) {
            return false;
        }
        Number number = (Number) zzapeVar.value;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    private static boolean zzcm(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : bow) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzaoy
    /* renamed from: aT */
    public Number mo6592aT() {
        return this.value instanceof String ? new zzapv((String) this.value) : (Number) this.value;
    }

    @Override // com.google.android.gms.internal.zzaoy
    /* renamed from: aU */
    public String mo6593aU() {
        return m6603be() ? mo6592aT().toString() : m6602bd() ? mo6601bc().toString() : (String) this.value;
    }

    @Override // com.google.android.gms.internal.zzaoy
    /* renamed from: bc */
    Boolean mo6601bc() {
        return (Boolean) this.value;
    }

    /* renamed from: bd */
    public boolean m6602bd() {
        return this.value instanceof Boolean;
    }

    /* renamed from: be */
    public boolean m6603be() {
        return this.value instanceof Number;
    }

    /* renamed from: bf */
    public boolean m6604bf() {
        return this.value instanceof String;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzape zzapeVar = (zzape) obj;
        if (this.value == null) {
            return zzapeVar.value == null;
        }
        if (zza(this) && zza(zzapeVar)) {
            return mo6592aT().longValue() == zzapeVar.mo6592aT().longValue();
        }
        if (!(this.value instanceof Number) || !(zzapeVar.value instanceof Number)) {
            return this.value.equals(zzapeVar.value);
        }
        double doubleValue = mo6592aT().doubleValue();
        double doubleValue2 = zzapeVar.mo6592aT().doubleValue();
        if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzaoy
    public boolean getAsBoolean() {
        return m6602bd() ? mo6601bc().booleanValue() : Boolean.parseBoolean(mo6593aU());
    }

    @Override // com.google.android.gms.internal.zzaoy
    public double getAsDouble() {
        return m6603be() ? mo6592aT().doubleValue() : Double.parseDouble(mo6593aU());
    }

    @Override // com.google.android.gms.internal.zzaoy
    public int getAsInt() {
        return m6603be() ? mo6592aT().intValue() : Integer.parseInt(mo6593aU());
    }

    @Override // com.google.android.gms.internal.zzaoy
    public long getAsLong() {
        return m6603be() ? mo6592aT().longValue() : Long.parseLong(mo6593aU());
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        if (zza(this)) {
            long longValue = mo6592aT().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        }
        if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        }
        long doubleToLongBits = Double.doubleToLongBits(mo6592aT().doubleValue());
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
        } else {
            zzapq.zzbt((obj instanceof Number) || zzcm(obj));
            this.value = obj;
        }
    }
}
