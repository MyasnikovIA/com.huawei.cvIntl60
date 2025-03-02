package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class zzro {

    /* renamed from: Bf */
    protected final zzrp f6812Bf;

    protected zzro(zzrp zzrpVar) {
        this.f6812Bf = zzrpVar;
    }

    protected static zzrp zzc(zzrn zzrnVar) {
        return zzrnVar.zzatv() ? zzsd.zza(zzrnVar.zzatx()) : zzrq.zzt(zzrnVar.zzatw());
    }

    public static zzrp zzs(Activity activity) {
        return zzc(new zzrn(activity));
    }

    @MainThread
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        return this.f6812Bf.zzaty();
    }

    @MainThread
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @MainThread
    public void onCreate(Bundle bundle) {
    }

    @MainThread
    public void onDestroy() {
    }

    @MainThread
    public void onSaveInstanceState(Bundle bundle) {
    }

    @MainThread
    public void onStart() {
    }

    @MainThread
    public void onStop() {
    }
}
