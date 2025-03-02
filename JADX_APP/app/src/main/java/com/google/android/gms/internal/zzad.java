package com.google.android.gms.internal;

/* loaded from: classes.dex */
public interface zzad {

    public static final class zza extends zzasa {
        public zzb zzck;
        public zzc zzcl;

        public zza() {
            zzw();
        }

        public static zza zzc(byte[] bArr) {
            return (zza) zzasa.zza(new zza(), bArr);
        }

        @Override // com.google.android.gms.internal.zzasa
        /* renamed from: zza */
        public zza zzb(zzars zzarsVar) {
            while (true) {
                int m6646bU = zzarsVar.m6646bU();
                switch (m6646bU) {
                    case 0:
                        break;
                    case 10:
                        if (this.zzck == null) {
                            this.zzck = new zzb();
                        }
                        zzarsVar.zza(this.zzck);
                        break;
                    case 18:
                        if (this.zzcl == null) {
                            this.zzcl = new zzc();
                        }
                        zzarsVar.zza(this.zzcl);
                        break;
                    default:
                        if (!zzasd.zzb(zzarsVar, m6646bU)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzasa
        public void zza(zzart zzartVar) {
            if (this.zzck != null) {
                zzartVar.zza(1, this.zzck);
            }
            if (this.zzcl != null) {
                zzartVar.zza(2, this.zzcl);
            }
            super.zza(zzartVar);
        }

        public zza zzw() {
            this.zzck = null;
            this.zzcl = null;
            this.btP = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzasa
        protected int zzx() {
            int zzx = super.zzx();
            if (this.zzck != null) {
                zzx += zzart.zzc(1, this.zzck);
            }
            return this.zzcl != null ? zzx + zzart.zzc(2, this.zzcl) : zzx;
        }
    }

    public static final class zzb extends zzasa {
        public Integer zzcm;

        public zzb() {
            zzy();
        }

        @Override // com.google.android.gms.internal.zzasa
        public void zza(zzart zzartVar) {
            if (this.zzcm != null) {
                zzartVar.zzaf(27, this.zzcm.intValue());
            }
            super.zza(zzartVar);
        }

        @Override // com.google.android.gms.internal.zzasa
        /* renamed from: zzc */
        public zzb zzb(zzars zzarsVar) {
            while (true) {
                int m6646bU = zzarsVar.m6646bU();
                switch (m6646bU) {
                    case 0:
                        break;
                    case 216:
                        int m6650bY = zzarsVar.m6650bY();
                        switch (m6650bY) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.zzcm = Integer.valueOf(m6650bY);
                                break;
                        }
                    default:
                        if (!zzasd.zzb(zzarsVar, m6646bU)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzasa
        protected int zzx() {
            int zzx = super.zzx();
            return this.zzcm != null ? zzx + zzart.zzah(27, this.zzcm.intValue()) : zzx;
        }

        public zzb zzy() {
            this.btP = -1;
            return this;
        }
    }

    public static final class zzc extends zzasa {
        public String zzcn;
        public String zzco;
        public String zzcp;
        public String zzcq;
        public String zzcr;

        public zzc() {
            zzz();
        }

        @Override // com.google.android.gms.internal.zzasa
        public void zza(zzart zzartVar) {
            if (this.zzcn != null) {
                zzartVar.zzq(1, this.zzcn);
            }
            if (this.zzco != null) {
                zzartVar.zzq(2, this.zzco);
            }
            if (this.zzcp != null) {
                zzartVar.zzq(3, this.zzcp);
            }
            if (this.zzcq != null) {
                zzartVar.zzq(4, this.zzcq);
            }
            if (this.zzcr != null) {
                zzartVar.zzq(5, this.zzcr);
            }
            super.zza(zzartVar);
        }

        @Override // com.google.android.gms.internal.zzasa
        /* renamed from: zzd */
        public zzc zzb(zzars zzarsVar) {
            while (true) {
                int m6646bU = zzarsVar.m6646bU();
                switch (m6646bU) {
                    case 0:
                        break;
                    case 10:
                        this.zzcn = zzarsVar.readString();
                        break;
                    case 18:
                        this.zzco = zzarsVar.readString();
                        break;
                    case 26:
                        this.zzcp = zzarsVar.readString();
                        break;
                    case 34:
                        this.zzcq = zzarsVar.readString();
                        break;
                    case 42:
                        this.zzcr = zzarsVar.readString();
                        break;
                    default:
                        if (!zzasd.zzb(zzarsVar, m6646bU)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzasa
        protected int zzx() {
            int zzx = super.zzx();
            if (this.zzcn != null) {
                zzx += zzart.zzr(1, this.zzcn);
            }
            if (this.zzco != null) {
                zzx += zzart.zzr(2, this.zzco);
            }
            if (this.zzcp != null) {
                zzx += zzart.zzr(3, this.zzcp);
            }
            if (this.zzcq != null) {
                zzx += zzart.zzr(4, this.zzcq);
            }
            return this.zzcr != null ? zzx + zzart.zzr(5, this.zzcr) : zzx;
        }

        public zzc zzz() {
            this.zzcn = null;
            this.zzco = null;
            this.zzcp = null;
            this.zzcq = null;
            this.zzcr = null;
            this.btP = -1;
            return this;
        }
    }
}
