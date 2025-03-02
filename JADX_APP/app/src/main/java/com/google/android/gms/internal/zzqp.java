package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.zzrj;

/* loaded from: classes.dex */
public abstract class zzqp extends zzro implements DialogInterface.OnCancelListener {
    protected boolean mStarted;

    /* renamed from: xP */
    protected final GoogleApiAvailability f6617xP;

    /* renamed from: yA */
    private ConnectionResult f6618yA;

    /* renamed from: yB */
    private int f6619yB;

    /* renamed from: yC */
    private final Handler f6620yC;

    /* renamed from: yz */
    protected boolean f6621yz;

    private class zza implements Runnable {

        /* renamed from: com.google.android.gms.internal.zzqp$zza$1 */
        class C13681 extends zzrj.zza {

            /* renamed from: yE */
            final /* synthetic */ Dialog f6623yE;

            C13681(Dialog dialog) {
                zza = dialog;
            }

            @Override // com.google.android.gms.internal.zzrj.zza
            public void zzarr() {
                zzqp.this.zzarq();
                if (zza.isShowing()) {
                    zza.dismiss();
                }
            }
        }

        private zza() {
        }

        /* synthetic */ zza(zzqp zzqpVar, C13671 c13671) {
            this();
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            if (zzqp.this.mStarted) {
                if (zzqp.this.f6618yA.hasResolution()) {
                    zzqp.this.f6812Bf.startActivityForResult(GoogleApiActivity.zzb(zzqp.this.getActivity(), zzqp.this.f6618yA.getResolution(), zzqp.this.f6619yB, false), 1);
                    return;
                }
                if (zzqp.this.f6617xP.isUserResolvableError(zzqp.this.f6618yA.getErrorCode())) {
                    zzqp.this.f6617xP.zza(zzqp.this.getActivity(), zzqp.this.f6812Bf, zzqp.this.f6618yA.getErrorCode(), 2, zzqp.this);
                } else if (zzqp.this.f6618yA.getErrorCode() != 18) {
                    zzqp.this.zza(zzqp.this.f6618yA, zzqp.this.f6619yB);
                } else {
                    zzqp.this.f6617xP.zza(zzqp.this.getActivity().getApplicationContext(), new zzrj.zza() { // from class: com.google.android.gms.internal.zzqp.zza.1

                        /* renamed from: yE */
                        final /* synthetic */ Dialog f6623yE;

                        C13681(Dialog dialog) {
                            zza = dialog;
                        }

                        @Override // com.google.android.gms.internal.zzrj.zza
                        public void zzarr() {
                            zzqp.this.zzarq();
                            if (zza.isShowing()) {
                                zza.dismiss();
                            }
                        }
                    });
                }
            }
        }
    }

    protected zzqp(zzrp zzrpVar) {
        this(zzrpVar, GoogleApiAvailability.getInstance());
    }

    zzqp(zzrp zzrpVar, GoogleApiAvailability googleApiAvailability) {
        super(zzrpVar);
        this.f6619yB = -1;
        this.f6620yC = new Handler(Looper.getMainLooper());
        this.f6617xP = googleApiAvailability;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
    @Override // com.google.android.gms.internal.zzro
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r4 = 18
            r2 = 13
            r0 = 1
            r1 = 0
            switch(r6) {
                case 1: goto L27;
                case 2: goto L10;
                default: goto L9;
            }
        L9:
            r0 = r1
        La:
            if (r0 == 0) goto L3d
            r5.zzarq()
        Lf:
            return
        L10:
            com.google.android.gms.common.GoogleApiAvailability r2 = r5.f6617xP
            android.app.Activity r3 = r5.getActivity()
            int r2 = r2.isGooglePlayServicesAvailable(r3)
            if (r2 != 0) goto L47
        L1c:
            com.google.android.gms.common.ConnectionResult r1 = r5.f6618yA
            int r1 = r1.getErrorCode()
            if (r1 != r4) goto La
            if (r2 != r4) goto La
            goto Lf
        L27:
            r3 = -1
            if (r7 == r3) goto La
            if (r7 != 0) goto L9
            if (r8 == 0) goto L45
            java.lang.String r0 = "<<ResolutionFailureErrorDetail>>"
            int r0 = r8.getIntExtra(r0, r2)
        L34:
            com.google.android.gms.common.ConnectionResult r2 = new com.google.android.gms.common.ConnectionResult
            r3 = 0
            r2.<init>(r0, r3)
            r5.f6618yA = r2
            goto L9
        L3d:
            com.google.android.gms.common.ConnectionResult r0 = r5.f6618yA
            int r1 = r5.f6619yB
            r5.zza(r0, r1)
            goto Lf
        L45:
            r0 = r2
            goto L34
        L47:
            r0 = r1
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqp.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.f6619yB);
        zzarq();
    }

    @Override // com.google.android.gms.internal.zzro
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f6621yz = bundle.getBoolean("resolving_error", false);
            if (this.f6621yz) {
                this.f6619yB = bundle.getInt("failed_client_id", -1);
                this.f6618yA = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzro
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.f6621yz);
        if (this.f6621yz) {
            bundle.putInt("failed_client_id", this.f6619yB);
            bundle.putInt("failed_status", this.f6618yA.getErrorCode());
            bundle.putParcelable("failed_resolution", this.f6618yA.getResolution());
        }
    }

    @Override // com.google.android.gms.internal.zzro
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    @Override // com.google.android.gms.internal.zzro
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    protected abstract void zzarm();

    protected void zzarq() {
        this.f6619yB = -1;
        this.f6621yz = false;
        this.f6618yA = null;
        zzarm();
    }

    public void zzb(ConnectionResult connectionResult, int i) {
        if (this.f6621yz) {
            return;
        }
        this.f6621yz = true;
        this.f6619yB = i;
        this.f6618yA = connectionResult;
        this.f6620yC.post(new zza());
    }
}
