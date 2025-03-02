package com.google.android.gms.internal;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class zzaql extends zzapk<Time> {
    public static final zzapl bpG = new zzapl() { // from class: com.google.android.gms.internal.zzaql.1
        C13261() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Time.class) {
                return new zzaql();
            }
            return null;
        }
    };
    private final DateFormat bqg = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: com.google.android.gms.internal.zzaql$1 */
    static class C13261 implements zzapl {
        C13261() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Time.class) {
                return new zzaql();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzapk
    public synchronized void zza(zzaqr zzaqrVar, Time time) {
        zzaqrVar.zzut(time == null ? null : this.bqg.format((Date) time));
    }

    @Override // com.google.android.gms.internal.zzapk
    /* renamed from: zzn */
    public synchronized Time zzb(zzaqp zzaqpVar) {
        Time time;
        if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
            zzaqpVar.nextNull();
            time = null;
        } else {
            try {
                time = new Time(this.bqg.parse(zzaqpVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzaph(e);
            }
        }
        return time;
    }
}
