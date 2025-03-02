package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p008g.C0069a;
import android.content.Context;
import android.os.Message;
import com.huawei.cvIntl60.R;
import java.io.File;
import p026a.p032c.C0121a;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1668j;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.a */
/* loaded from: classes.dex */
public class C1745a {

    /* renamed from: a */
    private UI_GifMakingController f8267a;

    /* renamed from: b */
    private String f8268b = null;

    /* renamed from: c */
    private long f8269c = 0;

    /* renamed from: a */
    private void m7497a(String str, int i) {
        C0052d.m465a("UI_GifMakingHandler", str, i);
    }

    public C1745a(UI_GifMakingController uI_GifMakingController) {
        this.f8267a = null;
        this.f8267a = uI_GifMakingController;
    }

    /* renamed from: a */
    public void m7499a(Message message) {
        int i;
        int i2;
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8448:
                this.f8267a.f7877b.m7975a(3648);
                this.f8267a.f7887l.m43g();
                this.f8267a.f7887l.m42f();
                C0121a c0121a2 = new C0121a(11024);
                c0121a2.m1200a("nextActivity", 256);
                this.f8267a.m409a(c0121a2);
                break;
            case 8452:
                this.f8267a.f7877b.m7975a(3648);
                this.f8267a.f7887l.m43g();
                this.f8267a.f7887l.m42f();
                this.f8267a.m7156d(0);
                C0121a c0121a3 = new C0121a(11024);
                c0121a3.m1200a("nextActivity", 1024);
                this.f8267a.m409a(c0121a3);
                break;
            case 11010:
                this.f8267a.m7169o();
                break;
            case 11013:
                this.f8267a.m7156d(1);
                break;
            case 11014:
                this.f8267a.m7156d(2);
                break;
            case 11015:
                this.f8267a.m7156d(3);
                break;
            case 11019:
                if (c0121a.m1207b("GifGenerateStatus") == 4) {
                    String str = this.f8268b;
                    if (this.f8267a.f7879d.f7523X.f331a == 6) {
                        i = 450;
                        i2 = 450;
                    } else {
                        i = IjkMediaCodecInfo.RANK_LAST_CHANCE;
                        i2 = 300;
                    }
                    File file = new File(str);
                    int m561c = this.f8267a.f7878c.f7481e.m561c();
                    this.f8267a.f7878c.f7481e.m558a(str.substring(str.lastIndexOf("/") + 1, str.length()), str.substring(0, str.lastIndexOf("/") + 1), file.length(), 6, 1, i, i2, 0L, this.f8269c, this.f8269c, m561c + 1, 0, true, true, true, true, false, false, false, false, true);
                    this.f8267a.f7877b.m8018x();
                    this.f8267a.f7878c.f7478b.f7526a.m507a(this.f8267a.f7878c.f7481e.m550a(), this.f8267a.f7878c.f7482f);
                    C0069a.m641a(this.f8267a, str);
                    m7498a(false);
                    this.f8267a.mo408a(8452, 0L);
                    this.f8267a.f7879d.f7500A = true;
                    this.f8267a.f7879d.f7501B = str;
                    break;
                } else if (c0121a.m1207b("GifGenerateStatus") == 3) {
                    m7497a("GifGenerateStatus: GET_GIF_GENERATOR_FAIL", 2);
                    if (this.f8267a.f7877b.m7974a() != 3648) {
                        if (this.f8267a.f7882g) {
                            this.f8267a.f7877b.m7975a(3600);
                        } else {
                            this.f8267a.f7877b.m7975a(3601);
                        }
                        this.f8267a.m7153c(1);
                        m7498a(false);
                        if (this.f8268b != null) {
                            File file2 = new File(this.f8268b);
                            if (file2.exists()) {
                                file2.delete();
                            }
                        }
                        if (this.f8267a.f7883h && this.f8267a.f7879d.f7542d == 2) {
                            m7497a("GIF fail by card removed", 2);
                            this.f8267a.f7885j = true;
                            this.f8267a.mo408a(8452, 0L);
                            break;
                        }
                    }
                } else if (c0121a.m1207b("GifGenerateStatus") == 0) {
                    if (this.f8267a.f7882g) {
                        this.f8267a.f7877b.m7975a(3600);
                    } else {
                        this.f8267a.f7877b.m7975a(3601);
                    }
                    this.f8267a.m7153c(1);
                    break;
                } else {
                    m7497a("Generate Start", 3);
                    break;
                }
                break;
            case 11021:
                this.f8267a.m7151b(false);
                break;
            case 11022:
                this.f8267a.m7156d(0);
                break;
            case 11023:
                this.f8267a.m7156d(4);
                break;
            case 11024:
                int m1207b = c0121a.m1207b("nextActivity");
                if (this.f8267a.m7164j()) {
                    switch (m1207b) {
                        case 256:
                            this.f8267a.m7174t();
                            break;
                        case 1024:
                            this.f8267a.m7173s();
                            break;
                    }
                } else {
                    this.f8267a.mo410a(c0121a, 50L);
                    break;
                }
                break;
            case 12033:
                m7497a("ulBrowseIndex " + this.f8267a.f7879d.f7557s, 3);
                m7497a("ulBrowseSingleIndex " + this.f8267a.f7879d.f7558t, 3);
                this.f8267a.f7879d.f7502C = 0;
                this.f8267a.f7879d.f7504E = 1;
                this.f8267a.f7879d.f7505F = 0;
                this.f8267a.m7157e();
                this.f8267a.f7877b.m7994c(268435455L);
                break;
            case 12034:
                m7497a("ACTIVITY_RESUME", 4);
                C1668j c1668j = this.f8267a.f7877b.f8782c;
                if (this.f8267a.f7877b.m8011p() && this.f8267a.f7877b.f8782c.f7646d) {
                    this.f8267a.f7877b.m8004i();
                    this.f8267a.f7877b.f8782c.f7646d = false;
                }
                if (this.f8267a.m7163i() == 2) {
                    this.f8267a.m7165k();
                    break;
                }
                break;
            case 12035:
                m7497a("ACTIVITY_PAUSE", 4);
                C1668j c1668j2 = this.f8267a.f7877b.f8782c;
                break;
            case 12036:
                m7497a("ACTIVITY_STOP", 4);
                break;
            case 12037:
                m7497a("ACTIVITY_DESTROY", 4);
                break;
            case 12039:
                this.f8267a.f7877b.f8782c.f7649g.f7629a = 0;
                break;
            case 12042:
                C0091o.m889a((Context) this.f8267a, true, false, this.f8267a.getResources().getString(R.string.warning), this.f8267a.getResources().getString(R.string.permission_always_deny_msg), this.f8267a.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 12043:
                if (!this.f8267a.f7879d.f7564z) {
                    this.f8267a.f7887l.m42f();
                    C0121a c0121a4 = new C0121a(11024);
                    c0121a4.m1200a("nextActivity", 256);
                    this.f8267a.m409a(c0121a4);
                    break;
                }
                break;
            case 12046:
            case 12047:
            case 12048:
                break;
            case 12049:
                this.f8267a.m7152c();
                break;
            case 18436:
                if (!this.f8267a.f7879d.f7564z) {
                    this.f8267a.f7877b.f8782c.f7647e = false;
                    if (this.f8267a.f7877b.m8011p()) {
                        this.f8267a.f7877b.m8004i();
                        this.f8267a.f7877b.f8782c.f7646d = true;
                        break;
                    }
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7497a("has permission, need to switch to live view", 1);
                    this.f8267a.f7877b.f8782c.f7646d = false;
                    this.f8267a.f7877b.m7976a(8448, 0L);
                    break;
                }
                break;
            default:
                switch (this.f8267a.f7877b.m7974a()) {
                    case 3600:
                        m7501c(message);
                        break;
                    case 3601:
                        m7500b(message);
                        break;
                    case 3616:
                        m7502d(message);
                        break;
                    case 3632:
                        m7503e(message);
                        break;
                }
        }
    }

    /* renamed from: b */
    public void m7500b(Message message) {
        m7497a("UI_GifMakingMainVideo handleMessage: 0x" + Integer.toHexString(message.what), 3);
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 11011:
                this.f8267a.f7877b.m7975a(3616);
                int i = (this.f8267a.f7879d.f7505F * 1000) + (this.f8267a.f7889n * 1000);
                int i2 = (this.f8267a.f7889n * 1000) + (this.f8267a.f7879d.f7506G * 1000);
                if (i2 > this.f8267a.f7887l.getDuration()) {
                    i2 = this.f8267a.f7887l.getDuration();
                }
                m7497a("PrePlay lVideoStartTime:" + i + ", lVideoEndTime:" + i2, 3);
                this.f8267a.f7887l.m34a(i / 1000, i2 / 1000, 1);
                this.f8267a.m7153c(2);
                this.f8267a.m7168n();
                break;
            case 11012:
                long m461a = C0052d.m461a(C1658c.f7455c, 0);
                m7497a("dlAvailableSize: " + m461a, 3);
                if (m461a < 57671680) {
                    this.f8267a.m7151b(true);
                    break;
                } else {
                    m7498a(true);
                    this.f8267a.f7877b.m7975a(3632);
                    int i3 = (this.f8267a.f7879d.f7505F * 1000) + (this.f8267a.f7889n * 1000);
                    int i4 = (this.f8267a.f7889n * 1000) + (this.f8267a.f7879d.f7506G * 1000);
                    if (i4 > this.f8267a.f7887l.getDuration()) {
                        i4 = this.f8267a.f7887l.getDuration();
                    }
                    m7497a("Generator lVideoStartTime:" + i3 + ", lVideoEndTime:" + i4, 3);
                    this.f8269c = System.currentTimeMillis();
                    this.f8268b = C0069a.m644b(C1658c.f7456d + C0069a.m639a(Long.valueOf(this.f8269c), "gif"));
                    this.f8267a.f7887l.m37a(this.f8268b, this.f8267a.f7886k);
                    this.f8267a.f7887l.m34a(i3 / 1000, i4 / 1000, 2);
                    this.f8267a.m7168n();
                    break;
                }
            case 11016:
                this.f8267a.f7879d.f7504E = c0121a.m1207b("SelectPointer");
                switch (this.f8267a.f7879d.f7504E) {
                    case 1:
                        this.f8267a.f7879d.f7505F = c0121a.m1207b("Index");
                        this.f8267a.m7158e(this.f8267a.f7879d.f7505F * 1000);
                        if (this.f8267a.f7879d.f7506G - this.f8267a.f7879d.f7505F > 4) {
                            this.f8267a.f7879d.f7506G = this.f8267a.f7879d.f7505F + 4;
                            this.f8267a.f7888m.m736b(this.f8267a.f7879d.f7506G);
                            break;
                        }
                        break;
                    case 2:
                        this.f8267a.f7879d.f7506G = c0121a.m1207b("Index");
                        if (this.f8267a.f7879d.f7506G - this.f8267a.f7879d.f7505F > 4) {
                            this.f8267a.f7879d.f7505F = this.f8267a.f7879d.f7506G - 4;
                            this.f8267a.f7888m.m733a(this.f8267a.f7879d.f7505F);
                            this.f8267a.m7158e(this.f8267a.f7879d.f7505F * 1000);
                            break;
                        }
                        break;
                }
            case 11020:
                if (c0121a.m1207b("360PlayerStatus") == 2) {
                    this.f8267a.m7171q();
                    this.f8267a.m7166l();
                    this.f8267a.m7150a(true);
                } else if (c0121a.m1207b("360PlayerStatus") == 1) {
                    if (this.f8267a.f7887l != null) {
                        this.f8267a.m7153c(1);
                        m7498a(false);
                        this.f8267a.m7159f();
                    }
                } else if (c0121a.m1207b("360PlayerStatus") == 5) {
                    this.f8267a.f7887l.setPlayerStatusListener(null);
                }
                if (c0121a.m1207b("360PlayerStatus") == 0) {
                    this.f8267a.m7150a(false);
                    break;
                }
                break;
            case 32768:
                this.f8267a.mo408a(8452, 0L);
                break;
        }
    }

    /* renamed from: c */
    public void m7501c(Message message) {
        m7497a("UI_GifMakingMainPhoto handleMessage: 0x" + Integer.toHexString(message.what), 3);
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 11008:
                this.f8267a.m7170p();
                this.f8267a.m7168n();
                break;
            case 11011:
                this.f8267a.f7877b.m7975a(3616);
                this.f8267a.f7887l.m32a(1);
                this.f8267a.m7153c(2);
                this.f8267a.m7168n();
                break;
            case 11012:
                long m461a = C0052d.m461a(C1658c.f7455c, 0);
                m7497a("dlAvailableSize: " + m461a, 3);
                if (m461a < 57671680) {
                    this.f8267a.m7151b(true);
                    break;
                } else {
                    this.f8267a.f7877b.m7988b(268435455L);
                    m7498a(true);
                    this.f8267a.f7877b.m7975a(3632);
                    this.f8269c = System.currentTimeMillis();
                    this.f8268b = C0069a.m644b(C1658c.f7456d + C0069a.m639a(Long.valueOf(this.f8269c), "gif"));
                    this.f8267a.f7887l.m37a(this.f8268b, this.f8267a.f7886k);
                    this.f8267a.f7887l.m32a(2);
                    this.f8267a.m7168n();
                    break;
                }
            case 11020:
                if (this.f8267a.f7884i) {
                    this.f8267a.f7884i = false;
                    break;
                } else {
                    if (c0121a.m1207b("360PlayerStatus") == 2) {
                        this.f8267a.m7162h();
                        this.f8267a.m7150a(true);
                        this.f8267a.f7877b.m7994c(268435455L);
                    } else if (c0121a.m1207b("360PlayerStatus") == 1) {
                        if (this.f8267a.f7887l != null) {
                            this.f8267a.m7153c(1);
                            m7498a(false);
                            this.f8267a.m7161g();
                        }
                    } else if (c0121a.m1207b("360PlayerStatus") == 5) {
                        this.f8267a.f7887l.setPlayerStatusListener(null);
                    }
                    if (c0121a.m1207b("360PlayerStatus") == 0) {
                        this.f8267a.m7150a(false);
                        break;
                    }
                }
                break;
            case 32768:
                this.f8267a.mo408a(8452, 0L);
                break;
        }
    }

    /* renamed from: d */
    public void m7502d(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 11011:
            case 32768:
                this.f8267a.m7155d();
                this.f8267a.m7153c(1);
                this.f8267a.m7168n();
                break;
            case 11020:
                if (c0121a.m1207b("360PlayerStatus") == 0) {
                    this.f8267a.m7155d();
                    break;
                }
                break;
        }
    }

    /* renamed from: e */
    public void m7503e(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 11020:
                if (c0121a.m1207b("360PlayerStatus") == 0) {
                    this.f8267a.m7155d();
                    break;
                }
                break;
        }
    }

    /* renamed from: a */
    private void m7498a(boolean z) {
        this.f8267a.m7154c(z);
    }
}
