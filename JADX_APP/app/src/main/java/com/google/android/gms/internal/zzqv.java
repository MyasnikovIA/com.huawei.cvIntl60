package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class zzqv {

    /* renamed from: zs */
    private final Map<zzqq<?>, Boolean> f6670zs = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: zt */
    private final Map<TaskCompletionSource<?>, Boolean> f6671zt = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: com.google.android.gms.internal.zzqv$1 */
    class C13721 implements PendingResult.zza {

        /* renamed from: zu */
        final /* synthetic */ zzqq f6672zu;

        C13721(zzqq zzqqVar) {
            zzqqVar = zzqqVar;
        }

        @Override // com.google.android.gms.common.api.PendingResult.zza
        public void zzx(Status status) {
            zzqv.this.f6670zs.remove(zzqqVar);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzqv$2 */
    class C13732<TResult> implements OnCompleteListener<TResult> {

        /* renamed from: zw */
        final /* synthetic */ TaskCompletionSource f6675zw;

        C13732(TaskCompletionSource taskCompletionSource) {
            taskCompletionSource = taskCompletionSource;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(@NonNull Task<TResult> task) {
            zzqv.this.f6671zt.remove(taskCompletionSource);
        }
    }

    private void zza(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f6670zs) {
            hashMap = new HashMap(this.f6670zs);
        }
        synchronized (this.f6671zt) {
            hashMap2 = new HashMap(this.f6671zt);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((zzqq) entry.getKey()).zzab(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new com.google.android.gms.common.api.zza(status));
            }
        }
    }

    void zza(zzqq<? extends Result> zzqqVar, boolean z) {
        this.f6670zs.put(zzqqVar, Boolean.valueOf(z));
        zzqqVar.zza(new PendingResult.zza() { // from class: com.google.android.gms.internal.zzqv.1

            /* renamed from: zu */
            final /* synthetic */ zzqq f6672zu;

            C13721(zzqq zzqqVar2) {
                zzqqVar = zzqqVar2;
            }

            @Override // com.google.android.gms.common.api.PendingResult.zza
            public void zzx(Status status) {
                zzqv.this.f6670zs.remove(zzqqVar);
            }
        });
    }

    <TResult> void zza(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.f6671zt.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener<TResult>() { // from class: com.google.android.gms.internal.zzqv.2

            /* renamed from: zw */
            final /* synthetic */ TaskCompletionSource f6675zw;

            C13732(TaskCompletionSource taskCompletionSource2) {
                taskCompletionSource = taskCompletionSource2;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void onComplete(@NonNull Task<TResult> task) {
                zzqv.this.f6671zt.remove(taskCompletionSource);
            }
        });
    }

    boolean zzasi() {
        return (this.f6670zs.isEmpty() && this.f6671zt.isEmpty()) ? false : true;
    }

    public void zzasj() {
        zza(false, zzrh.f6777AG);
    }

    public void zzask() {
        zza(true, zzsg.f6851ym);
    }
}
