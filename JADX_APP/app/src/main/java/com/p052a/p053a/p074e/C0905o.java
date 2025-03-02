package com.p052a.p053a.p074e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.p052a.p053a.C0944j;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import java.util.HashSet;

/* renamed from: com.a.a.e.o */
/* loaded from: classes.dex */
public class C0905o extends Fragment {

    /* renamed from: a */
    private final C0891a f4782a;

    /* renamed from: b */
    private final InterfaceC0903m f4783b;

    /* renamed from: c */
    private final HashSet<C0905o> f4784c;

    /* renamed from: d */
    @Nullable
    private C0905o f4785d;

    /* renamed from: e */
    @Nullable
    private C0944j f4786e;

    /* renamed from: f */
    @Nullable
    private Fragment f4787f;

    public C0905o() {
        this(new C0891a());
    }

    @SuppressLint({"ValidFragment"})
    public C0905o(C0891a c0891a) {
        this.f4783b = new a();
        this.f4784c = new HashSet<>();
        this.f4782a = c0891a;
    }

    /* renamed from: a */
    public void m5169a(C0944j c0944j) {
        this.f4786e = c0944j;
    }

    /* renamed from: a */
    C0891a m5167a() {
        return this.f4782a;
    }

    @Nullable
    /* renamed from: b */
    public C0944j m5170b() {
        return this.f4786e;
    }

    /* renamed from: c */
    public InterfaceC0903m m5171c() {
        return this.f4783b;
    }

    /* renamed from: a */
    private void m5163a(C0905o c0905o) {
        this.f4784c.add(c0905o);
    }

    /* renamed from: b */
    private void m5164b(C0905o c0905o) {
        this.f4784c.remove(c0905o);
    }

    /* renamed from: a */
    void m5168a(Fragment fragment) {
        this.f4787f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            m5162a(fragment.getActivity());
        }
    }

    /* renamed from: d */
    private Fragment m5165d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f4787f;
    }

    /* renamed from: a */
    private void m5162a(FragmentActivity fragmentActivity) {
        m5166e();
        this.f4785d = ComponentCallbacks2C0735c.m4550a(fragmentActivity).m4566g().m5151a(fragmentActivity.getSupportFragmentManager(), (Fragment) null);
        if (this.f4785d != this) {
            this.f4785d.m5163a(this);
        }
    }

    /* renamed from: e */
    private void m5166e() {
        if (this.f4785d != null) {
            this.f4785d.m5164b(this);
            this.f4785d = null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            m5162a(getActivity());
        } catch (IllegalStateException e) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f4787f = null;
        m5166e();
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4782a.m5123a();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4782a.m5125b();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4782a.m5127c();
        m5166e();
    }

    @Override // android.support.v4.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m5165d() + "}";
    }

    /* renamed from: com.a.a.e.o$a */
    private class a implements InterfaceC0903m {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + C0905o.this + "}";
        }
    }
}
