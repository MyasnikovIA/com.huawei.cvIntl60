package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ShareMedia implements ShareModel {

    /* renamed from: a */
    private final Bundle f5845a;

    protected ShareMedia(AbstractC1138a abstractC1138a) {
        this.f5845a = new Bundle(abstractC1138a.f5846a);
    }

    ShareMedia(Parcel parcel) {
        this.f5845a = parcel.readBundle();
    }

    @Deprecated
    /* renamed from: a */
    public Bundle m6500a() {
        return new Bundle(this.f5845a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5845a);
    }

    /* renamed from: com.facebook.share.model.ShareMedia$a */
    public static abstract class AbstractC1138a<M extends ShareMedia, B extends AbstractC1138a> {

        /* renamed from: a */
        private Bundle f5846a = new Bundle();

        @Deprecated
        /* renamed from: a */
        public B m6503a(Bundle bundle) {
            this.f5846a.putAll(bundle);
            return this;
        }

        /* renamed from: a */
        public B mo6504a(M m) {
            return m == null ? this : m6503a(m.m6500a());
        }

        /* renamed from: a */
        static List<ShareMedia> m6502a(Parcel parcel) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
            ArrayList arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((ShareMedia) parcelable);
            }
            return arrayList;
        }
    }
}
