package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new zzd();

    /* renamed from: iC */
    private final CredentialPickerConfig f6004iC;

    /* renamed from: iD */
    private final boolean f6005iD;

    /* renamed from: iE */
    private final boolean f6006iE;

    /* renamed from: iz */
    private final String[] f6007iz;
    final int mVersionCode;

    public static final class Builder {

        /* renamed from: iC */
        private CredentialPickerConfig f6008iC = new CredentialPickerConfig.Builder().build();

        /* renamed from: iD */
        private boolean f6009iD;

        /* renamed from: iE */
        private boolean f6010iE;

        /* renamed from: iz */
        private String[] f6011iz;

        public HintRequest build() {
            if (this.f6011iz == null) {
                this.f6011iz = new String[0];
            }
            if (this.f6009iD || this.f6010iE || this.f6011iz.length != 0) {
                return new HintRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public Builder setAccountTypes(String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.f6011iz = strArr;
            return this;
        }

        public Builder setEmailAddressIdentifierSupported(boolean z) {
            this.f6009iD = z;
            return this;
        }

        public Builder setHintPickerConfig(@NonNull CredentialPickerConfig credentialPickerConfig) {
            this.f6008iC = (CredentialPickerConfig) zzaa.zzy(credentialPickerConfig);
            return this;
        }

        public Builder setPhoneNumberIdentifierSupported(boolean z) {
            this.f6010iE = z;
            return this;
        }
    }

    HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr) {
        this.mVersionCode = i;
        this.f6004iC = (CredentialPickerConfig) zzaa.zzy(credentialPickerConfig);
        this.f6005iD = z;
        this.f6006iE = z2;
        this.f6007iz = (String[]) zzaa.zzy(strArr);
    }

    private HintRequest(Builder builder) {
        this(1, builder.f6008iC, builder.f6009iD, builder.f6010iE, builder.f6011iz);
    }

    /* synthetic */ HintRequest(Builder builder, C12381 c12381) {
        this(builder);
    }

    @NonNull
    public String[] getAccountTypes() {
        return this.f6007iz;
    }

    @NonNull
    public CredentialPickerConfig getHintPickerConfig() {
        return this.f6004iC;
    }

    public boolean isEmailAddressIdentifierSupported() {
        return this.f6005iD;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public boolean zzaih() {
        return this.f6006iE;
    }
}
