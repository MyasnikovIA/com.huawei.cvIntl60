package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0045b;
import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.Player.player.C0041h;
import GeneralFunction.p005e.C0057a;
import GeneralFunction.p005e.C0058b;
import GeneralFunction.p005e.C0060d;
import GeneralFunction.p005e.C0061e;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p020q.C0096a;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.os.Parcelable;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import p026a.p029b.p031b.C0120a;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1659a;
import ui_Controller.p110b.C1663e;
import ui_Controller.p110b.C1668j;
import ui_Controller.ui_Gallery.C1674a;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.e */
/* loaded from: classes.dex */
public class C1749e {

    /* renamed from: a */
    private UI_PhoneGalleryController f8281a;

    /* renamed from: b */
    private C0096a.b f8282b = new C0096a.b() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.e.1
    };

    /* renamed from: a */
    private void m7524a(String str, int i) {
        C0052d.m465a("UI_PhoneGallerySingleHandler", str, i);
    }

    public C1749e(UI_PhoneGalleryController uI_PhoneGalleryController) {
        this.f8281a = null;
        this.f8281a = uI_PhoneGalleryController;
    }

    /* renamed from: a */
    public void m7531a(Message message) {
        new C0121a(message);
        switch (message.what) {
            case 8976:
                if (C0120a.m1197b(this.f8281a) == 2) {
                    C0091o.m892a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.accessing_mobile_network_title), this.f8281a.getResources().getString(R.string.accessing_mobile_network_title_content), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{12039, 8975});
                    break;
                } else {
                    this.f8281a.m407a(8975);
                    break;
                }
            case 9099:
                m7524a("MSG_UI_GALLERY_SINGLE_UPDATE_CURRENT_IMAGE", 4);
                C0121a c0121a = new C0121a(message);
                int m1207b = c0121a.m1207b("update index");
                Bitmap bitmap = (Bitmap) c0121a.m1213f("update bitmap").m1214a();
                if (m1207b == this.f8281a.f8159e.f7557s) {
                    this.f8281a.f8159e.f7518S.f7566b = m1207b;
                    this.f8281a.f8159e.f7518S.f7565a = bitmap;
                    if (this.f8281a.f8159e.f7514O == 3) {
                        this.f8281a.mo408a(9098, 0L);
                        break;
                    }
                }
                break;
            case 9100:
                int m1207b2 = new C0121a(message).m1207b("update index");
                int m504a = this.f8281a.f8159e.f7540b.m504a(m1207b2);
                this.f8281a.f8159e.f7557s = m1207b2;
                this.f8281a.m7328a(m504a, m7528d());
                break;
            case 12034:
                m7524a("ACTIVITY_RESUME", 3);
                this.f8281a.m7341aC();
                C1668j c1668j = this.f8281a.f8122c.f8782c;
                if (this.f8281a.f8122c.m8011p() && this.f8281a.f8122c.f8782c.f7646d) {
                    this.f8281a.f8122c.m8004i();
                    this.f8281a.f8122c.f8782c.f7646d = false;
                }
                this.f8281a.m7333a(true);
                if (this.f8281a.m7361ah() == 2) {
                    this.f8281a.m7300F();
                    break;
                }
                break;
            case 12035:
                m7524a("ACTIVITY_PAUSE", 3);
                C0088a.m824a(true);
                this.f8281a.m7333a(false);
                if (this.f8281a.m7450x()) {
                    this.f8281a.m7442t(false);
                }
                if (!this.f8281a.m7310L()) {
                    C1668j c1668j2 = this.f8281a.f8122c.f8782c;
                    if (this.f8281a.f8159e.f7513N == 0) {
                        int m504a2 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                        this.f8281a.f8159e.f7514O = 6;
                        this.f8281a.m7328a(m504a2, m7528d());
                        this.f8281a.m7335a(true, false, false);
                        break;
                    } else if (this.f8281a.f8170p && !this.f8281a.f8159e.f7500A && this.f8281a.f8159e.f7514O != 0 && this.f8281a.f8159e.f7514O != 8) {
                        boolean m530i = this.f8281a.f8159e.f7540b.m530i(this.f8281a.f8159e.f7557s);
                        int m504a3 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                        this.f8281a.m7328a(m504a3, false);
                        if (m530i) {
                            if (this.f8281a.m7433q()) {
                                this.f8281a.m7410i(true);
                                break;
                            } else if (m504a3 == 0) {
                                this.f8281a.m7335a(true, true, true);
                                break;
                            } else {
                                this.f8281a.m7335a(true, false, true);
                                this.f8281a.m7449x(false);
                                break;
                            }
                        } else {
                            this.f8281a.m7335a(true, false, false);
                            break;
                        }
                    }
                }
                break;
            case 12036:
                m7524a("ACTIVITY_STOP", 4);
                break;
            case 12037:
                m7524a("ACTIVITY_DESTROY", 4);
                break;
            case 12038:
                m7524a("ACTIVITY_CONFIGURATION_CHANGED", 4);
                break;
            case 12042:
                C0091o.m889a((Context) this.f8281a, true, false, this.f8281a.getResources().getString(R.string.warning), this.f8281a.getResources().getString(R.string.permission_always_deny_msg), this.f8281a.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 61445:
                if (!this.f8281a.m7430p() && !this.f8281a.f8159e.f7500A) {
                    this.f8281a.m7322X();
                }
                this.f8281a.m7293B(false);
                this.f8281a.m7448w(false);
                this.f8281a.m7333a(false);
                break;
            default:
                switch (this.f8281a.f8122c.m7974a()) {
                    case 1056:
                        m7532b(message);
                        break;
                    case 1057:
                    case 1060:
                        m7533c(message);
                        break;
                    case 1059:
                        m7534d(message);
                        break;
                    case 1061:
                        m7535e(message);
                        break;
                }
        }
    }

    /* renamed from: b */
    public void m7532b(Message message) {
        switch (message.what) {
            case 8961:
            case 8964:
            case 61444:
                if (message.what == 8961) {
                    m7524a("MSG_UI_GALLERY_VIEW_TOUCH_ZOOM", 4);
                } else if (message.what == 8964) {
                    m7524a("MSG_UI_GALLERY_VIEW_DOUBLE_CLICK", 4);
                } else if (message.what == 61444) {
                    m7524a("MSG_UI_GALLERY_SINGLE_HIDE_INFO", 4);
                }
                this.f8281a.m7335a(false, false, false);
                break;
            case 8962:
                m7524a("MSG_UI_GALLERY_VIEW_CLICK", 4);
                if (!this.f8281a.f8159e.f7560v) {
                    if (this.f8281a.m7309K()) {
                        this.f8281a.m7293B(false);
                        break;
                    } else {
                        this.f8281a.m7335a(true, false, false);
                        break;
                    }
                } else {
                    this.f8281a.m7335a(false, false, false);
                    break;
                }
            case 8968:
                this.f8281a.f8122c.m7994c(268435455L);
                break;
            case 9088:
                m7524a("MSG_UI_GALLERY_SINGLE_DELETE_PRESS wFileCountInGroup" + this.f8281a.f8159e.f7540b.m538q(this.f8281a.f8159e.f7557s), 4);
                this.f8281a.f8122c.m7988b(268435455L);
                this.f8281a.f8122c.m7994c(1L);
                if (this.f8281a.f8159e.f7556r) {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_one_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                } else if (this.f8281a.f8159e.f7540b.m538q(this.f8281a.f8159e.f7557s) > 1) {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_more_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                } else {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_one_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                }
            case 9089:
                ArrayList<String> arrayList = new ArrayList<>();
                C0057a m539r = this.f8281a.f8159e.f7540b.m539r(this.f8281a.f8159e.f7557s);
                int i = m539r.f490b;
                for (int i2 = 0; i2 < m539r.f491c.size(); i2++) {
                    arrayList.add(this.f8281a.f8159e.f7540b.m528h(i, m539r.f491c.get(i2).intValue()));
                }
                this.f8281a.startActivityForResult(m7523a(arrayList), 1);
                break;
            case 9090:
                this.f8281a.f8122c.m7975a(1057);
                this.f8281a.m407a(9090);
                break;
            case 9091:
                this.f8281a.m7448w(true);
                this.f8281a.f8122c.m7994c(268435455L);
                break;
            case 9107:
                this.f8281a.mo408a(9108, 0L);
                break;
            case 9124:
                this.f8281a.f8122c.m7994c(268435455L);
                this.f8281a.m7312N();
                break;
            case 9126:
                this.f8281a.f8122c.m7994c(268435455L);
                this.f8281a.m7313O();
                break;
            case 9139:
                m7524a("MSG_UI_GALLERY_SINGLE_DELETE_ERROR_FILE", 3);
                if (this.f8281a.f8159e.f7544f == 1 || this.f8281a.f8159e.f7544f == 6) {
                    m7524a("break by select mode:" + this.f8281a.f8159e.f7544f, 3);
                    break;
                } else {
                    this.f8281a.m7378ay();
                    this.f8281a.m407a(8966);
                    break;
                }
            case 9145:
                this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                this.f8281a.m7387c(this.f8281a.f8159e.f7557s, false);
                break;
            case 12039:
                this.f8281a.f8122c.f8782c.f7649g.f7629a = 0;
                break;
            case 32768:
                m7524a("MSG_KEY_BACK " + this.f8281a.f8159e.f7556r, 4);
                this.f8281a.f8159e.f7518S.f7566b = -1;
                this.f8281a.f8159e.f7518S.f7565a = null;
                if (this.f8281a.f8159e.f7556r) {
                    this.f8281a.m7314P();
                    m7525b();
                    this.f8281a.m7406h(this.f8281a.f8159e.f7557s);
                } else if (this.f8281a.m7450x()) {
                    this.f8281a.m7442t(false);
                    this.f8281a.m7335a(true, false, false);
                } else {
                    this.f8281a.mo408a(8966, 0L);
                    this.f8281a.m7295C(false);
                    this.f8281a.m7299E(false);
                    this.f8281a.m7293B(false);
                }
                this.f8281a.f8122c.m7994c(268435455L);
                break;
        }
    }

    /* renamed from: c */
    public void m7533c(Message message) {
        C0058b m545a;
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 9090:
                this.f8281a.f8159e.f7564z = true;
                this.f8281a.f8159e.f7518S.f7565a = null;
                this.f8281a.f8159e.f7518S.f7566b = -1;
                this.f8281a.f8159e.f7549k.add(Integer.valueOf(this.f8281a.f8159e.f7557s));
                m7527c();
                break;
            case 9091:
                if (this.f8281a.f8122c.m7974a() == 1060) {
                    this.f8281a.f8122c.m7975a(1059);
                } else {
                    this.f8281a.f8122c.m7975a(1056);
                }
                this.f8281a.m7448w(true);
                this.f8281a.f8122c.m7994c(268435455L);
                break;
            case 12323:
                m7524a("MSG_FILE_PHONE_DELETE_A_FILE_DONE", 4);
                this.f8281a.f8159e.f7551m.m7066h();
                this.f8281a.f8159e.f7526a.m511b();
                C0058b m517d = this.f8281a.f8159e.f7526a.m517d();
                this.f8281a.f8159e.f7551m.m7049a(m517d.f492a);
                if (this.f8281a.f8159e.f7556r) {
                    int i = this.f8281a.f8159e.f7558t;
                    if (c0121a.m1206a("delete group")) {
                        m545a = new C0058b();
                    } else {
                        m545a = C0061e.m545a(m517d.f492a, i);
                    }
                    this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), m545a);
                } else {
                    this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), m517d);
                }
                m7524a("New GridView List", 4);
                this.f8281a.f8159e.f7551m.m7066h();
                break;
            case 12324:
                this.f8281a.f8159e.f7522W = false;
                if (this.f8281a.f8122c.m7974a() == 1060) {
                    this.f8281a.f8122c.m7975a(1059);
                    int i2 = this.f8281a.f8159e.f7557s;
                    if (i2 >= this.f8281a.f8159e.f7540b.m518e() || i2 < 0) {
                        m7524a("360 Delete: No File To Update", 4);
                        this.f8281a.f8159e.f7514O = 8;
                    } else {
                        m7529a();
                        this.f8281a.m7354aa();
                    }
                } else {
                    this.f8281a.f8122c.m7975a(1056);
                }
                C0091o.m899b(this.f8281a);
                m7524a("MSG_FILE_PHONE_DELETE_ALL_COMPLETE 1 ulBrowseIndex:" + this.f8281a.f8159e.f7557s + " objActivity.sLocalGallery.ulBrowseSingleIndex " + this.f8281a.f8159e.f7558t, 4);
                if (this.f8281a.f8159e.f7557s < 0) {
                    if (this.f8281a.f8159e.f7556r) {
                        this.f8281a.m7314P();
                        m7525b();
                        if (this.f8281a.f8159e.f7557s == -1) {
                            this.f8281a.f8159e.f7557s = 0;
                            this.f8281a.mo408a(8966, 0L);
                            break;
                        } else {
                            this.f8281a.m7406h(this.f8281a.f8159e.f7557s);
                            this.f8281a.f8122c.m7994c(268435455L);
                        }
                    } else {
                        this.f8281a.f8159e.f7557s = 0;
                        this.f8281a.mo408a(8966, 0L);
                        break;
                    }
                } else {
                    this.f8281a.f8122c.m7994c(268435455L);
                    if (this.f8281a.f8159e.f7542d == 3) {
                        this.f8281a.m7335a(true, false, false);
                    }
                }
                m7524a("MSG_FILE_PHONE_DELETE_ALL_COMPLETE 2 ulBrowseIndex:" + this.f8281a.f8159e.f7557s + " objActivity.sLocalGallery.ulBrowseSingleIndex " + this.f8281a.f8159e.f7558t, 4);
                this.f8281a.m7328a(this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s), m7528d());
                this.f8281a.f8159e.f7564z = false;
                break;
        }
    }

    /* renamed from: d */
    public void m7534d(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8465:
                this.f8281a.f8159e.f7525Z = true;
                this.f8281a.f8159e.f7514O = 8;
                this.f8281a.m7314P();
                this.f8281a.m7354aa();
                this.f8281a.f8159e.f7523X = null;
                this.f8281a.mo408a(9149, 50L);
                this.f8281a.m7372as();
                break;
            case 8466:
                this.f8281a.f8159e.f7523X = new C0041h();
                this.f8281a.f8159e.f7523X.f376m = this.f8281a.m7360ag().f376m;
                this.f8281a.f8159e.f7523X.f375l = this.f8281a.m7360ag().f375l;
                this.f8281a.f8159e.f7523X.f331a = this.f8281a.m7360ag().f331a;
                this.f8281a.f8159e.f7523X.f380q = this.f8281a.m7360ag().f380q;
                this.f8281a.f8159e.f7523X.f381r = this.f8281a.m7360ag().f381r;
                this.f8281a.f8159e.f7523X.f368e = this.f8281a.m7360ag().f368e;
                this.f8281a.f8159e.f7523X.f382s = this.f8281a.m7360ag().f382s;
                System.arraycopy(this.f8281a.m7360ag().f389z, 0, this.f8281a.f8159e.f7523X.f389z, 0, this.f8281a.m7360ag().f389z.length);
                this.f8281a.m7365al();
                this.f8281a.f8159e.f7525Z = true;
                this.f8281a.f8159e.f7514O = 8;
                this.f8281a.m7314P();
                this.f8281a.m7354aa();
                this.f8281a.mo408a(9147, 0L);
                break;
            case 8467:
                this.f8281a.f8159e.f7525Z = true;
                this.f8281a.f8159e.f7514O = 8;
                this.f8281a.m7314P();
                this.f8281a.m7354aa();
                this.f8281a.f8159e.f7523X = null;
                this.f8281a.mo408a(9148, 0L);
                this.f8281a.m7372as();
                break;
            case 8962:
            case 8977:
                m7524a("MSG_UI_GALLERY_VIEW_CLICK 360", 4);
                if (!this.f8281a.m7430p()) {
                    if (!this.f8281a.f8159e.f7560v) {
                        int m504a = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                        if (this.f8281a.f8159e.f7514O == 4 || this.f8281a.f8159e.f7514O == 5) {
                            if (this.f8281a.m7309K()) {
                                this.f8281a.m7293B(false);
                                this.f8281a.m7449x(true);
                                break;
                            } else {
                                this.f8281a.m7335a(true, false, true);
                                this.f8281a.m7449x(false);
                                break;
                            }
                        } else if (m504a == 0) {
                            if (this.f8281a.m7309K()) {
                                this.f8281a.m7293B(false);
                                break;
                            } else {
                                this.f8281a.m7335a(true, true, true);
                                break;
                            }
                        } else if (this.f8281a.m7309K()) {
                            this.f8281a.m7293B(false);
                            this.f8281a.m7448w(true);
                            break;
                        } else {
                            this.f8281a.m7335a(true, false, true);
                            this.f8281a.m7449x(false);
                            break;
                        }
                    } else {
                        this.f8281a.m7322X();
                        this.f8281a.m7335a(false, false, false);
                        this.f8281a.m7449x(true);
                        break;
                    }
                }
                break;
            case 8968:
                this.f8281a.f8122c.m7994c(268435455L);
                break;
            case 9088:
                m7524a("MSG_UI_GALLERY_SINGLE_DELETE_PRESS wFileCountInGroup" + this.f8281a.f8159e.f7540b.m538q(this.f8281a.f8159e.f7557s), 4);
                this.f8281a.f8122c.m7988b(268435455L);
                this.f8281a.f8122c.m7994c(1L);
                if (this.f8281a.f8159e.f7556r) {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_one_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                } else if (this.f8281a.f8159e.f7540b.m538q(this.f8281a.f8159e.f7557s) > 1) {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_more_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                } else {
                    C0091o.m894a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.delete_image_title), this.f8281a.getResources().getString(R.string.delete_one_image_confirm), new String[]{this.f8281a.getResources().getString(R.string.dialog_option_cancel), this.f8281a.getResources().getString(R.string.dialog_option_delete)}, new int[]{9091, 9090}, true, R.color.red);
                    break;
                }
            case 9089:
                ArrayList<String> arrayList = new ArrayList<>();
                C0057a m539r = this.f8281a.f8159e.f7540b.m539r(this.f8281a.f8159e.f7557s);
                int i = m539r.f490b;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < m539r.f491c.size()) {
                        arrayList.add(this.f8281a.f8159e.f7540b.m528h(i, m539r.f491c.get(i3).intValue()));
                        i2 = i3 + 1;
                    } else {
                        this.f8281a.startActivityForResult(m7523a(arrayList), 1);
                        break;
                    }
                }
            case 9090:
                this.f8281a.m7324Z();
                this.f8281a.f8122c.m7975a(1060);
                this.f8281a.m407a(9090);
                break;
            case 9091:
                this.f8281a.m7448w(true);
                this.f8281a.f8122c.m7994c(268435455L);
                break;
            case 9092:
                File file = new File(this.f8281a.f8159e.f7501B);
                if (file.exists()) {
                    file.delete();
                }
                this.f8281a.f8158d.f7481e.m553a(this.f8281a.f8158d.f7481e.m561c(), 0);
                this.f8281a.f8122c.m8018x();
                this.f8281a.m407a(9129);
                break;
            case 9093:
                if (!this.f8281a.m7356ac()) {
                    m7524a("MSG_UI_GALLERY_SINGLE_360_PRESS_PREVIOUS denied", 0);
                    break;
                } else {
                    this.f8281a.f8159e.f7522W = false;
                    C0060d c0060d = this.f8281a.f8159e.f7540b;
                    int i4 = this.f8281a.f8159e.f7557s;
                    int m7103b = C1674a.m7103b(c0060d, i4);
                    m7524a("MSG_UI_GALLERY_SINGLE_360_PRESS_PREVIOUS lPrevious360FileIndex " + m7103b, 4);
                    if (m7103b == -1) {
                        m7524a("Can Not Press Previous Key", 4);
                        this.f8281a.f8122c.m7994c(268435455L);
                        break;
                    } else if (this.f8281a.f8159e.f7514O == 3) {
                        m7524a("Can't Press Previous: Waitting For Image Load", 4);
                        break;
                    } else {
                        boolean m530i = this.f8281a.f8159e.f7540b.m530i(m7103b);
                        boolean m531j = this.f8281a.f8159e.f7540b.m531j(m7103b);
                        int m504a2 = this.f8281a.f8159e.f7540b.m504a(i4);
                        int m504a3 = this.f8281a.f8159e.f7540b.m504a(m7103b);
                        if (m530i && m531j) {
                            if (m504a2 == 0) {
                                this.f8281a.m7335a(true, true, true);
                            } else {
                                this.f8281a.m7335a(true, false, true);
                            }
                            m7530a(m504a3);
                            this.f8281a.m7324Z();
                            this.f8281a.m7354aa();
                            this.f8281a.mo408a(9151, 0L);
                            break;
                        }
                    }
                }
                break;
            case 9094:
                if (!this.f8281a.m7356ac()) {
                    m7524a("MSG_UI_GALLERY_SINGLE_360_PRESS_NEXT denied", 0);
                    break;
                } else {
                    this.f8281a.f8159e.f7522W = false;
                    C0060d c0060d2 = this.f8281a.f8159e.f7540b;
                    int i5 = this.f8281a.f8159e.f7557s;
                    int m7102a = C1674a.m7102a(c0060d2, i5);
                    if (m7102a == -1) {
                        m7524a("Can Not Press Previous Key", 4);
                        this.f8281a.f8122c.m7994c(268435455L);
                        break;
                    } else if (this.f8281a.f8159e.f7514O == 3) {
                        m7524a("Can't Press Next: Waitting For Image Load", 4);
                        break;
                    } else {
                        boolean m530i2 = this.f8281a.f8159e.f7540b.m530i(m7102a);
                        boolean m531j2 = this.f8281a.f8159e.f7540b.m531j(m7102a);
                        int m504a4 = this.f8281a.f8159e.f7540b.m504a(i5);
                        int m504a5 = this.f8281a.f8159e.f7540b.m504a(m7102a);
                        if (m530i2 && m531j2) {
                            if (m504a4 == 0) {
                                this.f8281a.m7335a(true, true, true);
                            } else {
                                this.f8281a.m7335a(true, false, true);
                            }
                            m7530a(m504a5);
                            this.f8281a.m7324Z();
                            this.f8281a.m7354aa();
                            this.f8281a.mo408a(9150, 0L);
                            break;
                        }
                    }
                }
                break;
            case 9095:
                int m504a6 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                this.f8281a.f8159e.f7514O = 4;
                this.f8281a.m7354aa();
                this.f8281a.m7328a(m504a6, m7528d());
                if (!this.f8281a.m7310L()) {
                    this.f8281a.m7335a(true, false, true);
                } else {
                    this.f8281a.m7335a(false, false, false);
                    this.f8281a.m7449x(true);
                }
                this.f8281a.f8122c.m7994c(268435455L);
                this.f8281a.f8122c.m7976a(9097, 0L);
                break;
            case 9096:
                int m504a7 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                this.f8281a.f8159e.f7514O = 1;
                this.f8281a.m7354aa();
                this.f8281a.m7328a(m504a7, m7528d());
                this.f8281a.m7335a(true, false, true);
                break;
            case 9097:
                int m1207b = c0121a.m1207b("360PlayerStatus");
                int i6 = this.f8281a.f8159e.f7514O;
                int i7 = this.f8281a.f8159e.f7557s;
                int i8 = this.f8281a.f8159e.f7515P;
                int m504a8 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                m7524a("MSG_UI_GALLERY_SINGLE_360_PLAYER_STATUS_UPDATE " + m1207b + " " + i6 + " " + i8, 2);
                if (i7 != -1) {
                    switch (i6) {
                        case 0:
                        case 1:
                            if (m1207b == 1) {
                                this.f8281a.m7323Y();
                            } else if (m1207b == 2) {
                                if (m504a8 == 1) {
                                    this.f8281a.mo408a(9095, 0L);
                                } else if (m504a8 == 0) {
                                    this.f8281a.mo408a(9098, 0L);
                                }
                            }
                            if (m1207b == 5) {
                                this.f8281a.m7357ad();
                                break;
                            }
                            break;
                        case 2:
                            if (m1207b != 2) {
                                m7529a();
                                break;
                            }
                            break;
                        case 3:
                            if (m1207b == 0) {
                                m7529a();
                                break;
                            }
                            break;
                        case 4:
                            if (m1207b == 1 || m1207b == 0) {
                                this.f8281a.m7331a(this.f8281a.f8159e.f7540b.m536o(i7));
                            } else if (m1207b == 2) {
                                if (this.f8281a.m7422m()) {
                                    this.f8281a.m7404g(false);
                                }
                                if (this.f8281a.f8159e.f7522W) {
                                    this.f8281a.mo408a(9136, 50L);
                                } else {
                                    this.f8281a.m7292B();
                                }
                                this.f8281a.f8159e.f7514O = 5;
                                this.f8281a.f8122c.m7994c(268435455L);
                                if (!this.f8281a.m7310L() && !this.f8281a.f8159e.f7500A) {
                                    this.f8281a.m7335a(true, false, true);
                                    this.f8281a.m7449x(false);
                                }
                                if (!this.f8281a.m7433q() && !this.f8281a.f8159e.f7500A) {
                                    this.f8281a.m7410i(false);
                                }
                            }
                            if (m1207b == 5) {
                                this.f8281a.m7357ad();
                                break;
                            }
                            break;
                        case 5:
                            if (m1207b == 2) {
                                C0052d.m466a((Context) this.f8281a, true);
                                this.f8281a.m7375av();
                                int a2 = this.f8281a.m406a();
                                UI_PhoneGalleryController uI_PhoneGalleryController = this.f8281a;
                                if (a2 == 0) {
                                    this.f8281a.f8159e.f7522W = false;
                                    break;
                                }
                            } else if (m1207b == 3) {
                                this.f8281a.f8159e.f7514O = 5;
                                this.f8281a.m7294C();
                                this.f8281a.m7292B();
                                this.f8281a.m7374au();
                                this.f8281a.f8159e.f7521V = 0;
                                break;
                            } else {
                                m7529a();
                                break;
                            }
                            break;
                        case 6:
                            if (m1207b == 1) {
                                this.f8281a.m7359af();
                                this.f8281a.f8122c.m7975a(1056);
                                this.f8281a.f8122c.m7994c(268435455L);
                                break;
                            }
                            break;
                        case 7:
                            if (m1207b == 1) {
                                this.f8281a.f8159e.f7518S.f7566b = -1;
                                this.f8281a.f8159e.f7518S.f7565a = null;
                                this.f8281a.m7359af();
                                this.f8281a.f8122c.m7975a(1056);
                                this.f8281a.mo408a(32768, 0L);
                                break;
                            }
                            break;
                    }
                }
                break;
            case 9098:
                m7524a("MSG_UI_GALLERY_SINGLE_360_PLAYER_PHOTO_UPDATE", 4);
                Bitmap bitmap = this.f8281a.f8159e.f7518S.f7565a;
                int i9 = this.f8281a.f8159e.f7518S.f7566b;
                int m7361ah = this.f8281a.m7361ah();
                if (m7361ah != 2) {
                    m7524a("Photo Update Player Status Error " + m7361ah, 4);
                } else if (bitmap == null || bitmap.isRecycled()) {
                    if (bitmap == null) {
                        m7524a("Photo Update Bitmap Null", 4);
                    } else {
                        m7524a("Photo Update Bitmap Is Recycled", 4);
                    }
                    this.f8281a.f8159e.f7514O = 3;
                } else if (i9 != this.f8281a.f8159e.f7557s) {
                    m7524a("Photo Update Index Fault " + i9 + " " + this.f8281a.f8159e.f7557s, 4);
                    this.f8281a.f8159e.f7514O = 3;
                } else {
                    m7524a("Photo Update " + i9 + " " + bitmap, 4);
                    int i10 = this.f8281a.f8159e.f7557s;
                    int m509b = this.f8281a.f8159e.f7540b.m509b(i10);
                    int m512c = this.f8281a.f8159e.f7540b.m512c(i10);
                    this.f8281a.f8159e.f7514O = 2;
                    this.f8281a.m7336a(bitmap, m509b, m512c);
                    if (this.f8281a.m7422m()) {
                        this.f8281a.m7404g(false);
                    }
                }
                this.f8281a.f8122c.m7994c(268435455L);
                if (!this.f8281a.f8159e.f7500A) {
                    this.f8281a.m7410i(false);
                    break;
                }
                break;
            case 9118:
                this.f8281a.m7322X();
                this.f8281a.m7317S();
                break;
            case 9119:
                this.f8281a.m7322X();
                this.f8281a.m7318T();
                break;
            case 9120:
                this.f8281a.m7322X();
                this.f8281a.m7303G(true);
                break;
            case 9121:
                this.f8281a.m7322X();
                this.f8281a.m7303G(false);
                break;
            case 9122:
                this.f8281a.m7322X();
                this.f8281a.m7301F(true);
                break;
            case 9123:
                this.f8281a.m7322X();
                this.f8281a.m7301F(false);
                break;
            case 9125:
                this.f8281a.m7320V();
                break;
            case 9127:
                this.f8281a.m7322X();
                this.f8281a.m7448w(false);
                this.f8281a.m7330a(this.f8281a.f8176v);
                this.f8281a.m7319U();
                this.f8281a.m7410i(true);
                this.f8281a.f7995D = this.f8281a.m7368ao();
                if (this.f8281a.f7995D) {
                    this.f8281a.m7296D();
                    break;
                }
                break;
            case 9128:
                String m644b = C0069a.m644b(C1658c.f7456d + C0069a.m639a(Long.valueOf(System.currentTimeMillis()), "jpg"));
                C0121a c0121a2 = new C0121a(20502);
                c0121a2.m1203a("FilePath", m644b);
                this.f8281a.m414b(c0121a2);
                this.f8281a.m7429p(true);
                break;
            case 9129:
                this.f8281a.m7322X();
                this.f8281a.m7410i(false);
                this.f8281a.m7426o();
                this.f8281a.m7448w(true);
                this.f8281a.mo408a(9131, 0L);
                break;
            case 9130:
                if (c0121a.m1206a("bSuccess")) {
                    Long valueOf = Long.valueOf(System.currentTimeMillis());
                    String m1211d = c0121a.m1211d("FilePath");
                    this.f8281a.f8159e.f7501B = m1211d;
                    this.f8281a.f8158d.f7481e.m558a(m1211d.substring(m1211d.lastIndexOf("/") + 1, m1211d.length()), m1211d.substring(0, m1211d.lastIndexOf("/") + 1), new File(m1211d).length(), 0, 1, C0045b.m418a(m1211d), C0045b.m420b(m1211d), 0L, valueOf.longValue(), valueOf.longValue(), this.f8281a.f8158d.f7481e.m561c() + 1, 0, true, true, true, true, false, false, false, false, true);
                    this.f8281a.f8122c.m8018x();
                    C0069a.m641a(this.f8281a, m1211d);
                    this.f8281a.f8158d.f7478b.f7531ae = valueOf.longValue();
                    this.f8281a.m7429p(false);
                    this.f8281a.m7419l(true);
                    this.f8281a.m7424n(true);
                    this.f8281a.m7404g(false);
                    this.f8281a.f8159e.f7500A = true;
                    break;
                } else {
                    this.f8281a.m7404g(false);
                    this.f8281a.m7407h(true);
                    this.f8281a.m7429p(false);
                    if (this.f8281a.f7995D) {
                        this.f8281a.m7302G();
                        this.f8281a.f7995D = false;
                        break;
                    }
                }
                break;
            case 9131:
                this.f8281a.m7404g(false);
                this.f8281a.m7407h(true);
                if (this.f8281a.f7995D) {
                    this.f8281a.m7298E();
                    this.f8281a.f7995D = false;
                    break;
                }
                break;
            case 9132:
                this.f8281a.f8159e.f7544f = 6;
                this.f8281a.m7296D();
                this.f8281a.m7294C();
                this.f8281a.m7367an();
                this.f8281a.m7324Z();
                this.f8281a.m7363aj();
                this.f8281a.m7330a(this.f8281a.f8176v);
                this.f8281a.m7427o(true);
                this.f8281a.m412b(20492);
                this.f8281a.m7409i(this.f8281a.f8159e.f7557s);
                break;
            case 9133:
                this.f8281a.f8159e.f7544f = 6;
                this.f8281a.m7296D();
                this.f8281a.m7294C();
                this.f8281a.m7367an();
                this.f8281a.m7324Z();
                this.f8281a.m7363aj();
                this.f8281a.m7330a(this.f8281a.f8176v);
                this.f8281a.m7427o(true);
                this.f8281a.m412b(20495);
                this.f8281a.m7409i(this.f8281a.f8159e.f7557s);
                break;
            case 9134:
                this.f8281a.f8159e.f7544f = 0;
                this.f8281a.m7427o(false);
                this.f8281a.m7426o();
                this.f8281a.m7448w(false);
                this.f8281a.f8159e.f7522W = false;
                if (!this.f8281a.f8169o) {
                    this.f8281a.m7342aD();
                    break;
                } else {
                    if (this.f8281a.f8159e.f7542d == 1) {
                        this.f8281a.m7388c(this.f8281a.getString(R.string.move_to_sdcard));
                        this.f8281a.f8159e.f7526a.m507a(this.f8281a.f8158d.f7481e.m550a(), this.f8281a.f8158d.f7482f);
                        this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), this.f8281a.f8158d.f7482f);
                    } else if (this.f8281a.f8159e.f7542d == 2) {
                        this.f8281a.m7388c(this.f8281a.getString(R.string.move_to_phone));
                        this.f8281a.f8159e.f7526a.m507a(this.f8281a.f8158d.f7481e.m550a(), this.f8281a.f8158d.f7483g);
                        this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), this.f8281a.f8158d.f7483g);
                    }
                    this.f8281a.f8159e.f7551m.m7066h();
                    this.f8281a.f8159e.f7526a.m511b();
                    this.f8281a.f8159e.f7551m.m7049a(this.f8281a.f8159e.f7526a.m517d().f492a);
                    this.f8281a.m7448w(true);
                    int i11 = this.f8281a.f8159e.f7557s;
                    int m518e = this.f8281a.f8159e.f7540b.m518e();
                    if (i11 >= m518e || i11 < 0) {
                        m7524a("360 Move done: No File To Update", 3);
                        this.f8281a.f8159e.f7514O = 8;
                    } else {
                        m7529a();
                        this.f8281a.m7354aa();
                    }
                    m7524a("MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 0 ulBrowseIndex:" + this.f8281a.f8159e.f7557s + " LinkTable_GetSize " + m518e, 4);
                    if (this.f8281a.f8159e.f7557s >= m518e) {
                        C1663e c1663e = this.f8281a.f8159e;
                        c1663e.f7557s--;
                    }
                    m7524a("MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 1 ulBrowseIndex:" + this.f8281a.f8159e.f7557s + " objActivity.sLocalGallery.ulBrowseSingleIndex " + this.f8281a.f8159e.f7558t, 4);
                    if (this.f8281a.f8159e.f7557s < 0) {
                        if (this.f8281a.f8159e.f7556r) {
                            this.f8281a.m7314P();
                            m7525b();
                            if (this.f8281a.f8159e.f7557s == -1) {
                                this.f8281a.f8159e.f7557s = 0;
                                this.f8281a.mo408a(8966, 0L);
                                break;
                            } else {
                                this.f8281a.m7406h(this.f8281a.f8159e.f7557s);
                                this.f8281a.f8122c.m7994c(268435455L);
                            }
                        } else {
                            this.f8281a.f8159e.f7557s = 0;
                            this.f8281a.mo408a(8966, 0L);
                            break;
                        }
                    } else {
                        m7529a();
                        this.f8281a.f8122c.m7994c(268435455L);
                    }
                    m7524a("MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 2 ulBrowseIndex:" + this.f8281a.f8159e.f7557s + " objActivity.sLocalGallery.ulBrowseSingleIndex " + this.f8281a.f8159e.f7558t, 4);
                    this.f8281a.m7328a(this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s), m7528d());
                    break;
                }
            case 9135:
                this.f8281a.f8159e.f7544f = 0;
                this.f8281a.m7410i(false);
                this.f8281a.m7426o();
                this.f8281a.m7427o(false);
                this.f8281a.m7448w(true);
                break;
            case 9136:
                this.f8281a.m7403g(this.f8281a.f8159e.f7521V);
                break;
            case 9137:
                this.f8281a.m7306I();
                break;
            case 9138:
                this.f8281a.m7308J();
                break;
            case 9139:
                m7524a("MSG_UI_GALLERY_SINGLE_DELETE_ERROR_FILE", 3);
                if (this.f8281a.f8159e.f7544f == 1 || this.f8281a.f8159e.f7544f == 6) {
                    m7524a("break by select mode:" + this.f8281a.f8159e.f7544f, 3);
                    break;
                } else {
                    String m536o = this.f8281a.f8159e.f7540b.m536o(this.f8281a.f8159e.f7557s);
                    String m649d = C0069a.m649d(m536o);
                    File file2 = new File(m536o);
                    if (file2.exists() && file2.length() > 0) {
                        if (m536o.toLowerCase().endsWith("mp4")) {
                            if (!new File(m649d).exists()) {
                                m7524a("recreate thm", 3);
                                C0069a.m648d(m536o, m649d);
                                this.f8281a.m7404g(false);
                                break;
                            }
                        } else {
                            this.f8281a.m7378ay();
                            this.f8281a.m407a(8966);
                            break;
                        }
                    } else {
                        this.f8281a.m7378ay();
                        this.f8281a.m407a(8966);
                        break;
                    }
                }
                break;
            case 9143:
                this.f8281a.m7427o(false);
                this.f8281a.m7426o();
                String str = null;
                switch (this.f8281a.f8159e.f7542d) {
                    case 1:
                        str = this.f8281a.getResources().getString(R.string.sdcard_not_enough_space);
                        break;
                    case 2:
                        str = this.f8281a.getResources().getString(R.string.phone_not_enough_space);
                        break;
                    default:
                        m7524a("lLocalDatabaseSelectMode Wrong!" + this.f8281a.f8159e.f7542d, 1);
                        break;
                }
                C0091o.m891a((Context) this.f8281a, true, true, this.f8281a.getResources().getString(R.string.move_full_title), str, this.f8281a.getResources().getString(R.string.dialog_option_ok), 9135, true);
                break;
            case 9144:
                this.f8281a.m7322X();
                this.f8281a.m7319U();
                break;
            case 9145:
                int m504a9 = this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s);
                if (m504a9 == 1) {
                    this.f8281a.m7439s(this.f8281a.f8159e.f7557s);
                    break;
                } else if (m504a9 == 0) {
                    this.f8281a.m7387c(this.f8281a.f8159e.f7557s, true);
                    break;
                }
                break;
            case 9147:
                if (this.f8281a.m7355ab() || this.f8281a.f8159e.f7542d == 3) {
                    this.f8281a.f8122c.m7978a(3584, this.f8281a, new Intent(this.f8281a, (Class<?>) UI_GifMakingController.class));
                    this.f8281a.f8122c.m7988b(268435455L);
                    break;
                } else {
                    this.f8281a.mo408a(9147, 50L);
                    break;
                }
                break;
            case 9148:
                if (this.f8281a.m7355ab() || this.f8281a.f8159e.f7542d == 3) {
                    this.f8281a.f8122c.m7978a(3840, this.f8281a, new Intent(this.f8281a, (Class<?>) UI_NormalPicMakingController.class));
                    this.f8281a.f8122c.m7988b(268435455L);
                    break;
                } else {
                    this.f8281a.mo408a(9148, 50L);
                    break;
                }
            case 9149:
                m7524a("MSG_UI_GALLERY_SINGLE_TO_VIDEO_CUT", 2);
                if (this.f8281a.m7355ab()) {
                    m7524a("TO_VIDEO_CUT Release_Done", 2);
                    this.f8281a.f8122c.m7978a(3328, this.f8281a, new Intent(this.f8281a, (Class<?>) UI_VideoCutController.class));
                    this.f8281a.f8122c.m7988b(268435455L);
                    break;
                } else {
                    this.f8281a.mo408a(9149, 50L);
                    break;
                }
            case 9150:
                if (this.f8281a.m7355ab()) {
                    int m7102a2 = C1674a.m7102a(this.f8281a.f8159e.f7540b, this.f8281a.f8159e.f7557s);
                    m7524a("TO_NEXT_FILE Release_Done:" + m7102a2, 2);
                    this.f8281a.m7415k(m7102a2);
                    this.f8281a.f8159e.f7557s = m7102a2;
                    this.f8281a.m7335a(true, false, true);
                    this.f8281a.f8122c.m7994c(268435455L);
                    break;
                } else {
                    this.f8281a.m407a(9150);
                    break;
                }
            case 9151:
                m7524a("MSG_UI_GALLERY_SINGLE_TO_PREVIOUS_FILE", 4);
                if (this.f8281a.m7355ab()) {
                    int m7103b2 = C1674a.m7103b(this.f8281a.f8159e.f7540b, this.f8281a.f8159e.f7557s);
                    m7524a("TO_PREVIOUS_FILE Release_Done:" + m7103b2, 2);
                    this.f8281a.m7415k(m7103b2);
                    this.f8281a.f8159e.f7557s = m7103b2;
                    this.f8281a.m7335a(true, false, true);
                    this.f8281a.f8122c.m7994c(268435455L);
                    break;
                } else {
                    this.f8281a.m407a(9151);
                    break;
                }
            case 12039:
                this.f8281a.f8122c.f8782c.f7649g.f7629a = 0;
                if (!this.f8281a.f8159e.f7500A) {
                    this.f8281a.m7448w(true);
                    break;
                }
                break;
            case 12051:
                switch (c0121a.m1207b("state")) {
                    case 0:
                        if (this.f8281a.m7368ao()) {
                            this.f8281a.m7296D();
                            this.f8281a.m7294C();
                            this.f8281a.m7367an();
                            break;
                        }
                        break;
                }
            case 32768:
                m7524a("MSG_KEY_BACK " + this.f8281a.f8159e.f7556r, 4);
                if (!this.f8281a.m7436r()) {
                    if (this.f8281a.m7430p()) {
                        if (this.f8281a.m7425n()) {
                            this.f8281a.m7416k(false);
                            this.f8281a.m7421m(true);
                        } else if (this.f8281a.m7450x()) {
                            this.f8281a.m7442t(false);
                        } else {
                            this.f8281a.m407a(9129);
                        }
                        this.f8281a.f8122c.m7994c(268435455L);
                        break;
                    } else {
                        if (this.f8281a.m7454z()) {
                            this.f8281a.m7446v(false);
                        }
                        if (this.f8281a.m7321W()) {
                            this.f8281a.m7322X();
                        } else if (this.f8281a.m7450x()) {
                            this.f8281a.m7442t(false);
                            this.f8281a.m407a(8962);
                            if (this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s) == 1) {
                                this.f8281a.m7449x(false);
                            }
                        } else if (this.f8281a.m7309K()) {
                            this.f8281a.m7293B(false);
                        } else {
                            this.f8281a.mo408a(8966, 0L);
                        }
                        this.f8281a.f8122c.m7994c(268435455L);
                        break;
                    }
                }
                break;
            case 32769:
                this.f8281a.m7449x(false);
                if (this.f8281a.m7368ao()) {
                    this.f8281a.m7296D();
                    this.f8281a.m7294C();
                    break;
                } else {
                    this.f8281a.m7302G();
                    break;
                }
        }
    }

    /* renamed from: e */
    public void m7535e(Message message) {
        new C0121a(message);
        switch (message.what) {
            case 9103:
                String str = this.f8281a.f8159e.f7520U;
                this.f8281a.f8159e.f7520U = null;
                m7524a("Add video:" + C0045b.m418a(str) + "x" + C0045b.m420b(str), 3);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
                long j = 0;
                try {
                    j = simpleDateFormat.parse(simpleDateFormat.format(new Date(System.currentTimeMillis()))).getTime();
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                int m524g = this.f8281a.f8158d.f7478b.f7526a.m524g();
                this.f8281a.f8158d.f7481e.m557a(str.substring(str.lastIndexOf("/") + 1, str.length()), str.substring(0, str.lastIndexOf("/") + 1), -1L, 1, 1, C0045b.m418a(str), C0045b.m420b(str), 0L, j, j, m524g + 1, 0, true, true, true, true, false, true, true);
                break;
            case 9104:
                this.f8281a.f8122c.m8018x();
                C0058b c0058b = this.f8281a.f8158d.f7482f;
                this.f8281a.f8158d.f7478b.f7526a.m507a(this.f8281a.f8158d.f7481e.m550a(), c0058b);
                int m524g2 = this.f8281a.f8159e.f7526a.m524g();
                int m542u = this.f8281a.f8159e.f7526a.m542u(m524g2);
                m7524a("LeaveVideoMakingGroup " + m524g2 + " " + m542u, 4);
                this.f8281a.f8159e.f7557s = m542u;
                this.f8281a.m7314P();
                this.f8281a.f8159e.f7551m.m7045a();
                this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), c0058b);
                this.f8281a.m7408i();
                this.f8281a.f8159e.f7551m.m7054b();
                this.f8281a.m7406h(this.f8281a.f8159e.f7557s);
                this.f8281a.m7328a(this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s), m7528d());
                this.f8281a.f8122c.m7975a(1056);
                break;
            case 9105:
                this.f8281a.f8159e.f7519T.m909a();
                break;
            case 9106:
                this.f8281a.f8122c.m7975a(1056);
                break;
        }
    }

    /* renamed from: b */
    private void m7525b() {
        this.f8281a.f8159e.f7556r = false;
        this.f8281a.f8159e.f7540b.m507a(this.f8281a.f8158d.f7481e.m550a(), this.f8281a.f8158d.f7478b.f7526a.m517d());
        if (this.f8281a.f8159e.f7558t >= this.f8281a.f8159e.f7540b.m518e()) {
            this.f8281a.f8159e.f7557s = this.f8281a.f8159e.f7558t - 1;
        } else {
            this.f8281a.f8159e.f7557s = this.f8281a.f8159e.f7558t;
        }
        this.f8281a.f8159e.f7558t = 0;
    }

    /* renamed from: a */
    private Intent m7523a(ArrayList<String> arrayList) {
        Intent intent;
        if (arrayList.size() > 1) {
            intent = new Intent("android.intent.action.SEND_MULTIPLE");
        } else {
            intent = new Intent("android.intent.action.SEND");
        }
        intent.setType("image/*");
        if (arrayList.size() > 1) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.clear();
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList2.add(Uri.fromFile(new File(arrayList.get(i))));
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2);
        } else {
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(arrayList.get(0))));
        }
        return intent;
    }

    /* renamed from: c */
    private void m7527c() {
        ArrayList<C1659a> arrayList = new ArrayList<>();
        if (this.f8281a.f8159e.f7556r) {
            int m540s = this.f8281a.f8159e.f7540b.m540s(this.f8281a.f8159e.f7557s);
            int m529i = this.f8281a.f8159e.f7540b.m529i(this.f8281a.f8159e.f7557s, 0);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(m529i));
            arrayList.add(new C1659a(m540s, arrayList2, 5, 1));
        } else {
            C0057a m539r = this.f8281a.f8159e.f7540b.m539r(this.f8281a.f8159e.f7557s);
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < m539r.f491c.size(); i++) {
                arrayList3.add(m539r.f491c.get(i));
            }
            arrayList.add(new C1659a(m539r.f490b, arrayList3, 5, 1));
        }
        this.f8281a.f8122c.m7983a(arrayList);
        this.f8281a.m7409i(this.f8281a.f8159e.f7557s);
        if (this.f8281a.f8159e.f7557s >= this.f8281a.f8159e.f7540b.m518e() - 1) {
            C1663e c1663e = this.f8281a.f8159e;
            c1663e.f7557s--;
        }
    }

    /* renamed from: d */
    private boolean m7528d() {
        return m7526b(this.f8281a.f8159e.f7557s);
    }

    /* renamed from: b */
    private boolean m7526b(int i) {
        if (this.f8281a.f8159e.f7513N != 0) {
            return false;
        }
        return this.f8281a.f8159e.f7540b.m530i(i) && !this.f8281a.f8159e.f7540b.m531j(i);
    }

    /* renamed from: f */
    protected void m7536f(Message message) {
        boolean m7383b;
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 20492:
                this.f8281a.m7420m(this.f8281a.f8159e.f7557s);
                this.f8281a.m7352aN();
                break;
            case 20493:
                this.f8281a.f8159e.f7550l.clear();
                this.f8281a.m407a(9134);
                break;
            case 20494:
                this.f8281a.f8159e.f7550l.clear();
                this.f8281a.m407a(9143);
                break;
            case 20495:
                this.f8281a.m7420m(this.f8281a.f8159e.f7557s);
                this.f8281a.m7350aL();
                break;
            case 20496:
                this.f8281a.f8159e.f7550l.clear();
                this.f8281a.m407a(9134);
                break;
            case 20497:
                this.f8281a.f8159e.f7550l.clear();
                this.f8281a.m407a(9143);
                break;
            case 20501:
                this.f8281a.m7363aj();
                this.f8281a.mo408a(9127, 0L);
                break;
            case 20502:
                String m1211d = c0121a.m1211d("FilePath");
                if (this.f8281a.f8159e.f7514O == 1 || this.f8281a.f8159e.f7514O == 4 || this.f8281a.f8159e.f7514O == 5 || this.f8281a.f8159e.f7514O == 2) {
                    m7383b = this.f8281a.m7383b(m1211d);
                } else {
                    m7524a("Get snapshot fail: 360 Player not ready!", 2);
                    m7383b = false;
                }
                C0121a c0121a2 = new C0121a(9130);
                c0121a2.m1203a("FilePath", m1211d);
                c0121a2.m1204a("bSuccess", m7383b);
                this.f8281a.m409a(c0121a2);
                break;
        }
    }

    /* renamed from: a */
    protected void m7529a() {
        m7530a(this.f8281a.f8159e.f7540b.m504a(this.f8281a.f8159e.f7557s));
    }

    /* renamed from: a */
    protected void m7530a(int i) {
        if (i == 0) {
            this.f8281a.f8159e.f7514O = 1;
        } else {
            this.f8281a.f8159e.f7514O = 4;
        }
    }
}
