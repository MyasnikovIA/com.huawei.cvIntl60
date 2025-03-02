package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto.1
        C11531() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    };

    /* renamed from: a */
    private final Bitmap f5882a;

    /* renamed from: b */
    private final Uri f5883b;

    /* renamed from: c */
    private final boolean f5884c;

    /* renamed from: d */
    private final String f5885d;

    /* synthetic */ SharePhoto(C1154a c1154a, C11531 c11531) {
        this(c1154a);
    }

    private SharePhoto(C1154a c1154a) {
        super(c1154a);
        this.f5882a = c1154a.f5886a;
        this.f5883b = c1154a.f5887b;
        this.f5884c = c1154a.f5888c;
        this.f5885d = c1154a.f5889d;
    }

    SharePhoto(Parcel parcel) {
        super(parcel);
        this.f5882a = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f5883b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5884c = parcel.readByte() != 0;
        this.f5885d = parcel.readString();
    }

    @Nullable
    /* renamed from: b */
    public Bitmap m6535b() {
        return this.f5882a;
    }

    @Nullable
    /* renamed from: c */
    public Uri m6536c() {
        return this.f5883b;
    }

    /* renamed from: d */
    public boolean m6537d() {
        return this.f5884c;
    }

    /* renamed from: e */
    public String m6538e() {
        return this.f5885d;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5882a, 0);
        parcel.writeParcelable(this.f5883b, 0);
        parcel.writeByte((byte) (this.f5884c ? 1 : 0));
        parcel.writeString(this.f5885d);
    }

    /* renamed from: com.facebook.share.model.SharePhoto$1 */
    static class C11531 implements Parcelable.Creator<SharePhoto> {
        C11531() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    }

    /* renamed from: com.facebook.share.model.SharePhoto$a */
    public static final class C1154a extends ShareMedia.AbstractC1138a<SharePhoto, C1154a> {

        /* renamed from: a */
        private Bitmap f5886a;

        /* renamed from: b */
        private Uri f5887b;

        /* renamed from: c */
        private boolean f5888c;

        /* renamed from: d */
        private String f5889d;

        /* renamed from: a */
        public C1154a m6548a(@Nullable Bitmap bitmap) {
            this.f5886a = bitmap;
            return this;
        }

        /* renamed from: a */
        public C1154a m6549a(@Nullable Uri uri) {
            this.f5887b = uri;
            return this;
        }

        /* renamed from: a */
        public C1154a m6551a(boolean z) {
            this.f5888c = z;
            return this;
        }

        /* renamed from: a */
        public C1154a m6550a(@Nullable String str) {
            this.f5889d = str;
            return this;
        }

        /* renamed from: a */
        Uri m6547a() {
            return this.f5887b;
        }

        /* renamed from: b */
        Bitmap m6552b() {
            return this.f5886a;
        }

        /* renamed from: c */
        public SharePhoto m6554c() {
            return new SharePhoto(this);
        }

        @Override // com.facebook.share.model.ShareMedia.AbstractC1138a
        /* renamed from: a */
        public C1154a mo6504a(SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return ((C1154a) super.mo6504a((C1154a) sharePhoto)).m6548a(sharePhoto.m6535b()).m6549a(sharePhoto.m6536c()).m6551a(sharePhoto.m6537d()).m6550a(sharePhoto.m6538e());
        }

        /* renamed from: b */
        C1154a m6553b(Parcel parcel) {
            return mo6504a((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        /* renamed from: a */
        static void m6542a(Parcel parcel, int i, List<SharePhoto> list) {
            ShareMedia[] shareMediaArr = new ShareMedia[list.size()];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < list.size()) {
                    shareMediaArr[i3] = list.get(i3);
                    i2 = i3 + 1;
                } else {
                    parcel.writeParcelableArray(shareMediaArr, i);
                    return;
                }
            }
        }

        /* renamed from: c */
        static List<SharePhoto> m6544c(Parcel parcel) {
            List<ShareMedia> a2 = m6502a(parcel);
            ArrayList arrayList = new ArrayList();
            for (ShareMedia shareMedia : a2) {
                if (shareMedia instanceof SharePhoto) {
                    arrayList.add((SharePhoto) shareMedia);
                }
            }
            return arrayList;
        }
    }
}
