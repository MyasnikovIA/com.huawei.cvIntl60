package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

/* loaded from: classes.dex */
public final class zzh extends zzc.zza {

    /* renamed from: Qg */
    private Fragment f6503Qg;

    private zzh(Fragment fragment) {
        this.f6503Qg = fragment;
    }

    public static zzh zza(Fragment fragment) {
        if (fragment != null) {
            return new zzh(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.f6503Qg.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.f6503Qg.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.f6503Qg.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.f6503Qg.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.f6503Qg.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.f6503Qg.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzac(this.f6503Qg.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.f6503Qg.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.f6503Qg.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.f6503Qg.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.f6503Qg.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.f6503Qg.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.f6503Qg.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.f6503Qg.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.f6503Qg.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.f6503Qg.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.f6503Qg.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.f6503Qg.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.f6503Qg.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.f6503Qg.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzac(zzd zzdVar) {
        this.f6503Qg.registerForContextMenu((View) zze.zzae(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzad(zzd zzdVar) {
        this.f6503Qg.unregisterForContextMenu((View) zze.zzae(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbdp() {
        return zze.zzac(this.f6503Qg.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbdq() {
        return zza(this.f6503Qg.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbdr() {
        return zze.zzac(this.f6503Qg.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbds() {
        return zza(this.f6503Qg.getTargetFragment());
    }
}
