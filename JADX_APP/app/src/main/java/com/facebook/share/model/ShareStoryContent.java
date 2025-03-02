package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Object> {
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new Parcelable.Creator<ShareStoryContent>() { // from class: com.facebook.share.model.ShareStoryContent.1
        C11561() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareStoryContent createFromParcel(Parcel parcel) {
            return new ShareStoryContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }
    };

    /* renamed from: a */
    private final ShareMedia f5891a;

    /* renamed from: b */
    private final SharePhoto f5892b;

    /* renamed from: c */
    @Nullable
    private final List<String> f5893c;

    /* renamed from: d */
    private final String f5894d;

    ShareStoryContent(Parcel parcel) {
        super(parcel);
        this.f5891a = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.f5892b = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        this.f5893c = m6557a(parcel);
        this.f5894d = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5891a, 0);
        parcel.writeParcelable(this.f5892b, 0);
        parcel.writeStringList(this.f5893c);
        parcel.writeString(this.f5894d);
    }

    /* renamed from: com.facebook.share.model.ShareStoryContent$1 */
    static class C11561 implements Parcelable.Creator<ShareStoryContent> {
        C11561() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareStoryContent createFromParcel(Parcel parcel) {
            return new ShareStoryContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }
    }

    @Nullable
    /* renamed from: a */
    private List<String> m6557a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }
}
