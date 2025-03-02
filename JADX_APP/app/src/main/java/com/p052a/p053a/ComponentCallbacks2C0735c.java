package com.p052a.p053a;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.util.Log;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.EnumC0759b;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.p058a.C0755i;
import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p060b.C0794i;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p060b.p062b.InterfaceC0783h;
import com.p052a.p053a.p057d.p060b.p064d.C0789a;
import com.p052a.p053a.p057d.p065c.C0810a;
import com.p052a.p053a.p057d.p065c.C0816b;
import com.p052a.p053a.p057d.p065c.C0817c;
import com.p052a.p053a.p057d.p065c.C0818d;
import com.p052a.p053a.p057d.p065c.C0819e;
import com.p052a.p053a.p057d.p065c.C0820f;
import com.p052a.p053a.p057d.p065c.C0821g;
import com.p052a.p053a.p057d.p065c.C0825k;
import com.p052a.p053a.p057d.p065c.C0833s;
import com.p052a.p053a.p057d.p065c.C0834t;
import com.p052a.p053a.p057d.p065c.C0835u;
import com.p052a.p053a.p057d.p065c.C0836v;
import com.p052a.p053a.p057d.p065c.C0837w;
import com.p052a.p053a.p057d.p065c.C0838x;
import com.p052a.p053a.p057d.p065c.p066a.C0811a;
import com.p052a.p053a.p057d.p065c.p066a.C0812b;
import com.p052a.p053a.p057d.p065c.p066a.C0813c;
import com.p052a.p053a.p057d.p065c.p066a.C0814d;
import com.p052a.p053a.p057d.p065c.p066a.C0815e;
import com.p052a.p053a.p057d.p067d.p068a.C0841a;
import com.p052a.p053a.p057d.p067d.p068a.C0842b;
import com.p052a.p053a.p057d.p067d.p068a.C0844d;
import com.p052a.p053a.p057d.p067d.p068a.C0847g;
import com.p052a.p053a.p057d.p067d.p068a.C0850j;
import com.p052a.p053a.p057d.p067d.p068a.C0852l;
import com.p052a.p053a.p057d.p067d.p068a.C0857q;
import com.p052a.p053a.p057d.p067d.p068a.C0859s;
import com.p052a.p053a.p057d.p067d.p069b.C0861a;
import com.p052a.p053a.p057d.p067d.p071d.C0864a;
import com.p052a.p053a.p057d.p067d.p072e.C0866a;
import com.p052a.p053a.p057d.p067d.p072e.C0868c;
import com.p052a.p053a.p057d.p067d.p072e.C0869d;
import com.p052a.p053a.p057d.p067d.p072e.C0873h;
import com.p052a.p053a.p057d.p067d.p072e.C0874i;
import com.p052a.p053a.p057d.p067d.p073f.C0875a;
import com.p052a.p053a.p057d.p067d.p073f.C0876b;
import com.p052a.p053a.p057d.p067d.p073f.C0877c;
import com.p052a.p053a.p074e.C0902l;
import com.p052a.p053a.p074e.InterfaceC0894d;
import com.p052a.p053a.p075f.C0912e;
import com.p052a.p053a.p075f.InterfaceC0910c;
import com.p052a.p053a.p077h.C0937d;
import com.p052a.p053a.p077h.p078a.C0927e;
import com.p052a.p053a.p077h.p078a.InterfaceC0930h;
import com.p052a.p053a.p081j.C0954h;
import com.p052a.p053a.p081j.C0955i;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@TargetApi(14)
/* renamed from: com.a.a.c */
/* loaded from: classes.dex */
public class ComponentCallbacks2C0735c implements ComponentCallbacks2 {

    /* renamed from: a */
    private static volatile ComponentCallbacks2C0735c f4058a;

    /* renamed from: b */
    private static volatile boolean f4059b;

    /* renamed from: c */
    private final C0794i f4060c;

    /* renamed from: d */
    private final InterfaceC0765e f4061d;

    /* renamed from: e */
    private final InterfaceC0783h f4062e;

    /* renamed from: f */
    private final C0789a f4063f;

    /* renamed from: g */
    private final C0890e f4064g;

    /* renamed from: h */
    private final C0921h f4065h;

    /* renamed from: i */
    private final InterfaceC0762b f4066i;

    /* renamed from: j */
    private final C0902l f4067j;

    /* renamed from: k */
    private final InterfaceC0894d f4068k;

    /* renamed from: l */
    private final List<C0944j> f4069l = new ArrayList();

    /* renamed from: m */
    private EnumC0907f f4070m = EnumC0907f.NORMAL;

    /* renamed from: a */
    public static ComponentCallbacks2C0735c m4550a(Context context) {
        if (f4058a == null) {
            synchronized (ComponentCallbacks2C0735c.class) {
                if (f4058a == null) {
                    m4552c(context);
                }
            }
        }
        return f4058a;
    }

    /* renamed from: c */
    private static void m4552c(Context context) {
        if (f4059b) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f4059b = true;
        m4553d(context);
        f4059b = false;
    }

    /* renamed from: d */
    private static void m4553d(Context context) {
        Context applicationContext = context.getApplicationContext();
        AbstractC0725a m4555i = m4555i();
        List<InterfaceC0910c> m5180a = (m4555i == null || m4555i.m5177c()) ? new C0912e(applicationContext).m5180a() : Collections.emptyList();
        if (m4555i != null && !m4555i.m4450a().isEmpty()) {
            Set<Class<?>> m4450a = m4555i.m4450a();
            Iterator<InterfaceC0910c> it = m5180a.iterator();
            while (it.hasNext()) {
                InterfaceC0910c next = it.next();
                if (m4450a.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<InterfaceC0910c> it2 = m5180a.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        C0740d m4607a = new C0740d().m4607a(m4555i != null ? m4555i.m4451b() : null);
        Iterator<InterfaceC0910c> it3 = m5180a.iterator();
        while (it3.hasNext()) {
            it3.next().mo5176a(applicationContext, m4607a);
        }
        if (m4555i != null) {
            m4555i.mo5176a(applicationContext, m4607a);
        }
        ComponentCallbacks2C0735c m4606a = m4607a.m4606a(applicationContext);
        Iterator<InterfaceC0910c> it4 = m5180a.iterator();
        while (it4.hasNext()) {
            it4.next().mo5178a(applicationContext, m4606a, m4606a.f4065h);
        }
        if (m4555i != null) {
            m4555i.mo5178a(applicationContext, m4606a, m4606a.f4065h);
        }
        context.getApplicationContext().registerComponentCallbacks(m4606a);
        f4058a = m4606a;
    }

    @Nullable
    /* renamed from: i */
    private static AbstractC0725a m4555i() {
        try {
            return (AbstractC0725a) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").newInstance();
        } catch (ClassNotFoundException e) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
        }
    }

    @TargetApi(14)
    ComponentCallbacks2C0735c(Context context, C0794i c0794i, InterfaceC0783h interfaceC0783h, InterfaceC0765e interfaceC0765e, InterfaceC0762b interfaceC0762b, C0902l c0902l, InterfaceC0894d interfaceC0894d, int i, C0937d c0937d, Map<Class<?>, AbstractC0956k<?, ?>> map) {
        this.f4060c = c0794i;
        this.f4061d = interfaceC0765e;
        this.f4066i = interfaceC0762b;
        this.f4062e = interfaceC0783h;
        this.f4067j = c0902l;
        this.f4068k = interfaceC0894d;
        this.f4063f = new C0789a(interfaceC0783h, interfaceC0765e, (EnumC0759b) c0937d.m5302k().m5115a(C0852l.f4623a));
        Resources resources = context.getResources();
        this.f4065h = new C0921h();
        this.f4065h.m5205a((InterfaceC0882f) new C0850j());
        C0852l c0852l = new C0852l(this.f4065h.m5213a(), resources.getDisplayMetrics(), interfaceC0765e, interfaceC0762b);
        C0866a c0866a = new C0866a(context, this.f4065h.m5213a(), interfaceC0765e, interfaceC0762b);
        this.f4065h.m5206a(ByteBuffer.class, new C0817c()).m5206a(InputStream.class, new C0834t(interfaceC0762b)).m5211a("Bitmap", ByteBuffer.class, Bitmap.class, new C0847g(c0852l)).m5211a("Bitmap", InputStream.class, Bitmap.class, new C0857q(c0852l, interfaceC0762b)).m5211a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new C0859s(interfaceC0765e)).m5207a(Bitmap.class, (InterfaceC0888l) new C0844d()).m5211a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C0841a(resources, interfaceC0765e, new C0847g(c0852l))).m5211a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C0841a(resources, interfaceC0765e, new C0857q(c0852l, interfaceC0762b))).m5211a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C0841a(resources, interfaceC0765e, new C0859s(interfaceC0765e))).m5207a(BitmapDrawable.class, (InterfaceC0888l) new C0842b(interfaceC0765e, new C0844d())).m5211a("Gif", InputStream.class, C0868c.class, new C0874i(this.f4065h.m5213a(), c0866a, interfaceC0762b)).m5211a("Gif", ByteBuffer.class, C0868c.class, c0866a).m5207a(C0868c.class, (InterfaceC0888l) new C0869d()).m5208a(InterfaceC0730a.class, InterfaceC0730a.class, new C0836v.a()).m5211a("Bitmap", InterfaceC0730a.class, Bitmap.class, new C0873h(interfaceC0765e)).m5204a((InterfaceC0749c.a) new C0861a.a()).m5208a(File.class, ByteBuffer.class, new C0818d.b()).m5208a(File.class, InputStream.class, new C0820f.e()).m5210a(File.class, File.class, new C0864a()).m5208a(File.class, ParcelFileDescriptor.class, new C0820f.b()).m5208a(File.class, File.class, new C0836v.a()).m5204a((InterfaceC0749c.a) new C0755i.a(interfaceC0762b)).m5208a(Integer.TYPE, InputStream.class, new C0833s.b(resources)).m5208a(Integer.TYPE, ParcelFileDescriptor.class, new C0833s.a(resources)).m5208a(Integer.class, InputStream.class, new C0833s.b(resources)).m5208a(Integer.class, ParcelFileDescriptor.class, new C0833s.a(resources)).m5208a(String.class, InputStream.class, new C0819e.c()).m5208a(String.class, InputStream.class, new C0835u.b()).m5208a(String.class, ParcelFileDescriptor.class, new C0835u.a()).m5208a(Uri.class, InputStream.class, new C0812b.a()).m5208a(Uri.class, InputStream.class, new C0810a.c(context.getAssets())).m5208a(Uri.class, ParcelFileDescriptor.class, new C0810a.b(context.getAssets())).m5208a(Uri.class, InputStream.class, new C0813c.a(context)).m5208a(Uri.class, InputStream.class, new C0814d.a(context)).m5208a(Uri.class, InputStream.class, new C0837w.c(context.getContentResolver())).m5208a(Uri.class, ParcelFileDescriptor.class, new C0837w.a(context.getContentResolver())).m5208a(Uri.class, InputStream.class, new C0838x.a()).m5208a(URL.class, InputStream.class, new C0815e.a()).m5208a(Uri.class, File.class, new C0825k.a(context)).m5208a(C0821g.class, InputStream.class, new C0811a.a()).m5208a(byte[].class, ByteBuffer.class, new C0816b.a()).m5208a(byte[].class, InputStream.class, new C0816b.d()).m5209a(Bitmap.class, BitmapDrawable.class, new C0876b(resources, interfaceC0765e)).m5209a(Bitmap.class, byte[].class, new C0875a()).m5209a(C0868c.class, byte[].class, new C0877c());
        this.f4064g = new C0890e(context, this.f4065h, new C0927e(), c0937d, map, c0794i, i);
    }

    /* renamed from: a */
    public InterfaceC0765e m4556a() {
        return this.f4061d;
    }

    /* renamed from: b */
    public InterfaceC0762b m4560b() {
        return this.f4066i;
    }

    /* renamed from: c */
    public Context m4562c() {
        return this.f4064g.getBaseContext();
    }

    /* renamed from: d */
    InterfaceC0894d m4563d() {
        return this.f4068k;
    }

    /* renamed from: e */
    C0890e m4564e() {
        return this.f4064g;
    }

    /* renamed from: f */
    public void m4565f() {
        C0955i.m5425a();
        this.f4062e.m4744a();
        this.f4061d.mo4677a();
        this.f4066i.mo4658a();
    }

    /* renamed from: a */
    public void m4557a(int i) {
        C0955i.m5425a();
        this.f4062e.mo4740a(i);
        this.f4061d.mo4678a(i);
        this.f4066i.mo4659a(i);
    }

    /* renamed from: g */
    public C0902l m4566g() {
        return this.f4067j;
    }

    /* renamed from: e */
    private static C0902l m4554e(@Nullable Context context) {
        C0954h.m5410a(context, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m4550a(context).m4566g();
    }

    /* renamed from: b */
    public static C0944j m4551b(Context context) {
        return m4554e(context).m5153a(context);
    }

    /* renamed from: h */
    public C0921h m4567h() {
        return this.f4065h;
    }

    /* renamed from: a */
    void m4558a(InterfaceC0930h<?> interfaceC0930h) {
        synchronized (this.f4069l) {
            Iterator<C0944j> it = this.f4069l.iterator();
            while (it.hasNext()) {
                if (it.next().m5368b(interfaceC0930h)) {
                    return;
                }
            }
            throw new IllegalStateException("Failed to remove target from managers");
        }
    }

    /* renamed from: a */
    void m4559a(C0944j c0944j) {
        synchronized (this.f4069l) {
            if (this.f4069l.contains(c0944j)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f4069l.add(c0944j);
        }
    }

    /* renamed from: b */
    void m4561b(C0944j c0944j) {
        synchronized (this.f4069l) {
            if (!this.f4069l.contains(c0944j)) {
                throw new IllegalStateException("Cannot register not yet registered manager");
            }
            this.f4069l.remove(c0944j);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        m4557a(i);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m4565f();
    }
}
