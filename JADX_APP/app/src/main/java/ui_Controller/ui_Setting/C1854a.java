package ui_Controller.ui_Setting;

import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import com.google.api.client.http.HttpStatusCodes;
import com.huawei.cvIntl60.R;
import java.io.IOException;
import p026a.p027a.p028a.C0113c;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1669k;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;
import ui_Controller.ui_Liveview.UI_LiveViewController;

/* renamed from: ui_Controller.ui_Setting.a */
/* loaded from: classes.dex */
public class C1854a {

    /* renamed from: a */
    private UI_SettingMenuController f8775a;

    /* renamed from: a */
    private void m7938a(String str, int i) {
        C0052d.m465a("UI_SettingMenuHandler", str, i);
    }

    public C1854a(UI_SettingMenuController uI_SettingMenuController) {
        this.f8775a = null;
        this.f8775a = uI_SettingMenuController;
    }

    /* renamed from: a */
    public void m7940a(Message message) {
        int i = message.what;
        switch (this.f8775a.f8686c.m7974a()) {
            case 2064:
                m7941b(message);
                break;
        }
    }

    /* renamed from: b */
    public void m7941b(Message message) {
        int i;
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8448:
                if (!this.f8775a.f8686c.f8782c.f7648f) {
                    this.f8775a.mo408a(8448, 50L);
                    break;
                } else {
                    this.f8775a.f8686c.m7978a(256, this.f8775a, new Intent(this.f8775a, (Class<?>) UI_LiveViewController.class));
                    this.f8775a.f8686c.m7977a(0, (ActivityC0044a) null);
                    this.f8775a.f8686c.m7988b(268435455L);
                    break;
                }
            case 8449:
                this.f8775a.f8686c.m7979a(this.f8775a);
                this.f8775a.f8686c.m7977a(0, (ActivityC0044a) null);
                this.f8775a.f8686c.m7988b(268435455L);
                break;
            case 8452:
                this.f8775a.f8686c.m7978a(1024, this.f8775a, new Intent(this.f8775a, (Class<?>) UI_PhoneGalleryController.class));
                this.f8775a.f8686c.m7977a(0, (ActivityC0044a) null);
                this.f8775a.f8686c.m7988b(268435455L);
                break;
            case 8468:
                try {
                    this.f8775a.startActivity(new Intent("android.settings.SETTINGS"));
                    break;
                } catch (ActivityNotFoundException e) {
                    m7938a("Intent settings fail", 3);
                    return;
                }
            case 8752:
                this.f8775a.f8686c.f8782c.f7650h.f7730c = HttpStatusCodes.STATUS_CODE_FOUND;
                m7938a("UI_SettingControl.GetCaptureType(): " + C0088a.m860q(), 3);
                this.f8775a.f8686c.m7978a(256, this.f8775a, (Intent) null);
                this.f8775a.mo408a(8715, 0L);
                break;
            case 9216:
                this.f8775a.m7906i();
                break;
            case 9220:
                this.f8775a.f8690g = false;
                this.f8775a.m7896a(true, this.f8775a.getResources().getString(R.string.reset_all_busy_string));
                this.f8775a.m7908k();
                SharedPreferences.Editor m887b = C0090a.m887b(this.f8775a.f8686c);
                m887b.putInt("currentMode", 0).apply();
                m887b.putInt("pipMode", 0).apply();
                this.f8775a.m7907j();
                this.f8775a.m7899c();
                this.f8775a.m7901d().m7919b();
                this.f8775a.f8686c.m7976a(9246, 500L);
                break;
            case 9234:
                C0088a.m832c(true);
                this.f8775a.mo408a(8452, 0L);
                break;
            case 9237:
                C0091o.m899b(this.f8775a);
                C0091o.m892a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.access_permission), this.f8775a.getResources().getString(R.string.access_permission_please_select), new String[]{this.f8775a.getResources().getString(R.string.dialog_option_cancel), this.f8775a.getResources().getString(R.string.dialog_option_continue)}, new int[]{9240, 9238});
                break;
            case 9238:
                this.f8775a.m7911n();
                break;
            case 9240:
                C0091o.m899b(this.f8775a);
                C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.access_permission), this.f8775a.getResources().getString(R.string.access_permission_reset), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8775a.f8687d.f7586T = 0;
                this.f8775a.f8687d.f7587U = 0;
                this.f8775a.m7906i();
                break;
            case 9242:
                this.f8775a.m7892a(this.f8775a.m7909l(), C0090a.m886a(this.f8775a.f8686c).getInt("hotaApkSize", 0));
                break;
            case 9243:
                m7937a();
                this.f8775a.m7895a(false);
                this.f8775a.f8686c.f8782c.f7654l.f7616q = false;
                C0091o.m899b(this.f8775a);
                C0091o.m892a((Context) this.f8775a, true, true, this.f8775a.getResources().getString(R.string.version_update_update_now_title), this.f8775a.getResources().getString(R.string.version_update_update_message), new String[]{this.f8775a.getResources().getString(R.string.dialog_option_cancel), this.f8775a.getResources().getString(R.string.dialog_option_ok)}, new int[]{12039, 9245});
                break;
            case 9246:
                this.f8775a.m7896a(false, "");
                break;
            case 9247:
                C0091o.m899b(this.f8775a);
                C0091o.m892a((Context) this.f8775a, true, true, this.f8775a.getResources().getString(R.string.unable_to_connect), this.f8775a.getResources().getString(R.string.unable_to_connect_message), new String[]{this.f8775a.getResources().getString(R.string.dialog_option_cancel), this.f8775a.getResources().getString(R.string.dialog_option_settings)}, new int[]{12039, 8468});
                break;
            case 9252:
                m7937a();
                this.f8775a.m7895a(false);
                this.f8775a.f8686c.f8782c.f7654l.f7616q = false;
                this.f8775a.m407a(9247);
                break;
            case 9254:
                C0091o.m892a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.application_update_opimization_title), this.f8775a.getResources().getString(R.string.application_update_opimization) + "\n" + C0090a.m886a(this.f8775a.f8686c).getString("hotaOptimization", "") + "\n", new String[]{this.f8775a.getResources().getString(R.string.dialog_option_later), this.f8775a.getResources().getString(R.string.dialog_option_update)}, new int[]{9249, 9250});
                break;
            case 9257:
                m7939b();
                if (this.f8775a.f8686c.f8783d.m1264b()) {
                    this.f8775a.f8687d.f7619t = false;
                    this.f8775a.m7914q();
                    this.f8775a.m7896a(true, this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n0%");
                    this.f8775a.m412b(20481);
                    break;
                }
                break;
            case 9258:
                this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                this.f8775a.m7893a(this.f8775a.f8686c.f8782c.f7650h.f7708af);
                this.f8775a.m7896a(false, "");
                C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.camera_update_for_update_failed), this.f8775a.getResources().getString(R.string.camera_update_fail), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                m7937a();
                break;
            case 9259:
                m7938a("Start send FW, lCurrentDataPartId = " + this.f8775a.f8686c.f8782c.f7650h.f7713ak, 1);
                if (this.f8775a.f8686c.f8782c.f7650h.f7713ak > 1) {
                    if (this.f8775a.f8686c.m8008m()) {
                        m7938a("Already start sending FW, ignore start sending msg", 0);
                        break;
                    } else {
                        this.f8775a.m407a(9258);
                        break;
                    }
                } else {
                    this.f8775a.m7894a(this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n5%");
                    this.f8775a.f8686c.f8782c.f7650h.f7711ai = 0;
                    this.f8775a.f8686c.f8783d.m1261a(new C0121a(18456));
                    break;
                }
            case 9260:
                byte[] bArr = new byte[this.f8775a.f8686c.f8782c.f7650h.f7710ah];
                if (this.f8775a.f8686c.f8782c.f7650h.f7713ak == 0) {
                    m7938a("Send FW interrupted!", 0);
                    break;
                } else {
                    m7938a("filesize (" + this.f8775a.f8686c.f8782c.f7650h.f7709ag + "), SendDataSize (" + this.f8775a.f8686c.f8782c.f7650h.f7711ai + ")", 0);
                    if (this.f8775a.f8686c.f8782c.f7650h.f7709ag <= this.f8775a.f8686c.f8782c.f7650h.f7711ai) {
                        this.f8775a.m7894a(this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n85%");
                        if (this.f8775a.f8686c.f8782c.f7654l.f7620u) {
                            this.f8775a.m412b(20509);
                            this.f8775a.m412b(20503);
                            break;
                        } else {
                            this.f8775a.m412b(20485);
                            break;
                        }
                    } else {
                        if (this.f8775a.f8686c.f8782c.f7650h.f7709ag - this.f8775a.f8686c.f8782c.f7650h.f7711ai >= this.f8775a.f8686c.f8782c.f7650h.f7710ah) {
                            i = this.f8775a.f8686c.f8782c.f7650h.f7710ah;
                        } else {
                            i = this.f8775a.f8686c.f8782c.f7650h.f7709ag - this.f8775a.f8686c.f8782c.f7650h.f7711ai;
                        }
                        try {
                            this.f8775a.f8686c.f8782c.f7650h.f7708af.read(bArr, 0, i);
                        } catch (IOException e2) {
                            this.f8775a.m407a(9258);
                            e2.printStackTrace();
                        }
                        this.f8775a.f8686c.f8782c.f7650h.f7711ai += i;
                        m7938a("fileSize " + this.f8775a.f8686c.f8782c.f7650h.f7709ag + " lCurrentSendDataSize " + this.f8775a.f8686c.f8782c.f7650h.f7711ai, 4);
                        C0113c c0113c = new C0113c();
                        c0113c.f871f = bArr;
                        c0113c.f870e = this.f8775a.f8686c.f8782c.f7650h.f7712aj;
                        C1669k c1669k = this.f8775a.f8686c.f8782c.f7650h;
                        int i2 = c1669k.f7713ak;
                        c1669k.f7713ak = i2 + 1;
                        c0113c.f867b = i2;
                        c0113c.f869d = this.f8775a.f8686c.f8782c.f7650h.f7709ag;
                        c0113c.f868c = i;
                        c0113c.f866a = this.f8775a.f8686c.f8782c.f7650h.f7714al;
                        m7938a("Send FW Data - TotalPart: " + c0113c.f870e + ", PartID: " + c0113c.f867b + ", TotalSize: " + c0113c.f869d + ", TransferSize: " + c0113c.f868c, 0);
                        this.f8775a.m7894a(this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n" + Integer.toString(((c0113c.f867b * 80) / c0113c.f870e) + 5) + "%");
                        C0121a c0121a2 = new C0121a(18528);
                        c0121a2.m1202a("FWImage", new C0121a.a(c0113c));
                        this.f8775a.f8686c.m7995c(c0121a2);
                        break;
                    }
                }
            case 9261:
                if (this.f8775a.f8686c.f8782c.f7650h.f7713ak != 0) {
                    this.f8775a.m7894a(this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n" + Integer.toString((this.f8775a.f8686c.f8782c.f7650h.f7713ak - this.f8775a.f8686c.f8782c.f7650h.f7712aj) + 85) + "%");
                    break;
                }
                break;
            case 9262:
                this.f8775a.f8686c.m7995c(new C0121a(18457));
                this.f8775a.m7893a(this.f8775a.f8686c.f8782c.f7650h.f7708af);
                break;
            case 9263:
                this.f8775a.m7896a(false, "");
                C0091o.m891a((Context) this.f8775a, true, true, this.f8775a.getResources().getString(R.string.camera_update_complete_title), this.f8775a.getResources().getString(R.string.camera_update_complete), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039, true);
                break;
            case 12032:
                Process.killProcess(Process.myPid());
                break;
            case 12033:
                if (this.f8775a.getIntent().getBooleanExtra("CaptureSetting", false)) {
                    this.f8775a.f8687d.f7590X = true;
                } else {
                    this.f8775a.f8687d.f7590X = false;
                }
                this.f8775a.f8686c.m7994c(268435455L);
                break;
            case 12034:
                if (this.f8775a.f8686c.m8011p() && this.f8775a.f8686c.f8782c.f7646d) {
                    this.f8775a.f8686c.m8004i();
                    this.f8775a.f8686c.f8782c.f7646d = false;
                    break;
                } else if (this.f8775a.f8686c.f8783d.m1264b()) {
                    if (this.f8775a.f8686c.f8782c.f7650h.f7713ak != 0 && !this.f8775a.f8687d.f7619t) {
                        this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                        this.f8775a.m407a(9257);
                    }
                    this.f8775a.f8686c.m7995c(new C0121a(18444));
                    break;
                }
                break;
            case 12035:
                if (this.f8775a.f8686c.f8783d.m1264b()) {
                    this.f8775a.f8686c.m7995c(new C0121a(18445));
                    if (!this.f8775a.f8687d.f7619t) {
                        this.f8775a.f8686c.m7995c(new C0121a(18443));
                    }
                }
                m7937a();
                break;
            case 12039:
                this.f8775a.f8686c.f8782c.f7649g.f7629a = 0;
                if (this.f8775a.f8690g) {
                    this.f8775a.f8690g = false;
                    break;
                }
                break;
            case 12040:
                C0091o.m899b(this.f8775a);
                C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.store_location), "Please select SD card and DCIM folder", this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                break;
            case 12042:
                C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.warning), this.f8775a.getResources().getString(R.string.permission_always_deny_msg), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 12043:
                if (!this.f8775a.f8686c.f8782c.f7654l.f7616q) {
                    this.f8775a.f8686c.m7978a(c0121a.m1207b("AppMode"), this.f8775a, new Intent(this.f8775a, (Class<?>) c0121a.m1210c()));
                    this.f8775a.f8686c.m7977a(0, (ActivityC0044a) null);
                    this.f8775a.f8686c.m7988b(268435455L);
                    break;
                }
                break;
            case 12046:
                this.f8775a.m7904g();
                break;
            case 12047:
            case 12048:
                this.f8775a.f8687d.f7597ad = false;
                break;
            case 12049:
                this.f8775a.m7903f();
                break;
            case 18435:
                m7938a("MSG_REMOTE_USB_CORE_DETACH", 0);
                this.f8775a.m7898b(false);
                this.f8775a.f8687d.f7596ac = this.f8775a.f8686c.f8783d.m1264b();
                this.f8775a.f8687d.f7619t = false;
                this.f8775a.m7896a(false, "");
                this.f8775a.m7910m();
                this.f8775a.m7902e();
                if (this.f8775a.f8690g) {
                    C0091o.m899b(this.f8775a);
                    this.f8775a.f8690g = false;
                }
                m7937a();
                break;
            case 18436:
                if (!this.f8775a.f8686c.f8782c.f7654l.f7616q) {
                    this.f8775a.f8686c.f8782c.f7647e = false;
                    if (this.f8775a.f8686c.m8011p()) {
                        this.f8775a.f8686c.m8004i();
                        this.f8775a.f8686c.f8782c.f7646d = true;
                        break;
                    }
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7938a("has permission, need to switch to live view", 1);
                    this.f8775a.f8686c.f8782c.f7646d = false;
                    this.f8775a.f8686c.m7976a(8448, 0L);
                    break;
                }
                break;
            case 18518:
            case 18523:
                this.f8775a.m407a(9262);
                break;
            case 18528:
                if (c0121a.m1207b("result") == 0) {
                    this.f8775a.m407a(9260);
                    break;
                } else if (c0121a.m1207b("result") != 5) {
                    m7938a("*****Send FW data ERROR*****", 0);
                    this.f8775a.m407a(9258);
                    break;
                }
                break;
            case 18551:
                if (c0121a.m1207b("result") == 0) {
                    this.f8775a.m7897b(C1658c.f7468p + "FPUPDATE.DAT");
                    this.f8775a.m407a(9260);
                    break;
                } else if (c0121a.m1207b("result") == 1) {
                    this.f8775a.f8686c.m7996c(new C0121a(18551), 5L);
                    break;
                } else if (c0121a.m1207b("result") != 5) {
                    this.f8775a.m7896a(false, "");
                    this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                    C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.camera_update_for_newer_program), this.f8775a.getResources().getString(R.string.camera_update_failed_fw_upgrade_mode), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                    m7937a();
                    break;
                }
                break;
            case 18552:
                if (c0121a.m1207b("result") == 0) {
                    this.f8775a.f8687d.f7619t = true;
                    if (!this.f8775a.f8686c.f8782c.f7654l.f7620u) {
                        this.f8775a.m412b(20503);
                    }
                    this.f8775a.f8686c.m7995c(new C0121a(18458));
                    break;
                } else if (c0121a.m1207b("result") == 1) {
                    this.f8775a.f8686c.m7996c(new C0121a(18552), 100L);
                    break;
                } else if (c0121a.m1207b("result") != 5) {
                    this.f8775a.m7896a(false, "");
                    this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                    C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.camera_update_for_newer_program), this.f8775a.getResources().getString(R.string.camera_update_failed_error_status) + c0121a.m1207b("result"), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                    m7937a();
                    break;
                }
                break;
            case 18553:
                if (c0121a.m1207b("result") == 0) {
                    this.f8775a.m7894a(this.f8775a.getResources().getString(R.string.camera_update_progress) + "\n\n100%");
                    this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                    this.f8775a.mo408a(9263, 800L);
                    m7937a();
                    break;
                } else if (c0121a.m1207b("result") == 1) {
                    this.f8775a.f8686c.m7996c(new C0121a(18553), 100L);
                    break;
                } else if (c0121a.m1207b("result") != 5) {
                    m7938a("FW update fail!", 0);
                    this.f8775a.f8686c.f8782c.f7650h.f7713ak = 0;
                    this.f8775a.m7896a(false, "");
                    C0091o.m889a((Context) this.f8775a, true, false, this.f8775a.getResources().getString(R.string.camera_update_for_newer_program), this.f8775a.getResources().getString(R.string.camera_update_failed_reconnect_camera), this.f8775a.getResources().getString(R.string.dialog_option_ok), 12039);
                    m7937a();
                    break;
                }
                break;
            case 32768:
                if (this.f8775a.f8687d.f7590X) {
                    this.f8775a.f8686c.m7976a(8448, 0L);
                    break;
                } else {
                    this.f8775a.f8686c.m7976a(8460, 0L);
                    break;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m7942c(android.os.Message r14) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ui_Controller.ui_Setting.C1854a.m7942c(android.os.Message):void");
    }

    /* renamed from: a */
    private void m7937a() {
        if (this.f8775a.f8689f != null) {
            this.f8775a.f8689f.release();
            this.f8775a.f8689f = null;
        }
    }

    /* renamed from: b */
    private void m7939b() {
        PowerManager powerManager = (PowerManager) this.f8775a.getSystemService("power");
        if (this.f8775a.f8689f != null) {
            m7937a();
        }
        this.f8775a.f8689f = powerManager.newWakeLock(536870922, "Lexiconda");
        this.f8775a.f8689f.acquire();
    }
}
