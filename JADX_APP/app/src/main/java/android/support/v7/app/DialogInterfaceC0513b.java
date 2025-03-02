package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.app.AlertController;
import android.support.v7.appcompat.R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;

/* renamed from: android.support.v7.app.b */
/* loaded from: classes.dex */
public class DialogInterfaceC0513b extends DialogC0516e implements DialogInterface {

    /* renamed from: a */
    final AlertController f2369a;

    protected DialogInterfaceC0513b(@NonNull Context context, @StyleRes int i) {
        super(context, m2597a(context, i));
        this.f2369a = new AlertController(getContext(), this, getWindow());
    }

    /* renamed from: a */
    static int m2597a(@NonNull Context context, @StyleRes int i) {
        if (((i >>> 24) & 255) < 1) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    @Override // android.support.v7.app.DialogC0516e, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f2369a.m2478a(charSequence);
    }

    @Override // android.support.v7.app.DialogC0516e, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2369a.m2473a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f2369a.m2479a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f2369a.m2483b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* renamed from: android.support.v7.app.b$a */
    public static class a {

        /* renamed from: a */
        private final AlertController.C0494a f2370a;

        /* renamed from: b */
        private final int f2371b;

        public a(@NonNull Context context) {
            this(context, DialogInterfaceC0513b.m2597a(context, 0));
        }

        public a(@NonNull Context context, @StyleRes int i) {
            this.f2370a = new AlertController.C0494a(new ContextThemeWrapper(context, DialogInterfaceC0513b.m2597a(context, i)));
            this.f2371b = i;
        }

        @NonNull
        /* renamed from: a */
        public Context m2598a() {
            return this.f2370a.f2237a;
        }

        /* renamed from: a */
        public a m2603a(@Nullable CharSequence charSequence) {
            this.f2370a.f2242f = charSequence;
            return this;
        }

        /* renamed from: a */
        public a m2601a(@Nullable View view) {
            this.f2370a.f2243g = view;
            return this;
        }

        /* renamed from: a */
        public a m2600a(@Nullable Drawable drawable) {
            this.f2370a.f2240d = drawable;
            return this;
        }

        /* renamed from: a */
        public a m2599a(DialogInterface.OnKeyListener onKeyListener) {
            this.f2370a.f2257u = onKeyListener;
            return this;
        }

        /* renamed from: a */
        public a m2602a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f2370a.f2259w = listAdapter;
            this.f2370a.f2260x = onClickListener;
            return this;
        }

        /* renamed from: b */
        public DialogInterfaceC0513b m2604b() {
            DialogInterfaceC0513b dialogInterfaceC0513b = new DialogInterfaceC0513b(this.f2370a.f2237a, this.f2371b);
            this.f2370a.m2488a(dialogInterfaceC0513b.f2369a);
            dialogInterfaceC0513b.setCancelable(this.f2370a.f2254r);
            if (this.f2370a.f2254r) {
                dialogInterfaceC0513b.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0513b.setOnCancelListener(this.f2370a.f2255s);
            dialogInterfaceC0513b.setOnDismissListener(this.f2370a.f2256t);
            if (this.f2370a.f2257u != null) {
                dialogInterfaceC0513b.setOnKeyListener(this.f2370a.f2257u);
            }
            return dialogInterfaceC0513b;
        }
    }
}
