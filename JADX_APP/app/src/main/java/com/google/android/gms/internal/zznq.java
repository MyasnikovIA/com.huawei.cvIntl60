package com.google.android.gms.internal;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.auth.account.zza;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqo;

/* loaded from: classes.dex */
public class zznq implements WorkAccountApi {

    /* renamed from: hS */
    private static final Status f6520hS = new Status(13);

    /* renamed from: com.google.android.gms.internal.zznq$1 */
    class C13631 extends zzqo.zza<Result, zznr> {

        /* renamed from: hT */
        final /* synthetic */ boolean f6521hT;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13631(Api api, GoogleApiClient googleApiClient, boolean z) {
            super((Api<?>) api, googleApiClient);
            z = z;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zznr zznrVar) {
            ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zzbd(z);
        }

        @Override // com.google.android.gms.internal.zzqq
        protected Result zzc(Status status) {
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zznq$2 */
    class C13642 extends zzqo.zza<WorkAccountApi.AddAccountResult, zznr> {

        /* renamed from: hI */
        final /* synthetic */ String f6523hI;

        /* renamed from: com.google.android.gms.internal.zznq$2$1 */
        class AnonymousClass1 extends zza {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
            public void zzd(Account account) {
                C13642.this.zzc((C13642) new zzb(account != null ? Status.f6171xZ : zznq.f6520hS, account));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13642(Api api, GoogleApiClient googleApiClient, String str) {
            super((Api<?>) api, googleApiClient);
            str = str;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zznr zznrVar) {
            ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zza(new zza() { // from class: com.google.android.gms.internal.zznq.2.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                public void zzd(Account account) {
                    C13642.this.zzc((C13642) new zzb(account != null ? Status.f6171xZ : zznq.f6520hS, account));
                }
            }, str);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzf */
        public WorkAccountApi.AddAccountResult zzc(Status status) {
            return new zzb(status, null);
        }
    }

    /* renamed from: com.google.android.gms.internal.zznq$3 */
    class C13653 extends zzqo.zza<Result, zznr> {

        /* renamed from: hG */
        final /* synthetic */ Account f6526hG;

        /* renamed from: com.google.android.gms.internal.zznq$3$1 */
        class AnonymousClass1 extends zza {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
            public void zzbc(boolean z) {
                C13653.this.zzc((C13653) new zzc(z ? Status.f6171xZ : zznq.f6520hS));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13653(Api api, GoogleApiClient googleApiClient, Account account) {
            super((Api<?>) api, googleApiClient);
            account = account;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(zznr zznrVar) {
            ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zza(new zza() { // from class: com.google.android.gms.internal.zznq.3.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                public void zzbc(boolean z) {
                    C13653.this.zzc((C13653) new zzc(z ? Status.f6171xZ : zznq.f6520hS));
                }
            }, account);
        }

        @Override // com.google.android.gms.internal.zzqq
        protected Result zzc(Status status) {
            return new zzc(status);
        }
    }

    static class zza extends zza.AbstractBinderC1871zza {
        zza() {
        }

        public void zzbc(boolean z) {
            throw new UnsupportedOperationException();
        }

        public void zzd(Account account) {
            throw new UnsupportedOperationException();
        }
    }

    static class zzb implements WorkAccountApi.AddAccountResult {

        /* renamed from: gj */
        private final Account f6529gj;

        /* renamed from: hv */
        private final Status f6530hv;

        public zzb(Status status, Account account) {
            this.f6530hv = status;
            this.f6529gj = account;
        }

        @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
        public Account getAccount() {
            return this.f6529gj;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.f6530hv;
        }
    }

    static class zzc implements Result {

        /* renamed from: hv */
        private final Status f6531hv;

        public zzc(Status status) {
            this.f6531hv = status;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.f6531hv;
        }
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<WorkAccountApi.AddAccountResult> addWorkAccount(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzb((GoogleApiClient) new zzqo.zza<WorkAccountApi.AddAccountResult, zznr>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zznq.2

            /* renamed from: hI */
            final /* synthetic */ String f6523hI;

            /* renamed from: com.google.android.gms.internal.zznq$2$1 */
            class AnonymousClass1 extends zza {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                public void zzd(Account account) {
                    C13642.this.zzc((C13642) new zzb(account != null ? Status.f6171xZ : zznq.f6520hS, account));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13642(Api api, GoogleApiClient googleApiClient2, String str2) {
                super((Api<?>) api, googleApiClient2);
                str = str2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zznr zznrVar) {
                ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zza(new zza() { // from class: com.google.android.gms.internal.zznq.2.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                    public void zzd(Account account) {
                        C13642.this.zzc((C13642) new zzb(account != null ? Status.f6171xZ : zznq.f6520hS, account));
                    }
                }, str);
            }

            @Override // com.google.android.gms.internal.zzqq
            /* renamed from: zzf */
            public WorkAccountApi.AddAccountResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, Account account) {
        return googleApiClient.zzb((GoogleApiClient) new zzqo.zza<Result, zznr>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zznq.3

            /* renamed from: hG */
            final /* synthetic */ Account f6526hG;

            /* renamed from: com.google.android.gms.internal.zznq$3$1 */
            class AnonymousClass1 extends zza {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                public void zzbc(boolean z) {
                    C13653.this.zzc((C13653) new zzc(z ? Status.f6171xZ : zznq.f6520hS));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13653(Api api, GoogleApiClient googleApiClient2, Account account2) {
                super((Api<?>) api, googleApiClient2);
                account = account2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zznr zznrVar) {
                ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zza(new zza() { // from class: com.google.android.gms.internal.zznq.3.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.internal.zznq.zza, com.google.android.gms.auth.account.zza
                    public void zzbc(boolean z) {
                        C13653.this.zzc((C13653) new zzc(z ? Status.f6171xZ : zznq.f6520hS));
                    }
                }, account);
            }

            @Override // com.google.android.gms.internal.zzqq
            protected Result zzc(Status status) {
                return new zzc(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, boolean z) {
        googleApiClient.zzb((GoogleApiClient) new zzqo.zza<Result, zznr>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zznq.1

            /* renamed from: hT */
            final /* synthetic */ boolean f6521hT;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13631(Api api, GoogleApiClient googleApiClient2, boolean z2) {
                super((Api<?>) api, googleApiClient2);
                z = z2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(zznr zznrVar) {
                ((com.google.android.gms.auth.account.zzb) zznrVar.zzavg()).zzbd(z);
            }

            @Override // com.google.android.gms.internal.zzqq
            protected Result zzc(Status status) {
                return null;
            }
        });
    }
}
