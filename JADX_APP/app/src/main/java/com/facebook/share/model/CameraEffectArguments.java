package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CameraEffectArguments implements ShareModel {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new Parcelable.Creator<CameraEffectArguments>() { // from class: com.facebook.share.model.CameraEffectArguments.1
        C11271() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    };

    /* renamed from: a */
    private final Bundle f5811a;

    /* synthetic */ CameraEffectArguments(C1128a c1128a, C11271 c11271) {
        this(c1128a);
    }

    private CameraEffectArguments(C1128a c1128a) {
        this.f5811a = c1128a.f5812a;
    }

    CameraEffectArguments(Parcel parcel) {
        this.f5811a = parcel.readBundle(getClass().getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5811a);
    }

    /* renamed from: com.facebook.share.model.CameraEffectArguments$1 */
    static class C11271 implements Parcelable.Creator<CameraEffectArguments> {
        C11271() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectArguments$a */
    public static class C1128a {

        /* renamed from: a */
        private Bundle f5812a = new Bundle();

        /* renamed from: a */
        public C1128a m6473a(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.f5812a.putAll(cameraEffectArguments.f5811a);
            }
            return this;
        }

        /* renamed from: a */
        public C1128a m6472a(Parcel parcel) {
            return m6473a((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
        }

        /* renamed from: a */
        public CameraEffectArguments m6474a() {
            return new CameraEffectArguments(this);
        }
    }
}
