package com.google.android.gms.internal;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public final class zzaqk extends zzapk<Date> {
    public static final zzapl bpG = new zzapl() { // from class: com.google.android.gms.internal.zzaqk.1
        C13251() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Date.class) {
                return new zzaqk();
            }
            return null;
        }
    };
    private final DateFormat bqg = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: com.google.android.gms.internal.zzaqk$1 */
    static class C13251 implements zzapl {
        C13251() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == Date.class) {
                return new zzaqk();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzapk
    public synchronized void zza(zzaqr zzaqrVar, Date date) {
        zzaqrVar.zzut(date == null ? null : this.bqg.format((java.util.Date) date));
    }

    @Override // com.google.android.gms.internal.zzapk
    /* renamed from: zzm */
    public synchronized Date zzb(zzaqp zzaqpVar) {
        Date date;
        if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
            zzaqpVar.nextNull();
            date = null;
        } else {
            try {
                date = new Date(this.bqg.parse(zzaqpVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzaph(e);
            }
        }
        return date;
    }
}
