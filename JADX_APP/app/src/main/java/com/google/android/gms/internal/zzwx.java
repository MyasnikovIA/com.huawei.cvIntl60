package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

/* loaded from: classes.dex */
public final class zzwx implements People {

    /* renamed from: com.google.android.gms.internal.zzwx$1 */
    class C14101 extends zza {
        final /* synthetic */ int aBk;
        final /* synthetic */ String aBl;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14101(GoogleApiClient googleApiClient, int i, String str) {
            super(googleApiClient);
            i = i;
            str = str;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zza(zzeVar.zza(this, i, str));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzwx$2 */
    class C14112 extends zza {
        final /* synthetic */ String aBl;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14112(GoogleApiClient googleApiClient, String str) {
            super(googleApiClient);
            str = str;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zza(zzeVar.zzu(this, str));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzwx$3 */
    class C14123 extends zza {
        C14123(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zzeVar.zzv(this);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzwx$4 */
    class C14134 extends zza {
        final /* synthetic */ Collection aBn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14134(GoogleApiClient googleApiClient, Collection collection) {
            super(googleApiClient);
            collection = collection;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zzeVar.zza(this, collection);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzwx$5 */
    class C14145 extends zza {
        final /* synthetic */ String[] aBo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14145(GoogleApiClient googleApiClient, String[] strArr) {
            super(googleApiClient);
            strArr = strArr;
        }

        @Override // com.google.android.gms.internal.zzqo.zza
        public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
            zzeVar.zzd(this, strArr);
        }
    }

    private static abstract class zza extends Plus.zza<People.LoadPeopleResult> {

        /* renamed from: com.google.android.gms.internal.zzwx$zza$1 */
        class C14151 implements People.LoadPeopleResult {

            /* renamed from: mj */
            final /* synthetic */ Status f6917mj;

            C14151(Status status) {
                status = status;
            }

            @Override // com.google.android.gms.plus.People.LoadPeopleResult
            public String getNextPageToken() {
                return null;
            }

            @Override // com.google.android.gms.plus.People.LoadPeopleResult
            public PersonBuffer getPersonBuffer() {
                return null;
            }

            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }

            @Override // com.google.android.gms.common.api.Releasable
            public void release() {
            }
        }

        private zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* synthetic */ zza(GoogleApiClient googleApiClient, C14101 c14101) {
            this(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzqq
        /* renamed from: zzeb */
        public People.LoadPeopleResult zzc(Status status) {
            return new People.LoadPeopleResult() { // from class: com.google.android.gms.internal.zzwx.zza.1

                /* renamed from: mj */
                final /* synthetic */ Status f6917mj;

                C14151(Status status2) {
                    status = status2;
                }

                @Override // com.google.android.gms.plus.People.LoadPeopleResult
                public String getNextPageToken() {
                    return null;
                }

                @Override // com.google.android.gms.plus.People.LoadPeopleResult
                public PersonBuffer getPersonBuffer() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    @Override // com.google.android.gms.plus.People
    public Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.zzf(googleApiClient, true).zzcbs();
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, Collection<String> collection) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwx.4
            final /* synthetic */ Collection aBn;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14134(GoogleApiClient googleApiClient2, Collection collection2) {
                super(googleApiClient2);
                collection = collection2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zza(this, collection);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, String... strArr) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwx.5
            final /* synthetic */ String[] aBo;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14145(GoogleApiClient googleApiClient2, String[] strArr2) {
                super(googleApiClient2);
                strArr = strArr2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzd(this, strArr);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwx.3
            C14123(GoogleApiClient googleApiClient2) {
                super(googleApiClient2);
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzv(this);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, int i, String str) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwx.1
            final /* synthetic */ int aBk;
            final /* synthetic */ String aBl;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14101(GoogleApiClient googleApiClient2, int i2, String str2) {
                super(googleApiClient2);
                i = i2;
                str = str2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zza(zzeVar.zza(this, i, str));
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzwx.2
            final /* synthetic */ String aBl;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14112(GoogleApiClient googleApiClient2, String str2) {
                super(googleApiClient2);
                str = str2;
            }

            @Override // com.google.android.gms.internal.zzqo.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zza(zzeVar.zzu(this, str));
            }
        });
    }
}
