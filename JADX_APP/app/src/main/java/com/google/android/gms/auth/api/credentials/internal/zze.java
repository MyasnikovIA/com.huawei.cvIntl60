package com.google.android.gms.auth.api.credentials.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzqo;

/* loaded from: classes.dex */
public final class zze implements CredentialsApi {

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$1 */
    class C12391 extends zzf<CredentialRequestResult> {

        /* renamed from: iQ */
        final /* synthetic */ CredentialRequest f6032iQ;

        /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$1$1 */
        class AnonymousClass1 extends com.google.android.gms.auth.api.credentials.internal.zza {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
            public void zza(Status status, Credential credential) {
                C12391.this.zzc((C12391) new zzd(status, credential));
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
            public void zzh(Status status) {
                C12391.this.zzc((C12391) zzd.zzi(status));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12391(GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
            super(googleApiClient);
            credentialRequest = credentialRequest;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zzf
        protected void zza(Context context, zzk zzkVar) {
            zzkVar.zza(new com.google.android.gms.auth.api.credentials.internal.zza() { // from class: com.google.android.gms.auth.api.credentials.internal.zze.1.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                public void zza(Status status, Credential credential) {
                    C12391.this.zzc((C12391) new zzd(status, credential));
                }

                @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                public void zzh(Status status) {
                    C12391.this.zzc((C12391) zzd.zzi(status));
                }
            }, credentialRequest);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzj */
        public CredentialRequestResult zzc(Status status) {
            return zzd.zzi(status);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$2 */
    class C12402 extends zzf<Status> {

        /* renamed from: iT */
        final /* synthetic */ Credential f6036iT;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12402(GoogleApiClient googleApiClient, Credential credential) {
            super(googleApiClient);
            credential = credential;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zzf
        protected void zza(Context context, zzk zzkVar) {
            zzkVar.zza(new zza(this), new SaveRequest(credential));
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$3 */
    class C12413 extends zzf<Status> {

        /* renamed from: iT */
        final /* synthetic */ Credential f6038iT;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12413(GoogleApiClient googleApiClient, Credential credential) {
            super(googleApiClient);
            credential = credential;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zzf
        protected void zza(Context context, zzk zzkVar) {
            zzkVar.zza(new zza(this), new DeleteRequest(credential));
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$4 */
    class C12424 extends zzf<Status> {
        C12424(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zzf
        protected void zza(Context context, zzk zzkVar) {
            zzkVar.zza(new zza(this));
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private static class zza extends com.google.android.gms.auth.api.credentials.internal.zza {

        /* renamed from: iU */
        private zzqo.zzb<Status> f6040iU;

        zza(zzqo.zzb<Status> zzbVar) {
            this.f6040iU = zzbVar;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
        public void zzh(Status status) {
            this.f6040iU.setResult(status);
        }
    }

    private PasswordSpecification zza(GoogleApiClient googleApiClient) {
        Auth.AuthCredentialsOptions zzaim = ((zzg) googleApiClient.zza(Auth.f5964hX)).zzaim();
        return (zzaim == null || zzaim.zzaid() == null) ? PasswordSpecification.f6014iG : zzaim.zzaid();
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> delete(GoogleApiClient googleApiClient, Credential credential) {
        return googleApiClient.zzb((GoogleApiClient) new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.3

            /* renamed from: iT */
            final /* synthetic */ Credential f6038iT;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12413(GoogleApiClient googleApiClient2, Credential credential2) {
                super(googleApiClient2);
                credential = credential2;
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) {
                zzkVar.zza(new zza(this), new DeleteRequest(credential));
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.4
            C12424(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) {
                zzkVar.zza(new zza(this));
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingIntent getHintPickerIntent(GoogleApiClient googleApiClient, HintRequest hintRequest) {
        zzaa.zzb(googleApiClient, "client must not be null");
        zzaa.zzb(hintRequest, "request must not be null");
        zzaa.zzb(googleApiClient.zza(Auth.CREDENTIALS_API), "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API");
        return PendingIntent.getActivity(googleApiClient.getContext(), 2000, zzc.zza(googleApiClient.getContext(), hintRequest, zza(googleApiClient)), 268435456);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzf<CredentialRequestResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.1

            /* renamed from: iQ */
            final /* synthetic */ CredentialRequest f6032iQ;

            /* renamed from: com.google.android.gms.auth.api.credentials.internal.zze$1$1 */
            class AnonymousClass1 extends com.google.android.gms.auth.api.credentials.internal.zza {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                public void zza(Status status, Credential credential) {
                    C12391.this.zzc((C12391) new zzd(status, credential));
                }

                @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                public void zzh(Status status) {
                    C12391.this.zzc((C12391) zzd.zzi(status));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12391(GoogleApiClient googleApiClient2, CredentialRequest credentialRequest2) {
                super(googleApiClient2);
                credentialRequest = credentialRequest2;
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) {
                zzkVar.zza(new com.google.android.gms.auth.api.credentials.internal.zza() { // from class: com.google.android.gms.auth.api.credentials.internal.zze.1.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                    public void zza(Status status, Credential credential) {
                        C12391.this.zzc((C12391) new zzd(status, credential));
                    }

                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                    public void zzh(Status status) {
                        C12391.this.zzc((C12391) zzd.zzi(status));
                    }
                }, credentialRequest);
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzj */
            public CredentialRequestResult zzc(Status status) {
                return zzd.zzi(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> save(GoogleApiClient googleApiClient, Credential credential) {
        return googleApiClient.zzb((GoogleApiClient) new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.2

            /* renamed from: iT */
            final /* synthetic */ Credential f6036iT;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12402(GoogleApiClient googleApiClient2, Credential credential2) {
                super(googleApiClient2);
                credential = credential2;
            }

            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) {
                zzkVar.zza(new zza(this), new SaveRequest(credential));
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }
}
