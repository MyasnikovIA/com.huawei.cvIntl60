package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Parcelable.Creator<ShareMessengerURLActionButton>() { // from class: com.facebook.share.model.ShareMessengerURLActionButton.1
        C11461() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            return new ShareMessengerURLActionButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    };

    /* renamed from: a */
    private final Uri f5869a;

    /* renamed from: b */
    private final Uri f5870b;

    /* renamed from: c */
    private final boolean f5871c;

    /* renamed from: d */
    private final boolean f5872d;

    /* renamed from: e */
    private final EnumC1147a f5873e;

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$a */
    public enum EnumC1147a {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact
    }

    ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        this.f5869a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5871c = parcel.readByte() != 0;
        this.f5870b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5873e = (EnumC1147a) parcel.readSerializable();
        this.f5872d = parcel.readByte() != 0;
    }

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$1 */
    static class C11461 implements Parcelable.Creator<ShareMessengerURLActionButton> {
        C11461() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            return new ShareMessengerURLActionButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    }
}
