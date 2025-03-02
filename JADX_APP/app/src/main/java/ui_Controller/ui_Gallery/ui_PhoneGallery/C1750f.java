package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0043a;
import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p005e.C0058b;
import GeneralFunction.p006f.p007a.C0067c;
import GeneralFunction.p008g.C0069a;
import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadataRetriever;
import android.os.Message;
import com.huawei.cvIntl60.R;
import java.io.File;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1668j;
import ui_Controller.ui_Liveview.UI_LiveViewController;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.f */
/* loaded from: classes.dex */
public class C1750f {

    /* renamed from: a */
    String f8284a = null;

    /* renamed from: b */
    String f8285b = null;

    /* renamed from: c */
    private UI_VideoCutController f8286c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7538a(String str, int i) {
        C0052d.m465a("UI_VideoCutHandler", str, i);
    }

    public C1750f(UI_VideoCutController uI_VideoCutController) {
        this.f8286c = null;
        this.f8286c = uI_VideoCutController;
    }

    /* renamed from: a */
    public void m7541a(Message message) {
        int i;
        int i2;
        C0058b c0058b;
        switch (message.what) {
            case 20500:
                boolean z = this.f8286c.f8235d.f7542d == 2;
                int m561c = this.f8286c.f8234c.f7481e.m561c();
                String str = this.f8285b;
                File file = new File(str);
                long length = file.length();
                C0121a c0121a = new C0121a(message);
                int m1207b = c0121a.m1207b("lStartTime");
                int m1207b2 = c0121a.m1207b("lEndTime");
                long m1209c = c0121a.m1209c("dlCurrentTime");
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
                    i = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                    i2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    i = 0;
                    i2 = 1;
                }
                this.f8286c.f8234c.f7481e.m558a(str.substring(str.lastIndexOf("/") + 1, str.length()), str.substring(0, str.lastIndexOf("/") + 1), length, 1, 1, i, i2, m1207b2 - m1207b, m1209c, m1209c, m561c + 1, 0, true, true, true, true, false, true, true, z, false);
                this.f8286c.f8233b.m8018x();
                C0069a.m641a(this.f8286c, str);
                this.f8286c.f8234c.f7481e.m549a(this.f8286c.f8234c.f7479c, this.f8286c.f8234c.f7482f, this.f8286c.f8234c.f7483g, this.f8286c.f8234c.f7484h);
                if (z) {
                    c0058b = this.f8286c.f8234c.f7483g;
                } else {
                    c0058b = this.f8286c.f8234c.f7482f;
                }
                this.f8286c.f8234c.f7478b.f7526a.m507a(this.f8286c.f8234c.f7481e.m550a(), c0058b);
                this.f8286c.f8234c.f7478b.f7540b.m507a(this.f8286c.f8234c.f7481e.m550a(), c0058b);
                this.f8286c.f8235d.f7557s = this.f8286c.f8235d.f7526a.m542u(m561c + 1);
                this.f8286c.m7496u();
                C0069a.m648d(this.f8285b, C0069a.m649d(this.f8285b));
                this.f8286c.m407a(11079);
                break;
        }
    }

    /* renamed from: b */
    public void m7542b(Message message) {
        new C0121a(message);
        switch (message.what) {
            case 8448:
                this.f8286c.f8233b.m7978a(256, this.f8286c, new Intent(this.f8286c, (Class<?>) UI_LiveViewController.class));
                this.f8286c.f8233b.m7977a(0, (ActivityC0044a) null);
                this.f8286c.f8233b.m7988b(268435455L);
                this.f8286c.f8235d.f7542d = 1;
                break;
            case 8452:
                Intent intent = new Intent(this.f8286c, (Class<?>) UI_PhoneGalleryController.class);
                if (this.f8286c.f8236e) {
                    intent.putExtra("mode", 1024);
                    this.f8286c.f8236e = false;
                    this.f8286c.f8235d.f7555q = new C0043a((Context) this.f8286c.f8233b, true, this.f8286c.getResources().getString(R.string.sdcard_removed), 2000);
                } else {
                    intent.putExtra("mode", 1056);
                }
                this.f8286c.f8233b.m7978a(1024, this.f8286c, intent);
                this.f8286c.f8233b.m7977a(0, (ActivityC0044a) null);
                this.f8286c.f8233b.m7988b(268435455L);
                break;
            case 11080:
                if (this.f8286c.m7491p()) {
                    this.f8286c.m7492q();
                    break;
                } else {
                    this.f8286c.mo408a(11080, 50L);
                    break;
                }
            case 12033:
                m7538a("ulBrowseIndex " + this.f8286c.f8235d.f7557s, 3);
                m7538a("ulBrowseSingleIndex " + this.f8286c.f8235d.f7558t, 3);
                this.f8286c.f8235d.f7502C = 0;
                this.f8286c.f8235d.f7504E = 1;
                this.f8286c.f8235d.f7505F = 0;
                this.f8286c.m7476d();
                this.f8286c.f8233b.m7994c(268435455L);
                break;
            case 12043:
                if (!this.f8286c.f8235d.f7564z) {
                    this.f8286c.f8235d.f7502C = 3;
                    this.f8286c.m7490o();
                    this.f8286c.m407a(11080);
                    break;
                }
                break;
            case 12046:
            case 12047:
            case 12048:
                break;
            case 12049:
                this.f8286c.m7473c();
                break;
            default:
                switch (this.f8286c.f8233b.m7974a()) {
                    case 3344:
                        m7543c(message);
                        break;
                    case 3360:
                        m7544d(message);
                        break;
                }
        }
    }

    /* renamed from: c */
    public void m7543c(Message message) {
        m7538a("UI_MakingVideoMain handleMessage: 0x" + Integer.toHexString(message.what), 3);
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 9097:
                if (c0121a.m1207b("360PlayerStatus") == 2) {
                    this.f8286c.m7489n();
                    this.f8286c.m7479e(this.f8286c.f8235d.f7505F * 1000);
                    this.f8286c.m7483h();
                    break;
                } else if (c0121a.m1207b("360PlayerStatus") == 1) {
                    if (this.f8286c.f8235d.f7502C != 4 && this.f8286c.f8235d.f7502C != 3 && this.f8286c.f8239h != null) {
                        this.f8286c.m7478e();
                        break;
                    }
                } else if (c0121a.m1207b("360PlayerStatus") == 5) {
                }
                break;
            case 11072:
            case 11073:
                this.f8286c.f8235d.f7504E = c0121a.m1207b("SelectPointer");
                switch (this.f8286c.f8235d.f7504E) {
                    case 1:
                        this.f8286c.f8235d.f7505F = c0121a.m1207b("Index");
                        this.f8286c.m7479e(this.f8286c.f8235d.f7505F * 1000);
                        break;
                    case 2:
                        this.f8286c.f8235d.f7506G = c0121a.m1207b("Index");
                        break;
                }
                this.f8286c.m7487l();
                break;
            case 11074:
                this.f8286c.f8233b.m7975a(3360);
                this.f8286c.f8235d.f7502C = 2;
                this.f8286c.m7477d(2);
                this.f8286c.m407a(11076);
                this.f8286c.m7488m();
                break;
            case 11075:
                if (this.f8286c.m7493r() != -1) {
                    if (this.f8286c.m7493r() == 1) {
                        this.f8286c.m7472b(true);
                        this.f8286c.f8233b.m7994c(268435455L);
                        break;
                    } else {
                        m7540a(true);
                        final int i = this.f8286c.f8235d.f7505F;
                        final int i2 = this.f8286c.f8235d.f7506G;
                        this.f8284a = this.f8286c.f8235d.f7540b.m536o(this.f8286c.f8235d.f7557s);
                        final Long valueOf = Long.valueOf(System.currentTimeMillis());
                        String m639a = C0069a.m639a(valueOf, "mp4");
                        if (this.f8286c.f8235d.f7542d == 2) {
                            this.f8285b = C0069a.m644b(this.f8286c.f8235d.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/" + m639a);
                            new File(this.f8286c.f8235d.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/").mkdirs();
                            File file = new File(this.f8285b);
                            if (file.exists()) {
                                file.delete();
                            }
                        } else {
                            this.f8285b = C0069a.m644b(C1658c.f7455c + m639a);
                            File file2 = new File(this.f8285b);
                            if (file2.exists()) {
                                file2.delete();
                            }
                        }
                        m7538a("Cut video Start", 3);
                        if (this.f8286c.f8238g == null) {
                            this.f8286c.f8238g = new C0067c();
                            this.f8286c.f8237f = false;
                        }
                        this.f8286c.f8238g.m628a(this.f8284a, this.f8285b, i, i2, new C0067c.a() { // from class: ui_Controller.ui_Gallery.ui_PhoneGallery.f.1
                            @Override // GeneralFunction.p006f.p007a.C0067c.a
                            /* renamed from: a */
                            public void mo629a(int i3) {
                                C1750f.this.m7538a("Cut video End", 3);
                                C1750f.this.f8286c.f8238g = null;
                                if (!C1750f.this.f8286c.f8236e) {
                                    C0121a c0121a2 = new C0121a(11078);
                                    c0121a2.m1200a("lStartTime", i);
                                    c0121a2.m1200a("lEndTime", i2);
                                    c0121a2.m1201a("dlCurrentTime", valueOf.longValue());
                                    C1750f.this.f8286c.m409a(c0121a2);
                                }
                            }
                        });
                        break;
                    }
                }
                break;
            case 11077:
                this.f8286c.m7472b(false);
                break;
            case 11078:
                if (this.f8286c.f8237f) {
                    this.f8286c.f8237f = false;
                    File file3 = new File(this.f8285b);
                    if (file3.exists()) {
                        file3.delete();
                    }
                    this.f8285b = null;
                    break;
                } else {
                    m7538a("addMetaDataInfo Start: " + System.currentTimeMillis(), 3);
                    this.f8286c.m7470a(this.f8285b);
                    m7538a("addMetaDataInfo End: " + System.currentTimeMillis(), 3);
                    C0121a c0121a2 = new C0121a(message);
                    int m1207b = c0121a2.m1207b("lStartTime");
                    int m1207b2 = c0121a2.m1207b("lEndTime");
                    long m1209c = c0121a2.m1209c("dlCurrentTime");
                    C0121a c0121a3 = new C0121a(20500);
                    c0121a3.m1200a("lStartTime", m1207b);
                    c0121a3.m1200a("lEndTime", m1207b2);
                    c0121a3.m1201a("dlCurrentTime", m1209c);
                    this.f8286c.m414b(c0121a3);
                    break;
                }
            case 11079:
                this.f8286c.f8235d.f7502C = 4;
                this.f8286c.m7490o();
                m7540a(false);
                this.f8286c.m407a(11080);
                break;
            case 12034:
                m7538a("ACTIVITY_RESUME", 4);
                C1668j c1668j = this.f8286c.f8233b.f8782c;
                if (this.f8286c.f8233b.m8011p() && this.f8286c.f8233b.f8782c.f7646d) {
                    this.f8286c.f8233b.m8004i();
                    this.f8286c.f8233b.f8782c.f7646d = false;
                }
                if (this.f8286c.m7480f() == 2) {
                    this.f8286c.m7482g();
                    break;
                }
                break;
            case 12035:
                m7538a("ACTIVITY_PAUSE", 4);
                if (this.f8286c.f8238g != null) {
                    this.f8286c.f8237f = true;
                    m7540a(false);
                    this.f8286c.f8238g.m627a();
                    this.f8286c.f8238g = null;
                    this.f8286c.f8233b.m7994c(268435455L);
                }
                C1668j c1668j2 = this.f8286c.f8233b.f8782c;
                break;
            case 12036:
                m7538a("ACTIVITY_STOP", 4);
                break;
            case 12037:
                m7538a("ACTIVITY_DESTROY", 4);
                break;
            case 12039:
                this.f8286c.f8233b.f8782c.f7649g.f7629a = 0;
                break;
            case 12042:
                C0091o.m889a((Context) this.f8286c, true, false, this.f8286c.getResources().getString(R.string.warning), this.f8286c.getResources().getString(R.string.permission_always_deny_msg), this.f8286c.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 18436:
                if (!this.f8286c.f8235d.f7564z) {
                    this.f8286c.f8233b.f8782c.f7647e = false;
                    if (this.f8286c.f8233b.m8011p()) {
                        this.f8286c.f8233b.m8004i();
                        this.f8286c.f8233b.f8782c.f7646d = true;
                        break;
                    }
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7538a("has permission, need to switch to live view", 1);
                    this.f8286c.f8233b.f8782c.f7646d = false;
                    this.f8286c.f8235d.f7502C = 3;
                    this.f8286c.m7490o();
                    this.f8286c.m407a(11080);
                    break;
                }
                break;
            case 32768:
                this.f8286c.f8235d.f7502C = 4;
                this.f8286c.m7490o();
                this.f8286c.m407a(11080);
                break;
        }
    }

    /* renamed from: d */
    public void m7544d(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 9097:
                if (c0121a.m1207b("360PlayerStatus") == 0) {
                    this.f8286c.mo408a(11074, 0L);
                    break;
                } else if (c0121a.m1207b("360PlayerStatus") == 3) {
                    this.f8286c.mo408a(11074, 0L);
                    break;
                }
                break;
            case 11074:
            case 32768:
                this.f8286c.f8233b.m7975a(3344);
                this.f8286c.f8235d.f7502C = 1;
                this.f8286c.m7489n();
                this.f8286c.m7479e(this.f8286c.f8235d.f7505F * 1000);
                this.f8286c.m7477d(1);
                break;
            case 11076:
                if (this.f8286c.f8239h.getCurrentPosition() > this.f8286c.f8235d.f7506G * 1000) {
                    this.f8286c.m407a(32768);
                    break;
                } else {
                    this.f8286c.mo408a(11076, 500L);
                    break;
                }
        }
    }

    /* renamed from: a */
    private void m7540a(boolean z) {
        this.f8286c.m7475c(z);
    }
}
