package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzqq;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class Batch extends zzqq<BatchResult> {

    /* renamed from: xp */
    private int f6137xp;

    /* renamed from: xq */
    private boolean f6138xq;

    /* renamed from: xr */
    private boolean f6139xr;

    /* renamed from: xs */
    private final PendingResult<?>[] f6140xs;
    private final Object zzako;

    /* renamed from: com.google.android.gms.common.api.Batch$1 */
    class C12551 implements PendingResult.zza {
        C12551() {
        }

        @Override // com.google.android.gms.common.api.PendingResult.zza
        public void zzx(Status status) {
            synchronized (Batch.this.zzako) {
                if (Batch.this.isCanceled()) {
                    return;
                }
                if (status.isCanceled()) {
                    Batch.this.f6139xr = true;
                } else if (!status.isSuccess()) {
                    Batch.this.f6138xq = true;
                }
                Batch.zzb(Batch.this);
                if (Batch.this.f6137xp == 0) {
                    if (Batch.this.f6139xr) {
                        Batch.super.cancel();
                    } else {
                        Batch.this.zzc((Batch) new BatchResult(Batch.this.f6138xq ? new Status(13) : Status.f6171xZ, Batch.this.f6140xs));
                    }
                }
            }
        }
    }

    public static final class Builder {

        /* renamed from: mD */
        private GoogleApiClient f6142mD;

        /* renamed from: xu */
        private List<PendingResult<?>> f6143xu = new ArrayList();

        public Builder(GoogleApiClient googleApiClient) {
            this.f6142mD = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.f6143xu.size());
            this.f6143xu.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.f6143xu, this.f6142mD);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzako = new Object();
        this.f6137xp = list.size();
        this.f6140xs = new PendingResult[this.f6137xp];
        if (list.isEmpty()) {
            zzc((Batch) new BatchResult(Status.f6171xZ, this.f6140xs));
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.f6140xs[i2] = pendingResult;
            pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.api.Batch.1
                C12551() {
                }

                @Override // com.google.android.gms.common.api.PendingResult.zza
                public void zzx(Status status) {
                    synchronized (Batch.this.zzako) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.f6139xr = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.f6138xq = true;
                        }
                        Batch.zzb(Batch.this);
                        if (Batch.this.f6137xp == 0) {
                            if (Batch.this.f6139xr) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.zzc((Batch) new BatchResult(Batch.this.f6138xq ? new Status(13) : Status.f6171xZ, Batch.this.f6140xs));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, C12551 c12551) {
        this(list, googleApiClient);
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.f6137xp;
        batch.f6137xp = i - 1;
        return i;
    }

    @Override // com.google.android.gms.internal.zzqq, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.f6140xs) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.internal.zzqq
    /* renamed from: createFailedResult */
    public BatchResult zzc(Status status) {
        return new BatchResult(status, this.f6140xs);
    }
}
