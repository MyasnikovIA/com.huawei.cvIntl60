package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.KeyEventDispatcher;
import android.support.v7.appcompat.R;
import android.support.v7.view.AbstractC0527b;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v7.app.e */
/* loaded from: classes.dex */
public class DialogC0516e extends Dialog implements InterfaceC0514c {

    /* renamed from: a */
    private AbstractC0515d f2373a;

    /* renamed from: b */
    private final KeyEventDispatcher.Component f2374b;

    /* renamed from: android.support.v7.app.e$1 */
    class AnonymousClass1 implements KeyEventDispatcher.Component {
        AnonymousClass1() {
        }

        @Override // android.support.v4.view.KeyEventDispatcher.Component
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return DialogC0516e.this.m2613a(keyEvent);
        }
    }

    public DialogC0516e(Context context, int i) {
        super(context, m2610a(context, i));
        this.f2374b = new KeyEventDispatcher.Component() { // from class: android.support.v7.app.e.1
            AnonymousClass1() {
            }

            @Override // android.support.v4.view.KeyEventDispatcher.Component
            public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return DialogC0516e.this.m2613a(keyEvent);
            }
        };
        m2611a().mo2518a((Bundle) null);
        m2611a().mo2538d();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        m2611a().mo2534c();
        super.onCreate(bundle);
        m2611a().mo2518a(bundle);
    }

    @Override // android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        m2611a().mo2530b(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m2611a().mo2521a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m2611a().mo2522a(view, layoutParams);
    }

    @Override // android.app.Dialog
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        return (T) m2611a().mo2514a(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m2611a().mo2524a(charSequence);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m2611a().mo2524a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m2611a().mo2532b(view, layoutParams);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m2611a().mo2516a();
    }

    /* renamed from: a */
    public boolean m2612a(int i) {
        return m2611a().mo2535c(i);
    }

    @Override // android.app.Dialog
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void invalidateOptionsMenu() {
        m2611a().mo2529b();
    }

    /* renamed from: a */
    public AbstractC0515d m2611a() {
        if (this.f2373a == null) {
            this.f2373a = AbstractC0515d.m2608a(this, this);
        }
        return this.f2373a;
    }

    /* renamed from: a */
    private static int m2610a(Context context, int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    @Override // android.support.v7.app.InterfaceC0514c
    /* renamed from: a */
    public void mo2606a(AbstractC0527b abstractC0527b) {
    }

    @Override // android.support.v7.app.InterfaceC0514c
    /* renamed from: b */
    public void mo2607b(AbstractC0527b abstractC0527b) {
    }

    @Override // android.support.v7.app.InterfaceC0514c
    @Nullable
    /* renamed from: a */
    public AbstractC0527b mo2605a(AbstractC0527b.a aVar) {
        return null;
    }

    /* renamed from: a */
    boolean m2613a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.f2374b, getWindow().getDecorView(), this, keyEvent);
    }
}
