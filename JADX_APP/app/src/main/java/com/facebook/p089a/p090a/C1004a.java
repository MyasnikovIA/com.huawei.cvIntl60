package com.facebook.p089a.p090a;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.p089a.C1032g;
import com.facebook.p089a.p090a.p091a.C1005a;
import com.facebook.p089a.p090a.p091a.C1010f;
import com.facebook.p089a.p092b.C1017b;
import java.lang.ref.WeakReference;

/* renamed from: com.facebook.a.a.a */
/* loaded from: classes.dex */
public class C1004a {

    /* renamed from: a */
    private static final String f5127a = C1004a.class.getCanonicalName();

    /* renamed from: a */
    public static a m5636a(C1005a c1005a, View view, View view2) {
        return new a(c1005a, view, view2);
    }

    /* renamed from: com.facebook.a.a.a$a */
    public static class a extends View.AccessibilityDelegate {

        /* renamed from: a */
        protected boolean f5140a;

        /* renamed from: b */
        private C1005a f5141b;

        /* renamed from: c */
        private WeakReference<View> f5142c;

        /* renamed from: d */
        private WeakReference<View> f5143d;

        /* renamed from: e */
        private int f5144e;

        /* renamed from: f */
        private View.AccessibilityDelegate f5145f;

        /* renamed from: g */
        private boolean f5146g;

        public a() {
            this.f5146g = false;
            this.f5140a = false;
        }

        public a(C1005a c1005a, View view, View view2) {
            this.f5146g = false;
            this.f5140a = false;
            if (c1005a != null && view != null && view2 != null) {
                this.f5145f = C1010f.m5667f(view2);
                this.f5141b = c1005a;
                this.f5142c = new WeakReference<>(view2);
                this.f5143d = new WeakReference<>(view);
                C1005a.a m5643d = c1005a.m5643d();
                switch (c1005a.m5643d()) {
                    case CLICK:
                        this.f5144e = 1;
                        break;
                    case SELECTED:
                        this.f5144e = 4;
                        break;
                    case TEXT_CHANGED:
                        this.f5144e = 16;
                        break;
                    default:
                        throw new C1048h("Unsupported action type: " + m5643d.toString());
                }
                this.f5146g = true;
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            if (i == -1) {
                Log.e(C1004a.f5127a, "Unsupported action type");
            }
            if (i == this.f5144e) {
                if (this.f5145f != null && !(this.f5145f instanceof a)) {
                    this.f5145f.sendAccessibilityEvent(view, i);
                }
                m5645b();
            }
        }

        /* renamed from: b */
        private void m5645b() {
            String m5642c = this.f5141b.m5642c();
            Bundle m5675a = C1011b.m5675a(this.f5141b, this.f5143d.get(), this.f5142c.get());
            if (m5675a.containsKey("_valueToSum")) {
                m5675a.putDouble("_valueToSum", C1017b.m5742a(m5675a.getString("_valueToSum")));
            }
            m5675a.putString("_is_fb_codeless", "1");
            C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.a.a.a.1

                /* renamed from: a */
                final /* synthetic */ String f5147a;

                /* renamed from: b */
                final /* synthetic */ Bundle f5148b;

                AnonymousClass1(String m5642c2, Bundle m5675a2) {
                    m5642c = m5642c2;
                    m5675a = m5675a2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1032g.m5838a(C1074k.m6181f()).m5855a(m5642c, m5675a);
                }
            });
        }

        /* renamed from: com.facebook.a.a.a$a$1 */
        class AnonymousClass1 implements Runnable {

            /* renamed from: a */
            final /* synthetic */ String f5147a;

            /* renamed from: b */
            final /* synthetic */ Bundle f5148b;

            AnonymousClass1(String m5642c2, Bundle m5675a2) {
                m5642c = m5642c2;
                m5675a = m5675a2;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1032g.m5838a(C1074k.m6181f()).m5855a(m5642c, m5675a);
            }
        }

        /* renamed from: a */
        public boolean m5646a() {
            return this.f5146g;
        }
    }
}
