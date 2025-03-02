package com.p052a.p053a.p074e;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.view.View;
import com.p052a.p053a.C0944j;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p081j.C0955i;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.a.a.e.l */
/* loaded from: classes.dex */
public class C0902l implements Handler.Callback {

    /* renamed from: i */
    private static final a f4770i = new a() { // from class: com.a.a.e.l.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p074e.C0902l.a
        /* renamed from: a */
        public C0944j mo5155a(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0898h interfaceC0898h, InterfaceC0903m interfaceC0903m) {
            return new C0944j(componentCallbacks2C0735c, interfaceC0898h, interfaceC0903m);
        }
    };

    /* renamed from: c */
    private volatile C0944j f4773c;

    /* renamed from: d */
    private final Handler f4774d;

    /* renamed from: e */
    private final a f4775e;

    /* renamed from: a */
    final Map<FragmentManager, FragmentC0901k> f4771a = new HashMap();

    /* renamed from: b */
    final Map<android.support.v4.app.FragmentManager, C0905o> f4772b = new HashMap();

    /* renamed from: f */
    private final ArrayMap<View, Fragment> f4776f = new ArrayMap<>();

    /* renamed from: g */
    private final ArrayMap<View, android.app.Fragment> f4777g = new ArrayMap<>();

    /* renamed from: h */
    private final Bundle f4778h = new Bundle();

    /* renamed from: com.a.a.e.l$a */
    public interface a {
        /* renamed from: a */
        C0944j mo5155a(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0898h interfaceC0898h, InterfaceC0903m interfaceC0903m);
    }

    public C0902l(@Nullable a aVar) {
        this.f4775e = aVar == null ? f4770i : aVar;
        this.f4774d = new Handler(Looper.getMainLooper(), this);
    }

    /* renamed from: b */
    private C0944j m5148b(Context context) {
        if (this.f4773c == null) {
            synchronized (this) {
                if (this.f4773c == null) {
                    this.f4773c = this.f4775e.mo5155a(ComponentCallbacks2C0735c.m4550a(context), new C0892b(), new C0897g());
                }
            }
        }
        return this.f4773c;
    }

    /* renamed from: a */
    public C0944j m5153a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (C0955i.m5429b() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return m5154a((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return m5152a((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return m5153a(((ContextWrapper) context).getBaseContext());
            }
        }
        return m5148b(context);
    }

    /* renamed from: a */
    public C0944j m5154a(FragmentActivity fragmentActivity) {
        if (C0955i.m5432c()) {
            return m5153a(fragmentActivity.getApplicationContext());
        }
        m5149b((Activity) fragmentActivity);
        return m5147a(fragmentActivity, fragmentActivity.getSupportFragmentManager(), (Fragment) null);
    }

    /* renamed from: a */
    public C0944j m5152a(Activity activity) {
        if (C0955i.m5432c()) {
            return m5153a(activity.getApplicationContext());
        }
        m5149b(activity);
        return m5146a(activity, activity.getFragmentManager(), (android.app.Fragment) null);
    }

    @TargetApi(17)
    /* renamed from: b */
    private static void m5149b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @TargetApi(17)
    /* renamed from: a */
    FragmentC0901k m5150a(FragmentManager fragmentManager, android.app.Fragment fragment) {
        FragmentC0901k fragmentC0901k = (FragmentC0901k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (fragmentC0901k == null) {
            FragmentC0901k fragmentC0901k2 = this.f4771a.get(fragmentManager);
            if (fragmentC0901k2 == null) {
                FragmentC0901k fragmentC0901k3 = new FragmentC0901k();
                fragmentC0901k3.m5142a(fragment);
                this.f4771a.put(fragmentManager, fragmentC0901k3);
                fragmentManager.beginTransaction().add(fragmentC0901k3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4774d.obtainMessage(1, fragmentManager).sendToTarget();
                return fragmentC0901k3;
            }
            return fragmentC0901k2;
        }
        return fragmentC0901k;
    }

    /* renamed from: a */
    private C0944j m5146a(Context context, FragmentManager fragmentManager, android.app.Fragment fragment) {
        FragmentC0901k m5150a = m5150a(fragmentManager, fragment);
        C0944j m5144b = m5150a.m5144b();
        if (m5144b == null) {
            C0944j mo5155a = this.f4775e.mo5155a(ComponentCallbacks2C0735c.m4550a(context), m5150a.m5141a(), m5150a.m5145c());
            m5150a.m5143a(mo5155a);
            return mo5155a;
        }
        return m5144b;
    }

    /* renamed from: a */
    C0905o m5151a(android.support.v4.app.FragmentManager fragmentManager, Fragment fragment) {
        C0905o c0905o = (C0905o) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (c0905o == null) {
            C0905o c0905o2 = this.f4772b.get(fragmentManager);
            if (c0905o2 == null) {
                C0905o c0905o3 = new C0905o();
                c0905o3.m5168a(fragment);
                this.f4772b.put(fragmentManager, c0905o3);
                fragmentManager.beginTransaction().add(c0905o3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4774d.obtainMessage(2, fragmentManager).sendToTarget();
                return c0905o3;
            }
            return c0905o2;
        }
        return c0905o;
    }

    /* renamed from: a */
    private C0944j m5147a(Context context, android.support.v4.app.FragmentManager fragmentManager, Fragment fragment) {
        C0905o m5151a = m5151a(fragmentManager, fragment);
        C0944j m5170b = m5151a.m5170b();
        if (m5170b == null) {
            C0944j mo5155a = this.f4775e.mo5155a(ComponentCallbacks2C0735c.m4550a(context), m5151a.m5167a(), m5151a.m5171c());
            m5151a.m5169a(mo5155a);
            return mo5155a;
        }
        return m5170b;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        ComponentCallbacks remove;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                remove = this.f4771a.remove(obj);
                break;
            case 2:
                obj = (android.support.v4.app.FragmentManager) message.obj;
                remove = this.f4772b.remove(obj);
                break;
            default:
                z = false;
                obj = null;
                remove = null;
                break;
        }
        if (z && remove == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }

    /* renamed from: com.a.a.e.l$1 */
    static class AnonymousClass1 implements a {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p074e.C0902l.a
        /* renamed from: a */
        public C0944j mo5155a(ComponentCallbacks2C0735c componentCallbacks2C0735c, InterfaceC0898h interfaceC0898h, InterfaceC0903m interfaceC0903m) {
            return new C0944j(componentCallbacks2C0735c, interfaceC0898h, interfaceC0903m);
        }
    }
}
