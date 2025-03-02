package android.support.v7.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* renamed from: android.support.v7.view.b */
/* loaded from: classes.dex */
public abstract class AbstractC0527b {

    /* renamed from: a */
    private Object f2520a;

    /* renamed from: b */
    private boolean f2521b;

    /* renamed from: android.support.v7.view.b$a */
    public interface a {
        /* renamed from: a */
        void mo2568a(AbstractC0527b abstractC0527b);

        /* renamed from: a */
        boolean mo2569a(AbstractC0527b abstractC0527b, Menu menu);

        /* renamed from: a */
        boolean mo2570a(AbstractC0527b abstractC0527b, MenuItem menuItem);

        /* renamed from: b */
        boolean mo2571b(AbstractC0527b abstractC0527b, Menu menu);
    }

    /* renamed from: a */
    public abstract MenuInflater mo2649a();

    /* renamed from: a */
    public abstract void mo2650a(int i);

    /* renamed from: a */
    public abstract void mo2651a(View view);

    /* renamed from: a */
    public abstract void mo2652a(CharSequence charSequence);

    /* renamed from: b */
    public abstract Menu mo2654b();

    /* renamed from: b */
    public abstract void mo2655b(int i);

    /* renamed from: b */
    public abstract void mo2656b(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo2657c();

    /* renamed from: d */
    public abstract void mo2658d();

    /* renamed from: f */
    public abstract CharSequence mo2660f();

    /* renamed from: g */
    public abstract CharSequence mo2661g();

    /* renamed from: i */
    public abstract View mo2663i();

    /* renamed from: a */
    public void m2740a(Object obj) {
        this.f2520a = obj;
    }

    /* renamed from: j */
    public Object m2741j() {
        return this.f2520a;
    }

    /* renamed from: a */
    public void mo2653a(boolean z) {
        this.f2521b = z;
    }

    /* renamed from: k */
    public boolean m2742k() {
        return this.f2521b;
    }

    /* renamed from: h */
    public boolean mo2662h() {
        return false;
    }
}
