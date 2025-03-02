package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.util.zzu;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzwu;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzww;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.PlusSession;
import com.google.android.gms.plus.internal.zze;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public final class Plus {

    /* renamed from: hg */
    public static final Api.zzf<zze> f6931hg = new Api.zzf<>();

    /* renamed from: hh */
    static final Api.zza<zze, PlusOptions> f6932hh = new Api.zza<zze, PlusOptions>() { // from class: com.google.android.gms.plus.Plus.1
        C14191() {
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 2;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zze zza(Context context, Looper looper, zzf zzfVar, PlusOptions plusOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (plusOptions == null) {
                plusOptions = new PlusOptions();
            }
            return new zze(context, looper, zzfVar, new PlusSession(zzfVar.zzave().name, zzu.zzd(zzfVar.zzavq()), (String[]) plusOptions.aAM.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()), connectionCallbacks, onConnectionFailedListener);
        }
    };

    @Deprecated
    public static final Api<PlusOptions> API = new Api<>("Plus.API", f6932hh, f6931hg);
    public static final Scope SCOPE_PLUS_LOGIN = new Scope(Scopes.PLUS_LOGIN);
    public static final Scope SCOPE_PLUS_PROFILE = new Scope(Scopes.PLUS_ME);

    @Deprecated
    public static final People PeopleApi = new zzwx();

    @Deprecated
    public static final Account AccountApi = new zzwu();

    @Deprecated
    public static final zzb aAJ = new zzww();
    public static final com.google.android.gms.plus.zza aAK = new zzwv();

    /* renamed from: com.google.android.gms.plus.Plus$1 */
    final class C14191 extends Api.zza<zze, PlusOptions> {
        C14191() {
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 2;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zze zza(Context context, Looper looper, zzf zzfVar, PlusOptions plusOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (plusOptions == null) {
                plusOptions = new PlusOptions();
            }
            return new zze(context, looper, zzfVar, new PlusSession(zzfVar.zzave().name, zzu.zzd(zzfVar.zzavq()), (String[]) plusOptions.aAM.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()), connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static final class PlusOptions implements Api.ApiOptions.Optional {
        final String aAL;
        final Set<String> aAM;

        public static final class Builder {
            String aAL;
            final Set<String> aAM = new HashSet();

            public Builder addActivityTypes(String... strArr) {
                zzaa.zzb(strArr, "activityTypes may not be null.");
                for (String str : strArr) {
                    this.aAM.add(str);
                }
                return this;
            }

            public PlusOptions build() {
                return new PlusOptions(this);
            }

            public Builder setServerClientId(String str) {
                this.aAL = str;
                return this;
            }
        }

        private PlusOptions() {
            this.aAL = null;
            this.aAM = new HashSet();
        }

        /* synthetic */ PlusOptions(C14191 c14191) {
            this();
        }

        private PlusOptions(Builder builder) {
            this.aAL = builder.aAL;
            this.aAM = builder.aAM;
        }

        /* synthetic */ PlusOptions(Builder builder, C14191 c14191) {
            this(builder);
        }

        public static Builder builder() {
            return new Builder();
        }
    }

    public static abstract class zza<R extends Result> extends zzqo.zza<R, zze> {
        public zza(GoogleApiClient googleApiClient) {
            super(Plus.f6931hg, googleApiClient);
        }
    }

    private Plus() {
    }

    public static zze zzf(GoogleApiClient googleApiClient, boolean z) {
        zzaa.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzaa.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        zzaa.zza(googleApiClient.zza(API), "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean hasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (z && !hasConnectedApi) {
            throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
        }
        if (hasConnectedApi) {
            return (zze) googleApiClient.zza(f6931hg);
        }
        return null;
    }
}
