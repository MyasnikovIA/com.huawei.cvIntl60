package ui_Controller.ui_StartMode;

import GeneralFunction.C0052d;
import android.os.Message;
import ui_Controller.p109a.C1657b;

/* renamed from: ui_Controller.ui_StartMode.b */
/* loaded from: classes.dex */
public class C1863b {

    /* renamed from: a */
    private UI_ModeMain f8817a;

    /* renamed from: a */
    private void m8019a(String str, int i) {
        C0052d.m465a("UI_MainHandler", str, i);
    }

    public C1863b(UI_ModeMain uI_ModeMain) {
        this.f8817a = null;
        this.f8817a = uI_ModeMain;
    }

    /* renamed from: a */
    public boolean m8020a(Message message) {
        switch (message.what) {
            case 12034:
            case 12036:
            default:
                return false;
            case 61441:
                if (C1657b.m7075a(this.f8817a.f8782c.f7645c)) {
                    m8019a("Liveview throughput:" + ((this.f8817a.f8782c.f7650h.f7673R * 8) / 1024) + "Kbits/s", 3);
                }
                this.f8817a.f8782c.f7650h.f7673R = 0;
                return true;
        }
    }
}
