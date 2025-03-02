package ui_Controller.ui_Entry;

import GeneralFunction.C0052d;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p017n.C0090a;
import android.content.Intent;
import android.os.Bundle;
import p026a.p032c.C0121a;
import ui_Controller.ui_LaunchScreen.UI_LaunchScreenController;
import ui_Controller.ui_Liveview.UI_LiveViewController;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class ui_EntryController extends ActivityC0044a {

    /* renamed from: b */
    private UI_ModeMain f7785b;

    /* renamed from: a */
    private void m7101a(String str, int i) {
        C0052d.m465a("ui_EntryController", str, i);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7785b = (UI_ModeMain) getApplication();
        this.f7785b.m8016v();
        m7101a("onCreate:" + this.f7785b.m8009n(), 2);
        if (!C0090a.m886a(this.f7785b).getBoolean("haveUserInstruction", false)) {
            if (!this.f7785b.m8009n()) {
                this.f7785b.m8012q();
                m7101a("Go to launch screen", 2);
                this.f7785b.m7978a(4096, this, new Intent(this, (Class<?>) UI_LaunchScreenController.class));
                this.f7785b.m7977a(0, (ActivityC0044a) null);
                return;
            }
            finish();
            return;
        }
        this.f7785b.m8005j();
        if (!this.f7785b.m8009n()) {
            this.f7785b.m8012q();
            this.f7785b.m7978a(4096, this, new Intent(this, (Class<?>) UI_LaunchScreenController.class));
            this.f7785b.m7977a(0, (ActivityC0044a) null);
            return;
        }
        C0121a c0121a = new C0121a(12043);
        c0121a.m1199a(UI_LiveViewController.class);
        c0121a.m1200a("AppMode", 256);
        this.f7785b.m7980a(c0121a);
        finish();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m7101a("onNewIntent should not happen!!", 0);
    }
}
