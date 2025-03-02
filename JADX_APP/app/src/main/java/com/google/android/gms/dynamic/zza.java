package com.google.android.gms.dynamic;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class zza<T extends LifecycleDelegate> {

    /* renamed from: PT */
    private T f6485PT;

    /* renamed from: PU */
    private Bundle f6486PU;

    /* renamed from: PV */
    private LinkedList<InterfaceC1890zza> f6487PV;

    /* renamed from: PW */
    private final zzf<T> f6488PW = new zzf<T>() { // from class: com.google.android.gms.dynamic.zza.1
        C12661() {
        }

        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.f6485PT = t;
            Iterator it = zza.this.f6487PV.iterator();
            while (it.hasNext()) {
                ((InterfaceC1890zza) it.next()).zzb(zza.this.f6485PT);
            }
            zza.this.f6487PV.clear();
            zza.this.f6486PU = null;
        }
    };

    /* renamed from: com.google.android.gms.dynamic.zza$1 */
    class C12661 implements zzf<T> {
        C12661() {
        }

        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.f6485PT = t;
            Iterator it = zza.this.f6487PV.iterator();
            while (it.hasNext()) {
                ((InterfaceC1890zza) it.next()).zzb(zza.this.f6485PT);
            }
            zza.this.f6487PV.clear();
            zza.this.f6486PU = null;
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$2 */
    class C12672 implements InterfaceC1890zza {

        /* renamed from: PY */
        final /* synthetic */ Bundle f6491PY;
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ Bundle zzavg;

        C12672(Activity activity, Bundle bundle, Bundle bundle2) {
            activity = activity;
            bundle = bundle;
            bundle2 = bundle2;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public int getState() {
            return 0;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public void zzb(LifecycleDelegate lifecycleDelegate) {
            zza.this.f6485PT.onInflate(activity, bundle, bundle2);
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$3 */
    class C12683 implements InterfaceC1890zza {
        final /* synthetic */ Bundle zzavg;

        C12683(Bundle bundle) {
            bundle = bundle;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public int getState() {
            return 1;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public void zzb(LifecycleDelegate lifecycleDelegate) {
            zza.this.f6485PT.onCreate(bundle);
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$4 */
    class C12694 implements InterfaceC1890zza {

        /* renamed from: PZ */
        final /* synthetic */ FrameLayout f6494PZ;

        /* renamed from: Qa */
        final /* synthetic */ LayoutInflater f6495Qa;

        /* renamed from: Qb */
        final /* synthetic */ ViewGroup f6496Qb;
        final /* synthetic */ Bundle zzavg;

        C12694(FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            frameLayout = frameLayout;
            layoutInflater = layoutInflater;
            viewGroup = viewGroup;
            bundle = bundle;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public int getState() {
            return 2;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public void zzb(LifecycleDelegate lifecycleDelegate) {
            frameLayout.removeAllViews();
            frameLayout.addView(zza.this.f6485PT.onCreateView(layoutInflater, viewGroup, bundle));
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$5 */
    final class ViewOnClickListenerC12705 implements View.OnClickListener {

        /* renamed from: Qc */
        final /* synthetic */ Intent f6497Qc;
        final /* synthetic */ Context zzang;

        ViewOnClickListenerC12705(Context context, Intent intent) {
            context = context;
            zzb = intent;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                context.startActivity(zzb);
            } catch (ActivityNotFoundException e) {
                Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$6 */
    class C12716 implements InterfaceC1890zza {
        C12716() {
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public int getState() {
            return 4;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public void zzb(LifecycleDelegate lifecycleDelegate) {
            zza.this.f6485PT.onStart();
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$7 */
    class C12727 implements InterfaceC1890zza {
        C12727() {
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public int getState() {
            return 5;
        }

        @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
        public void zzb(LifecycleDelegate lifecycleDelegate) {
            zza.this.f6485PT.onResume();
        }
    }

    /* renamed from: com.google.android.gms.dynamic.zza$zza */
    private interface InterfaceC1890zza {
        int getState();

        void zzb(LifecycleDelegate lifecycleDelegate);
    }

    private void zza(Bundle bundle, InterfaceC1890zza interfaceC1890zza) {
        if (this.f6485PT != null) {
            interfaceC1890zza.zzb(this.f6485PT);
            return;
        }
        if (this.f6487PV == null) {
            this.f6487PV = new LinkedList<>();
        }
        this.f6487PV.add(interfaceC1890zza);
        if (bundle != null) {
            if (this.f6486PU == null) {
                this.f6486PU = (Bundle) bundle.clone();
            } else {
                this.f6486PU.putAll(bundle);
            }
        }
        zza(this.f6488PW);
    }

    @VisibleForTesting
    static void zza(FrameLayout frameLayout, GoogleApiAvailability googleApiAvailability) {
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        String zzi = com.google.android.gms.common.internal.zzg.zzi(context, isGooglePlayServicesAvailable);
        String zzk = com.google.android.gms.common.internal.zzg.zzk(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zzi);
        linearLayout.addView(textView);
        Intent zzb = googleApiAvailability.zzb(context, isGooglePlayServicesAvailable, null);
        if (zzb != null) {
            Button button = new Button(context);
            button.setId(R.id.button1);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zzk);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5

                /* renamed from: Qc */
                final /* synthetic */ Intent f6497Qc;
                final /* synthetic */ Context zzang;

                ViewOnClickListenerC12705(Context context2, Intent zzb2) {
                    context = context2;
                    zzb = zzb2;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        context.startActivity(zzb);
                    } catch (ActivityNotFoundException e) {
                        Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
                    }
                }
            });
        }
    }

    public static void zzb(FrameLayout frameLayout) {
        zza(frameLayout, GoogleApiAvailability.getInstance());
    }

    private void zznj(int i) {
        while (!this.f6487PV.isEmpty() && this.f6487PV.getLast().getState() >= i) {
            this.f6487PV.removeLast();
        }
    }

    public void onCreate(Bundle bundle) {
        zza(bundle, new InterfaceC1890zza() { // from class: com.google.android.gms.dynamic.zza.3
            final /* synthetic */ Bundle zzavg;

            C12683(Bundle bundle2) {
                bundle = bundle2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public int getState() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.f6485PT.onCreate(bundle);
            }
        });
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new InterfaceC1890zza() { // from class: com.google.android.gms.dynamic.zza.4

            /* renamed from: PZ */
            final /* synthetic */ FrameLayout f6494PZ;

            /* renamed from: Qa */
            final /* synthetic */ LayoutInflater f6495Qa;

            /* renamed from: Qb */
            final /* synthetic */ ViewGroup f6496Qb;
            final /* synthetic */ Bundle zzavg;

            C12694(FrameLayout frameLayout2, LayoutInflater layoutInflater2, ViewGroup viewGroup2, Bundle bundle2) {
                frameLayout = frameLayout2;
                layoutInflater = layoutInflater2;
                viewGroup = viewGroup2;
                bundle = bundle2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public int getState() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.f6485PT.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.f6485PT == null) {
            zza(frameLayout2);
        }
        return frameLayout2;
    }

    public void onDestroy() {
        if (this.f6485PT != null) {
            this.f6485PT.onDestroy();
        } else {
            zznj(1);
        }
    }

    public void onDestroyView() {
        if (this.f6485PT != null) {
            this.f6485PT.onDestroyView();
        } else {
            zznj(2);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        zza(bundle2, new InterfaceC1890zza() { // from class: com.google.android.gms.dynamic.zza.2

            /* renamed from: PY */
            final /* synthetic */ Bundle f6491PY;
            final /* synthetic */ Activity val$activity;
            final /* synthetic */ Bundle zzavg;

            C12672(Activity activity2, Bundle bundle3, Bundle bundle22) {
                activity = activity2;
                bundle = bundle3;
                bundle2 = bundle22;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public int getState() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.f6485PT.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.f6485PT != null) {
            this.f6485PT.onLowMemory();
        }
    }

    public void onPause() {
        if (this.f6485PT != null) {
            this.f6485PT.onPause();
        } else {
            zznj(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new InterfaceC1890zza() { // from class: com.google.android.gms.dynamic.zza.7
            C12727() {
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public int getState() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.f6485PT.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.f6485PT != null) {
            this.f6485PT.onSaveInstanceState(bundle);
        } else if (this.f6486PU != null) {
            bundle.putAll(this.f6486PU);
        }
    }

    public void onStart() {
        zza((Bundle) null, new InterfaceC1890zza() { // from class: com.google.android.gms.dynamic.zza.6
            C12716() {
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public int getState() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC1890zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.f6485PT.onStart();
            }
        });
    }

    public void onStop() {
        if (this.f6485PT != null) {
            this.f6485PT.onStop();
        } else {
            zznj(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzbdo() {
        return this.f6485PT;
    }
}
