package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;

/* loaded from: classes.dex */
public class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Object> {
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new Parcelable.Creator<ShareCameraEffectContent>() { // from class: com.facebook.share.model.ShareCameraEffectContent.1
        C11341() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent createFromParcel(Parcel parcel) {
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    };

    /* renamed from: a */
    private String f5830a;

    /* renamed from: b */
    private CameraEffectArguments f5831b;

    /* renamed from: c */
    private CameraEffectTextures f5832c;

    ShareCameraEffectContent(Parcel parcel) {
        super(parcel);
        this.f5830a = parcel.readString();
        this.f5831b = new CameraEffectArguments.C1128a().m6472a(parcel).m6474a();
        this.f5832c = new CameraEffectTextures.C1130a().m6479a(parcel).m6481a();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5830a);
        parcel.writeParcelable(this.f5831b, 0);
        parcel.writeParcelable(this.f5832c, 0);
    }

    /* renamed from: com.facebook.share.model.ShareCameraEffectContent$1 */
    static class C11341 implements Parcelable.Creator<ShareCameraEffectContent> {
        C11341() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent createFromParcel(Parcel parcel) {
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    }
}
