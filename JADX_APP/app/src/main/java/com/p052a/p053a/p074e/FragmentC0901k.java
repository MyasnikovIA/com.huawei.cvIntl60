package com.p052a.p053a.p074e;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.Log;
import com.p052a.p053a.C0944j;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import java.util.HashSet;

/* renamed from: com.a.a.e.k */
/* loaded from: classes.dex */
public class FragmentC0901k extends Fragment {

    /* renamed from: a */
    private final C0891a f4763a;

    /* renamed from: b */
    private final InterfaceC0903m f4764b;

    /* renamed from: c */
    private final HashSet<FragmentC0901k> f4765c;

    /* renamed from: d */
    @Nullable
    private C0944j f4766d;

    /* renamed from: e */
    @Nullable
    private FragmentC0901k f4767e;

    /* renamed from: f */
    @Nullable
    private Fragment f4768f;

    public FragmentC0901k() {
        this(new C0891a());
    }

    @SuppressLint({"ValidFragment"})
    FragmentC0901k(C0891a c0891a) {
        this.f4764b = new a();
        this.f4765c = new HashSet<>();
        this.f4763a = c0891a;
    }

    /* renamed from: a */
    public void m5143a(C0944j c0944j) {
        this.f4766d = c0944j;
    }

    /* renamed from: a */
    C0891a m5141a() {
        return this.f4763a;
    }

    @Nullable
    /* renamed from: b */
    public C0944j m5144b() {
        return this.f4766d;
    }

    /* renamed from: c */
    public InterfaceC0903m m5145c() {
        return this.f4764b;
    }

    /* renamed from: a */
    private void m5137a(FragmentC0901k fragmentC0901k) {
        this.f4765c.add(fragmentC0901k);
    }

    /* renamed from: b */
    private void m5138b(FragmentC0901k fragmentC0901k) {
        this.f4765c.remove(fragmentC0901k);
    }

    /* renamed from: a */
    void m5142a(Fragment fragment) {
        this.f4768f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            m5136a(fragment.getActivity());
        }
    }

    @TargetApi(17)
    /* renamed from: d */
    private Fragment m5139d() {
        Fragment fragment;
        if (Build.VERSION.SDK_INT >= 17) {
            fragment = getParentFragment();
        } else {
            fragment = null;
        }
        return fragment != null ? fragment : this.f4768f;
    }

    /* renamed from: a */
    private void m5136a(Activity activity) {
        m5140e();
        this.f4767e = ComponentCallbacks2C0735c.m4550a(activity).m4566g().m5150a(activity.getFragmentManager(), (Fragment) null);
        if (this.f4767e != this) {
            this.f4767e.m5137a(this);
        }
    }

    /* renamed from: e */
    private void m5140e() {
        if (this.f4767e != null) {
            this.f4767e.m5138b(this);
            this.f4767e = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m5136a(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m5140e();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4763a.m5123a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4763a.m5125b();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4763a.m5127c();
        m5140e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m5139d() + "}";
    }

    /* renamed from: com.a.a.e.k$a */
    private class a implements InterfaceC0903m {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + FragmentC0901k.this + "}";
        }
    }
}
