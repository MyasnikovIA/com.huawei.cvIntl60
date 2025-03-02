package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerGenericTemplateElement implements ShareModel {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateElement> CREATOR = new Parcelable.Creator<ShareMessengerGenericTemplateElement>() { // from class: com.facebook.share.model.ShareMessengerGenericTemplateElement.1
        C11421() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateElement(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement[] newArray(int i) {
            return new ShareMessengerGenericTemplateElement[i];
        }
    };

    /* renamed from: a */
    private final String f5855a;

    /* renamed from: b */
    private final String f5856b;

    /* renamed from: c */
    private final Uri f5857c;

    /* renamed from: d */
    private final ShareMessengerActionButton f5858d;

    /* renamed from: e */
    private final ShareMessengerActionButton f5859e;

    ShareMessengerGenericTemplateElement(Parcel parcel) {
        this.f5855a = parcel.readString();
        this.f5856b = parcel.readString();
        this.f5857c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5858d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
        this.f5859e = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5855a);
        parcel.writeString(this.f5856b);
        parcel.writeParcelable(this.f5857c, i);
        parcel.writeParcelable(this.f5858d, i);
        parcel.writeParcelable(this.f5859e, i);
    }

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateElement$1 */
    static class C11421 implements Parcelable.Creator<ShareMessengerGenericTemplateElement> {
        C11421() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateElement(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement[] newArray(int i) {
            return new ShareMessengerGenericTemplateElement[i];
        }
    }
}
