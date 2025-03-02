package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzru;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class zzc implements GoogleSignInApi {

    /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$1 */
    class C12461 extends zza<GoogleSignInResult> {

        /* renamed from: jB */
        final /* synthetic */ GoogleSignInOptions f6093jB;

        /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$1$1 */
        class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {

            /* renamed from: jD */
            final /* synthetic */ zzk f6095jD;

            AnonymousClass1(zzk zzkVar) {
                zzba = zzkVar;
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
            public void zza(GoogleSignInAccount googleSignInAccount, Status status) {
                if (googleSignInAccount != null) {
                    zzba.zzb(googleSignInAccount, googleSignInOptions);
                }
                C12461.this.zzc((C12461) new GoogleSignInResult(googleSignInAccount, status));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12461(GoogleApiClient googleApiClient, GoogleSignInOptions googleSignInOptions) {
            super(googleApiClient);
            googleSignInOptions = googleSignInOptions;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zzd zzdVar) {
            ((zzh) zzdVar.zzavg()).zza(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.1.1

                /* renamed from: jD */
                final /* synthetic */ zzk f6095jD;

                AnonymousClass1(zzk zzkVar) {
                    zzba = zzkVar;
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zza(GoogleSignInAccount googleSignInAccount, Status status) {
                    if (googleSignInAccount != null) {
                        zzba.zzb(googleSignInAccount, googleSignInOptions);
                    }
                    C12461.this.zzc((C12461) new GoogleSignInResult(googleSignInAccount, status));
                }
            }, googleSignInOptions);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzn */
        public GoogleSignInResult zzc(Status status) {
            return new GoogleSignInResult(null, status);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$2 */
    class C12472 extends zza<Status> {

        /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$2$1 */
        class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
            public void zzl(Status status) {
                C12472.this.zzc((C12472) status);
            }
        }

        C12472(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zzd zzdVar) {
            ((zzh) zzdVar.zzavg()).zzb(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.2.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zzl(Status status) {
                    C12472.this.zzc((C12472) status);
                }
            }, zzdVar.zzaje());
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$3 */
    class C12483 extends zza<Status> {

        /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$3$1 */
        class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
            public void zzm(Status status) {
                C12483.this.zzc((C12483) status);
            }
        }

        C12483(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zzd zzdVar) {
            ((zzh) zzdVar.zzavg()).zzc(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.3.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zzm(Status status) {
                    C12483.this.zzc((C12483) status);
                }
            }, zzdVar.zzaje());
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private abstract class zza<R extends Result> extends zzqo.zza<R, zzd> {
        public zza(GoogleApiClient googleApiClient) {
            super(Auth.GOOGLE_SIGN_IN_API, googleApiClient);
        }
    }

    private OptionalPendingResult<GoogleSignInResult> zza(GoogleApiClient googleApiClient, GoogleSignInOptions googleSignInOptions) {
        Log.d("GoogleSignInApiImpl", "trySilentSignIn");
        return new zzru(googleApiClient.zza((GoogleApiClient) new zza<GoogleSignInResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.1

            /* renamed from: jB */
            final /* synthetic */ GoogleSignInOptions f6093jB;

            /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$1$1 */
            class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {

                /* renamed from: jD */
                final /* synthetic */ zzk f6095jD;

                AnonymousClass1(zzk zzkVar) {
                    zzba = zzkVar;
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zza(GoogleSignInAccount googleSignInAccount, Status status) {
                    if (googleSignInAccount != null) {
                        zzba.zzb(googleSignInAccount, googleSignInOptions);
                    }
                    C12461.this.zzc((C12461) new GoogleSignInResult(googleSignInAccount, status));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12461(GoogleApiClient googleApiClient2, GoogleSignInOptions googleSignInOptions2) {
                super(googleApiClient2);
                googleSignInOptions = googleSignInOptions2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zzd zzdVar) {
                ((zzh) zzdVar.zzavg()).zza(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.1.1

                    /* renamed from: jD */
                    final /* synthetic */ zzk f6095jD;

                    AnonymousClass1(zzk zzkVar) {
                        zzba = zzkVar;
                    }

                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zza(GoogleSignInAccount googleSignInAccount, Status status) {
                        if (googleSignInAccount != null) {
                            zzba.zzb(googleSignInAccount, googleSignInOptions);
                        }
                        C12461.this.zzc((C12461) new GoogleSignInResult(googleSignInAccount, status));
                    }
                }, googleSignInOptions);
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzn */
            public GoogleSignInResult zzc(Status status) {
                return new GoogleSignInResult(null, status);
            }
        }));
    }

    private boolean zza(Account account, Account account2) {
        return account == null ? account2 == null : account.equals(account2);
    }

    private GoogleSignInOptions zzb(GoogleApiClient googleApiClient) {
        return ((zzd) googleApiClient.zza(Auth.f5966hZ)).zzaje();
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public Intent getSignInIntent(GoogleApiClient googleApiClient) {
        zzaa.zzy(googleApiClient);
        return ((zzd) googleApiClient.zza(Auth.f5966hZ)).zzajd();
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        if (intent == null || !(intent.hasExtra("googleSignInStatus") || intent.hasExtra("googleSignInAccount"))) {
            return null;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        if (googleSignInAccount != null) {
            status = Status.f6171xZ;
        }
        return new GoogleSignInResult(googleSignInAccount, status);
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> revokeAccess(GoogleApiClient googleApiClient) {
        zzk.zzba(googleApiClient.getContext()).zzajo();
        Iterator<GoogleApiClient> it = GoogleApiClient.zzarc().iterator();
        while (it.hasNext()) {
            it.next().zzard();
        }
        return googleApiClient.zzb((GoogleApiClient) new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.3

            /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$3$1 */
            class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zzm(Status status) {
                    C12483.this.zzc((C12483) status);
                }
            }

            C12483(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zzd zzdVar) {
                ((zzh) zzdVar.zzavg()).zzc(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.3.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zzm(Status status) {
                        C12483.this.zzc((C12483) status);
                    }
                }, zzdVar.zzaje());
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        zzk.zzba(googleApiClient.getContext()).zzajo();
        Iterator<GoogleApiClient> it = GoogleApiClient.zzarc().iterator();
        while (it.hasNext()) {
            it.next().zzard();
        }
        return googleApiClient.zzb((GoogleApiClient) new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.2

            /* renamed from: com.google.android.gms.auth.api.signin.internal.zzc$2$1 */
            class AnonymousClass1 extends com.google.android.gms.auth.api.signin.internal.zza {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                public void zzl(Status status) {
                    C12472.this.zzc((C12472) status);
                }
            }

            C12472(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zzd zzdVar) {
                ((zzh) zzdVar.zzavg()).zzb(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.2.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zzl(Status status) {
                        C12472.this.zzc((C12472) status);
                    }
                }, zzdVar.zzaje());
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public OptionalPendingResult<GoogleSignInResult> silentSignIn(GoogleApiClient googleApiClient) {
        GoogleSignInOptions zzb = zzb(googleApiClient);
        GoogleSignInResult zza2 = zza(googleApiClient.getContext(), zzb);
        return zza2 != null ? PendingResults.zzb(zza2, googleApiClient) : zza(googleApiClient, zzb);
    }

    public GoogleSignInResult zza(Context context, GoogleSignInOptions googleSignInOptions) {
        GoogleSignInAccount zzajm;
        Log.d("GoogleSignInApiImpl", "getSavedSignInResultIfEligible");
        zzaa.zzy(googleSignInOptions);
        zzk zzba = zzk.zzba(context);
        GoogleSignInOptions zzajn = zzba.zzajn();
        if (zzajn == null || !zza(zzajn.getAccount(), googleSignInOptions.getAccount()) || googleSignInOptions.zzaiv()) {
            return null;
        }
        if ((!googleSignInOptions.zzaiu() || (zzajn.zzaiu() && googleSignInOptions.zzaix().equals(zzajn.zzaix()))) && new HashSet(zzajn.zzait()).containsAll(new HashSet(googleSignInOptions.zzait())) && (zzajm = zzba.zzajm()) != null && !zzajm.zza()) {
            return new GoogleSignInResult(zzajm, Status.f6171xZ);
        }
        return null;
    }
}
