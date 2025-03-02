package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ShareContent<P extends ShareContent, E> implements ShareModel {

    /* renamed from: a */
    private final Uri f5833a;

    /* renamed from: b */
    private final List<String> f5834b;

    /* renamed from: c */
    private final String f5835c;

    /* renamed from: d */
    private final String f5836d;

    /* renamed from: e */
    private final String f5837e;

    /* renamed from: f */
    private final ShareHashtag f5838f;

    protected ShareContent(Parcel parcel) {
        this.f5833a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5834b = m6486a(parcel);
        this.f5835c = parcel.readString();
        this.f5836d = parcel.readString();
        this.f5837e = parcel.readString();
        this.f5838f = new ShareHashtag.C1136a().m6493a(parcel).m6496a();
    }

    @Nullable
    /* renamed from: a */
    public Uri m6487a() {
        return this.f5833a;
    }

    @Nullable
    /* renamed from: b */
    public ShareHashtag m6488b() {
        return this.f5838f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f5833a, 0);
        parcel.writeStringList(this.f5834b);
        parcel.writeString(this.f5835c);
        parcel.writeString(this.f5836d);
        parcel.writeString(this.f5837e);
        parcel.writeParcelable(this.f5838f, 0);
    }

    /* renamed from: a */
    private List<String> m6486a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }
}
