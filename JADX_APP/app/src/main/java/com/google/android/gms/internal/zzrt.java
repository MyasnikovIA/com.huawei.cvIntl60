package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class zzrt extends zzqp {

    /* renamed from: yg */
    private TaskCompletionSource<Void> f6823yg;

    private zzrt(zzrp zzrpVar) {
        super(zzrpVar);
        this.f6823yg = new TaskCompletionSource<>();
        this.f6812Bf.zza("GmsAvailabilityHelper", this);
    }

    public static zzrt zzu(Activity activity) {
        zzrp zzs = zzs(activity);
        zzrt zzrtVar = (zzrt) zzs.zza("GmsAvailabilityHelper", zzrt.class);
        if (zzrtVar == null) {
            return new zzrt(zzs);
        }
        if (!zzrtVar.f6823yg.getTask().isComplete()) {
            return zzrtVar;
        }
        zzrtVar.f6823yg = new TaskCompletionSource<>();
        return zzrtVar;
    }

    public Task<Void> getTask() {
        return this.f6823yg.getTask();
    }

    @Override // com.google.android.gms.internal.zzro
    public void onDestroy() {
        super.onDestroy();
        this.f6823yg.setException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zza(ConnectionResult connectionResult, int i) {
        this.f6823yg.setException(com.google.android.gms.common.internal.zzb.zzk(connectionResult));
    }

    @Override // com.google.android.gms.internal.zzqp
    protected void zzarm() {
        int isGooglePlayServicesAvailable = this.f6617xP.isGooglePlayServicesAvailable(this.f6812Bf.zzaty());
        if (isGooglePlayServicesAvailable == 0) {
            this.f6823yg.setResult(null);
        } else {
            zzj(new ConnectionResult(isGooglePlayServicesAvailable, null));
        }
    }

    public void zzj(ConnectionResult connectionResult) {
        zzb(connectionResult, 0);
    }
}
