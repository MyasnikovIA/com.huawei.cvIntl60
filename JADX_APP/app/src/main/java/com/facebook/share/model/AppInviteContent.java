package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes.dex */
public final class AppInviteContent implements ShareModel {

    @Deprecated
    public static final Parcelable.Creator<AppInviteContent> CREATOR = new Parcelable.Creator<AppInviteContent>() { // from class: com.facebook.share.model.AppInviteContent.1
        C11251() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent createFromParcel(Parcel parcel) {
            return new AppInviteContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent[] newArray(int i) {
            return new AppInviteContent[i];
        }
    };

    /* renamed from: a */
    private final String f5802a;

    /* renamed from: b */
    private final String f5803b;

    /* renamed from: c */
    private final String f5804c;

    /* renamed from: d */
    private final String f5805d;

    /* renamed from: e */
    private final C1126a.a f5806e;

    @Deprecated
    AppInviteContent(Parcel parcel) {
        this.f5802a = parcel.readString();
        this.f5803b = parcel.readString();
        this.f5805d = parcel.readString();
        this.f5804c = parcel.readString();
        String readString = parcel.readString();
        if (readString.length() > 0) {
            this.f5806e = C1126a.a.valueOf(readString);
        } else {
            this.f5806e = C1126a.a.FACEBOOK;
        }
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5802a);
        parcel.writeString(this.f5803b);
        parcel.writeString(this.f5805d);
        parcel.writeString(this.f5804c);
        parcel.writeString(this.f5806e.toString());
    }

    /* renamed from: com.facebook.share.model.AppInviteContent$1 */
    static class C11251 implements Parcelable.Creator<AppInviteContent> {
        C11251() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent createFromParcel(Parcel parcel) {
            return new AppInviteContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent[] newArray(int i) {
            return new AppInviteContent[i];
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.model.AppInviteContent$a */
    public static class C1126a {

        @Deprecated
        /* renamed from: com.facebook.share.model.AppInviteContent$a$a */
        public enum a {
            FACEBOOK("facebook"),
            MESSENGER("messenger");


            /* renamed from: c */
            private final String f5810c;

            a(String str) {
                this.f5810c = str;
            }

            @Override // java.lang.Enum
            public String toString() {
                return this.f5810c;
            }
        }
    }
}
