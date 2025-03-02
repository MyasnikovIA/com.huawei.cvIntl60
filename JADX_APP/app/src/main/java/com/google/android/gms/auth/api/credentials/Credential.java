package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new zza();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";

    /* renamed from: il */
    @Nullable
    private final Uri f5975il;

    /* renamed from: im */
    private final List<IdToken> f5976im;

    /* renamed from: io */
    @Nullable
    private final String f5977io;

    /* renamed from: ip */
    @Nullable
    private final String f5978ip;

    /* renamed from: iq */
    @Nullable
    private final String f5979iq;

    /* renamed from: ir */
    @Nullable
    private final String f5980ir;

    /* renamed from: is */
    @Nullable
    private final String f5981is;

    /* renamed from: it */
    @Nullable
    private final String f5982it;

    @Nullable
    private final String mName;
    final int mVersionCode;
    private final String zzboa;

    public static class Builder {

        /* renamed from: il */
        private Uri f5983il;

        /* renamed from: im */
        private List<IdToken> f5984im;

        /* renamed from: io */
        private String f5985io;

        /* renamed from: ip */
        private String f5986ip;

        /* renamed from: iq */
        private String f5987iq;

        /* renamed from: ir */
        private String f5988ir;

        /* renamed from: is */
        private String f5989is;

        /* renamed from: it */
        private String f5990it;
        private String mName;
        private final String zzboa;

        public Builder(Credential credential) {
            this.zzboa = credential.zzboa;
            this.mName = credential.mName;
            this.f5983il = credential.f5975il;
            this.f5984im = credential.f5976im;
            this.f5985io = credential.f5977io;
            this.f5986ip = credential.f5978ip;
            this.f5987iq = credential.f5979iq;
            this.f5988ir = credential.f5980ir;
            this.f5989is = credential.f5981is;
            this.f5990it = credential.f5982it;
        }

        public Builder(String str) {
            this.zzboa = str;
        }

        public Credential build() {
            return new Credential(4, this.zzboa, this.mName, this.f5983il, this.f5984im, this.f5985io, this.f5986ip, this.f5987iq, this.f5988ir, this.f5989is, this.f5990it);
        }

        public Builder setAccountType(String str) {
            this.f5986ip = str;
            return this;
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.f5985io = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.f5983il = uri;
            return this;
        }
    }

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mVersionCode = i;
        String trim = ((String) zzaa.zzb(str, "credential identifier cannot be null")).trim();
        zzaa.zzh(trim, "credential identifier cannot be empty");
        this.zzboa = trim;
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.mName = str2;
        this.f5975il = uri;
        this.f5976im = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f5977io = str3;
        if (str3 != null && str3.isEmpty()) {
            throw new IllegalArgumentException("password cannot be empty");
        }
        if (!TextUtils.isEmpty(str4)) {
            com.google.android.gms.auth.api.credentials.internal.zzb.zzfx(str4);
        }
        this.f5978ip = str4;
        this.f5979iq = str5;
        this.f5980ir = str6;
        this.f5981is = str7;
        this.f5982it = str8;
        if (!TextUtils.isEmpty(this.f5977io) && !TextUtils.isEmpty(this.f5978ip)) {
            throw new IllegalStateException("password and accountType cannot both be set");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zzboa, credential.zzboa) && TextUtils.equals(this.mName, credential.mName) && zzz.equal(this.f5975il, credential.f5975il) && TextUtils.equals(this.f5977io, credential.f5977io) && TextUtils.equals(this.f5978ip, credential.f5978ip) && TextUtils.equals(this.f5979iq, credential.f5979iq);
    }

    @Nullable
    public String getAccountType() {
        return this.f5978ip;
    }

    @Nullable
    public String getFamilyName() {
        return this.f5982it;
    }

    @Nullable
    public String getGeneratedPassword() {
        return this.f5979iq;
    }

    @Nullable
    public String getGivenName() {
        return this.f5981is;
    }

    public String getId() {
        return this.zzboa;
    }

    public List<IdToken> getIdTokens() {
        return this.f5976im;
    }

    @Nullable
    public String getName() {
        return this.mName;
    }

    @Nullable
    public String getPassword() {
        return this.f5977io;
    }

    @Nullable
    public Uri getProfilePictureUri() {
        return this.f5975il;
    }

    public int hashCode() {
        return zzz.hashCode(this.zzboa, this.mName, this.f5975il, this.f5977io, this.f5978ip, this.f5979iq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzaif() {
        return this.f5980ir;
    }
}
