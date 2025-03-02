package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.support.v7.view.menu.MenuItemC0547k;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

@RequiresApi(16)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.l */
/* loaded from: classes.dex */
class C0548l extends MenuItemC0547k {
    C0548l(Context context, SupportMenuItem supportMenuItem) {
        super(context, supportMenuItem);
    }

    @Override // android.support.v7.view.menu.MenuItemC0547k
    /* renamed from: a */
    MenuItemC0547k.a mo2925a(ActionProvider actionProvider) {
        return new a(this.f2656a, actionProvider);
    }

    /* renamed from: android.support.v7.view.menu.l$a */
    class a extends MenuItemC0547k.a implements ActionProvider.VisibilityListener {

        /* renamed from: c */
        ActionProvider.VisibilityListener f2784c;

        public a(Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // android.support.v4.view.ActionProvider
        public View onCreateActionView(MenuItem menuItem) {
            return this.f2779a.onCreateActionView(menuItem);
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean overridesItemVisibility() {
            return this.f2779a.overridesItemVisibility();
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean isVisible() {
            return this.f2779a.isVisible();
        }

        @Override // android.support.v4.view.ActionProvider
        public void refreshVisibility() {
            this.f2779a.refreshVisibility();
        }

        @Override // android.support.v4.view.ActionProvider
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.f2784c = visibilityListener;
            android.view.ActionProvider actionProvider = this.f2779a;
            if (visibilityListener == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.f2784c != null) {
                this.f2784c.onActionProviderVisibilityChanged(z);
            }
        }
    }
}
