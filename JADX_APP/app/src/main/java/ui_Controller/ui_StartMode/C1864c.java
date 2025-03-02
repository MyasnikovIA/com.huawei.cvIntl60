package ui_Controller.ui_StartMode;

import GeneralFunction.C0052d;
import GeneralFunction.p001a.ActivityC0044a;
import android.content.Intent;
import android.os.Message;
import p026a.p027a.p028a.C0114d;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1657b;

/* renamed from: ui_Controller.ui_StartMode.c */
/* loaded from: classes.dex */
public class C1864c {

    /* renamed from: a */
    private UI_ModeMain f8818a;

    /* renamed from: b */
    private C1862a f8819b;

    /* renamed from: a */
    private void m8021a(String str, int i) {
        C0052d.m465a("UI_ModeConrtoller", str, i);
    }

    public C1864c(UI_ModeMain uI_ModeMain) {
        this.f8818a = null;
        this.f8819b = null;
        this.f8818a = uI_ModeMain;
        this.f8819b = new C1862a();
    }

    /* renamed from: a */
    public boolean m8024a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 18176:
                if (!C1657b.m7075a(this.f8818a.f8782c.f7645c)) {
                    ((C0114d) c0121a.m1213f("LiveViewFrame").m1214a()).f872a.m457d();
                    break;
                }
                break;
        }
        return false;
    }

    /* renamed from: a */
    public void m8023a(int i, ActivityC0044a activityC0044a, Intent intent) {
        m8021a("ChangeMode lAppMode:" + i + " sModeControlData.lStatus:" + this.f8819b.f8813a, 3);
        this.f8819b.f8814b = i;
        this.f8819b.f8815c = activityC0044a;
        this.f8819b.f8816d = intent;
        m8022a();
    }

    /* renamed from: a */
    private boolean m8022a() {
        m8021a("ChangeAppMode:" + this.f8819b.f8816d, 3);
        if (this.f8819b.f8816d != null) {
            this.f8819b.f8815c.startActivity(this.f8819b.f8816d);
            this.f8819b.f8815c.finish();
            this.f8819b.f8815c = null;
            this.f8819b.f8816d = null;
            return true;
        }
        return false;
    }
}
