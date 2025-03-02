package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.view.menu.InterfaceC0552p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.b */
/* loaded from: classes.dex */
public abstract class AbstractC0538b implements InterfaceC0551o {

    /* renamed from: a */
    protected Context f2646a;

    /* renamed from: b */
    protected Context f2647b;

    /* renamed from: c */
    protected C0544h f2648c;

    /* renamed from: d */
    protected LayoutInflater f2649d;

    /* renamed from: e */
    protected LayoutInflater f2650e;

    /* renamed from: f */
    protected InterfaceC0552p f2651f;

    /* renamed from: g */
    private InterfaceC0551o.a f2652g;

    /* renamed from: h */
    private int f2653h;

    /* renamed from: i */
    private int f2654i;

    /* renamed from: j */
    private int f2655j;

    /* renamed from: a */
    public abstract void mo2794a(C0546j c0546j, InterfaceC0552p.a aVar);

    public AbstractC0538b(Context context, int i, int i2) {
        this.f2646a = context;
        this.f2649d = LayoutInflater.from(context);
        this.f2653h = i;
        this.f2654i = i2;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1539a(Context context, C0544h c0544h) {
        this.f2647b = context;
        this.f2650e = LayoutInflater.from(this.f2647b);
        this.f2648c = c0544h;
    }

    /* renamed from: a */
    public InterfaceC0552p mo2791a(ViewGroup viewGroup) {
        if (this.f2651f == null) {
            this.f2651f = (InterfaceC0552p) this.f2649d.inflate(this.f2653h, viewGroup, false);
            this.f2651f.mo1559a(this.f2648c);
            mo1543a(true);
        }
        return this.f2651f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1543a(boolean z) {
        int i;
        int i2;
        ViewGroup viewGroup = (ViewGroup) this.f2651f;
        if (viewGroup != null) {
            if (this.f2648c != null) {
                this.f2648c.m2888k();
                ArrayList<C0546j> m2887j = this.f2648c.m2887j();
                int size = m2887j.size();
                int i3 = 0;
                i = 0;
                while (i3 < size) {
                    C0546j c0546j = m2887j.get(i3);
                    if (mo2796a(i, c0546j)) {
                        View childAt = viewGroup.getChildAt(i);
                        C0546j itemData = childAt instanceof InterfaceC0552p.a ? ((InterfaceC0552p.a) childAt).getItemData() : null;
                        View mo2792a = mo2792a(c0546j, childAt, viewGroup);
                        if (c0546j != itemData) {
                            mo2792a.setPressed(false);
                            mo2792a.jumpDrawablesToCurrentState();
                        }
                        if (mo2792a != childAt) {
                            m2795a(mo2792a, i);
                        }
                        i2 = i + 1;
                    } else {
                        i2 = i;
                    }
                    i3++;
                    i = i2;
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (!mo2797a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    /* renamed from: a */
    protected void m2795a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f2651f).addView(view, i);
    }

    /* renamed from: a */
    protected boolean mo2797a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1542a(InterfaceC0551o.a aVar) {
        this.f2652g = aVar;
    }

    /* renamed from: d */
    public InterfaceC0551o.a m2799d() {
        return this.f2652g;
    }

    /* renamed from: b */
    public InterfaceC0552p.a m2798b(ViewGroup viewGroup) {
        return (InterfaceC0552p.a) this.f2649d.inflate(this.f2654i, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public View mo2792a(C0546j c0546j, View view, ViewGroup viewGroup) {
        InterfaceC0552p.a aVar;
        if (view instanceof InterfaceC0552p.a) {
            aVar = (InterfaceC0552p.a) view;
        } else {
            aVar = m2798b(viewGroup);
        }
        mo2794a(c0546j, aVar);
        return (View) aVar;
    }

    /* renamed from: a */
    public boolean mo2796a(int i, C0546j c0546j) {
        return true;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public void mo1541a(C0544h c0544h, boolean z) {
        if (this.f2652g != null) {
            this.f2652g.mo2566a(c0544h, z);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1546a(SubMenuC0557u subMenuC0557u) {
        if (this.f2652g != null) {
            return this.f2652g.mo2567a(subMenuC0557u);
        }
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1544a() {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: a */
    public boolean mo1545a(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public boolean mo1549b(C0544h c0544h, C0546j c0546j) {
        return false;
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o
    /* renamed from: b */
    public int mo1547b() {
        return this.f2655j;
    }

    /* renamed from: a */
    public void m2793a(int i) {
        this.f2655j = i;
    }
}
