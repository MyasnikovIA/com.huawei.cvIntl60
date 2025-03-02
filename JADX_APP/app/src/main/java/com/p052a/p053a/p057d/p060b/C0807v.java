package com.p052a.p053a.p057d.p060b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.p052a.p053a.p081j.C0955i;

/* renamed from: com.a.a.d.b.v */
/* loaded from: classes.dex */
class C0807v {

    /* renamed from: a */
    private boolean f4484a;

    /* renamed from: b */
    private final Handler f4485b = new Handler(Looper.getMainLooper(), new a());

    C0807v() {
    }

    /* renamed from: a */
    public void m4906a(InterfaceC0804s<?> interfaceC0804s) {
        C0955i.m5425a();
        if (this.f4484a) {
            this.f4485b.obtainMessage(1, interfaceC0804s).sendToTarget();
            return;
        }
        this.f4484a = true;
        interfaceC0804s.mo4882e();
        this.f4484a = false;
    }

    /* renamed from: com.a.a.d.b.v$a */
    private static class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((InterfaceC0804s) message.obj).mo4882e();
            return true;
        }
    }
}
