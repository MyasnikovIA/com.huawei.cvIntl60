package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.C0543g;
import android.support.v7.view.menu.C0544h;
import android.support.v7.view.menu.C0546j;
import android.support.v7.view.menu.ListMenuItemView;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.at */
/* loaded from: classes.dex */
public class C0669at extends C0667ar implements InterfaceC0668as {

    /* renamed from: a */
    private static Method f3641a;

    /* renamed from: b */
    private InterfaceC0668as f3642b;

    static {
        try {
            f3641a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0669at(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.support.v7.widget.C0667ar
    /* renamed from: a */
    C0660ak mo4014a(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    /* renamed from: a */
    public void m4041a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f3615g.setEnterTransition((Transition) obj);
        }
    }

    /* renamed from: b */
    public void m4042b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f3615g.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: a */
    public void m4040a(InterfaceC0668as interfaceC0668as) {
        this.f3642b = interfaceC0668as;
    }

    /* renamed from: c */
    public void m4043c(boolean z) {
        if (f3641a != null) {
            try {
                f3641a.invoke(this.f3615g, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }

    @Override // android.support.v7.widget.InterfaceC0668as
    /* renamed from: b */
    public void mo2826b(@NonNull C0544h c0544h, @NonNull MenuItem menuItem) {
        if (this.f3642b != null) {
            this.f3642b.mo2826b(c0544h, menuItem);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0668as
    /* renamed from: a */
    public void mo2825a(@NonNull C0544h c0544h, @NonNull MenuItem menuItem) {
        if (this.f3642b != null) {
            this.f3642b.mo2825a(c0544h, menuItem);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v7.widget.at$a */
    public static class a extends C0660ak {

        /* renamed from: b */
        final int f3643b;

        /* renamed from: c */
        final int f3644c;

        /* renamed from: d */
        private InterfaceC0668as f3645d;

        /* renamed from: e */
        private MenuItem f3646e;

        @Override // android.support.v7.widget.C0660ak
        /* renamed from: a */
        public /* bridge */ /* synthetic */ int mo3942a(int i, int i2, int i3, int i4, int i5) {
            return super.mo3942a(i, i2, i3, i4, i5);
        }

        @Override // android.support.v7.widget.C0660ak
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3943a(MotionEvent motionEvent, int i) {
            return super.mo3943a(motionEvent, i);
        }

        @Override // android.support.v7.widget.C0660ak, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // android.support.v7.widget.C0660ak, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // android.support.v7.widget.C0660ak, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // android.support.v7.widget.C0660ak, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // android.support.v7.widget.C0660ak, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.support.v7.widget.C0660ak, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.f3643b = 21;
                this.f3644c = 22;
            } else {
                this.f3643b = 22;
                this.f3644c = 21;
            }
        }

        public void setHoverListener(InterfaceC0668as interfaceC0668as) {
            this.f3645d = interfaceC0668as;
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f3643b) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView != null && i == this.f3644c) {
                setSelection(-1);
                ((C0543g) getAdapter()).m2834a().m2870b(false);
                return true;
            }
            return super.onKeyDown(i, keyEvent);
        }

        @Override // android.support.v7.widget.C0660ak, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            C0543g c0543g;
            C0546j c0546j;
            int pointToPosition;
            int i2;
            if (this.f3645d != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    c0543g = (C0543g) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    c0543g = (C0543g) adapter;
                }
                if (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= c0543g.getCount()) {
                    c0546j = null;
                } else {
                    c0546j = c0543g.getItem(i2);
                }
                MenuItem menuItem = this.f3646e;
                if (menuItem != c0546j) {
                    C0544h m2834a = c0543g.m2834a();
                    if (menuItem != null) {
                        this.f3645d.mo2825a(m2834a, menuItem);
                    }
                    this.f3646e = c0546j;
                    if (c0546j != null) {
                        this.f3645d.mo2826b(m2834a, c0546j);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }
    }
}
