package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerGenericTemplateContent extends ShareContent<ShareMessengerGenericTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerGenericTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerGenericTemplateContent.1
        C11401() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent[] newArray(int i) {
            return new ShareMessengerGenericTemplateContent[i];
        }
    };

    /* renamed from: a */
    private final boolean f5849a;

    /* renamed from: b */
    private final EnumC1141a f5850b;

    /* renamed from: c */
    private final ShareMessengerGenericTemplateElement f5851c;

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateContent$a */
    public enum EnumC1141a {
        HORIZONTAL,
        SQUARE
    }

    ShareMessengerGenericTemplateContent(Parcel parcel) {
        super(parcel);
        this.f5849a = parcel.readByte() != 0;
        this.f5850b = (EnumC1141a) parcel.readSerializable();
        this.f5851c = (ShareMessengerGenericTemplateElement) parcel.readParcelable(ShareMessengerGenericTemplateElement.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte((byte) (this.f5849a ? 1 : 0));
        parcel.writeSerializable(this.f5850b);
        parcel.writeParcelable(this.f5851c, i);
    }

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateContent$1 */
    static class C11401 implements Parcelable.Creator<ShareMessengerGenericTemplateContent> {
        C11401() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent[] newArray(int i) {
            return new ShareMessengerGenericTemplateContent[i];
        }
    }
}
