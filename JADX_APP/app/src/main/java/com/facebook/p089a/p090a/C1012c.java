package com.facebook.p089a.p090a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.C1074k;
import com.facebook.p089a.C1032g;
import com.facebook.p089a.p090a.p091a.C1005a;
import com.facebook.p089a.p090a.p091a.C1010f;
import com.facebook.p089a.p092b.C1017b;
import java.lang.ref.WeakReference;

/* renamed from: com.facebook.a.a.c */
/* loaded from: classes.dex */
public class C1012c {

    /* renamed from: a */
    private static final String f5194a = C1012c.class.getCanonicalName();

    /* renamed from: a */
    public static a m5691a(C1005a c1005a, View view, View view2) {
        return new a(c1005a, view, view2);
    }

    /* renamed from: com.facebook.a.a.c$a */
    public static class a implements View.OnTouchListener {

        /* renamed from: a */
        private C1005a f5195a;

        /* renamed from: b */
        private WeakReference<View> f5196b;

        /* renamed from: c */
        private WeakReference<View> f5197c;

        /* renamed from: d */
        @Nullable
        private View.OnTouchListener f5198d;

        /* renamed from: e */
        private boolean f5199e;

        public a(C1005a c1005a, View view, View view2) {
            this.f5199e = false;
            if (c1005a != null && view != null && view2 != null) {
                this.f5198d = C1010f.m5668g(view2);
                this.f5195a = c1005a;
                this.f5196b = new WeakReference<>(view2);
                this.f5197c = new WeakReference<>(view);
                this.f5199e = true;
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                m5692b();
            }
            return this.f5198d != null && this.f5198d.onTouch(view, motionEvent);
        }

        /* renamed from: b */
        private void m5692b() {
            if (this.f5195a != null) {
                String m5642c = this.f5195a.m5642c();
                Bundle m5675a = C1011b.m5675a(this.f5195a, this.f5197c.get(), this.f5196b.get());
                if (m5675a.containsKey("_valueToSum")) {
                    m5675a.putDouble("_valueToSum", C1017b.m5742a(m5675a.getString("_valueToSum")));
                }
                m5675a.putString("_is_fb_codeless", "1");
                C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.a.a.c.a.1

                    /* renamed from: a */
                    final /* synthetic */ String f5200a;

                    /* renamed from: b */
                    final /* synthetic */ Bundle f5201b;

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
        }

        /* renamed from: com.facebook.a.a.c$a$1 */
        class AnonymousClass1 implements Runnable {

            /* renamed from: a */
            final /* synthetic */ String f5200a;

            /* renamed from: b */
            final /* synthetic */ Bundle f5201b;

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
        public boolean m5693a() {
            return this.f5199e;
        }
    }
}
