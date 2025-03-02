package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zzb();

    /* renamed from: iu */
    private final boolean f5991iu;

    /* renamed from: iv */
    @Deprecated
    private final boolean f5992iv;

    /* renamed from: iw */
    private final int f5993iw;
    private final boolean mShowCancelButton;
    final int mVersionCode;

    public static class Builder {

        /* renamed from: iu */
        private boolean f5994iu = false;
        private boolean mShowCancelButton = true;

        /* renamed from: ix */
        private int f5995ix = 1;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this);
        }

        @Deprecated
        public Builder setForNewAccount(boolean z) {
            this.f5995ix = z ? 3 : 1;
            return this;
        }

        public Builder setPrompt(int i) {
            this.f5995ix = i;
            return this;
        }

        public Builder setShowAddAccountButton(boolean z) {
            this.f5994iu = z;
            return this;
        }

        public Builder setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.mVersionCode = i;
        this.f5991iu = z;
        this.mShowCancelButton = z2;
        if (i < 2) {
            this.f5992iv = z3;
            this.f5993iw = z3 ? 3 : 1;
        } else {
            this.f5992iv = i2 == 3;
            this.f5993iw = i2;
        }
    }

    private CredentialPickerConfig(Builder builder) {
        this(2, builder.f5994iu, builder.mShowCancelButton, false, builder.f5995ix);
    }

    /* synthetic */ CredentialPickerConfig(Builder builder, C12361 c12361) {
        this(builder);
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.f5993iw == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.f5991iu;
    }

    public boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    int zzaig() {
        return this.f5993iw;
    }
}
