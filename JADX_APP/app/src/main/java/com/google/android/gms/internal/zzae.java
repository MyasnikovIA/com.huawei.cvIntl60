package com.google.android.gms.internal;

/* loaded from: classes.dex */
public interface zzae {

    public static final class zza extends zzaru<zza> {
        public String zzcs = null;
        public Long zzct = null;
        public String stackTrace = null;
        public String zzcu = null;
        public String zzcv = null;
        public Long zzcw = null;
        public Long zzcx = null;
        public String zzcy = null;
        public Long zzcz = null;
        public String zzda = null;

        public zza() {
            this.btP = -1;
        }

        @Override // com.google.android.gms.internal.zzaru, com.google.android.gms.internal.zzasa
        public void zza(zzart zzartVar) {
            if (this.zzcs != null) {
                zzartVar.zzq(1, this.zzcs);
            }
            if (this.zzct != null) {
                zzartVar.zzb(2, this.zzct.longValue());
            }
            if (this.stackTrace != null) {
                zzartVar.zzq(3, this.stackTrace);
            }
            if (this.zzcu != null) {
                zzartVar.zzq(4, this.zzcu);
            }
            if (this.zzcv != null) {
                zzartVar.zzq(5, this.zzcv);
            }
            if (this.zzcw != null) {
                zzartVar.zzb(6, this.zzcw.longValue());
            }
            if (this.zzcx != null) {
                zzartVar.zzb(7, this.zzcx.longValue());
            }
            if (this.zzcy != null) {
                zzartVar.zzq(8, this.zzcy);
            }
            if (this.zzcz != null) {
                zzartVar.zzb(9, this.zzcz.longValue());
            }
            if (this.zzda != null) {
                zzartVar.zzq(10, this.zzda);
            }
            super.zza(zzartVar);
        }

        @Override // com.google.android.gms.internal.zzasa
        /* renamed from: zze */
        public zza zzb(zzars zzarsVar) {
            while (true) {
                int m6646bU = zzarsVar.m6646bU();
                switch (m6646bU) {
                    case 0:
                        break;
                    case 10:
                        this.zzcs = zzarsVar.readString();
                        break;
                    case 16:
                        this.zzct = Long.valueOf(zzarsVar.m6649bX());
                        break;
                    case 26:
                        this.stackTrace = zzarsVar.readString();
                        break;
                    case 34:
                        this.zzcu = zzarsVar.readString();
                        break;
                    case 42:
                        this.zzcv = zzarsVar.readString();
                        break;
                    case 48:
                        this.zzcw = Long.valueOf(zzarsVar.m6649bX());
                        break;
                    case 56:
                        this.zzcx = Long.valueOf(zzarsVar.m6649bX());
                        break;
                    case 66:
                        this.zzcy = zzarsVar.readString();
                        break;
                    case 72:
                        this.zzcz = Long.valueOf(zzarsVar.m6649bX());
                        break;
                    case 82:
                        this.zzda = zzarsVar.readString();
                        break;
                    default:
                        if (!super.zza(zzarsVar, m6646bU)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzaru, com.google.android.gms.internal.zzasa
        protected int zzx() {
            int zzx = super.zzx();
            if (this.zzcs != null) {
                zzx += zzart.zzr(1, this.zzcs);
            }
            if (this.zzct != null) {
                zzx += zzart.zzf(2, this.zzct.longValue());
            }
            if (this.stackTrace != null) {
                zzx += zzart.zzr(3, this.stackTrace);
            }
            if (this.zzcu != null) {
                zzx += zzart.zzr(4, this.zzcu);
            }
            if (this.zzcv != null) {
                zzx += zzart.zzr(5, this.zzcv);
            }
            if (this.zzcw != null) {
                zzx += zzart.zzf(6, this.zzcw.longValue());
            }
            if (this.zzcx != null) {
                zzx += zzart.zzf(7, this.zzcx.longValue());
            }
            if (this.zzcy != null) {
                zzx += zzart.zzr(8, this.zzcy);
            }
            if (this.zzcz != null) {
                zzx += zzart.zzf(9, this.zzcz.longValue());
            }
            return this.zzda != null ? zzx + zzart.zzr(10, this.zzda) : zzx;
        }
    }
}
