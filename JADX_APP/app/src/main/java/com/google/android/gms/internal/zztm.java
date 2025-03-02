package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.zzd;

/* loaded from: classes.dex */
public interface zztm extends IInterface {

    public static abstract class zza extends Binder implements zztm {

        /* renamed from: com.google.android.gms.internal.zztm$zza$zza */
        private static class C1909zza implements zztm {
            private IBinder zzajq;

            C1909zza(IBinder iBinder) {
                this.zzajq = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzajq;
            }

            @Override // com.google.android.gms.internal.zztm
            public int zza(com.google.android.gms.dynamic.zzd zzdVar, String str, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.zzajq.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zztm
            public com.google.android.gms.dynamic.zzd zza(com.google.android.gms.dynamic.zzd zzdVar, String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.zzajq.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzd.zza.zzfd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zztm
            public int zzf(com.google.android.gms.dynamic.zzd zzdVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzajq.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zztm zzfe(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zztm)) ? new C1909zza(iBinder) : (zztm) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    int zzf = zzf(zzd.zza.zzfd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zzf);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    com.google.android.gms.dynamic.zzd zza = zza(zzd.zza.zzfd(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza != null ? zza.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    int zza2 = zza(zzd.zza.zzfd(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zza2);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.dynamite.IDynamiteLoader");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int zza(com.google.android.gms.dynamic.zzd zzdVar, String str, boolean z);

    com.google.android.gms.dynamic.zzd zza(com.google.android.gms.dynamic.zzd zzdVar, String str, int i);

    int zzf(com.google.android.gms.dynamic.zzd zzdVar, String str);
}
