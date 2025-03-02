package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.view.AbstractC0527b;
import android.support.v7.view.menu.C0553q;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.f */
/* loaded from: classes.dex */
public class C0531f extends ActionMode {

    /* renamed from: a */
    final Context f2534a;

    /* renamed from: b */
    final AbstractC0527b f2535b;

    public C0531f(Context context, AbstractC0527b abstractC0527b) {
        this.f2534a = context;
        this.f2535b = abstractC0527b;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f2535b.m2741j();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f2535b.m2740a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f2535b.mo2656b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f2535b.mo2652a(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f2535b.mo2658d();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f2535b.mo2657c();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return C0553q.m2947a(this.f2534a, (SupportMenu) this.f2535b.mo2654b());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f2535b.mo2660f();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f2535b.mo2650a(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f2535b.mo2661g();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f2535b.mo2655b(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f2535b.mo2663i();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f2535b.mo2651a(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f2535b.mo2649a();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f2535b.m2742k();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f2535b.mo2653a(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f2535b.mo2662h();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.view.f$a */
    public static class a implements AbstractC0527b.a {

        /* renamed from: a */
        final ActionMode.Callback f2536a;

        /* renamed from: b */
        final Context f2537b;

        /* renamed from: c */
        final ArrayList<C0531f> f2538c = new ArrayList<>();

        /* renamed from: d */
        final SimpleArrayMap<Menu, Menu> f2539d = new SimpleArrayMap<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f2537b = context;
            this.f2536a = callback;
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public boolean mo2569a(AbstractC0527b abstractC0527b, Menu menu) {
            return this.f2536a.onCreateActionMode(m2750b(abstractC0527b), m2749a(menu));
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: b */
        public boolean mo2571b(AbstractC0527b abstractC0527b, Menu menu) {
            return this.f2536a.onPrepareActionMode(m2750b(abstractC0527b), m2749a(menu));
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public boolean mo2570a(AbstractC0527b abstractC0527b, MenuItem menuItem) {
            return this.f2536a.onActionItemClicked(m2750b(abstractC0527b), C0553q.m2948a(this.f2537b, (SupportMenuItem) menuItem));
        }

        @Override // android.support.v7.view.AbstractC0527b.a
        /* renamed from: a */
        public void mo2568a(AbstractC0527b abstractC0527b) {
            this.f2536a.onDestroyActionMode(m2750b(abstractC0527b));
        }

        /* renamed from: a */
        private Menu m2749a(Menu menu) {
            Menu menu2 = this.f2539d.get(menu);
            if (menu2 == null) {
                Menu m2947a = C0553q.m2947a(this.f2537b, (SupportMenu) menu);
                this.f2539d.put(menu, m2947a);
                return m2947a;
            }
            return menu2;
        }

        /* renamed from: b */
        public ActionMode m2750b(AbstractC0527b abstractC0527b) {
            int size = this.f2538c.size();
            for (int i = 0; i < size; i++) {
                C0531f c0531f = this.f2538c.get(i);
                if (c0531f != null && c0531f.f2535b == abstractC0527b) {
                    return c0531f;
                }
            }
            C0531f c0531f2 = new C0531f(this.f2537b, abstractC0527b);
            this.f2538c.add(c0531f2);
            return c0531f2;
        }
    }
}
