package ui_Controller.ui_Gallery.ui_PhoneGallery;

import GeneralFunction.C0043a;
import GeneralFunction.C0052d;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import com.huawei.cvIntl60.R;
import p026a.p032c.C0121a;
import ui_Controller.p109a.C1658c;
import ui_Controller.p110b.C1668j;
import ui_Controller.ui_Liveview.UI_LiveViewController;

/* renamed from: ui_Controller.ui_Gallery.ui_PhoneGallery.b */
/* loaded from: classes.dex */
public class C1746b {

    /* renamed from: a */
    private UI_NormalPicMakingController f8270a;

    /* renamed from: a */
    private void m7504a(String str, int i) {
        C0052d.m465a("UI_NormalPicMakingHandler", str, i);
    }

    public C1746b(UI_NormalPicMakingController uI_NormalPicMakingController) {
        this.f8270a = null;
        this.f8270a = uI_NormalPicMakingController;
    }

    /* renamed from: a */
    public void m7506a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8448:
                this.f8270a.m7214k();
                this.f8270a.f7957b.m7978a(256, this.f8270a, new Intent(this.f8270a, (Class<?>) UI_LiveViewController.class));
                this.f8270a.f7957b.m7977a(0, (ActivityC0044a) null);
                this.f8270a.f7957b.m7988b(268435455L);
                this.f8270a.f7959d.f7542d = 1;
                break;
            case 8452:
                this.f8270a.m7214k();
                this.f8270a.m7204c(0);
                Intent intent = new Intent(this.f8270a, (Class<?>) UI_PhoneGalleryController.class);
                if (this.f8270a.f7962g) {
                    intent.putExtra("mode", 1024);
                    this.f8270a.f7962g = false;
                    this.f8270a.f7959d.f7555q = new C0043a((Context) this.f8270a.f7957b, true, this.f8270a.getResources().getString(R.string.sdcard_removed), 2000);
                } else {
                    intent.putExtra("mode", 1056);
                }
                this.f8270a.f7957b.m7978a(1024, this.f8270a, intent);
                this.f8270a.f7957b.m7977a(0, (ActivityC0044a) null);
                this.f8270a.f7957b.m7988b(268435455L);
                break;
            case 11041:
                this.f8270a.m7211h();
                break;
            case 11042:
                long m461a = C0052d.m461a(C1658c.f7455c, 0);
                m7504a("dlAvailableSize: " + m461a, 3);
                if (m461a < 53477376) {
                    this.f8270a.m7202b(true);
                    this.f8270a.m7205c(false);
                    this.f8270a.f7957b.m7994c(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
                    break;
                } else {
                    this.f8270a.m412b(20484);
                    break;
                }
            case 11043:
                this.f8270a.m7204c(1);
                break;
            case 11044:
                this.f8270a.m7204c(2);
                break;
            case 11045:
                this.f8270a.m7204c(3);
                break;
            case 11048:
                this.f8270a.m7202b(false);
                this.f8270a.f7957b.m7977a(3856, this.f8270a);
                break;
            case 11049:
                this.f8270a.m7203c();
                break;
            case 11050:
                this.f8270a.m7204c(0);
                break;
            case 11051:
                this.f8270a.m7204c(4);
                break;
            case 12033:
                m7504a("ulBrowseIndex " + this.f8270a.f7959d.f7557s, 3);
                m7504a("ulBrowseSingleIndex " + this.f8270a.f7959d.f7558t, 3);
                this.f8270a.m7208e();
                this.f8270a.m7215l();
                this.f8270a.f7957b.m7994c(268435455L);
                break;
            case 12034:
                m7504a("ACTIVITY_RESUME", 4);
                C1668j c1668j = this.f8270a.f7957b.f8782c;
                if (this.f8270a.f7957b.m8011p() && this.f8270a.f7957b.f8782c.f7646d) {
                    this.f8270a.f7957b.m8004i();
                    this.f8270a.f7957b.f8782c.f7646d = false;
                    break;
                }
                break;
            case 12035:
                m7504a("ACTIVITY_PAUSE", 4);
                C1668j c1668j2 = this.f8270a.f7957b.f8782c;
                break;
            case 12036:
                m7504a("ACTIVITY_STOP", 4);
                break;
            case 12037:
                m7504a("ACTIVITY_DESTROY", 4);
                this.f8270a.m7216m();
                break;
            case 12039:
                this.f8270a.f7957b.f8782c.f7649g.f7629a = 0;
                break;
            case 12042:
                C0091o.m889a((Context) this.f8270a, true, false, this.f8270a.getResources().getString(R.string.warning), this.f8270a.getResources().getString(R.string.permission_always_deny_msg), this.f8270a.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 12043:
                if (!this.f8270a.f7959d.f7564z) {
                    this.f8270a.f7957b.m7978a(c0121a.m1207b("AppMode"), this.f8270a, new Intent(this.f8270a, (Class<?>) c0121a.m1210c()));
                    this.f8270a.f7957b.m7977a(0, (ActivityC0044a) null);
                    this.f8270a.f7957b.m7988b(268435455L);
                    this.f8270a.f7959d.f7542d = 1;
                    break;
                }
                break;
            case 12046:
            case 12047:
            case 12048:
                break;
            case 12049:
                this.f8270a.m7206d();
                break;
            case 18436:
                if (!this.f8270a.f7959d.f7564z) {
                    this.f8270a.f7957b.f8782c.f7647e = false;
                    if (this.f8270a.f7957b.m8011p()) {
                        this.f8270a.f7957b.m8004i();
                        this.f8270a.f7957b.f8782c.f7646d = true;
                        break;
                    }
                }
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7504a("has permission, need to switch to live view", 1);
                    this.f8270a.f7957b.f8782c.f7646d = false;
                    this.f8270a.f7957b.m7976a(8448, 0L);
                    break;
                }
                break;
            default:
                switch (this.f8270a.f7957b.m7974a()) {
                    case 3856:
                        m7507b(message);
                        break;
                    case 3872:
                        m7508c(message);
                        break;
                }
        }
    }

    /* renamed from: b */
    public void m7507b(Message message) {
        m7504a("UI_NormalPicMakingMainPhoto handleMessage: 0x" + Integer.toHexString(message.what), 3);
        new C0121a(message);
        switch (message.what) {
            case 11046:
                m7505a(false);
                this.f8270a.m7200a(true);
                break;
            case 32768:
                if (this.f8270a.f7964i) {
                    this.f8270a.m7200a(false);
                    break;
                } else {
                    this.f8270a.m7210g();
                    this.f8270a.mo408a(8452, 0L);
                    break;
                }
        }
    }

    /* renamed from: c */
    public void m7508c(Message message) {
        m7504a("UI_NormalPicMakingSave handleMessage: 0x" + Integer.toHexString(message.what), 3);
        new C0121a(message);
        switch (message.what) {
            case 11047:
                this.f8270a.m7210g();
                this.f8270a.m7213j();
                this.f8270a.m7205c(false);
                this.f8270a.mo408a(8452, 0L);
                break;
            case 11052:
                this.f8270a.f7957b.m7977a(3856, this.f8270a);
                this.f8270a.m7205c(false);
                this.f8270a.f7963h = false;
                break;
            case 32768:
                m7504a("Normal pic is saving, block back key", 3);
                break;
        }
    }

    /* renamed from: a */
    private void m7505a(boolean z) {
        this.f8270a.m7205c(z);
    }
}
