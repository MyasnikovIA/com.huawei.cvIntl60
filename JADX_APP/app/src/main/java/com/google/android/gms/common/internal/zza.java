package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzp;

/* loaded from: classes.dex */
public class zza extends zzp.zza {

    /* renamed from: De */
    int f6283De;

    public static Account zza(zzp zzpVar) {
        Account account = null;
        if (zzpVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzpVar.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        Account account = null;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        return account.equals(null);
    }

    @Override // com.google.android.gms.common.internal.zzp
    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.f6283De) {
            if (!com.google.android.gms.common.zze.zzf(null, callingUid)) {
                throw new SecurityException("Caller is not GooglePlayServices");
            }
            this.f6283De = callingUid;
        }
        return null;
    }
}
