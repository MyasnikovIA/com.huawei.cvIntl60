package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.google.android.gms.internal.zzrp;

/* loaded from: classes.dex */
public abstract class zzh implements DialogInterface.OnClickListener {

    /* renamed from: com.google.android.gms.common.internal.zzh$1 */
    final class C12581 extends zzh {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ int val$requestCode;

        C12581(Intent intent, Activity activity, int i) {
            intent = intent;
            activity = activity;
            i = i;
        }

        @Override // com.google.android.gms.common.internal.zzh
        public void zzavx() {
            if (intent != null) {
                activity.startActivityForResult(intent, i);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzh$2 */
    final class C12592 extends zzh {
        final /* synthetic */ Fragment val$fragment;
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ int val$requestCode;

        C12592(Intent intent, Fragment fragment, int i) {
            intent = intent;
            fragment = fragment;
            i = i;
        }

        @Override // com.google.android.gms.common.internal.zzh
        public void zzavx() {
            if (intent != null) {
                fragment.startActivityForResult(intent, i);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzh$3 */
    final class C12603 extends zzh {

        /* renamed from: DP */
        final /* synthetic */ zzrp f6334DP;
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ int val$requestCode;

        C12603(Intent intent, zzrp zzrpVar, int i) {
            intent = intent;
            zzrpVar = zzrpVar;
            i = i;
        }

        @Override // com.google.android.gms.common.internal.zzh
        @TargetApi(11)
        public void zzavx() {
            if (intent != null) {
                zzrpVar.startActivityForResult(intent, i);
            }
        }
    }

    public static zzh zza(Activity activity, Intent intent, int i) {
        return new zzh() { // from class: com.google.android.gms.common.internal.zzh.1
            final /* synthetic */ Activity val$activity;
            final /* synthetic */ Intent val$intent;
            final /* synthetic */ int val$requestCode;

            C12581(Intent intent2, Activity activity2, int i2) {
                intent = intent2;
                activity = activity2;
                i = i2;
            }

            @Override // com.google.android.gms.common.internal.zzh
            public void zzavx() {
                if (intent != null) {
                    activity.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzh zza(@NonNull Fragment fragment, Intent intent, int i) {
        return new zzh() { // from class: com.google.android.gms.common.internal.zzh.2
            final /* synthetic */ Fragment val$fragment;
            final /* synthetic */ Intent val$intent;
            final /* synthetic */ int val$requestCode;

            C12592(Intent intent2, Fragment fragment2, int i2) {
                intent = intent2;
                fragment = fragment2;
                i = i2;
            }

            @Override // com.google.android.gms.common.internal.zzh
            public void zzavx() {
                if (intent != null) {
                    fragment.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzh zza(@NonNull zzrp zzrpVar, Intent intent, int i) {
        return new zzh() { // from class: com.google.android.gms.common.internal.zzh.3

            /* renamed from: DP */
            final /* synthetic */ zzrp f6334DP;
            final /* synthetic */ Intent val$intent;
            final /* synthetic */ int val$requestCode;

            C12603(Intent intent2, zzrp zzrpVar2, int i2) {
                intent = intent2;
                zzrpVar = zzrpVar2;
                i = i2;
            }

            @Override // com.google.android.gms.common.internal.zzh
            @TargetApi(11)
            public void zzavx() {
                if (intent != null) {
                    zzrpVar.startActivityForResult(intent, i);
                }
            }
        };
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            zzavx();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }

    protected abstract void zzavx();
}
