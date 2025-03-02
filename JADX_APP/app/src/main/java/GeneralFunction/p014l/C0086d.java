package GeneralFunction.p014l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: GeneralFunction.l.d */
/* loaded from: classes.dex */
public class C0086d extends BroadcastReceiver {

    /* renamed from: a */
    private b f676a = null;

    /* renamed from: b */
    private a f677b = null;

    /* renamed from: GeneralFunction.l.d$a */
    public interface a {
    }

    /* renamed from: GeneralFunction.l.d$b */
    public interface b {
        /* renamed from: a */
        void mo808a(C0085c c0085c);
    }

    /* renamed from: a */
    public void m810a(C0085c c0085c) {
        if (this.f676a != null) {
            this.f676a.mo808a(c0085c);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C0085c c0085c;
        c0085c = new C0085c();
        switch (intent.getAction()) {
            case "ShareResultCallback":
                c0085c.f675a = intent.getIntExtra("ShareResultCallback", 0);
                m810a(c0085c);
                break;
        }
    }
}
