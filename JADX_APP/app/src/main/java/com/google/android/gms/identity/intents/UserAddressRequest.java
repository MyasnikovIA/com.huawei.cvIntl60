package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class UserAddressRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new zza();
    List<CountrySpecification> ahN;
    private final int mVersionCode;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(UserAddressRequest userAddressRequest, C12811 c12811) {
            this();
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.ahN == null) {
                UserAddressRequest.this.ahN = new ArrayList();
            }
            UserAddressRequest.this.ahN.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.ahN == null) {
                UserAddressRequest.this.ahN = new ArrayList();
            }
            UserAddressRequest.this.ahN.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.ahN != null) {
                UserAddressRequest.this.ahN = Collections.unmodifiableList(UserAddressRequest.this.ahN);
            }
            return UserAddressRequest.this;
        }
    }

    UserAddressRequest() {
        this.mVersionCode = 1;
    }

    UserAddressRequest(int i, List<CountrySpecification> list) {
        this.mVersionCode = i;
        this.ahN = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder();
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
