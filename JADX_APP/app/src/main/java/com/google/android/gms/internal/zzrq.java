package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@TargetApi(11)
/* loaded from: classes.dex */
public final class zzrq extends Fragment implements zzrp {

    /* renamed from: Bg */
    private static WeakHashMap<Activity, WeakReference<zzrq>> f6813Bg = new WeakHashMap<>();

    /* renamed from: Bi */
    private Bundle f6815Bi;

    /* renamed from: Bh */
    private Map<String, zzro> f6814Bh = new ArrayMap();
    private int zzbtt = 0;

    /* renamed from: com.google.android.gms.internal.zzrq$1 */
    class RunnableC13841 implements Runnable {

        /* renamed from: Bj */
        final /* synthetic */ zzro f6816Bj;
        final /* synthetic */ String zzap;

        RunnableC13841(zzro zzroVar, String str) {
            zzroVar = zzroVar;
            str = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzrq.this.zzbtt >= 1) {
                zzroVar.onCreate(zzrq.this.f6815Bi != null ? zzrq.this.f6815Bi.getBundle(str) : null);
            }
            if (zzrq.this.zzbtt >= 2) {
                zzroVar.onStart();
            }
            if (zzrq.this.zzbtt >= 3) {
                zzroVar.onStop();
            }
            if (zzrq.this.zzbtt >= 4) {
                zzroVar.onDestroy();
            }
        }
    }

    private void zzb(String str, @NonNull zzro zzroVar) {
        if (this.zzbtt > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzrq.1

                /* renamed from: Bj */
                final /* synthetic */ zzro f6816Bj;
                final /* synthetic */ String zzap;

                RunnableC13841(zzro zzroVar2, String str2) {
                    zzroVar = zzroVar2;
                    str = str2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (zzrq.this.zzbtt >= 1) {
                        zzroVar.onCreate(zzrq.this.f6815Bi != null ? zzrq.this.f6815Bi.getBundle(str) : null);
                    }
                    if (zzrq.this.zzbtt >= 2) {
                        zzroVar.onStart();
                    }
                    if (zzrq.this.zzbtt >= 3) {
                        zzroVar.onStop();
                    }
                    if (zzrq.this.zzbtt >= 4) {
                        zzroVar.onDestroy();
                    }
                }
            });
        }
    }

    public static zzrq zzt(Activity activity) {
        zzrq zzrqVar;
        WeakReference<zzrq> weakReference = f6813Bg.get(activity);
        if (weakReference == null || (zzrqVar = weakReference.get()) == null) {
            try {
                zzrqVar = (zzrq) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                if (zzrqVar == null || zzrqVar.isRemoving()) {
                    zzrqVar = new zzrq();
                    activity.getFragmentManager().beginTransaction().add(zzrqVar, "LifecycleFragmentImpl").commitAllowingStateLoss();
                }
                f6813Bg.put(activity, new WeakReference<>(zzrqVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
            }
        }
        return zzrqVar;
    }

    @Override // android.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<zzro> it = this.f6814Bh.values().iterator();
        while (it.hasNext()) {
            it.next().dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator<zzro> it = this.f6814Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzbtt = 1;
        this.f6815Bi = bundle;
        for (Map.Entry<String, zzro> entry : this.f6814Bh.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.zzbtt = 4;
        Iterator<zzro> it = this.f6814Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, zzro> entry : this.f6814Bh.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzbtt = 2;
        Iterator<zzro> it = this.f6814Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onStart();
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.zzbtt = 3;
        Iterator<zzro> it = this.f6814Bh.values().iterator();
        while (it.hasNext()) {
            it.next().onStop();
        }
    }

    @Override // com.google.android.gms.internal.zzrp
    public <T extends zzro> T zza(String str, Class<T> cls) {
        return cls.cast(this.f6814Bh.get(str));
    }

    @Override // com.google.android.gms.internal.zzrp
    public void zza(String str, @NonNull zzro zzroVar) {
        if (this.f6814Bh.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
        }
        this.f6814Bh.put(str, zzroVar);
        zzb(str, zzroVar);
    }

    @Override // com.google.android.gms.internal.zzrp
    public Activity zzaty() {
        return getActivity();
    }
}
