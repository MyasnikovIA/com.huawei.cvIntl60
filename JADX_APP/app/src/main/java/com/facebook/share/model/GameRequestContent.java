package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class GameRequestContent implements ShareModel {
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new Parcelable.Creator<GameRequestContent>() { // from class: com.facebook.share.model.GameRequestContent.1
        C11311() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent createFromParcel(Parcel parcel) {
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    };

    /* renamed from: a */
    private final String f5815a;

    /* renamed from: b */
    private final List<String> f5816b;

    /* renamed from: c */
    private final String f5817c;

    /* renamed from: d */
    private final String f5818d;

    /* renamed from: e */
    private final EnumC1132a f5819e;

    /* renamed from: f */
    private final String f5820f;

    /* renamed from: g */
    private final EnumC1133b f5821g;

    /* renamed from: h */
    private final List<String> f5822h;

    /* renamed from: com.facebook.share.model.GameRequestContent$a */
    public enum EnumC1132a {
        SEND,
        ASKFOR,
        TURN
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$b */
    public enum EnumC1133b {
        APP_USERS,
        APP_NON_USERS
    }

    GameRequestContent(Parcel parcel) {
        this.f5815a = parcel.readString();
        this.f5816b = parcel.createStringArrayList();
        this.f5817c = parcel.readString();
        this.f5818d = parcel.readString();
        this.f5819e = (EnumC1132a) parcel.readSerializable();
        this.f5820f = parcel.readString();
        this.f5821g = (EnumC1133b) parcel.readSerializable();
        this.f5822h = parcel.createStringArrayList();
        parcel.readStringList(this.f5822h);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5815a);
        parcel.writeStringList(this.f5816b);
        parcel.writeString(this.f5817c);
        parcel.writeString(this.f5818d);
        parcel.writeSerializable(this.f5819e);
        parcel.writeString(this.f5820f);
        parcel.writeSerializable(this.f5821g);
        parcel.writeStringList(this.f5822h);
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$1 */
    static class C11311 implements Parcelable.Creator<GameRequestContent> {
        C11311() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent createFromParcel(Parcel parcel) {
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    }
}
