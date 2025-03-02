package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.AbstractC0527b;
import android.support.v7.view.menu.C0544h;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.e */
/* loaded from: classes.dex */
public class C0530e extends AbstractC0527b implements C0544h.a {

    /* renamed from: a */
    private Context f2527a;

    /* renamed from: b */
    private ActionBarContextView f2528b;

    /* renamed from: c */
    private AbstractC0527b.a f2529c;

    /* renamed from: d */
    private WeakReference<View> f2530d;

    /* renamed from: e */
    private boolean f2531e;

    /* renamed from: f */
    private boolean f2532f;

    /* renamed from: g */
    private C0544h f2533g;

    public C0530e(Context context, ActionBarContextView actionBarContextView, AbstractC0527b.a aVar, boolean z) {
        this.f2527a = context;
        this.f2528b = actionBarContextView;
        this.f2529c = aVar;
        this.f2533g = new C0544h(actionBarContextView.getContext()).m2849a(1);
        this.f2533g.mo2857a(this);
        this.f2532f = z;
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: b */
    public void mo2656b(CharSequence charSequence) {
        this.f2528b.setTitle(charSequence);
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: a */
    public void mo2652a(CharSequence charSequence) {
        this.f2528b.setSubtitle(charSequence);
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: a */
    public void mo2650a(int i) {
        mo2656b(this.f2527a.getString(i));
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: b */
    public void mo2655b(int i) {
        mo2652a((CharSequence) this.f2527a.getString(i));
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: a */
    public void mo2653a(boolean z) {
        super.mo2653a(z);
        this.f2528b.setTitleOptional(z);
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: h */
    public boolean mo2662h() {
        return this.f2528b.m2961d();
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: a */
    public void mo2651a(View view) {
        this.f2528b.setCustomView(view);
        this.f2530d = view != null ? new WeakReference<>(view) : null;
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: d */
    public void mo2658d() {
        this.f2529c.mo2571b(this, this.f2533g);
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: c */
    public void mo2657c() {
        if (!this.f2531e) {
            this.f2531e = true;
            this.f2528b.sendAccessibilityEvent(32);
            this.f2529c.mo2568a(this);
        }
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: b */
    public Menu mo2654b() {
        return this.f2533g;
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: f */
    public CharSequence mo2660f() {
        return this.f2528b.getTitle();
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: g */
    public CharSequence mo2661g() {
        return this.f2528b.getSubtitle();
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: i */
    public View mo2663i() {
        if (this.f2530d != null) {
            return this.f2530d.get();
        }
        return null;
    }

    @Override // android.support.v7.view.AbstractC0527b
    /* renamed from: a */
    public MenuInflater mo2649a() {
        return new C0532g(this.f2528b.getContext());
    }

    @Override // android.support.v7.view.menu.C0544h.a
    /* renamed from: a */
    public boolean mo2526a(C0544h c0544h, MenuItem menuItem) {
        return this.f2529c.mo2570a(this, menuItem);
    }

    @Override // android.support.v7.view.menu.C0544h.a
    /* renamed from: a */
    public void mo2520a(C0544h c0544h) {
        mo2658d();
        this.f2528b.mo2958a();
    }
}
