package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.C1167C;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.zzvy;
import com.google.android.gms.internal.zzvz;

/* loaded from: classes.dex */
public class zzvx extends com.google.android.gms.common.internal.zzj<zzvz> {
    private zza ahP;

    /* renamed from: hy */
    private final String f6915hy;
    private Activity mActivity;
    private final int mTheme;

    public static final class zza extends zzvy.zza {
        private Activity mActivity;

        /* renamed from: xW */
        private final int f6916xW;

        public zza(int i, Activity activity) {
            this.f6916xW = i;
            this.mActivity = activity;
        }

        public void setActivity(Activity activity) {
            this.mActivity = activity;
        }

        @Override // com.google.android.gms.internal.zzvy
        public void zzj(int i, Bundle bundle) {
            if (i == 1) {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                PendingIntent createPendingResult = this.mActivity.createPendingResult(this.f6916xW, intent, C1167C.ENCODING_PCM_32BIT);
                if (createPendingResult == null) {
                    return;
                }
                try {
                    createPendingResult.send(1);
                    return;
                } catch (PendingIntent.CanceledException e) {
                    Log.w("AddressClientImpl", "Exception settng pending result", e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT") : null);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(this.mActivity, this.f6916xW);
                    return;
                } catch (IntentSender.SendIntentException e2) {
                    Log.w("AddressClientImpl", "Exception starting pending intent", e2);
                    return;
                }
            }
            try {
                PendingIntent createPendingResult2 = this.mActivity.createPendingResult(this.f6916xW, new Intent(), C1167C.ENCODING_PCM_32BIT);
                if (createPendingResult2 != null) {
                    createPendingResult2.send(1);
                }
            } catch (PendingIntent.CanceledException e3) {
                Log.w("AddressClientImpl", "Exception setting pending result", e3);
            }
        }
    }

    public zzvx(Activity activity, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(activity, looper, 12, zzfVar, connectionCallbacks, onConnectionFailedListener);
        this.f6915hy = zzfVar.getAccountName();
        this.mActivity = activity;
        this.mTheme = i;
    }

    @Override // com.google.android.gms.common.internal.zze, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        super.disconnect();
        if (this.ahP != null) {
            this.ahP.setActivity(null);
            this.ahP = null;
        }
    }

    public void zza(UserAddressRequest userAddressRequest, int i) {
        zzbog();
        this.ahP = new zza(i, this.mActivity);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(this.f6915hy)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.f6915hy, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            zzbof().zza(this.ahP, userAddressRequest, bundle);
        } catch (RemoteException e) {
            Log.e("AddressClientImpl", "Exception requesting user address", e);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(AddressConstants.Extras.EXTRA_ERROR_CODE, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES);
            this.ahP.zzj(1, bundle2);
        }
    }

    @Override // com.google.android.gms.common.internal.zze
    public boolean zzavh() {
        return true;
    }

    protected zzvz zzbof() {
        return (zzvz) super.zzavg();
    }

    protected void zzbog() {
        super.zzavf();
    }

    @Override // com.google.android.gms.common.internal.zze
    /* renamed from: zzgu */
    public zzvz zzh(IBinder iBinder) {
        return zzvz.zza.zzgw(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjx() {
        return "com.google.android.gms.identity.service.BIND";
    }

    @Override // com.google.android.gms.common.internal.zze
    protected String zzjy() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }
}
