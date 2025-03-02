package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0058b;
import GeneralFunction.p005e.C0061e;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Message;
import android.os.Process;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;
import p026a.p029b.p031b.C0120a;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1659a;
import ui_Controller.p110b.C1668j;
import ui_Controller.ui_Liveview.UI_LiveViewController;
import ui_Controller.ui_Setting.UI_SettingMenuController;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.c */
/* loaded from: classes.dex */
public class C1747c {

    /* renamed from: a */
    private UI_PhoneGalleryController f8271a;

    /* renamed from: b */
    private C1749e f8272b;

    /* renamed from: a */
    private void m7510a(String str, int i) {
        C0052d.m465a("UI_PhoneGalleryHandler", str, i);
    }

    public C1747c(UI_PhoneGalleryController uI_PhoneGalleryController) {
        this.f8271a = null;
        this.f8272b = null;
        this.f8271a = uI_PhoneGalleryController;
        this.f8272b = new C1749e(uI_PhoneGalleryController);
    }

    /* renamed from: a */
    public void m7513a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8448:
                if (!this.f8271a.f8122c.f8782c.f7648f) {
                    this.f8271a.mo408a(8448, 50L);
                    break;
                } else {
                    m7512c();
                    this.f8271a.m7359af();
                    this.f8271a.f8122c.f8782c.f7648f = false;
                    this.f8271a.f8122c.m7978a(256, this.f8271a, new Intent(this.f8271a, (Class<?>) UI_LiveViewController.class));
                    this.f8271a.f8122c.m7988b(268435455L);
                    this.f8271a.f8159e.f7542d = 1;
                    break;
                }
            case 8454:
                m7512c();
                this.f8271a.f8122c.m7978a(2048, this.f8271a, new Intent(this.f8271a, (Class<?>) UI_SettingMenuController.class));
                this.f8271a.f8122c.m7977a(0, (ActivityC0044a) null);
                this.f8271a.f8122c.m7988b(268435455L);
                this.f8271a.f8159e.f7542d = 1;
                break;
            case 8965:
                this.f8271a.m7404g(true);
                this.f8271a.f8159e.f7557s = c0121a.m1207b("SelectIndex");
                m7509a();
                break;
            case 8966:
                if (!this.f8271a.m7356ac() && this.f8271a.f8159e.f7542d != 3 && this.f8271a.f8159e.f7540b.m518e() > 0) {
                    m7510a("Leaving single status:" + this.f8271a.m7361ah() + " " + this.f8271a.f8159e.f7542d + " " + this.f8271a.f8159e.f7540b.m518e(), 1);
                    this.f8271a.mo408a(8966, 50L);
                    break;
                } else {
                    this.f8271a.m7427o(false);
                    this.f8271a.m7297D(false);
                    this.f8271a.m7295C(false);
                    this.f8271a.f8159e.f7514O = 8;
                    this.f8271a.m7449x(true);
                    this.f8271a.m7372as();
                    this.f8271a.m7354aa();
                    this.f8271a.f8122c.m7988b(268435455L);
                    this.f8271a.mo408a(9146, 0L);
                    break;
                }
                break;
            case 8969:
                C0091o.m892a((Context) this.f8271a, true, false, this.f8271a.getResources().getString(R.string.share_via), this.f8271a.getResources().getString(R.string.share_sns_line_dialog), new String[]{this.f8271a.getResources().getString(R.string.share_sns_line_confirm), this.f8271a.getResources().getString(R.string.dialog_option_close)}, new int[]{8970, 0});
                break;
            case 8970:
                this.f8271a.startActivity(this.f8271a.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                if (this.f8271a.f8159e.f7544f > 0) {
                    this.f8271a.m407a(9054);
                    this.f8271a.f8159e.f7548j.clear();
                    break;
                }
                break;
            case 8975:
                if (this.f8271a.f8159e.f7500A) {
                    this.f8271a.m7327a(this.f8271a.f8159e.f7534ah, this.f8271a.f8159e.f7539am);
                    break;
                } else if (this.f8271a.f8159e.f7542d == 3) {
                    this.f8271a.m7327a(this.f8271a.f8159e.f7534ah, this.f8271a.f8159e.f7539am);
                    break;
                } else {
                    this.f8271a.m7380b(this.f8271a.f8159e.f7534ah, this.f8271a.f8159e.f7539am);
                    break;
                }
            case 9146:
                if (this.f8271a.m7355ab() || this.f8271a.f8159e.f7542d == 3) {
                    m7511b();
                    break;
                } else {
                    this.f8271a.mo408a(9146, 50L);
                    break;
                }
                break;
            case 9152:
                if (this.f8271a.m7355ab()) {
                    this.f8271a.mo408a(8448, 50L);
                    break;
                } else {
                    this.f8271a.mo408a(9152, 50L);
                    break;
                }
            case 12033:
                C0088a.m870v();
                this.f8271a.f8159e.f7544f = 0;
                this.f8271a.m7395e();
                if (!this.f8271a.f8122c.m8015u()) {
                    m7510a("IsDatabaseCreateDone false", 4);
                    this.f8271a.f8122c.m7980a(new C0121a(9038));
                    break;
                } else if (c0121a.m1207b("mode") == 1056) {
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    C0121a c0121a2 = new C0121a(8965);
                    if (this.f8271a.f8159e.f7556r) {
                        c0121a2.m1200a("SelectIndex", 0);
                    } else if (this.f8271a.f8159e.f7542d == 2) {
                        this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                        this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                        c0121a2.m1200a("SelectIndex", this.f8271a.f8159e.f7557s);
                    } else {
                        c0121a2.m1200a("SelectIndex", this.f8271a.f8159e.f7557s);
                    }
                    this.f8271a.m7443u();
                    this.f8271a.f8122c.m7980a(c0121a2);
                    this.f8271a.m7408i();
                    this.f8271a.m7399f();
                    break;
                } else if (this.f8271a.f8171q) {
                    this.f8271a.m7443u();
                    this.f8271a.m7410i(false);
                    this.f8271a.m7408i();
                    this.f8271a.m7402g();
                    break;
                } else {
                    m7510a("bEnterExtendSingle false", 4);
                    this.f8271a.f8159e.f7556r = false;
                    C0058b c0058b = this.f8271a.f8158d.f7482f;
                    this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), c0058b);
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), c0058b);
                    this.f8271a.f8159e.f7542d = 1;
                    this.f8271a.m7408i();
                    this.f8271a.m7443u();
                    this.f8271a.f8159e.f7514O = 7;
                    this.f8271a.m7372as();
                    this.f8271a.m7354aa();
                    this.f8271a.f8122c.m7994c(268435455L);
                    this.f8271a.m7402g();
                    break;
                }
            case 12042:
                C0091o.m889a((Context) this.f8271a, true, false, this.f8271a.getResources().getString(R.string.warning), this.f8271a.getResources().getString(R.string.permission_always_deny_msg), this.f8271a.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 12043:
                if (!this.f8271a.f8159e.f7564z) {
                    m7512c();
                    this.f8271a.f8159e.f7514O = 8;
                    this.f8271a.m7354aa();
                    this.f8271a.m7426o();
                    this.f8271a.m407a(9152);
                    break;
                }
                break;
            case 12046:
                this.f8271a.m7340aB();
                break;
            case 12047:
            case 12048:
                this.f8271a.m7389c(false);
                break;
            case 12049:
                if (!C0088a.m867t()) {
                    this.f8271a.m7342aD();
                    break;
                } else {
                    C0088a.m828b(true);
                    break;
                }
            case 12050:
                this.f8271a.startActivity(new Intent("android.settings.SETTINGS"));
                break;
            case 18436:
                if (!this.f8271a.f8159e.f7564z) {
                    this.f8271a.f8122c.f8782c.f7647e = false;
                    if (this.f8271a.f8122c.m8011p()) {
                        this.f8271a.f8122c.m8004i();
                        this.f8271a.f8122c.f8782c.f7646d = true;
                        break;
                    }
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7510a("has permission, need to switch to live view", 1);
                    this.f8271a.f8122c.f8782c.f7646d = false;
                    m7512c();
                    this.f8271a.f8159e.f7514O = 8;
                    this.f8271a.m7354aa();
                    this.f8271a.m7426o();
                    this.f8271a.m407a(9152);
                    break;
                }
                break;
            case 61444:
                this.f8271a.m7390d();
                break;
            default:
                switch (this.f8271a.f8122c.m7974a()) {
                    case 1040:
                        m7514b(message);
                        break;
                    case 1056:
                    case 1057:
                    case 1059:
                    case 1060:
                    case 1061:
                        this.f8272b.m7531a(message);
                        break;
                }
        }
    }

    /* renamed from: b */
    public void m7514b(Message message) {
        int i = 0;
        m7510a("UI_PhoneGalleryMultiMain handleMessage: 0x" + Integer.toHexString(message.what), 3);
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8480:
                m7510a("MSG_UI_MODE_CHANGE_MODE_DONE", 3);
                break;
            case 8968:
                this.f8271a.f8159e.f7548j.clear();
                this.f8271a.f8159e.f7544f = 0;
                this.f8271a.f8159e.f7551m.m7057c(0);
                this.f8271a.f8159e.f7551m.m7056c();
                this.f8271a.m7401f(false);
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 8976:
                if (C0120a.m1197b(this.f8271a) == 2) {
                    C0091o.m892a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.accessing_mobile_network_title), this.f8271a.getResources().getString(R.string.accessing_mobile_network_title_content), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{12039, 8975});
                    break;
                } else {
                    this.f8271a.m407a(8975);
                    break;
                }
            case 8992:
                int i2 = this.f8271a.f8159e.f7543e;
                if (this.f8271a.f8159e.f7549k.size() != 0) {
                    ArrayList<C1659a> arrayList = new ArrayList<>();
                    this.f8271a.f8159e.f7543e = 5;
                    while (true) {
                        int i3 = i;
                        if (i3 < this.f8271a.f8159e.f7549k.size()) {
                            this.f8271a.m7329a(this.f8271a.f8159e.f7549k.get(i3).intValue(), true, 5, 1, arrayList);
                            i = i3 + 1;
                        } else {
                            this.f8271a.f8122c.m7983a(arrayList);
                        }
                    }
                } else if (i2 == 0) {
                }
                this.f8271a.m7435r(true);
                break;
            case 9000:
                m7510a("Press Delete Tab", 4);
                this.f8271a.f8159e.f7544f = 1;
                this.f8271a.f8159e.f7551m.m7057c(1);
                this.f8271a.m7443u();
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9001:
                int m7060e = this.f8271a.f8159e.f7551m.m7060e();
                if (m7060e > 1) {
                    C0091o.m894a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.delete_image_title), this.f8271a.getResources().getString(R.string.delete_more_image_confirm), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9004, 9003}, true, R.color.red);
                    break;
                } else if (m7060e == 1) {
                    C0091o.m894a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.delete_image_title), this.f8271a.getResources().getString(R.string.delete_one_image_confirm), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9004, 9003}, true, R.color.red);
                    break;
                } else {
                    this.f8271a.f8122c.m7994c(268435455L);
                    m7510a("No Select", 4);
                    break;
                }
            case 9002:
                this.f8271a.f8159e.f7544f = 0;
                this.f8271a.f8159e.f7551m.m7057c(0);
                this.f8271a.m7443u();
                this.f8271a.f8159e.f7551m.m7056c();
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9003:
                this.f8271a.f8159e.f7564z = true;
                this.f8271a.m7404g(true);
                this.f8271a.f8159e.f7559u = this.f8271a.m7411j();
                this.f8271a.f8159e.f7549k.clear();
                while (i < this.f8271a.f8159e.f7551m.getCount()) {
                    if (this.f8271a.f8159e.f7551m.m7063f(i)) {
                        this.f8271a.f8159e.f7549k.add(Integer.valueOf(i));
                    }
                    i++;
                }
                m7510a("psDeleteList size " + this.f8271a.f8159e.f7549k.size(), 4);
                if (this.f8271a.f8159e.f7542d == 2) {
                    this.f8271a.f8122c.m7980a(new C0121a(8992));
                    break;
                } else {
                    this.f8271a.f8122c.m7980a(new C0121a(8992));
                    break;
                }
            case 9004:
                m7510a("Delete Cancel", 4);
                this.f8271a.m7404g(false);
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9006:
                m7510a("Press Share Tab", 4);
                this.f8271a.f8122c.m7976a(9007, 0L);
                break;
            case 9007:
                this.f8271a.f8159e.f7544f = 2;
                this.f8271a.f8159e.f7551m.m7057c(2);
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.m7443u();
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9008:
                m7510a("Press Share Confirm", 4);
                this.f8271a.m7438s();
                if (C0120a.m1196a(this.f8271a)) {
                    this.f8271a.m7442t(true);
                } else {
                    C0091o.m892a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.unable_to_connect), this.f8271a.getResources().getString(R.string.unable_to_connect_message), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_settings)}, new int[]{12039, 12050});
                }
                this.f8271a.m7448w(false);
                break;
            case 9009:
                this.f8271a.f8159e.f7544f = 0;
                this.f8271a.f8159e.f7551m.m7057c(0);
                this.f8271a.m7443u();
                this.f8271a.f8159e.f7551m.m7056c();
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9011:
                this.f8271a.m407a(8450);
                break;
            case 9012:
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9015:
                if (this.f8271a.f8158d.f7486j) {
                    this.f8271a.f8158d.f7479c = 1;
                    this.f8271a.f8122c.f8782c.f7653k.f7477a.f7791f = 1;
                    this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                    this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7551m.m7045a();
                    this.f8271a.m7408i();
                    this.f8271a.f8159e.f7551m.m7054b();
                    this.f8271a.f8158d.f7486j = false;
                }
                if (this.f8271a.f8158d.f7479c != 1) {
                    this.f8271a.f8158d.f7485i = this.f8271a.f8158d.m7080a(this.f8271a.f8158d.f7485i);
                    this.f8271a.f8158d.f7479c = 1;
                    this.f8271a.f8122c.f8782c.f7653k.f7477a.f7791f = 1;
                    this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                    this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7551m.m7045a();
                    this.f8271a.m7408i();
                    this.f8271a.f8159e.f7551m.m7054b();
                } else {
                    m7510a("Do not need sort", 4);
                }
                this.f8271a.f8122c.m7994c(268435455L);
                this.f8271a.m7443u();
                this.f8271a.m7398e(true);
                this.f8271a.m7410i(false);
                break;
            case 9016:
                if (this.f8271a.f8158d.f7486j) {
                    this.f8271a.f8158d.f7479c = 2;
                    this.f8271a.f8122c.f8782c.f7653k.f7477a.f7791f = 2;
                    this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                    this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7551m.m7045a();
                    this.f8271a.m7408i();
                    this.f8271a.f8159e.f7551m.m7054b();
                    this.f8271a.f8158d.f7486j = false;
                }
                if (this.f8271a.f8158d.f7479c != 2) {
                    this.f8271a.f8158d.f7485i = this.f8271a.f8158d.m7080a(this.f8271a.f8158d.f7485i);
                    this.f8271a.f8158d.f7479c = 2;
                    this.f8271a.f8122c.f8782c.f7653k.f7477a.f7791f = 2;
                    this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                    this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                    this.f8271a.f8159e.f7551m.m7045a();
                    this.f8271a.m7408i();
                    this.f8271a.f8159e.f7551m.m7054b();
                } else {
                    m7510a("Do not need sort", 4);
                }
                this.f8271a.f8122c.m7994c(268435455L);
                this.f8271a.m7443u();
                break;
            case 9017:
                if (this.f8271a.f8159e.f7551m.m7064g() == 2) {
                    m7510a("Can't Press Select All", 4);
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                } else {
                    this.f8271a.f8159e.f7551m.m7053a(true, true);
                    this.f8271a.m7391d(-1);
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                }
            case 9018:
                if (this.f8271a.f8159e.f7551m.m7064g() == 0) {
                    m7510a("Cant Press Unselect All", 4);
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                } else {
                    this.f8271a.f8159e.f7551m.m7053a(false, true);
                    this.f8271a.m7391d(-1);
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                }
            case 9019:
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9020:
                if (this.f8271a.f8159e.f7551m.m7051a(c0121a.m1207b("header id"), -1L, true, true)) {
                    this.f8271a.m7391d(-1);
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                }
                break;
            case 9038:
                m7510a("MSG_UI_GALLERY_MULTI_WAIT_DATABASE_INIT_DONE", 4);
                if (this.f8271a.f8122c.m8015u()) {
                    m7510a("DatabaseCreateDone", 4);
                    this.f8271a.m7408i();
                    this.f8271a.m7443u();
                    this.f8271a.f8122c.m7994c(268435455L);
                    break;
                } else {
                    this.f8271a.f8122c.m7981a(new C0121a(9038), 20L);
                    break;
                }
            case 9039:
                this.f8271a.f8159e.f7544f = 5;
                this.f8271a.f8159e.f7551m.m7057c(5);
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.m7401f(true);
                this.f8271a.m7435r(false);
                break;
            case 9040:
                this.f8271a.m7396e(this.f8271a.m7411j());
                this.f8271a.f8159e.f7542d = 1;
                this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                this.f8271a.f8159e.f7551m.m7045a();
                this.f8271a.m7408i();
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.f8122c.m7994c(268435455L);
                this.f8271a.m7443u();
                this.f8271a.m7398e(true);
                this.f8271a.m7382b(this.f8271a.f8169o);
                this.f8271a.m7410i(false);
                this.f8271a.m7400f(this.f8271a.f8159e.f7545g);
                break;
            case 9041:
                this.f8271a.m7396e(this.f8271a.m7411j());
                this.f8271a.f8159e.f7542d = 2;
                this.f8271a.m7394d(true);
                this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                this.f8271a.f8159e.f7551m.m7045a();
                this.f8271a.m7408i();
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.f8122c.m7994c(268435455L);
                this.f8271a.m7443u();
                this.f8271a.m7410i(false);
                this.f8271a.m7400f(this.f8271a.f8159e.f7546h);
                break;
            case 9042:
                this.f8271a.m7396e(this.f8271a.m7411j());
                this.f8271a.f8159e.f7542d = 3;
                this.f8271a.m7394d(false);
                this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7484h);
                this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7484h);
                this.f8271a.f8159e.f7551m.m7045a();
                this.f8271a.m7408i();
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.m7443u();
                this.f8271a.m7400f(this.f8271a.f8159e.f7547i);
                break;
            case 9043:
                this.f8271a.f8159e.f7562x = false;
                this.f8271a.m7389c(true);
                this.f8271a.m7382b(true);
                this.f8271a.f8172r = false;
                this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                if (this.f8271a.f8170p && !this.f8271a.f8171q && !this.f8271a.f8172r) {
                    this.f8271a.m7432q(false);
                    this.f8271a.m7404g(false);
                }
                C0088a.m828b(false);
                break;
            case 9044:
                this.f8271a.f8171q = false;
                this.f8271a.f8172r = false;
                this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                if (this.f8271a.f8170p) {
                    this.f8271a.m7402g();
                    if (this.f8271a.m7344aF() != null) {
                        this.f8271a.m7389c(true);
                    }
                    if (!this.f8271a.f8171q && !this.f8271a.f8172r) {
                        this.f8271a.m7432q(false);
                        this.f8271a.m7404g(false);
                        break;
                    }
                }
                break;
            case 9045:
                this.f8271a.f8159e.f7544f = 6;
                this.f8271a.m7427o(true);
                this.f8271a.m412b(20486);
                break;
            case 9046:
                this.f8271a.f8159e.f7544f = 6;
                this.f8271a.m7427o(true);
                this.f8271a.m412b(20489);
                break;
            case 9047:
                this.f8271a.f8159e.f7544f = 0;
                this.f8271a.m7448w(false);
                this.f8271a.f8159e.f7550l.clear();
                this.f8271a.m7440s(false);
                if (!this.f8271a.f8169o) {
                    this.f8271a.m7342aD();
                    break;
                } else {
                    this.f8271a.m7399f();
                    break;
                }
            case 9048:
                this.f8271a.m7427o(false);
                String str = null;
                switch (this.f8271a.f8159e.f7542d) {
                    case 1:
                        str = this.f8271a.getResources().getString(R.string.sdcard_not_enough_space);
                        break;
                    case 2:
                        str = this.f8271a.getResources().getString(R.string.phone_not_enough_space);
                        break;
                    default:
                        m7510a("lLocalDatabaseSelectMode Wrong!" + this.f8271a.f8159e.f7542d, 1);
                        break;
                }
                C0091o.m891a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.move_full_title), str, this.f8271a.getResources().getString(R.string.dialog_option_ok), 9047, true);
                break;
            case 9049:
                this.f8271a.m7343aE();
                if (this.f8271a.m7422m()) {
                    this.f8271a.m7404g(false);
                    break;
                }
                break;
            case 9053:
                m7510a("MSG_UI_GALLERY_MULTI_DELETE_ERROR_FILE", 3);
                this.f8271a.m7388c(this.f8271a.getResources().getString(R.string.file_not_exist));
                this.f8271a.m7332a(C1658c.f7456d, false);
                this.f8271a.m7343aE();
                this.f8271a.m7325a(C1658c.f7455c, false, false);
                this.f8271a.m7343aE();
                if (this.f8271a.m7344aF() != null) {
                    this.f8271a.f8159e.f7528ab = this.f8271a.m7344aF();
                    this.f8271a.m7325a(this.f8271a.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60//", true, false);
                    this.f8271a.m7343aE();
                }
                this.f8271a.f8179y.clear();
                this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                switch (this.f8271a.f8158d.f7478b.f7542d) {
                    case 1:
                        this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                        this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7482f);
                        break;
                    case 2:
                        this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                        this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7483g);
                        break;
                    case 3:
                        this.f8271a.f8159e.f7526a.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7484h);
                        this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8158d.f7484h);
                        break;
                }
                this.f8271a.f8159e.f7551m.m7045a();
                this.f8271a.m7408i();
                this.f8271a.f8159e.f7551m.m7054b();
                this.f8271a.m7443u();
                this.f8271a.m7398e(true);
                this.f8271a.m7404g(false);
                this.f8271a.f8180z = false;
                break;
            case 9054:
            case 32768:
                if (this.f8271a.f8159e.f7544f != 0) {
                    if (this.f8271a.m7433q()) {
                        this.f8271a.f8159e.f7563y = true;
                        this.f8271a.f8122c.m7997d();
                    } else if (!this.f8271a.m7436r()) {
                        this.f8271a.m7440s(true);
                    }
                } else {
                    this.f8271a.m7384c();
                }
                this.f8271a.f8122c.m7994c(268435455L);
                break;
            case 9237:
                C0091o.m899b(this.f8271a);
                C0091o.m893a((Context) this.f8271a, true, true, this.f8271a.getResources().getString(R.string.access_permission), this.f8271a.getResources().getString(R.string.access_permission_please_select), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_continue)}, new int[]{9240, 9238}, true);
                break;
            case 9238:
                this.f8271a.f8159e.f7528ab = this.f8271a.m7344aF();
                this.f8271a.m7345aG();
                break;
            case 9239:
                this.f8271a.f8172r = true;
                this.f8271a.m7432q(true);
                this.f8271a.m7404g(true);
                this.f8271a.m412b(20498);
                break;
            case 9240:
                C0091o.m899b(this.f8271a);
                this.f8271a.f8122c.f8782c.f7649g.f7629a = 0;
                this.f8271a.f8159e.f7527aa = null;
                break;
            case 9248:
                this.f8271a.f8122c.f8782c.f7654l.f7614o = false;
                if (!C0090a.m886a(this.f8271a.f8122c).getBoolean("apkUpdateLater", false) && !this.f8271a.f8122c.f8782c.f7654l.f7600ag) {
                    this.f8271a.f8122c.f8782c.f7654l.f7600ag = true;
                    C0091o.m892a((Context) this.f8271a, true, false, this.f8271a.getResources().getString(R.string.application_update_opimization_title), this.f8271a.getResources().getString(R.string.application_update_opimization) + "\n" + C0090a.m886a(this.f8271a.f8122c).getString("hotaOptimization", "") + "\n", new String[]{this.f8271a.getResources().getString(R.string.dialog_option_later), this.f8271a.getResources().getString(R.string.dialog_option_update)}, new int[]{9249, 9250});
                    break;
                }
                break;
            case 9249:
                C0090a.m887b(this.f8271a.f8122c).putBoolean("apkUpdateLater", true).apply();
                this.f8271a.f8122c.f8782c.f7654l.f7600ag = false;
                break;
            case 9250:
                this.f8271a.f8122c.f8782c.f7654l.f7614o = true;
                if (C0120a.m1196a(this.f8271a) && C0120a.m1197b(this.f8271a) == 2) {
                    C0091o.m892a((Context) this.f8271a, true, false, this.f8271a.getResources().getString(R.string.version_update_title), this.f8271a.getResources().getString(R.string.version_update_update_not_wifi), new String[]{this.f8271a.getResources().getString(R.string.dialog_option_cancel), this.f8271a.getResources().getString(R.string.dialog_option_continue)}, new int[]{9254, 8454});
                } else {
                    this.f8271a.m407a(8454);
                }
                this.f8271a.f8122c.f8782c.f7654l.f7600ag = false;
                break;
            case 9254:
                this.f8271a.f8122c.f8782c.f7654l.f7614o = false;
                C0091o.m892a((Context) this.f8271a, true, false, this.f8271a.getResources().getString(R.string.application_update_opimization_title), this.f8271a.getResources().getString(R.string.application_update_opimization) + "\n" + C0090a.m886a(this.f8271a.f8122c).getString("hotaOptimization", "") + "\n", new String[]{this.f8271a.getResources().getString(R.string.dialog_option_later), this.f8271a.getResources().getString(R.string.dialog_option_update)}, new int[]{9249, 9250});
                break;
            case 12032:
                Process.killProcess(Process.myPid());
                this.f8271a.finish();
                break;
            case 12034:
                m7510a("ACTIVITY_RESUME", 3);
                this.f8271a.m7341aC();
                C1668j c1668j = this.f8271a.f8122c.f8782c;
                if (this.f8271a.f8122c.m8011p() && this.f8271a.f8122c.f8782c.f7646d) {
                    this.f8271a.f8122c.m8004i();
                    this.f8271a.f8122c.f8782c.f7646d = false;
                }
                if (this.f8271a.f8122c.f8783d.m1264b()) {
                    this.f8271a.f8122c.m7995c(new C0121a(18444));
                    break;
                }
                break;
            case 12035:
                m7510a("ACTIVITY_PAUSE", 3);
                C0088a.m824a(true);
                if (this.f8271a.f8122c.f8783d.m1264b()) {
                    this.f8271a.f8122c.m7995c(new C0121a(18445));
                }
                if (this.f8271a.m7450x()) {
                    this.f8271a.m7442t(false);
                }
                C1668j c1668j2 = this.f8271a.f8122c.f8782c;
                break;
            case 12036:
                m7510a("ACTIVITY_STOP", 4);
                break;
            case 12037:
                m7510a("ACTIVITY_DESTROY", 4);
                break;
            case 12038:
                m7510a("ACTIVITY_CONFIGURATION_CHANGED", 4);
                break;
            case 12039:
                C0091o.m899b(this.f8271a);
                this.f8271a.f8122c.f8782c.f7649g.f7629a = 0;
                break;
            case 12323:
                m7510a("MSG_FILE_PHONE_DELETE_A_FILE_DONE", 4);
                this.f8271a.f8159e.f7551m.m7066h();
                this.f8271a.f8159e.f7526a.m511b();
                this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), this.f8271a.f8159e.f7526a.m517d());
                m7510a("New GridView List", 4);
                this.f8271a.f8159e.f7551m.m7066h();
                this.f8271a.f8159e.f7526a.m511b();
                break;
            case 12324:
                m7510a("MSG_FILE_EXCUTE_ACTION_DONE lActionType " + this.f8271a.f8159e.f7543e, 4);
                this.f8271a.f8159e.f7551m.m7045a();
                if (this.f8271a.f8159e.f7543e == 5) {
                    this.f8271a.f8159e.f7549k.clear();
                    this.f8271a.m7408i();
                    this.f8271a.f8159e.f7551m.m7054b();
                    this.f8271a.f8159e.f7551m.m7053a(false, true);
                    this.f8271a.m7391d(-1);
                    this.f8271a.f8159e.f7544f = 0;
                    this.f8271a.f8159e.f7551m.m7057c(0);
                    this.f8271a.f8159e.f7551m.m7056c();
                    this.f8271a.m7443u();
                    this.f8271a.f8122c.m7994c(268435455L);
                    this.f8271a.f8159e.f7543e = 0;
                    this.f8271a.f8122c.m7980a(new C0121a(8992));
                }
                if (this.f8271a.m7414k() == 0) {
                    this.f8271a.m7404g(false);
                    this.f8271a.f8180z = false;
                }
                this.f8271a.m7385c(this.f8271a.f8159e.f7559u);
                this.f8271a.m7401f(false);
                this.f8271a.f8159e.f7564z = false;
                break;
        }
    }

    /* renamed from: c */
    protected void m7515c(Message message) {
        switch (message.what) {
            case 20486:
                this.f8271a.m7349aK();
                this.f8271a.m7352aN();
                break;
            case 20487:
                this.f8271a.m407a(9047);
                break;
            case 20488:
                this.f8271a.m407a(9048);
                break;
            case 20489:
                this.f8271a.m7349aK();
                this.f8271a.m7350aL();
                break;
            case 20490:
                this.f8271a.m407a(9047);
                break;
            case 20491:
                this.f8271a.m407a(9048);
                break;
            case 20492:
            case 20493:
            case 20494:
            case 20495:
            case 20496:
            case 20497:
            default:
                this.f8272b.m7536f(message);
                break;
            case 20498:
                this.f8271a.f8159e.f7528ab = this.f8271a.m7344aF();
                int m7325a = this.f8271a.m7325a(this.f8271a.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60//", true, true);
                this.f8271a.m7343aE();
                if (m7325a != -1) {
                    this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                    this.f8271a.m407a(9043);
                    break;
                }
                break;
            case 20499:
                this.f8271a.f8171q = true;
                this.f8271a.m7379az();
                this.f8271a.m7332a(C1658c.f7456d, true);
                this.f8271a.m7343aE();
                this.f8271a.m7325a(C1658c.f7455c, false, true);
                this.f8271a.m7343aE();
                if (this.f8271a.m7344aF() != null) {
                    this.f8271a.f8159e.f7528ab = this.f8271a.m7344aF();
                    this.f8271a.m7347aI();
                    String str = this.f8271a.f8159e.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60//";
                    this.f8271a.f8172r = true;
                    this.f8271a.m7325a(str, true, true);
                    this.f8271a.m7343aE();
                    this.f8271a.f8159e.f7562x = false;
                }
                this.f8271a.f8158d.f7481e.m549a(this.f8271a.f8158d.f7479c, this.f8271a.f8158d.f7482f, this.f8271a.f8158d.f7483g, this.f8271a.f8158d.f7484h);
                this.f8271a.m407a(9044);
                break;
        }
    }

    /* renamed from: a */
    private void m7509a() {
        this.f8271a.m7390d();
        m7510a("EnterGallerySingleGroup " + this.f8271a.f8159e.f7556r + " " + this.f8271a.f8159e.f7557s + " " + this.f8271a.f8159e.f7558t, 4);
        this.f8271a.f8122c.m7975a(1056);
        this.f8271a.m7290A(false);
        if (this.f8271a.f8159e.f7542d == 2 && this.f8271a.m7344aF() == null) {
            this.f8271a.m7393d(this.f8271a.getResources().getString(R.string.sdcard_removed));
            this.f8271a.f8159e.f7562x = true;
            this.f8271a.m7398e(false);
            this.f8271a.m7389c(false);
            this.f8271a.m7382b(false);
            this.f8271a.f8178x = true;
        }
        if (this.f8271a.f8159e.f7556r) {
            ArrayList<C0057a> m523f = this.f8271a.f8159e.f7540b.m523f();
            C0061e c0061e = this.f8271a.f8158d.f7481e;
            this.f8271a.f8159e.f7540b.m507a(this.f8271a.f8158d.f7481e.m550a(), C0061e.m545a(m523f, this.f8271a.f8159e.f7558t));
            this.f8271a.f8159e.f7557s = 0;
        }
        int i = this.f8271a.f8159e.f7557s;
        this.f8271a.m7396e(this.f8271a.m7411j());
        this.f8271a.m7406h(i);
        this.f8271a.m7444u(true);
        this.f8271a.f8122c.m7994c(268435455L);
        this.f8271a.m7333a(true);
        if (this.f8271a.f8159e.f7540b.m530i(i)) {
            if (this.f8271a.f8159e.f7540b.m504a(i) == 0) {
                this.f8271a.m7335a(true, true, true);
            } else {
                this.f8271a.m7335a(true, false, true);
            }
            this.f8271a.f8122c.m7975a(1059);
            m7510a("EnterGallerySingleGroup:" + this.f8271a.m7361ah(), 3);
            switch (this.f8271a.m7361ah()) {
                case 0:
                    this.f8271a.m7357ad();
                    this.f8272b.m7529a();
                    this.f8271a.m7358ae();
                    break;
                case 1:
                    this.f8271a.m7357ad();
                    this.f8272b.m7529a();
                    this.f8271a.m7358ae();
                    C0121a c0121a = new C0121a(9097);
                    c0121a.m1200a("360PlayerStatus", 1);
                    this.f8271a.m409a(c0121a);
                    break;
            }
        } else {
            this.f8271a.m7335a(true, false, false);
            this.f8271a.m7410i(false);
        }
        if (this.f8271a.f8159e.f7500A) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 2;
            this.f8271a.f8176v = BitmapFactory.decodeFile(this.f8271a.f8159e.f7501B, options);
            this.f8271a.m7330a(this.f8271a.f8176v);
            this.f8271a.m7421m(true);
            this.f8271a.m7410i(true);
        }
    }

    /* renamed from: b */
    private void m7511b() {
        this.f8271a.f8159e.f7514O = 7;
        this.f8271a.m7290A(true);
        if (this.f8271a.m7370aq() == 3) {
            this.f8271a.m7369ap();
        }
        this.f8271a.m7426o();
        this.f8271a.f8122c.m7975a(1040);
        if (this.f8271a.f8178x) {
            this.f8271a.f8159e.f7542d = 1;
            this.f8271a.m7399f();
            this.f8271a.f8178x = false;
        }
        this.f8271a.m7444u(false);
        this.f8271a.m7448w(false);
        this.f8271a.m7293B(false);
        this.f8271a.m7314P();
        this.f8271a.m7359af();
        this.f8271a.m7443u();
        this.f8271a.f8122c.m7994c(268435455L);
        this.f8271a.m7322X();
        this.f8271a.m7320V();
        this.f8271a.m7373at();
        if (this.f8271a.f8177w) {
            this.f8271a.m7346aH();
            this.f8271a.f8177w = false;
        }
        this.f8271a.m7410i(false);
        this.f8271a.m7404g(false);
        this.f8271a.m7333a(false);
        this.f8271a.f7992A = false;
        this.f8271a.f7995D = false;
        this.f8271a.f8159e.f7521V = 0;
        this.f8271a.m7374au();
        C0052d.m466a((Context) this.f8271a, false);
    }

    /* renamed from: c */
    private void m7512c() {
        this.f8271a.m7390d();
        this.f8271a.m7445v();
        this.f8271a.m7314P();
    }
}
