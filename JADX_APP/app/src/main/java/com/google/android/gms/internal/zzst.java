package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.zzss;

/* loaded from: classes.dex */
public interface zzst extends IInterface {

    public static abstract class zza extends Binder implements zzst {

        /* renamed from: com.google.android.gms.internal.zzst$zza$zza */
        private static class C1907zza implements zzst {
            private IBinder zzajq;

            C1907zza(IBinder iBinder) {
                this.zzajq = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzajq;
            }

            @Override // com.google.android.gms.internal.zzst
            public void zza(zzss zzssVar) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
                    obtain.writeStrongBinder(zzssVar != null ? zzssVar.asBinder() : null);
                    this.zzajq.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzst zzeb(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzst)) ? new C1907zza(iBinder) : (zzst) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonService");
                    zza(zzss.zza.zzea(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.service.ICommonService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzss zzssVar);
}
