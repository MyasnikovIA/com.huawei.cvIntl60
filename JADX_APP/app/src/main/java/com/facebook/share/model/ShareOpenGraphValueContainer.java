package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.ShareOpenGraphValueContainer.AbstractC1152a;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends AbstractC1152a> implements ShareModel {

    /* renamed from: a */
    private final Bundle f5880a;

    protected ShareOpenGraphValueContainer(AbstractC1152a<P, E> abstractC1152a) {
        this.f5880a = (Bundle) ((AbstractC1152a) abstractC1152a).f5881a.clone();
    }

    ShareOpenGraphValueContainer(Parcel parcel) {
        this.f5880a = parcel.readBundle(AbstractC1152a.class.getClassLoader());
    }

    @Nullable
    /* renamed from: a */
    public Object m6529a(String str) {
        return this.f5880a.get(str);
    }

    @Nullable
    /* renamed from: b */
    public String m6531b(String str) {
        return this.f5880a.getString(str);
    }

    /* renamed from: b */
    public Bundle m6530b() {
        return (Bundle) this.f5880a.clone();
    }

    /* renamed from: c */
    public Set<String> m6532c() {
        return this.f5880a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5880a);
    }

    /* renamed from: com.facebook.share.model.ShareOpenGraphValueContainer$a */
    public static abstract class AbstractC1152a<P extends ShareOpenGraphValueContainer, E extends AbstractC1152a> {

        /* renamed from: a */
        private Bundle f5881a = new Bundle();

        /* renamed from: a */
        public E m6534a(String str, @Nullable String str2) {
            this.f5881a.putString(str, str2);
            return this;
        }

        /* renamed from: a */
        public E mo6523a(P p) {
            if (p != null) {
                this.f5881a.putAll(p.m6530b());
            }
            return this;
        }
    }
}
