package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public final class zzrr<L> {

    /* renamed from: Bl */
    private final zza f6818Bl;

    /* renamed from: Bm */
    private final zzb<L> f6819Bm;
    private volatile L mListener;

    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            com.google.android.gms.common.internal.zzaa.zzbt(message.what == 1);
            zzrr.this.zzb((zzc) message.obj);
        }
    }

    public static final class zzb<L> {

        /* renamed from: Bo */
        private final String f6821Bo;
        private final L mListener;

        private zzb(L l, String str) {
            this.mListener = l;
            this.f6821Bo = str;
        }

        /* synthetic */ zzb(Object obj, String str, C13851 c13851) {
            this(obj, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            return this.mListener == zzbVar.mListener && this.f6821Bo.equals(zzbVar.f6821Bo);
        }

        public int hashCode() {
            return (System.identityHashCode(this.mListener) * 31) + this.f6821Bo.hashCode();
        }
    }

    public interface zzc<L> {
        void zzasm();

        void zzt(L l);
    }

    zzrr(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        this.f6818Bl = new zza(looper);
        this.mListener = (L) com.google.android.gms.common.internal.zzaa.zzb(l, "Listener must not be null");
        this.f6819Bm = new zzb<>(l, com.google.android.gms.common.internal.zzaa.zzib(str));
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzc<? super L> zzcVar) {
        com.google.android.gms.common.internal.zzaa.zzb(zzcVar, "Notifier must not be null");
        this.f6818Bl.sendMessage(this.f6818Bl.obtainMessage(1, zzcVar));
    }

    @NonNull
    public zzb<L> zzatz() {
        return this.f6819Bm;
    }

    void zzb(zzc<? super L> zzcVar) {
        L l = this.mListener;
        if (l == null) {
            zzcVar.zzasm();
            return;
        }
        try {
            zzcVar.zzt(l);
        } catch (RuntimeException e) {
            zzcVar.zzasm();
            throw e;
        }
    }
}
