package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface zza extends IInterface {

    /* renamed from: com.google.android.gms.auth.account.zza$zza */
    public static abstract class AbstractBinderC1871zza extends Binder implements zza {

        /* renamed from: com.google.android.gms.auth.account.zza$zza$zza */
        private static class C1872zza implements zza {
            private IBinder zzajq;

            C1872zza(IBinder iBinder) {
                this.zzajq = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzajq;
            }

            @Override // com.google.android.gms.auth.account.zza
            public void zzbc(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.account.IWorkAccountCallback");
                    obtain.writeInt(z ? 1 : 0);
                    this.zzajq.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.account.zza
            public void zzd(Account account) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.account.IWorkAccountCallback");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzajq.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC1871zza() {
            attachInterface(this, "com.google.android.gms.auth.account.IWorkAccountCallback");
        }

        public static zza zzby(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.IWorkAccountCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zza)) ? new C1872zza(iBinder) : (zza) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.auth.account.IWorkAccountCallback");
                    zzd(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.account.IWorkAccountCallback");
                    zzbc(parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.account.IWorkAccountCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzbc(boolean z);

    void zzd(Account account);
}
