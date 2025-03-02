package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new Parcelable.Creator<ShareFeedContent>() { // from class: com.facebook.share.internal.ShareFeedContent.1
        C11191() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent createFromParcel(Parcel parcel) {
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    };

    /* renamed from: a */
    private final String f5789a;

    /* renamed from: b */
    private final String f5790b;

    /* renamed from: c */
    private final String f5791c;

    /* renamed from: d */
    private final String f5792d;

    /* renamed from: e */
    private final String f5793e;

    /* renamed from: f */
    private final String f5794f;

    /* renamed from: g */
    private final String f5795g;

    ShareFeedContent(Parcel parcel) {
        super(parcel);
        this.f5789a = parcel.readString();
        this.f5790b = parcel.readString();
        this.f5791c = parcel.readString();
        this.f5792d = parcel.readString();
        this.f5793e = parcel.readString();
        this.f5794f = parcel.readString();
        this.f5795g = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5789a);
        parcel.writeString(this.f5790b);
        parcel.writeString(this.f5791c);
        parcel.writeString(this.f5792d);
        parcel.writeString(this.f5793e);
        parcel.writeString(this.f5794f);
        parcel.writeString(this.f5795g);
    }

    /* renamed from: com.facebook.share.internal.ShareFeedContent$1 */
    static class C11191 implements Parcelable.Creator<ShareFeedContent> {
        C11191() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent createFromParcel(Parcel parcel) {
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    }
}
