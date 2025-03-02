package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* renamed from: com.facebook.internal.q */
/* loaded from: classes.dex */
public abstract class AbstractServiceConnectionC1066q implements ServiceConnection {

    /* renamed from: a */
    private final Context f5531a;

    /* renamed from: b */
    private final Handler f5532b;

    /* renamed from: c */
    private a f5533c;

    /* renamed from: d */
    private boolean f5534d;

    /* renamed from: e */
    private Messenger f5535e;

    /* renamed from: f */
    private int f5536f;

    /* renamed from: g */
    private int f5537g;

    /* renamed from: h */
    private final String f5538h;

    /* renamed from: i */
    private final int f5539i;

    /* renamed from: com.facebook.internal.q$a */
    public interface a {
        /* renamed from: a */
        void mo6054a(Bundle bundle);
    }

    /* renamed from: a */
    protected abstract void mo6049a(Bundle bundle);

    public AbstractServiceConnectionC1066q(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f5531a = applicationContext != null ? applicationContext : context;
        this.f5536f = i;
        this.f5537g = i2;
        this.f5538h = str;
        this.f5539i = i3;
        this.f5532b = new Handler() { // from class: com.facebook.internal.q.1
            AnonymousClass1() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AbstractServiceConnectionC1066q.this.m6050a(message);
            }
        };
    }

    /* renamed from: com.facebook.internal.q$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AbstractServiceConnectionC1066q.this.m6050a(message);
        }
    }

    /* renamed from: a */
    public void m6051a(a aVar) {
        this.f5533c = aVar;
    }

    /* renamed from: a */
    public boolean m6052a() {
        Intent m6016a;
        if (this.f5534d || C1065p.m6026b(this.f5539i) == -1 || (m6016a = C1065p.m6016a(this.f5531a)) == null) {
            return false;
        }
        this.f5534d = true;
        this.f5531a.bindService(m6016a, this, 1);
        return true;
    }

    /* renamed from: b */
    public void m6053b() {
        this.f5534d = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f5535e = new Messenger(iBinder);
        m6048c();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f5535e = null;
        try {
            this.f5531a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m6047b(null);
    }

    /* renamed from: c */
    private void m6048c() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f5538h);
        mo6049a(bundle);
        Message obtain = Message.obtain((Handler) null, this.f5536f);
        obtain.arg1 = this.f5539i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f5532b);
        try {
            this.f5535e.send(obtain);
        } catch (RemoteException e) {
            m6047b(null);
        }
    }

    /* renamed from: a */
    protected void m6050a(Message message) {
        if (message.what == this.f5537g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                m6047b(null);
            } else {
                m6047b(data);
            }
            try {
                this.f5531a.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: b */
    private void m6047b(Bundle bundle) {
        if (this.f5534d) {
            this.f5534d = false;
            a aVar = this.f5533c;
            if (aVar != null) {
                aVar.mo6054a(bundle);
            }
        }
    }
}
