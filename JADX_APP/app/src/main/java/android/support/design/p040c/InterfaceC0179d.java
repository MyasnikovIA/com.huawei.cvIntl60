package android.support.design.p040c;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.p040c.C0178c;
import android.support.design.widget.C0282k;
import android.util.Property;

/* renamed from: android.support.design.c.d */
/* loaded from: classes.dex */
public interface InterfaceC0179d extends C0178c.a {
    /* renamed from: a */
    void mo1466a();

    /* renamed from: b */
    void mo1468b();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    d getRevealInfo();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i);

    void setRevealInfo(@Nullable d dVar);

    /* renamed from: android.support.design.c.d$d */
    public static class d {

        /* renamed from: a */
        public float f1137a;

        /* renamed from: b */
        public float f1138b;

        /* renamed from: c */
        public float f1139c;

        /* synthetic */ d(AnonymousClass1 anonymousClass1) {
            this();
        }

        private d() {
        }

        public d(float f, float f2, float f3) {
            this.f1137a = f;
            this.f1138b = f2;
            this.f1139c = f3;
        }

        public d(d dVar) {
            this(dVar.f1137a, dVar.f1138b, dVar.f1139c);
        }

        /* renamed from: a */
        public void m1491a(float f, float f2, float f3) {
            this.f1137a = f;
            this.f1138b = f2;
            this.f1139c = f3;
        }

        /* renamed from: a */
        public void m1492a(d dVar) {
            m1491a(dVar.f1137a, dVar.f1138b, dVar.f1139c);
        }

        /* renamed from: a */
        public boolean m1493a() {
            return this.f1139c == Float.MAX_VALUE;
        }
    }

    /* renamed from: android.support.design.c.d$b */
    public static class b extends Property<InterfaceC0179d, d> {

        /* renamed from: a */
        public static final Property<InterfaceC0179d, d> f1135a = new b("circularReveal");

        private b(String str) {
            super(d.class, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public d get(InterfaceC0179d interfaceC0179d) {
            return interfaceC0179d.getRevealInfo();
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(InterfaceC0179d interfaceC0179d, d dVar) {
            interfaceC0179d.setRevealInfo(dVar);
        }
    }

    /* renamed from: android.support.design.c.d$a */
    public static class a implements TypeEvaluator<d> {

        /* renamed from: a */
        public static final TypeEvaluator<d> f1133a = new a();

        /* renamed from: b */
        private final d f1134b = new d();

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public d evaluate(float f, d dVar, d dVar2) {
            this.f1134b.m1491a(C0282k.m2166a(dVar.f1137a, dVar2.f1137a, f), C0282k.m2166a(dVar.f1138b, dVar2.f1138b, f), C0282k.m2166a(dVar.f1139c, dVar2.f1139c, f));
            return this.f1134b;
        }
    }

    /* renamed from: android.support.design.c.d$c */
    public static class c extends Property<InterfaceC0179d, Integer> {

        /* renamed from: a */
        public static final Property<InterfaceC0179d, Integer> f1136a = new c("circularRevealScrimColor");

        private c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Integer get(InterfaceC0179d interfaceC0179d) {
            return Integer.valueOf(interfaceC0179d.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* renamed from: a */
        public void set(InterfaceC0179d interfaceC0179d, Integer num) {
            interfaceC0179d.setCircularRevealScrimColor(num.intValue());
        }
    }
}
