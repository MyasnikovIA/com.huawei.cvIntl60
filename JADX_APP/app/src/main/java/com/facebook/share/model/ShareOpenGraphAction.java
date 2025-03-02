package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;

/* loaded from: classes.dex */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, C1149a> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>() { // from class: com.facebook.share.model.ShareOpenGraphAction.1
        C11481() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    };

    /* synthetic */ ShareOpenGraphAction(C1149a c1149a, C11481 c11481) {
        this(c1149a);
    }

    private ShareOpenGraphAction(C1149a c1149a) {
        super(c1149a);
    }

    ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    @Nullable
    /* renamed from: a */
    public String m6517a() {
        return m6531b("og:type");
    }

    /* renamed from: com.facebook.share.model.ShareOpenGraphAction$1 */
    static class C11481 implements Parcelable.Creator<ShareOpenGraphAction> {
        C11481() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareOpenGraphAction$a */
    public static final class C1149a extends ShareOpenGraphValueContainer.AbstractC1152a<ShareOpenGraphAction, C1149a> {
        /* renamed from: a */
        public C1149a m6521a(String str) {
            m6534a("og:type", str);
            return this;
        }

        /* renamed from: a */
        public ShareOpenGraphAction m6522a() {
            return new ShareOpenGraphAction(this);
        }

        @Override // com.facebook.share.model.ShareOpenGraphValueContainer.AbstractC1152a
        /* renamed from: a */
        public C1149a mo6523a(ShareOpenGraphAction shareOpenGraphAction) {
            if (shareOpenGraphAction == null) {
                return this;
            }
            return ((C1149a) super.mo6523a((C1149a) shareOpenGraphAction)).m6521a(shareOpenGraphAction.m6517a());
        }

        /* renamed from: a */
        C1149a m6520a(Parcel parcel) {
            return mo6523a((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }
    }
}
