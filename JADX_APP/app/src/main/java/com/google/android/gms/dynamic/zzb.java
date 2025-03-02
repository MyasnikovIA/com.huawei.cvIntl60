package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public final class zzb extends zzc.zza {

    /* renamed from: Qd */
    private Fragment f6500Qd;

    private zzb(Fragment fragment) {
        this.f6500Qd = fragment;
    }

    public static zzb zza(Fragment fragment) {
        if (fragment != null) {
            return new zzb(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.f6500Qd.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.f6500Qd.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.f6500Qd.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.f6500Qd.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.f6500Qd.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.f6500Qd.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzac(this.f6500Qd.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.f6500Qd.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.f6500Qd.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.f6500Qd.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.f6500Qd.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.f6500Qd.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.f6500Qd.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.f6500Qd.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.f6500Qd.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.f6500Qd.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.f6500Qd.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.f6500Qd.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.f6500Qd.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.f6500Qd.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzac(zzd zzdVar) {
        this.f6500Qd.registerForContextMenu((View) zze.zzae(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzad(zzd zzdVar) {
        this.f6500Qd.unregisterForContextMenu((View) zze.zzae(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbdp() {
        return zze.zzac(this.f6500Qd.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbdq() {
        return zza(this.f6500Qd.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbdr() {
        return zze.zzac(this.f6500Qd.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbds() {
        return zza(this.f6500Qd.getTargetFragment());
    }
}
