package com.p052a.p053a.p074e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.p052a.p053a.p074e.InterfaceC0893c;

/* renamed from: com.a.a.e.e */
/* loaded from: classes.dex */
class C0895e implements InterfaceC0893c {

    /* renamed from: a */
    final InterfaceC0893c.a f4757a;

    /* renamed from: b */
    boolean f4758b;

    /* renamed from: c */
    private final Context f4759c;

    /* renamed from: d */
    private boolean f4760d;

    /* renamed from: e */
    private final BroadcastReceiver f4761e = new BroadcastReceiver() { // from class: com.a.a.e.e.1
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = C0895e.this.f4758b;
            C0895e.this.f4758b = C0895e.this.m5132a(context);
            if (z != C0895e.this.f4758b) {
                C0895e.this.f4757a.mo5128a(C0895e.this.f4758b);
            }
        }
    };

    /* renamed from: com.a.a.e.e$1 */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = C0895e.this.f4758b;
            C0895e.this.f4758b = C0895e.this.m5132a(context);
            if (z != C0895e.this.f4758b) {
                C0895e.this.f4757a.mo5128a(C0895e.this.f4758b);
            }
        }
    }

    public C0895e(Context context, InterfaceC0893c.a aVar) {
        this.f4759c = context.getApplicationContext();
        this.f4757a = aVar;
    }

    /* renamed from: a */
    private void m5130a() {
        if (!this.f4760d) {
            this.f4758b = m5132a(this.f4759c);
            this.f4759c.registerReceiver(this.f4761e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f4760d = true;
        }
    }

    /* renamed from: b */
    private void m5131b() {
        if (this.f4760d) {
            this.f4759c.unregisterReceiver(this.f4761e);
            this.f4760d = false;
        }
    }

    /* renamed from: a */
    boolean m5132a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: c */
    public void mo5133c() {
        m5130a();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: d */
    public void mo5134d() {
        m5131b();
    }

    @Override // com.p052a.p053a.p074e.InterfaceC0899i
    /* renamed from: e */
    public void mo5135e() {
    }
}
