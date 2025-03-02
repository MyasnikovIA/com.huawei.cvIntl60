package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;

/* loaded from: classes.dex */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo.1
        C11571() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    };

    /* renamed from: a */
    private final Uri f5895a;

    /* synthetic */ ShareVideo(C1158a c1158a, C11571 c11571) {
        this(c1158a);
    }

    private ShareVideo(C1158a c1158a) {
        super(c1158a);
        this.f5895a = c1158a.f5896a;
    }

    ShareVideo(Parcel parcel) {
        super(parcel);
        this.f5895a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    @Nullable
    /* renamed from: b */
    public Uri m6560b() {
        return this.f5895a;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5895a, 0);
    }

    /* renamed from: com.facebook.share.model.ShareVideo$1 */
    static class C11571 implements Parcelable.Creator<ShareVideo> {
        C11571() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareVideo$a */
    public static final class C1158a extends ShareMedia.AbstractC1138a<ShareVideo, C1158a> {

        /* renamed from: a */
        private Uri f5896a;

        /* renamed from: a */
        public C1158a m6564a(@Nullable Uri uri) {
            this.f5896a = uri;
            return this;
        }

        /* renamed from: a */
        public ShareVideo m6565a() {
            return new ShareVideo(this);
        }

        @Override // com.facebook.share.model.ShareMedia.AbstractC1138a
        /* renamed from: a */
        public C1158a mo6504a(ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return ((C1158a) super.mo6504a((C1158a) shareVideo)).m6564a(shareVideo.m6560b());
        }

        /* renamed from: b */
        C1158a m6566b(Parcel parcel) {
            return mo6504a((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }
    }
}
