package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Parcelable.Creator<ShareHashtag>() { // from class: com.facebook.share.model.ShareHashtag.1
        C11351() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    };

    /* renamed from: a */
    private final String f5839a;

    /* synthetic */ ShareHashtag(C1136a c1136a, C11351 c11351) {
        this(c1136a);
    }

    private ShareHashtag(C1136a c1136a) {
        this.f5839a = c1136a.f5840a;
    }

    ShareHashtag(Parcel parcel) {
        this.f5839a = parcel.readString();
    }

    /* renamed from: a */
    public String m6489a() {
        return this.f5839a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5839a);
    }

    /* renamed from: com.facebook.share.model.ShareHashtag$1 */
    static class C11351 implements Parcelable.Creator<ShareHashtag> {
        C11351() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareHashtag$a */
    public static class C1136a {

        /* renamed from: a */
        private String f5840a;

        /* renamed from: a */
        public C1136a m6495a(String str) {
            this.f5840a = str;
            return this;
        }

        /* renamed from: a */
        public C1136a m6494a(ShareHashtag shareHashtag) {
            return shareHashtag == null ? this : m6495a(shareHashtag.m6489a());
        }

        /* renamed from: a */
        C1136a m6493a(Parcel parcel) {
            return m6494a((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        /* renamed from: a */
        public ShareHashtag m6496a() {
            return new ShareHashtag(this);
        }
    }
}
