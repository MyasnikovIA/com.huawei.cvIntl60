package android.support.v7.app;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.AbstractC0512a;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.InterfaceC0551o;
import android.support.v7.widget.InterfaceC0657ah;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import java.util.ArrayList;

/* renamed from: android.support.v7.app.g */
/* loaded from: classes.dex */
class C0518g extends AbstractC0512a {

    /* renamed from: a */
    InterfaceC0657ah f2384a;

    /* renamed from: b */
    Window.Callback f2385b;

    /* renamed from: c */
    private boolean f2386c;

    /* renamed from: d */
    private boolean f2387d;

    /* renamed from: e */
    private ArrayList<AbstractC0512a.b> f2388e;

    /* renamed from: f */
    private final Runnable f2389f;

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2583a(boolean z) {
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2581a(float f) {
        ViewCompat.setElevation(this.f2384a.mo3886a(), f);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public Context mo2579a() {
        return this.f2384a.mo3895b();
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: c */
    public void mo2587c(boolean z) {
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: d */
    public void mo2589d(boolean z) {
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public void mo2582a(CharSequence charSequence) {
        this.f2384a.mo3893a(charSequence);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: b */
    public boolean mo2586b() {
        this.f2384a.mo3886a().removeCallbacks(this.f2389f);
        ViewCompat.postOnAnimation(this.f2384a.mo3886a(), this.f2389f);
        return true;
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: c */
    public boolean mo2588c() {
        if (!this.f2384a.mo3899c()) {
            return false;
        }
        this.f2384a.mo3900d();
        return true;
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: a */
    public boolean mo2584a(int i, KeyEvent keyEvent) {
        Menu m2619d = m2619d();
        if (m2619d == null) {
            return false;
        }
        m2619d.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return m2619d.performShortcut(i, keyEvent, 0);
    }

    @Override // android.support.v7.app.AbstractC0512a
    /* renamed from: e */
    public void mo2590e(boolean z) {
        if (z != this.f2387d) {
            this.f2387d = z;
            int size = this.f2388e.size();
            for (int i = 0; i < size; i++) {
                this.f2388e.get(i).m2591a(z);
            }
        }
    }

    /* renamed from: d */
    private Menu m2619d() {
        if (!this.f2386c) {
            this.f2384a.mo3889a(new a(), new b());
            this.f2386c = true;
        }
        return this.f2384a.mo3914q();
    }

    /* renamed from: android.support.v7.app.g$a */
    private final class a implements InterfaceC0551o.a {

        /* renamed from: b */
        private boolean f2391b;

        a() {
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public boolean mo2567a(C0544h c0544h) {
            if (C0518g.this.f2385b == null) {
                return false;
            }
            C0518g.this.f2385b.onMenuOpened(108, c0544h);
            return true;
        }

        @Override // android.support.v7.view.menu.InterfaceC0551o.a
        /* renamed from: a */
        public void mo2566a(C0544h c0544h, boolean z) {
            if (!this.f2391b) {
                this.f2391b = true;
                C0518g.this.f2384a.mo3911n();
                if (C0518g.this.f2385b != null) {
                    C0518g.this.f2385b.onPanelClosed(108, c0544h);
                }
                this.f2391b = false;
            }
        }
    }

    /* renamed from: android.support.v7.app.g$b */
    private final class b implements C0544h.a {
        b() {
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public boolean mo2526a(C0544h c0544h, MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v7.view.menu.C0544h.a
        /* renamed from: a */
        public void mo2520a(C0544h c0544h) {
            if (C0518g.this.f2385b != null) {
                if (C0518g.this.f2384a.mo3906i()) {
                    C0518g.this.f2385b.onPanelClosed(108, c0544h);
                } else if (C0518g.this.f2385b.onPreparePanel(0, null, c0544h)) {
                    C0518g.this.f2385b.onMenuOpened(108, c0544h);
                }
            }
        }
    }
}
