package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerMediaTemplateContent extends ShareContent<ShareMessengerMediaTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerMediaTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerMediaTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerMediaTemplateContent.1
        C11431() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerMediaTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent[] newArray(int i) {
            return new ShareMessengerMediaTemplateContent[i];
        }
    };

    /* renamed from: a */
    private final EnumC1144a f5860a;

    /* renamed from: b */
    private final String f5861b;

    /* renamed from: c */
    private final Uri f5862c;

    /* renamed from: d */
    private final ShareMessengerActionButton f5863d;

    /* renamed from: com.facebook.share.model.ShareMessengerMediaTemplateContent$a */
    public enum EnumC1144a {
        IMAGE,
        VIDEO
    }

    ShareMessengerMediaTemplateContent(Parcel parcel) {
        super(parcel);
        this.f5860a = (EnumC1144a) parcel.readSerializable();
        this.f5861b = parcel.readString();
        this.f5862c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5863d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.f5860a);
        parcel.writeString(this.f5861b);
        parcel.writeParcelable(this.f5862c, i);
        parcel.writeParcelable(this.f5863d, i);
    }

    /* renamed from: com.facebook.share.model.ShareMessengerMediaTemplateContent$1 */
    static class C11431 implements Parcelable.Creator<ShareMessengerMediaTemplateContent> {
        C11431() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerMediaTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent[] newArray(int i) {
            return new ShareMessengerMediaTemplateContent[i];
        }
    }
}
