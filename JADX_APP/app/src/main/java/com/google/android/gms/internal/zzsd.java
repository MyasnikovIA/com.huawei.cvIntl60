package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzsd extends Fragment implements zzrp {

    /* renamed from: Bg */
    private static WeakHashMap<FragmentActivity, WeakReference<zzsd>> f6833Bg = new WeakHashMap<>();

    /* renamed from: Bi */
    private Bundle f6835Bi;

    /* renamed from: Bh */
    private Map<String, zzro> f6834Bh = new ArrayMap();
    private int zzbtt = 0;

    /* renamed from: com.google.android.gms.internal.zzsd$1 */
    class RunnableC13861 implements Runnable {

        /* renamed from: Bj */
        final /* synthetic */ zzro f6836Bj;
        final /* synthetic */ String zzap;

        RunnableC13861(zzro zzroVar, String str) {
            zzroVar = zzroVar;
            str = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzsd.this.zzbtt >= 1) {
                zzroVar.onCreate(zzsd.this.f6835Bi != null ? zzsd.this.f6835Bi.getBundle(str) : null);
            }
            if (zzsd.this.zzbtt >= 2) {
                zzroVar.onStart();
            }
            if (zzsd.this.zzbtt >= 3) {
                zzroVar.onStop();
            }
            if (zzsd.this.zzbtt >= 4) {
                zzroVar.onDestroy();
            }
        }
    }

    public static zzsd zza(FragmentActivity fragmentActivity) {
        zzsd zzsdVar;
        WeakReference<zzsd> weakReference = f6833Bg.get(fragmentActivity);
        if (weakReference == null || (zzsdVar = weakReference.get()) == null) {
            try {
                zzsdVar = (zzsd) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
                if (zzsdVar == null || zzsdVar.isRemoving()) {
                    zzsdVar = new zzsd();
                    fragmentActivity.getSupportFragmentManager().beginTransaction().add(zzsdVar, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
                }
                f6833Bg.put(fragmentActivity, new WeakReference<>(zzsdVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
            }
        }
        return zzsdVar;
    }

    private void zzb(String str, @NonNull zzro zzroVar) {
        if (this.zzbtt > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzsd.1

                /* renamed from: Bj */
                final /* synthetic */ zzro f6836Bj;
                final /* synthetic */ String zzap;

                RunnableC13861(zzro zzroVar2, String str2) {
                    zzroVar = zzroVar2;
                    str = str2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (zzsd.this.zzbtt >= 1) {
                        zzroVar.onCreate(zzsd.this.f6835Bi != null ? zzsd.this.f6835Bi.getBundle(str) : null);
                    }
                    if (zzsd.this.zzbtt >= 2) {
                        zzroVar.onStart();
                    }
                    if (zzsd.this.zzbtt >= 3) {
                        zzroVar.onStop();
                    }
                    if (zzsd.this.zzbtt >= 4) {
                        zzroVar.onDestroy();
                    }
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<zzro> it = this.f6834Bh.values().iterator();
        while (it.hasNext()) {
            it.next().dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator<zzro> it = this.f6834Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzbtt = 1;
        this.f6835Bi = bundle;
        for (Map.Entry<String, zzro> entry : this.f6834Bh.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.zzbtt = 4;
        Iterator<zzro> it = this.f6834Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, zzro> entry : this.f6834Bh.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzbtt = 2;
        Iterator<zzro> it = this.f6834Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onStart();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.zzbtt = 3;
        Iterator<zzro> it = this.f6834Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onStop();
        }
    }

    @Override // com.google.android.gms.internal.zzrp
    public <T extends zzro> T zza(String str, Class<T> cls) {
        return cls.cast(this.f6834Bh.get(str));
    }

    @Override // com.google.android.gms.internal.zzrp
    public void zza(String str, @NonNull zzro zzroVar) {
        if (this.f6834Bh.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
        }
        this.f6834Bh.put(str, zzroVar);
        zzb(str, zzroVar);
    }

    @Override // com.google.android.gms.internal.zzrp
    /* renamed from: zzaub */
    public FragmentActivity zzaty() {
        return getActivity();
    }
}
