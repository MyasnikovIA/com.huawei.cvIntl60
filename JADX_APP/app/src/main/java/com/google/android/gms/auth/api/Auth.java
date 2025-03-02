package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.credentials.internal.zzg;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.auth.api.signin.internal.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zznt;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zzoc;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class Auth {

    /* renamed from: hX */
    public static final Api.zzf<zzg> f5964hX = new Api.zzf<>();

    /* renamed from: hY */
    public static final Api.zzf<zznu> f5965hY = new Api.zzf<>();

    /* renamed from: hZ */
    public static final Api.zzf<zzd> f5966hZ = new Api.zzf<>();

    /* renamed from: ia */
    private static final Api.zza<zzg, AuthCredentialsOptions> f5967ia = new Api.zza<zzg, AuthCredentialsOptions>() { // from class: com.google.android.gms.auth.api.Auth.1
        C12321() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzg zza(Context context, Looper looper, zzf zzfVar, AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzg(context, looper, zzfVar, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };

    /* renamed from: ib */
    private static final Api.zza<zznu, Api.ApiOptions.NoOptions> f5968ib = new Api.zza<zznu, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.api.Auth.2
        C12332() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzd */
        public zznu zza(Context context, Looper looper, zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zznu(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    };

    /* renamed from: ic */
    private static final Api.zza<zzd, GoogleSignInOptions> f5969ic = new Api.zza<zzd, GoogleSignInOptions>() { // from class: com.google.android.gms.auth.api.Auth.3
        C12343() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzd zza(Context context, Looper looper, zzf zzfVar, @Nullable GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzd(context, looper, zzfVar, googleSignInOptions, connectionCallbacks, onConnectionFailedListener);
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        /* renamed from: zza */
        public List<Scope> zzp(@Nullable GoogleSignInOptions googleSignInOptions) {
            return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzait();
        }
    };
    public static final Api<zzb> PROXY_API = zza.API;
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", f5967ia, f5964hX);
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", f5969ic, f5966hZ);

    /* renamed from: ie */
    public static final Api<Api.ApiOptions.NoOptions> f5970ie = new Api<>("Auth.ACCOUNT_STATUS_API", f5968ib, f5965hY);
    public static final ProxyApi ProxyApi = new zzoc();
    public static final CredentialsApi CredentialsApi = new zze();

    /* renamed from: if */
    public static final zzns f5971if = new zznt();
    public static final GoogleSignInApi GoogleSignInApi = new zzc();

    /* renamed from: com.google.android.gms.auth.api.Auth$1 */
    final class C12321 extends Api.zza<zzg, AuthCredentialsOptions> {
        C12321() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzg zza(Context context, Looper looper, zzf zzfVar, AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzg(context, looper, zzfVar, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth$2 */
    final class C12332 extends Api.zza<zznu, Api.ApiOptions.NoOptions> {
        C12332() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzd */
        public zznu zza(Context context, Looper looper, zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zznu(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.Auth$3 */
    final class C12343 extends Api.zza<zzd, GoogleSignInOptions> {
        C12343() {
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzd zza(Context context, Looper looper, zzf zzfVar, @Nullable GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzd(context, looper, zzfVar, googleSignInOptions, connectionCallbacks, onConnectionFailedListener);
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        /* renamed from: zza */
        public List<Scope> zzp(@Nullable GoogleSignInOptions googleSignInOptions) {
            return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzait();
        }
    }

    public static final class AuthCredentialsOptions implements Api.ApiOptions.Optional {

        /* renamed from: ig */
        private final String f5972ig;

        /* renamed from: ih */
        private final PasswordSpecification f5973ih;

        public static class Builder {

            /* renamed from: ih */
            @NonNull
            private PasswordSpecification f5974ih = PasswordSpecification.f6014iG;
        }

        public Bundle zzahv() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.f5972ig);
            bundle.putParcelable("password_specification", this.f5973ih);
            return bundle;
        }

        public PasswordSpecification zzaid() {
            return this.f5973ih;
        }
    }

    private Auth() {
    }
}
