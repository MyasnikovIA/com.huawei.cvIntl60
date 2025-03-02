package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

/* loaded from: classes.dex */
public class zzoc implements ProxyApi {

    /* renamed from: com.google.android.gms.internal.zzoc$1 */
    class C13661 extends zzob {

        /* renamed from: jb */
        final /* synthetic */ ProxyRequest f6533jb;

        /* renamed from: com.google.android.gms.internal.zzoc$1$1 */
        class AnonymousClass1 extends zznx {
            AnonymousClass1() {
            }

            @Override // com.google.android.gms.internal.zznx, com.google.android.gms.internal.zznz
            public void zza(ProxyResponse proxyResponse) {
                C13661.this.zzc((C13661) new zzod(proxyResponse));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13661(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
            super(googleApiClient);
            proxyRequest = proxyRequest;
        }

        @Override // com.google.android.gms.internal.zzob
        protected void zza(Context context, zzoa zzoaVar) {
            zzoaVar.zza(new zznx() { // from class: com.google.android.gms.internal.zzoc.1.1
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznx, com.google.android.gms.internal.zznz
                public void zza(ProxyResponse proxyResponse) {
                    C13661.this.zzc((C13661) new zzod(proxyResponse));
                }
            }, proxyRequest);
        }
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        com.google.android.gms.common.internal.zzaa.zzy(googleApiClient);
        com.google.android.gms.common.internal.zzaa.zzy(proxyRequest);
        return googleApiClient.zzb((GoogleApiClient) new zzob(googleApiClient) { // from class: com.google.android.gms.internal.zzoc.1

            /* renamed from: jb */
            final /* synthetic */ ProxyRequest f6533jb;

            /* renamed from: com.google.android.gms.internal.zzoc$1$1 */
            class AnonymousClass1 extends zznx {
                AnonymousClass1() {
                }

                @Override // com.google.android.gms.internal.zznx, com.google.android.gms.internal.zznz
                public void zza(ProxyResponse proxyResponse) {
                    C13661.this.zzc((C13661) new zzod(proxyResponse));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C13661(GoogleApiClient googleApiClient2, ProxyRequest proxyRequest2) {
                super(googleApiClient2);
                proxyRequest = proxyRequest2;
            }

            @Override // com.google.android.gms.internal.zzob
            protected void zza(Context context, zzoa zzoaVar) {
                zzoaVar.zza(new zznx() { // from class: com.google.android.gms.internal.zzoc.1.1
                    AnonymousClass1() {
                    }

                    @Override // com.google.android.gms.internal.zznx, com.google.android.gms.internal.zznz
                    public void zza(ProxyResponse proxyResponse) {
                        C13661.this.zzc((C13661) new zzod(proxyResponse));
                    }
                }, proxyRequest);
            }
        });
    }
}
