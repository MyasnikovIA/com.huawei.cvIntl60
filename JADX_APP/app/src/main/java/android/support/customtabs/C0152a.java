package android.support.customtabs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.BundleCompat;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;

/* renamed from: android.support.customtabs.a */
/* loaded from: classes.dex */
public final class C0152a {

    /* renamed from: a */
    @NonNull
    public final Intent f1025a;

    /* renamed from: b */
    @Nullable
    public final Bundle f1026b;

    /* synthetic */ C0152a(Intent intent, Bundle bundle, AnonymousClass1 anonymousClass1) {
        this(intent, bundle);
    }

    /* renamed from: a */
    public void m1355a(Context context, Uri uri) {
        this.f1025a.setData(uri);
        ContextCompat.startActivity(context, this.f1025a, this.f1026b);
    }

    private C0152a(Intent intent, Bundle bundle) {
        this.f1025a = intent;
        this.f1026b = bundle;
    }

    /* renamed from: android.support.customtabs.a$a */
    public static final class a {

        /* renamed from: a */
        private final Intent f1027a;

        /* renamed from: b */
        private ArrayList<Bundle> f1028b;

        /* renamed from: c */
        private Bundle f1029c;

        /* renamed from: d */
        private ArrayList<Bundle> f1030d;

        /* renamed from: e */
        private boolean f1031e;

        public a() {
            this(null);
        }

        public a(@Nullable C0153b c0153b) {
            this.f1027a = new Intent("android.intent.action.VIEW");
            this.f1028b = null;
            this.f1029c = null;
            this.f1030d = null;
            this.f1031e = true;
            if (c0153b != null) {
                this.f1027a.setPackage(c0153b.m1358b().getPackageName());
            }
            Bundle bundle = new Bundle();
            BundleCompat.putBinder(bundle, "android.support.customtabs.extra.SESSION", c0153b != null ? c0153b.m1357a() : null);
            this.f1027a.putExtras(bundle);
        }

        /* renamed from: a */
        public C0152a m1356a() {
            if (this.f1028b != null) {
                this.f1027a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.f1028b);
            }
            if (this.f1030d != null) {
                this.f1027a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.f1030d);
            }
            this.f1027a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1031e);
            return new C0152a(this.f1027a, this.f1029c);
        }
    }
}
