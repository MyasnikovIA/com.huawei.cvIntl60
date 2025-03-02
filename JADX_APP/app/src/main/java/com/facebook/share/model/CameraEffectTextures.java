package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CameraEffectTextures implements ShareModel {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new Parcelable.Creator<CameraEffectTextures>() { // from class: com.facebook.share.model.CameraEffectTextures.1
        C11291() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    };

    /* renamed from: a */
    private final Bundle f5813a;

    /* synthetic */ CameraEffectTextures(C1130a c1130a, C11291 c11291) {
        this(c1130a);
    }

    private CameraEffectTextures(C1130a c1130a) {
        this.f5813a = c1130a.f5814a;
    }

    CameraEffectTextures(Parcel parcel) {
        this.f5813a = parcel.readBundle(getClass().getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5813a);
    }

    /* renamed from: com.facebook.share.model.CameraEffectTextures$1 */
    static class C11291 implements Parcelable.Creator<CameraEffectTextures> {
        C11291() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectTextures$a */
    public static class C1130a {

        /* renamed from: a */
        private Bundle f5814a = new Bundle();

        /* renamed from: a */
        public C1130a m6480a(CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f5814a.putAll(cameraEffectTextures.f5813a);
            }
            return this;
        }

        /* renamed from: a */
        public C1130a m6479a(Parcel parcel) {
            return m6480a((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
        }

        /* renamed from: a */
        public CameraEffectTextures m6481a() {
            return new CameraEffectTextures(this);
        }
    }
}
