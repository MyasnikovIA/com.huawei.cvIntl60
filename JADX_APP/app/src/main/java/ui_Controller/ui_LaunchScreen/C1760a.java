package ui_Controller.ui_LaunchScreen;

import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p008g.C0070b;
import GeneralFunction.p017n.C0090a;
import android.content.Intent;
import android.os.Message;
import android.os.Process;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.util.Calendar;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;
import ui_Controller.ui_Liveview.UI_LiveViewController;

/* renamed from: ui_Controller.ui_LaunchScreen.a */
/* loaded from: classes.dex */
public class C1760a {

    /* renamed from: a */
    private UI_LaunchScreenController f8323a;

    /* renamed from: a */
    private void m7572a(String str, int i) {
        C0052d.m465a("UI_LaunchScreenHandler", str, i);
    }

    public C1760a(UI_LaunchScreenController uI_LaunchScreenController) {
        this.f8323a = null;
        this.f8323a = uI_LaunchScreenController;
    }

    /* renamed from: a */
    public void m7573a(Message message) {
        int i = message.what;
        switch (this.f8323a.f8291b.m7974a()) {
            case 3088:
                m7574b(message);
                break;
            case 3104:
                m7575c(message);
                break;
        }
    }

    /* renamed from: b */
    public void m7574b(Message message) {
        new C0121a(message);
        switch (message.what) {
            case 8448:
                if (!this.f8323a.m7562h()) {
                    this.f8323a.mo408a(8448, 50L);
                }
                this.f8323a.f8291b.m8010o();
                this.f8323a.f8291b.m7978a(256, this.f8323a, new Intent(this.f8323a, (Class<?>) UI_LiveViewController.class));
                return;
            case 8452:
                if (!this.f8323a.m7562h()) {
                    this.f8323a.mo408a(8452, 50L);
                }
                this.f8323a.f8291b.m8010o();
                this.f8323a.f8291b.m7978a(1024, this.f8323a, new Intent(this.f8323a, (Class<?>) UI_PhoneGalleryController.class));
                return;
            case 10496:
                this.f8323a.m7565k();
                return;
            case 10497:
                m7572a("MSG_UI_LAUNCH_SCREEN_USB_INIT_DONE. Start checkNeedShowInstruction", 1);
                this.f8323a.f8291b.m8014t();
                break;
            case 10498:
                break;
            case 10499:
                this.f8323a.m7566l();
                return;
            case 10500:
                C0091o.m899b(this.f8323a);
                this.f8323a.m7557c(true);
                return;
            case 10501:
                C0090a.m887b(this.f8323a.f8291b);
                if (this.f8323a.m7564j()) {
                    this.f8323a.f8291b.m7975a(3104);
                    this.f8323a.m7560f();
                    return;
                } else {
                    this.f8323a.m7569o();
                    this.f8323a.m7568n();
                    return;
                }
            case 10505:
                if (!C0090a.m886a(this.f8323a.f8291b).getBoolean("bPermissionAgreementChecked", false)) {
                    this.f8323a.m7571q();
                    return;
                } else {
                    this.f8323a.m407a(10496);
                    return;
                }
            case 10512:
                C0090a.m887b(this.f8323a.f8291b).putBoolean("bPermissionAgreementChecked", true).apply();
                this.f8323a.m407a(10496);
                return;
            case 12032:
                Process.killProcess(Process.myPid());
                this.f8323a.finish();
                return;
            case 12033:
                this.f8323a.m7556c();
                this.f8323a.m7559e();
                this.f8323a.m7558d();
                this.f8323a.m7570p();
                this.f8323a.m407a(10505);
                this.f8323a.m407a(10499);
                return;
            case 12034:
            case 12035:
            case 12036:
            case 12037:
            case 12038:
            default:
                return;
        }
        if (this.f8323a.f8291b.m8015u()) {
            C0090a.m886a(this.f8323a.f8291b);
            if (this.f8323a.m7564j()) {
                this.f8323a.f8291b.m7975a(3104);
                this.f8323a.m7560f();
                return;
            } else {
                this.f8323a.m7569o();
                this.f8323a.m7568n();
                return;
            }
        }
        this.f8323a.m407a(10498);
    }

    /* renamed from: c */
    public void m7575c(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 10502:
                int m1207b = c0121a.m1207b("360PlayerStatus");
                m7572a("MSG_UI_LAUNCH_SCREEN_360_PLAYER_STATUS_UPDATE:" + m1207b, 2);
                if (this.f8323a.f8293d.getVisibility() != 4) {
                    switch (m1207b) {
                        case 1:
                            if (this.f8323a.f8294e != null) {
                                this.f8323a.m7560f();
                                break;
                            }
                            break;
                        case 2:
                            this.f8323a.m7554a(true);
                            this.f8323a.m7555b(false);
                            break;
                        case 3:
                            this.f8323a.m7563i();
                            this.f8323a.m7555b(true);
                            break;
                    }
                }
                break;
            case 10503:
                C0090a.m887b(this.f8323a.f8291b).putLong("previousTimeShowLaunchScreenVideo", Calendar.getInstance().get(6)).apply();
                this.f8323a.f8291b.m7975a(3088);
                this.f8323a.m7569o();
                this.f8323a.m7568n();
                break;
        }
    }

    /* renamed from: d */
    public void m7576d(Message message) {
        switch (message.what) {
            case 20482:
                new C0070b().m651a(this.f8323a.getResources().openRawResource(R.raw.samplegallery), C1658c.f7469q);
                C0090a.m887b(this.f8323a.f8291b).putBoolean("haveUnzipSample", true).apply();
                C0069a.m641a(this.f8323a, new File(C1658c.f7465m).getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7466n).getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7467o).getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7455c + "CV60_Photo_1.jpg").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7455c + "CV60_Photo_2.jpg").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7455c + "CV60_Photo_3.jpg").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7455c + "CV60_Video.mp4").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7456d + "CV60_Edit_1.jpg").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7456d + "CV60_Edit_2.jpg").getAbsolutePath());
                C0069a.m641a(this.f8323a, new File(C1658c.f7456d + "CV60_Edit_3.jpg").getAbsolutePath());
                break;
            case 20506:
                this.f8323a.f8291b.m8005j();
                while (!this.f8323a.f8291b.m8006k()) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                this.f8323a.m407a(10497);
                break;
        }
    }
}
