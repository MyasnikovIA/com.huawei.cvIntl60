package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* loaded from: classes.dex */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new zzc();

    /* renamed from: iA */
    private final CredentialPickerConfig f5996iA;

    /* renamed from: iB */
    private final CredentialPickerConfig f5997iB;

    /* renamed from: iy */
    private final boolean f5998iy;

    /* renamed from: iz */
    private final String[] f5999iz;
    final int mVersionCode;

    public static final class Builder {

        /* renamed from: iA */
        private CredentialPickerConfig f6000iA;

        /* renamed from: iB */
        private CredentialPickerConfig f6001iB;

        /* renamed from: iy */
        private boolean f6002iy;

        /* renamed from: iz */
        private String[] f6003iz;

        public CredentialRequest build() {
            if (this.f6003iz == null) {
                this.f6003iz = new String[0];
            }
            if (this.f6002iy || this.f6003iz.length != 0) {
                return new CredentialRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public Builder setAccountTypes(String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.f6003iz = strArr;
            return this;
        }

        public Builder setCredentialHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
            this.f6001iB = credentialPickerConfig;
            return this;
        }

        public Builder setCredentialPickerConfig(CredentialPickerConfig credentialPickerConfig) {
            this.f6000iA = credentialPickerConfig;
            return this;
        }

        public Builder setPasswordLoginSupported(boolean z) {
            this.f6002iy = z;
            return this;
        }

        @Deprecated
        public Builder setSupportsPasswordLogin(boolean z) {
            return setPasswordLoginSupported(z);
        }
    }

    CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2) {
        this.mVersionCode = i;
        this.f5998iy = z;
        this.f5999iz = (String[]) zzaa.zzy(strArr);
        this.f5996iA = credentialPickerConfig == null ? new CredentialPickerConfig.Builder().build() : credentialPickerConfig;
        this.f5997iB = credentialPickerConfig2 == null ? new CredentialPickerConfig.Builder().build() : credentialPickerConfig2;
    }

    private CredentialRequest(Builder builder) {
        this(2, builder.f6002iy, builder.f6003iz, builder.f6000iA, builder.f6001iB);
    }

    /* synthetic */ CredentialRequest(Builder builder, C12371 c12371) {
        this(builder);
    }

    @NonNull
    public String[] getAccountTypes() {
        return this.f5999iz;
    }

    @NonNull
    public CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.f5997iB;
    }

    @NonNull
    public CredentialPickerConfig getCredentialPickerConfig() {
        return this.f5996iA;
    }

    @Deprecated
    public boolean getSupportsPasswordLogin() {
        return isPasswordLoginSupported();
    }

    public boolean isPasswordLoginSupported() {
        return this.f5998iy;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
