package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzvx;

/* loaded from: classes.dex */
public final class Address {

    /* renamed from: hg */
    static final Api.zzf<zzvx> f6517hg = new Api.zzf<>();

    /* renamed from: hh */
    private static final Api.zza<zzvx, AddressOptions> f6518hh = new Api.zza<zzvx, AddressOptions>() { // from class: com.google.android.gms.identity.intents.Address.1
        C12791() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzvx zza(Context context, Looper looper, zzf zzfVar, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzaa.zzb(context instanceof Activity, "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzvx((Activity) context, looper, zzfVar, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<AddressOptions> API = new Api<>("Address.API", f6518hh, f6517hg);

    /* renamed from: com.google.android.gms.identity.intents.Address$1 */
    final class C12791 extends Api.zza<zzvx, AddressOptions> {
        C12791() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzvx zza(Context context, Looper looper, zzf zzfVar, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzaa.zzb(context instanceof Activity, "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzvx((Activity) context, looper, zzfVar, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.identity.intents.Address$2 */
    final class C12802 extends zza {
        final /* synthetic */ UserAddressRequest ahM;
        final /* synthetic */ int val$requestCode;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12802(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
            super(googleApiClient);
            userAddressRequest = userAddressRequest;
            i = i;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zzvx zzvxVar) {
            zzvxVar.zza(userAddressRequest, i);
            zzc((C12802) Status.f6171xZ);
        }
    }

    public static final class AddressOptions implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    private static abstract class zza extends zzqo.zza<Status, zzvx> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
        googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.identity.intents.Address.2
            final /* synthetic */ UserAddressRequest ahM;
            final /* synthetic */ int val$requestCode;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12802(GoogleApiClient googleApiClient2, UserAddressRequest userAddressRequest2, int i2) {
                super(googleApiClient2);
                userAddressRequest = userAddressRequest2;
                i = i2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zzvx zzvxVar) {
                zzvxVar.zza(userAddressRequest, i);
                zzc((C12802) Status.f6171xZ);
            }
        });
    }
}
