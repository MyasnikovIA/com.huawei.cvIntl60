package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.support.v4.view.PointerIconCompat;
import android.support.v7.app.DialogInterfaceC0513b;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.InterfaceC0551o;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/* renamed from: android.support.v7.view.menu.i */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC0545i implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, InterfaceC0551o.a {

    /* renamed from: a */
    C0542f f2742a;

    /* renamed from: b */
    private C0544h f2743b;

    /* renamed from: c */
    private DialogInterfaceC0513b f2744c;

    /* renamed from: d */
    private InterfaceC0551o.a f2745d;

    public DialogInterfaceOnClickListenerC0545i(C0544h c0544h) {
        this.f2743b = c0544h;
    }

    /* renamed from: a */
    public void m2898a(IBinder iBinder) {
        C0544h c0544h = this.f2743b;
        DialogInterfaceC0513b.a aVar = new DialogInterfaceC0513b.a(c0544h.m2883f());
        this.f2742a = new C0542f(aVar.m2598a(), R.layout.abc_list_menu_item_layout);
        this.f2742a.mo1542a(this);
        this.f2743b.m2859a(this.f2742a);
        aVar.m2602a(this.f2742a.m2831d(), this);
        View m2893p = c0544h.m2893p();
        if (m2893p != null) {
            aVar.m2601a(m2893p);
        } else {
            aVar.m2600a(c0544h.m2892o()).m2603a(c0544h.m2891n());
        }
        aVar.m2599a(this);
        this.f2744c = aVar.m2604b();
        this.f2744c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f2744c.getWindow().getAttributes();
        attributes.type = PointerIconCompat.TYPE_HELP;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f2744c.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f2744c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f2744c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f2743b.m2870b(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f2743b.performShortcut(i, keyEvent, 0);
    }

    /* renamed from: a */
    public void m2897a() {
        if (this.f2744c != null) {
            this.f2744c.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f2742a.mo1541a(this.f2743b, true);
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o.a
    /* renamed from: a */
    public void mo2566a(C0544h c0544h, boolean z) {
        if (z || c0544h == this.f2743b) {
            m2897a();
        }
        if (this.f2745d != null) {
            this.f2745d.mo2566a(c0544h, z);
        }
    }

    @Override // android.support.v7.view.menu.InterfaceC0551o.a
    /* renamed from: a */
    public boolean mo2567a(C0544h c0544h) {
        if (this.f2745d != null) {
            return this.f2745d.mo2567a(c0544h);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2743b.m2864a((C0546j) this.f2742a.m2831d().getItem(i), 0);
    }
}
