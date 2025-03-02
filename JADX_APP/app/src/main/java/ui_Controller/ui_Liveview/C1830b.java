package ui_Controller.ui_Liveview;

import GeneralFunction.C0052d;
import GeneralFunction.C0056e;
import GeneralFunction.C0068g;
import GeneralFunction.C0089n;
import GeneralFunction.C0091o;
import GeneralFunction.C0093p;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p012j.C0078b;
import GeneralFunction.p013k.C0080a;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Message;
import android.os.Process;
import com.google.api.client.http.HttpStatusCodes;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p026a.p027a.p028a.C0112b;
import p026a.p027a.p028a.C0114d;
import p026a.p029b.p031b.C0120a;
import p026a.p032c.C0121a;
import p026a.p032c.C0122b;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
import ui_Controller.p109a.C1658c;
import ui_Controller.ui_Gallery.ui_PhoneGallery.UI_PhoneGalleryController;
import ui_Controller.ui_Setting.UI_SettingMenuController;

/* renamed from: ui_Controller.ui_Liveview.b */
/* loaded from: classes.dex */
public class C1830b {

    /* renamed from: b */
    private UI_LiveViewController f8606b;

    /* renamed from: c */
    private boolean f8607c = false;

    /* renamed from: d */
    private boolean f8608d = false;

    /* renamed from: e */
    private boolean f8609e = false;

    /* renamed from: a */
    Integer f8605a = 0;

    /* renamed from: a */
    private void m7827a(String str, int i) {
        C0052d.m465a("UI_LiveViewHandler", str, i);
    }

    public C1830b(UI_LiveViewController uI_LiveViewController) {
        this.f8606b = null;
        this.f8606b = uI_LiveViewController;
    }

    @SuppressLint({"Wakelock"})
    /* renamed from: a */
    public void m7831a(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8449:
                this.f8606b.f8456c.f8782c.f7648f = false;
                this.f8606b.f8456c.m7979a(this.f8606b);
                this.f8606b.f8456c.m7977a(0, (ActivityC0044a) null);
                this.f8606b.f8456c.m7988b(268435455L);
                break;
            case 8452:
                C0091o.m899b(this.f8606b);
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 0;
                if (this.f8606b.f8502f != null && this.f8606b.m7752aj()) {
                    this.f8606b.m7793o();
                    if (this.f8606b.f8456c.f8782c.f7650h.f7691aI != null) {
                        if (!this.f8606b.f8456c.f8782c.f7650h.f7691aI.isRecycled()) {
                            this.f8606b.f8456c.f8782c.f7650h.f7691aI.recycle();
                        }
                        this.f8606b.f8456c.f8782c.f7650h.f7691aI = null;
                    }
                    if (this.f8606b.f8456c.f8783d.m1264b()) {
                        this.f8606b.f8456c.f8782c.f7650h.f7691aI = this.f8606b.f8502f.getBitmap();
                        this.f8606b.m7739a(true, this.f8606b.f8456c.f8782c.f7650h.f7691aI);
                    }
                    this.f8606b.f8502f.m216k();
                    this.f8606b.f8502f.m214i();
                    this.f8606b.f8456c.m7995c(new C0121a(18443));
                    this.f8606b.f8456c.f8782c.f7650h.f7722at = false;
                    this.f8607c = false;
                    this.f8608d = false;
                    this.f8609e = false;
                    this.f8606b.m7782j();
                    this.f8606b.f8456c.f8782c.f7650h.f7731d = 305;
                    C0121a c0121a2 = new C0121a(8735);
                    c0121a2.m1200a("nextActivity", 1024);
                    this.f8606b.m409a(c0121a2);
                    break;
                } else {
                    this.f8606b.mo408a(8452, 50L);
                    break;
                }
                break;
            case 8454:
                C0091o.m899b(this.f8606b);
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 0;
                if (this.f8606b.f8502f != null && this.f8606b.m7752aj()) {
                    this.f8606b.m7793o();
                    if (this.f8606b.f8456c.f8782c.f7650h.f7691aI != null) {
                        if (!this.f8606b.f8456c.f8782c.f7650h.f7691aI.isRecycled()) {
                            this.f8606b.f8456c.f8782c.f7650h.f7691aI.recycle();
                        }
                        this.f8606b.f8456c.f8782c.f7650h.f7691aI = null;
                    }
                    if (this.f8606b.f8456c.f8783d.m1264b()) {
                        this.f8606b.f8456c.f8782c.f7650h.f7691aI = this.f8606b.f8502f.getBitmap();
                        this.f8606b.m7739a(true, this.f8606b.f8456c.f8782c.f7650h.f7691aI);
                    }
                    this.f8606b.f8502f.m216k();
                    this.f8606b.f8502f.m214i();
                    this.f8606b.f8456c.m7995c(new C0121a(18443));
                    this.f8606b.f8456c.f8782c.f7650h.f7722at = false;
                    this.f8607c = false;
                    this.f8608d = false;
                    this.f8609e = false;
                    this.f8606b.m7782j();
                    this.f8606b.f8456c.f8782c.f7650h.f7731d = HttpStatusCodes.STATUS_CODE_NOT_MODIFIED;
                    C0121a c0121a3 = new C0121a(8735);
                    c0121a3.m1200a("nextActivity", 2064);
                    this.f8606b.m409a(c0121a3);
                    break;
                } else {
                    this.f8606b.mo408a(8454, 50L);
                    break;
                }
                break;
            case 8704:
                if (this.f8606b.f8500d.f7650h.f7661F.size() > 0) {
                    this.f8606b.mo408a(8717, 0L);
                }
                this.f8606b.m7773g(64);
                break;
            case 8715:
            case 12038:
            case 12046:
            case 12047:
            case 12048:
                break;
            case 8716:
                m7827a("MSG_UI_VIEW_EVENT_TIME_OUT_STOP", 3);
                C0068g.m632a(2);
                break;
            case 8718:
                m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE", 3);
                int m1207b = c0121a.m1207b("sphericalVideoPlayerStatus");
                if (this.f8606b.f8500d.f7650h.f7731d != 305 && this.f8606b.f8500d.f7650h.f7731d != 304) {
                    if (m1207b == 1) {
                        if (this.f8605a.intValue() != 2 && this.f8605a.intValue() != 1) {
                            this.f8605a = 1;
                            m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE STAND_BY", 3);
                            this.f8606b.f8500d.f7650h.f7744q = 2;
                            if (C0088a.m840g() == 0) {
                                if (this.f8606b.f8456c.f8782c.f7650h.f7676U == 0) {
                                    this.f8606b.f8502f.setIsShowThumbNail(false);
                                } else {
                                    this.f8606b.f8502f.setIsShowThumbNail(true);
                                }
                            }
                            this.f8606b.f8502f.setPlayerMode(2);
                            if (this.f8606b.f8500d.f7650h.f7744q == 0) {
                                this.f8606b.f8502f.setViewType(4);
                                this.f8606b.f8502f.setInteractiveMode(0);
                            } else if (this.f8606b.f8500d.f7650h.f7744q == 1) {
                                this.f8606b.f8502f.setViewType(1);
                                this.f8606b.f8502f.setInteractiveMode(3);
                            } else if (this.f8606b.f8500d.f7650h.f7744q == 2) {
                                this.f8606b.f8502f.setViewType(3);
                                this.f8606b.f8502f.setInteractiveMode(1);
                            }
                            if (this.f8606b.f8456c.f8782c.f7650h.f7724av != null) {
                                m7827a("set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.playerFormat: " + this.f8606b.f8456c.f8782c.f7650h.f7724av.f376m, 3);
                                m7827a("set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.focalLength: " + this.f8606b.f8456c.f8782c.f7650h.f7724av.f375l, 3);
                                m7827a("set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.xAxis: " + this.f8606b.f8456c.f8782c.f7650h.f7724av.f380q, 3);
                                m7827a("set objActivity.objModeMain.gsUI.sView.sCurrentSphericalParameter.yAxis: " + this.f8606b.f8456c.f8782c.f7650h.f7724av.f381r, 3);
                                this.f8606b.f8502f.setSphericalParameter(this.f8606b.f8456c.f8782c.f7650h.f7724av);
                            }
                            if (C0088a.m833d() == 1) {
                                this.f8606b.f8502f.m204b(1920, 960);
                            } else {
                                this.f8606b.f8502f.m204b(1280, 640);
                            }
                            this.f8606b.f8502f.m212g();
                            if (this.f8606b.f8456c.m7974a() != 288) {
                                this.f8606b.m7713J();
                                break;
                            }
                        }
                    } else if (m1207b == 0) {
                        this.f8605a = 0;
                        m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE NOT_READY", 3);
                        this.f8606b.m7795p();
                        break;
                    } else if (m1207b == 2) {
                        this.f8605a = 2;
                        m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE PLAY_READY", 3);
                        break;
                    } else if (m1207b == 3) {
                        this.f8605a = 3;
                        m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE PLAY_COMPLETE", 3);
                        break;
                    } else if (m1207b == 4) {
                        this.f8605a = 4;
                        m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE STOP", 3);
                        break;
                    } else if (m1207b == 5) {
                        this.f8605a = 5;
                        m7827a("MSG_UI_VIEW_360_DECODER_STATUS_CHANGE DESTROY", 3);
                        break;
                    }
                }
                break;
            case 8730:
                if (this.f8606b.f8456c.m7974a() == 288) {
                    m7827a("new capture, no need to enable leave button", 2);
                } else {
                    m7827a("all main pic downloaded, enable leave button", 2);
                    this.f8606b.m7713J();
                }
                if (!this.f8606b.m7775g()) {
                    if (this.f8606b.f8456c.m7974a() != 288) {
                        m7827a("[CaptureDBG] Download complete and capture done, close communication", 1);
                        this.f8606b.f8456c.m7996c(new C0121a(18443), 0L);
                        break;
                    }
                } else {
                    m7827a("[CaptureDBG] Download complete, init live view", 1);
                    this.f8606b.f8456c.m8007l();
                    break;
                }
                break;
            case 8732:
                C0121a c0121a4 = new C0121a(18519);
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING PhotoResolutionType: " + C0088a.m829c(), 3);
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING VideoResolutionType: " + C0088a.m825b(), 3);
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING EvbValue: " + C0088a.m854n(), 3);
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING WbValue: " + C0088a.m848k(), 3);
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING FilterValue: " + C0088a.m850l(), 3);
                c0121a4.m1200a("photo_resolution", C0122b.m1224e(C0088a.m829c()));
                c0121a4.m1200a("video_resolution", C0122b.m1226f(C0088a.m825b()));
                c0121a4.m1200a("evb", C0122b.m1218b(C0088a.m854n()));
                c0121a4.m1200a("white_balance", C0122b.m1220c(C0088a.m856o()));
                c0121a4.m1200a("filter", C0122b.m1222d(C0088a.m858p()));
                c0121a4.m1200a("logo_type", C0122b.m1230h(C0088a.m844i()));
                if (this.f8606b.f8456c.m7974a() == 336 || this.f8606b.f8456c.m7974a() == 416) {
                    c0121a4.m1200a(IjkMediaMeta.IJKM_KEY_BITRATE, C0122b.m1232i(C0088a.m852m()));
                } else if (C0088a.m833d() == 0) {
                    c0121a4.m1200a(IjkMediaMeta.IJKM_KEY_BITRATE, 8);
                } else {
                    c0121a4.m1200a(IjkMediaMeta.IJKM_KEY_BITRATE, 16);
                }
                m7827a("MSG_REMOTE_USB_CMD_WRITE_SET_ALL_SETTING Bitrate: " + c0121a4.m1207b(IjkMediaMeta.IJKM_KEY_BITRATE), 0);
                C0112b c0112b = new C0112b();
                Date date = new Date(System.currentTimeMillis());
                c0112b.f857a = Integer.parseInt(new SimpleDateFormat("yyyy", Locale.US).format(date));
                c0112b.f858b = Byte.parseByte(new SimpleDateFormat("MM", Locale.US).format(date));
                c0112b.f859c = Byte.parseByte(new SimpleDateFormat("dd", Locale.US).format(date));
                c0112b.f860d = Byte.parseByte(new SimpleDateFormat("HH", Locale.US).format(date));
                c0112b.f861e = Byte.parseByte(new SimpleDateFormat("mm", Locale.US).format(date));
                c0112b.f862f = Byte.parseByte(new SimpleDateFormat("ss", Locale.US).format(date));
                c0112b.f864h = Integer.parseInt(new SimpleDateFormat("SSS", Locale.US).format(date));
                m7827a("Set DateTime: " + c0112b.f857a + "/" + ((int) c0112b.f858b) + "/" + ((int) c0112b.f859c) + " " + ((int) c0112b.f860d) + ":" + ((int) c0112b.f861e) + ":" + ((int) c0112b.f862f), 2);
                c0121a4.m1202a("DateTime", new C0121a.a(c0112b));
                this.f8606b.f8456c.m7995c(c0121a4);
                break;
            case 8733:
                m7827a("MSG_UI_VIEW_USB_CONNECTION_ERROR!", 0);
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.connection_error_title), this.f8606b.getResources().getString(R.string.connection_usb_communication_error), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                    this.f8606b.m7759b(false, "");
                    this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.no_camera));
                    this.f8606b.m7760b(true, true);
                    break;
                }
                break;
            case 8734:
            case 12034:
                m7827a("MSG_UI_SYSTEM_ACTIVITY_RESUME:" + this.f8606b.f8456c.m7974a(), 0);
                if (message.what == 12034) {
                    this.f8606b.m7776h();
                    this.f8606b.m412b(20507);
                }
                if (this.f8606b.f8456c.m7974a() == 416 || this.f8606b.f8456c.m7974a() == 336) {
                    this.f8606b.m7754al();
                }
                if (this.f8606b.f8456c.m7974a() == 305) {
                    this.f8606b.f8456c.f8782c.f7650h.f7723au = true;
                } else {
                    if (this.f8606b.f8456c.f8782c.f7646d) {
                        this.f8606b.f8456c.f8782c.f7646d = false;
                        this.f8606b.f8456c.m8004i();
                        if (this.f8606b.m7801v()) {
                            this.f8606b.m7769e(false);
                        }
                        if (this.f8606b.m7804y()) {
                            this.f8606b.m7772f(false);
                            this.f8606b.m7774g(false);
                        }
                    } else {
                        m7826a();
                    }
                    this.f8606b.m7723T();
                }
                if (!this.f8606b.f8456c.m8003h().m771g().m1018c()) {
                    m7827a("Google account not exist", 0);
                    this.f8606b.f8456c.m8003h().m759a((String) null);
                    this.f8606b.f8456c.m8003h().m760a(false);
                    break;
                }
                break;
            case 8735:
                if (this.f8606b.f8502f.m209d() == 5 || this.f8606b.f8502f.m209d() == 1) {
                    m7827a("OK free done", 3);
                    if (c0121a.m1207b("nextActivity") == 1024) {
                        if (!this.f8606b.f8500d.f7648f) {
                            this.f8606b.mo410a(c0121a, 100L);
                            break;
                        } else {
                            this.f8606b.f8456c.f8782c.f7648f = false;
                            this.f8606b.f8456c.m7978a(1024, this.f8606b, new Intent(this.f8606b, (Class<?>) UI_PhoneGalleryController.class));
                            this.f8606b.f8456c.m7988b(268435455L);
                            break;
                        }
                    } else {
                        this.f8606b.f8456c.f8782c.f7648f = false;
                        this.f8606b.f8456c.m7978a(2048, this.f8606b, new Intent(this.f8606b, (Class<?>) UI_SettingMenuController.class));
                        this.f8606b.f8456c.m7977a(0, (ActivityC0044a) null);
                        this.f8606b.f8456c.m7988b(268435455L);
                        break;
                    }
                } else {
                    this.f8606b.mo410a(c0121a, 30L);
                    break;
                }
                break;
            case 8737:
                if (this.f8606b.m7775g()) {
                    this.f8606b.m7739a(false, (Bitmap) null);
                    this.f8606b.f8456c.f8782c.f7650h.f7692aJ = true;
                }
                this.f8606b.m7750ah();
                break;
            case 8738:
                this.f8606b.m7734a((Bitmap) c0121a.m1210c());
                break;
            case 8739:
                if (this.f8606b.f8456c.m7974a() != 288 && this.f8606b.f8456c.m8001f() == 0) {
                    this.f8606b.f8456c.m7995c(new C0121a(18459));
                }
                this.f8606b.m407a(8732);
                break;
            case 8744:
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    if (c0121a.m1206a("isMemoryFull")) {
                        if (this.f8606b.f8456c.f8782c.f7650h.f7675T != 2) {
                            this.f8606b.m7792n(true);
                            break;
                        } else {
                            this.f8606b.m7792n(false);
                            break;
                        }
                    } else if (this.f8606b.f8456c.f8782c.f7650h.f7675T != 2) {
                        this.f8606b.m7792n(false);
                        break;
                    }
                }
                break;
            case 8746:
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    if (this.f8606b.m7707D()) {
                        this.f8606b.m7760b(false, false);
                        this.f8606b.f8500d.f7647e = true;
                        this.f8606b.m7750ah();
                    }
                    if (this.f8606b.m7708E() && this.f8606b.f8456c.m7974a() == 272) {
                        this.f8606b.m7759b(false, "");
                    }
                    if (this.f8606b.f8456c.f8782c.f7650h.f7675T == 1 || this.f8606b.f8456c.f8782c.f7650h.f7675T == 2) {
                        this.f8606b.m407a(8800);
                        break;
                    }
                }
                break;
            case 8748:
            case 8749:
                if (this.f8606b.f8502f != null) {
                    this.f8606b.f8502f.m215j();
                    break;
                }
                break;
            case 8840:
                this.f8606b.m7798s();
                this.f8606b.m7741a(false, true);
                C0091o.m899b(this.f8606b);
                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.error), this.f8606b.getResources().getString(R.string.disconnect_msg), this.f8606b.getResources().getString(R.string.dialog_option_ok), 8452);
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 3;
                break;
            case 10832:
                m7827a("MSG_UI_LIVE_STREAMING_FACEBOOK_LOGIN_DONE", 3);
                this.f8606b.m7759b(false, "");
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore facebook login done", 0);
                    break;
                } else {
                    m7830d();
                    break;
                }
            case 10835:
                m7827a("MSG_UI_LIVE_STREAMING_GOOGLE_LOGIN_DONE", 3);
                this.f8606b.m7759b(false, "");
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore youtube login done", 0);
                    break;
                } else {
                    m7830d();
                    break;
                }
            case 10912:
                m7827a("MSG_UI_LIVE_STREAMING_FACEBOOK_LOGIN_FAIL", 3);
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.m7763c(true);
                break;
            case 10914:
                m7827a("MSG_UI_LIVE_STREAMING_GOOGLE_LOGIN_FAIL", 3);
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.m7763c(true);
                break;
            case 12033:
                m7827a("MSG_UI_SYSTEM_ACTIVITY_INIT", 3);
                C0088a.m870v();
                C0089n.m881a().m882a(this.f8606b);
                this.f8606b.f8456c.m7994c(268435455L);
                if (this.f8606b.f8456c.f8782c.f7650h.f7675T != 1) {
                    if (this.f8606b.f8456c.f8782c.f7650h.f7675T == 0) {
                        this.f8606b.m7731a(1, 0, 0);
                    } else {
                        this.f8606b.m7731a(0, 2, 0);
                    }
                }
                this.f8606b.m7777h(this.f8606b.f8456c.f8782c.f7650h.f7675T);
                break;
            case 12035:
                m7827a("MSG_UI_SYSTEM_ACTIVITY_PAUSE", 0);
                this.f8606b.m7753ak();
                this.f8606b.m7782j();
                C0088a.m824a(true);
                if (this.f8606b.f8456c.m7974a() == 272) {
                    if (this.f8606b.f8456c.f8782c.f7650h.f7681Z) {
                        this.f8606b.f8456c.f8782c.f7650h.f7703aa = true;
                        this.f8606b.f8456c.f8782c.f7650h.f7704ab.cancel();
                    }
                    if (this.f8606b.f8456c.f8783d.m1264b()) {
                        if (this.f8606b.f8456c.m8001f() == 0) {
                            this.f8606b.f8456c.m7995c(new C0121a(18443));
                        }
                        this.f8606b.f8456c.f8782c.f7650h.f7713ak = 0;
                    }
                    if (this.f8606b.f8500d.f7650h.f7715am != null) {
                        this.f8606b.m7753ak();
                        this.f8606b.m7721R();
                        this.f8606b.m7738a(false, 0);
                        this.f8606b.m7797r();
                        this.f8606b.m7741a(false, true);
                        this.f8606b.m7787l(false);
                    }
                } else if (this.f8606b.f8456c.m7974a() == 304) {
                    this.f8606b.f8456c.f8782c.f7650h.f7674S = 2;
                    this.f8606b.f8456c.f8782c.f7650h.f7752y = true;
                    this.f8606b.m407a(8778);
                } else if (this.f8606b.f8456c.m7974a() == 305) {
                    this.f8606b.f8456c.f8782c.f7650h.f7723au = false;
                    this.f8606b.f8456c.f8782c.f7650h.f7752y = true;
                    if (this.f8606b.f8456c.f8782c.f7650h.f7751x) {
                        this.f8606b.m7745ac();
                    }
                } else if (this.f8606b.f8456c.m7974a() == 400) {
                    this.f8606b.m407a(8790);
                }
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    if (this.f8606b.f8456c.m7974a() != 288 && this.f8606b.f8456c.m8001f() == 0 && this.f8606b.f8456c.m7974a() != 336 && this.f8606b.f8456c.m7974a() != 352 && this.f8606b.f8456c.m7974a() != 416 && this.f8606b.f8456c.m7974a() != 432) {
                        this.f8606b.f8456c.m7995c(new C0121a(18443));
                    }
                    this.f8606b.f8456c.f8782c.f7650h.f7713ak = 0;
                }
                this.f8606b.m7793o();
                break;
            case 12036:
                m7827a("ACTIVITY_STOP", 3);
                break;
            case 12037:
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("Send Close communication at onDestroy", 0);
                    this.f8606b.f8456c.m7995c(new C0121a(18443));
                }
                m7827a("AAA_ACTIVITY_DESTROY", 3);
                break;
            case 12039:
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 0;
                if (this.f8606b.f8456c.m7974a() != 304 && this.f8606b.f8456c.m7974a() != 336 && this.f8606b.f8456c.m7974a() != 416) {
                    this.f8606b.f8456c.m7977a(272, this.f8606b);
                }
                C0091o.m899b(this.f8606b);
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 12042:
                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.warning), this.f8606b.getResources().getString(R.string.permission_always_deny_msg), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12032);
                break;
            case 12049:
                if (!C0088a.m867t()) {
                    this.f8606b.m7779i();
                    break;
                } else {
                    C0088a.m828b(true);
                    break;
                }
            case 17921:
                m7827a("MSG_REMOTE_EVENT_POWER_OFF", 4);
                break;
            case 17927:
                m7827a("MSG_REMOTE_EVENT_LOW_BATTERY", 4);
                C0088a.m814C(0);
                break;
            case 17928:
                m7827a("MSG_REMOTE_EVENT_MEMORY_FULL", 4);
                break;
            case 17938:
                m7827a("MSG_REMOTE_EVENT_CAMERA_OVERHEAT", 4);
                if (c0121a.m1207b("value") == 1 && !this.f8607c) {
                    this.f8607c = true;
                    C0091o.m889a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.camera_overheat), this.f8606b.getResources().getString(R.string.camera_overheat_first_stage), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                    break;
                } else if (c0121a.m1207b("value") == 2 && !this.f8609e) {
                    this.f8609e = true;
                    m7827a("Camera overheat, auto power off", 0);
                    C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_overheat), this.f8606b.getResources().getString(R.string.camera_overheat_second_stage), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                    this.f8606b.f8456c.m7996c(new C0121a(18455), 2000L);
                    this.f8606b.m407a(8741);
                    break;
                } else if (c0121a.m1207b("value") == 3 && !this.f8608d) {
                    m7827a("Camera cold", 0);
                    this.f8608d = true;
                    C0091o.m889a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.camera_low_temp), this.f8606b.getResources().getString(R.string.camera_low_temp_content), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                    break;
                } else {
                    m7827a("Unknown thermal status: " + c0121a.m1207b("value"), 0);
                    break;
                }
                break;
            case 18176:
                C0114d c0114d = (C0114d) c0121a.m1213f("LiveViewFrame").m1214a();
                if (this.f8606b.f8500d.f7650h.f7664I.f7765l) {
                    c0114d.f872a.m457d();
                } else {
                    this.f8606b.f8500d.f7650h.f7673R += c0114d.f872a.f469a;
                    if (c0114d.f873b.equals("V")) {
                        if (this.f8606b.m7786k()) {
                            if (this.f8606b.m7708E() || this.f8606b.m7707D()) {
                                this.f8606b.mo408a(8746, 100L);
                            }
                            this.f8606b.m7733a(c0114d);
                            if (this.f8606b.m7716M() && this.f8606b.f8456c.f8782c.f7650h.f7731d != 305 && this.f8606b.f8456c.f8782c.f7650h.f7731d != 304) {
                                this.f8606b.mo408a(8737, 300L);
                            }
                            if (this.f8606b.f8456c.m7974a() == 304) {
                                if (this.f8606b.f8500d.f7650h.f7715am != null) {
                                    if (this.f8606b.f8500d.f7650h.f7728az != 0 || C0056e.m478b(c0114d.f872a.m454a())) {
                                        if (this.f8606b.f8500d.f7650h.f7728az == 0) {
                                            this.f8606b.f8500d.f7650h.f7727ay = c0114d.f872a.f470b - 166;
                                            byte[] bArr = new byte[c0114d.f872a.f469a];
                                            System.arraycopy(c0114d.f872a.m454a(), 0, bArr, 0, c0114d.f872a.f469a);
                                            this.f8606b.m7742a(bArr);
                                            if (C0088a.m820a() == 1) {
                                                this.f8606b.f8500d.f7650h.f7687aE = C0052d.m461a(this.f8606b.f8500d.f7653k.f7478b.f7528ab, 0);
                                            } else {
                                                this.f8606b.f8500d.f7650h.f7687aE = C0052d.m461a(C1658c.f7453a, 0);
                                            }
                                            this.f8606b.m7790m(true);
                                        }
                                        this.f8606b.m7755b(c0114d);
                                        this.f8606b.f8500d.f7650h.f7728az++;
                                    }
                                }
                            }
                        } else {
                            c0114d.f872a.m457d();
                        }
                        this.f8606b.m7706C().m7817a(c0114d);
                    } else if (!c0114d.f873b.equals("A")) {
                        m7827a("unknow liveview frame type:" + c0114d.f873b, 0);
                    }
                }
                if (!this.f8606b.f8456c.f8782c.f7652j.f7778c) {
                    this.f8606b.f8456c.f8782c.f7652j.f7778c = true;
                    break;
                }
                break;
            case 18179:
                m7827a("MSG_REMOTE_EVENT_DISCONNECTION", 4);
                this.f8606b.mo408a(8840, 0L);
                break;
            case 18185:
                m7827a("Add CroppedArea tag result: " + new C0093p().m904a(this.f8606b.f8500d.f7653k.f7478b.f7526a.m528h(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0)), 1);
                this.f8606b.m7756b(this.f8606b.f8500d.f7653k.f7478b.f7526a.m528h(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0));
                this.f8606b.m7750ah();
                break;
            case 18432:
                if (this.f8606b.f8456c.f8782c.f7650h.f7720ar <= 10) {
                    this.f8606b.mo408a(8726, 0L);
                    break;
                } else if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    this.f8606b.m7760b(true, true);
                    this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.no_camera));
                    this.f8606b.m7759b(false, "");
                    this.f8606b.m7715L();
                    this.f8606b.m7726W();
                    break;
                } else {
                    this.f8606b.m7748af();
                    this.f8606b.m7759b(true, this.f8606b.getResources().getString(R.string.connecting));
                    this.f8606b.f8456c.m7995c(new C0121a(18484));
                    C0121a c0121a5 = new C0121a(18480);
                    c0121a5.m1203a("app_version", this.f8606b.getResources().getString(R.string.internal_app_version));
                    this.f8606b.f8456c.m7995c(c0121a5);
                    break;
                }
            case 18435:
                m7827a("MSG_REMOTE_USB_CORE_DETACH", 3);
                this.f8606b.m7759b(false, "");
                this.f8606b.m7763c(false);
                this.f8606b.m7721R();
                if (this.f8606b.f8456c.f8782c.f7650h.f7720ar <= 10) {
                    this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.low_battery_warning_title));
                    this.f8606b.m7760b(true, false);
                } else {
                    this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.no_camera));
                    this.f8606b.m7760b(true, true);
                }
                this.f8606b.m7726W();
                this.f8606b.f8456c.f8782c.f7650h.f7722at = false;
                this.f8606b.f8456c.f8782c.f7650h.f7752y = true;
                this.f8607c = false;
                this.f8608d = false;
                this.f8609e = false;
                this.f8606b.f8456c.f8782c.f7650h.f7724av = null;
                if (this.f8606b.f8456c.m8001f() != 0) {
                    if (this.f8606b.f8456c.f8784e.m474a() != null) {
                        m7827a("Delete un-complete file: " + this.f8606b.f8456c.f8784e.m474a(), 1);
                        new File(this.f8606b.f8456c.f8784e.m474a()).delete();
                    }
                    this.f8606b.f8456c.m8000e();
                }
                this.f8606b.f8502f.m194a();
                if (this.f8606b.f8456c.f8782c.f7650h.f7713ak != 0) {
                    C0091o.m889a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.camera_update_for_update_failed), this.f8606b.getResources().getString(R.string.camera_update_fail), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                    this.f8606b.f8456c.f8782c.f7650h.f7713ak = 0;
                }
                if (this.f8606b.f8456c.f8782c.f7650h.f7681Z) {
                    this.f8606b.f8456c.f8782c.f7650h.f7703aa = true;
                    this.f8606b.f8456c.f8782c.f7650h.f7704ab.cancel();
                }
                if (this.f8606b.f8456c.m7974a() == 288) {
                    this.f8606b.f8456c.m7977a(272, this.f8606b);
                    this.f8606b.m7732a(0, false);
                    this.f8606b.mo408a(8716, 0L);
                    this.f8606b.m7713J();
                } else if (this.f8606b.f8456c.m7974a() == 304) {
                    m7827a("[USB_DETACH] ui_ModeDef.UI_MODE_VIEW_RECORDING", 3);
                    this.f8606b.f8456c.f8782c.f7650h.f7674S = 4;
                    this.f8606b.m407a(8791);
                } else if (this.f8606b.f8456c.m7974a() == 305) {
                    m7827a("[USB_DETACH] ui_ModeDef.UI_MODE_VIEW_RECORDING_STOP", 3);
                    if (this.f8606b.f8456c.f8782c.f7650h.f7751x) {
                        this.f8606b.m7745ac();
                    }
                } else if (this.f8606b.f8456c.m7974a() == 400) {
                    m7828b();
                    this.f8606b.m407a(8790);
                } else if (this.f8606b.f8456c.m7974a() == 336 || this.f8606b.f8456c.m7974a() == 352 || this.f8606b.f8456c.m7974a() == 416 || this.f8606b.f8456c.m7974a() == 432) {
                    this.f8606b.m407a(8793);
                } else {
                    m7828b();
                    this.f8606b.m7747ae();
                }
                if (this.f8606b.m7788l()) {
                    this.f8606b.m7737a(false);
                }
                if (C0091o.m897a(this.f8606b) && this.f8606b.f8500d.f7650h.f7720ar > 10) {
                    C0091o.m899b(this.f8606b);
                    break;
                }
                break;
            case 18436:
                m7827a("MSG_REMOTE_USB_CORE_ATTACH", 2);
                this.f8606b.f8456c.f8782c.f7647e = false;
                this.f8606b.f8456c.f8782c.f7650h.f7722at = false;
                this.f8606b.m7759b(true, this.f8606b.getResources().getString(R.string.connecting));
                this.f8606b.f8456c.f8782c.f7646d = true;
                if (this.f8606b.f8456c.m8011p()) {
                    this.f8606b.f8456c.m8004i();
                }
                this.f8606b.m7723T();
                break;
            case 18437:
                if (c0121a.m1206a("usb_permission")) {
                    m7827a("has permission, need init usb", 0);
                    this.f8606b.f8456c.f8782c.f7646d = false;
                    m7826a();
                    break;
                } else {
                    this.f8606b.m7759b(false, "");
                    this.f8606b.m7715L();
                    break;
                }
            case 18464:
            case 18465:
                if (c0121a.m1207b("thermal_status") != 0) {
                    C0121a c0121a6 = new C0121a(17938);
                    c0121a6.m1200a("value", c0121a.m1207b("thermal_status"));
                    this.f8606b.m409a(c0121a6);
                    break;
                }
                break;
            case 18480:
                if (c0121a.m1207b("result") != 0) {
                    m7827a("Get camera FW version fail", 0);
                    if (!this.f8606b.f8456c.f8783d.m1264b()) {
                        m7827a("USB disconnected, get fw version fail", 0);
                        this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.no_camera));
                        this.f8606b.m7760b(true, true);
                        break;
                    }
                } else if (!this.f8606b.m7775g()) {
                    m7827a("APP onPaused, do not continue, send close communication instead", 0);
                    this.f8606b.f8456c.m7996c(new C0121a(18443), 0L);
                    break;
                } else {
                    String m1211d = c0121a.m1211d("fw_version");
                    this.f8606b.f8500d.f7649g.f7631c = m1211d;
                    m7827a("Camera FW version:" + m1211d + ", Target FW versionv1.3B00, bIsForceFWUpgrade: " + this.f8606b.f8456c.f8786g, 2);
                    if (m1211d.compareTo("v1.3B00") > 0) {
                        this.f8606b.f8456c.f8782c.f7654l.f7617r = false;
                        if (m1211d.compareTo("v1.3C00") < 0) {
                            m7827a("Camera is test FW", 0);
                        } else {
                            m7827a("Need to update App (" + m1211d + ") to latest version: v1.3B00", 0);
                            if (this.f8606b.f8456c.f8787h) {
                                C0091o.m889a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.application_update), this.f8606b.getResources().getString(R.string.application_update_content), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                this.f8606b.m7760b(true, false);
                                this.f8606b.m7759b(false, "");
                                this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.application_update_warning_title));
                                break;
                            }
                        }
                    } else if (m1211d.compareTo("v1.3B00") < 0) {
                        m7827a("Need to update camera (" + m1211d + ") to latest version: v1.3B00", 0);
                        if (this.f8606b.f8456c.f8786g) {
                            if (m1211d.compareTo("v0.2000") < 0) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_cv60_0426), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v0.2300") < 0) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_2900_2901_fw23), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v0.2B00") < 0) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_3400_3401_fw2b), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v0.2D00") < 0) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_3700_fw2d), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v0.3700") < 0 && !"v1.3B00".equals("v0.3700")) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_4900_fw37), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v0.4300") < 0 && !"v1.3B00".equals("v0.4300")) {
                                this.f8606b.m7759b(false, "");
                                this.f8606b.f8456c.m7995c(new C0121a(18455));
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_program), this.f8606b.getResources().getString(R.string.camera_update_test_app_6300_fw43), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                                break;
                            } else if (m1211d.compareTo("v1.0900") < 0 && !"v1.3B00".equals("v1.0900")) {
                                this.f8606b.f8456c.f8782c.f7654l.f7617r = true;
                                this.f8606b.m7759b(false, "");
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_camera_program), this.f8606b.getResources().getString(R.string.camera_update_content), this.f8606b.getResources().getString(R.string.dialog_option_ok), 9255);
                                break;
                            } else if (m1211d.compareTo("v1.3A00") == 0) {
                                this.f8606b.f8456c.f8782c.f7654l.f7617r = true;
                                this.f8606b.m7759b(false, "");
                                C0091o.m889a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_camera_program), this.f8606b.getResources().getString(R.string.camera_update_content), this.f8606b.getResources().getString(R.string.dialog_option_ok), 9255);
                                break;
                            } else if (m1211d.compareTo("v1.2900") == 0) {
                                m7827a("Domestic last version checked: camera (" + m1211d + ")", 0);
                                this.f8606b.f8456c.f8782c.f7654l.f7617r = false;
                                this.f8606b.m407a(8739);
                                break;
                            } else {
                                this.f8606b.m7740a(false, "");
                                this.f8606b.f8456c.f8782c.f7654l.f7617r = true;
                                this.f8606b.m409a(new C0121a(8847));
                                if ((m1211d.compareTo("v1.0A00") <= 0 && !this.f8606b.f8456c.f8782c.f7647e) || !C0090a.m886a(this.f8606b.f8456c).getBoolean("fwUpdateLater", false)) {
                                    this.f8606b.m7759b(false, "");
                                    C0091o.m892a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.camera_update_for_newer_camera_program), this.f8606b.getResources().getString(R.string.camera_update_content), new String[]{this.f8606b.getResources().getString(R.string.dialog_option_later), this.f8606b.getResources().getString(R.string.dialog_option_update)}, new int[]{9256, 9255});
                                    break;
                                }
                            }
                        }
                    } else {
                        this.f8606b.f8456c.f8782c.f7654l.f7617r = false;
                    }
                    this.f8606b.m407a(8739);
                    break;
                }
                break;
            case 18519:
                if (c0121a.m1207b("result") == 0) {
                    this.f8606b.f8456c.f8782c.f7650h.f7749v = 0;
                    C0121a c0121a7 = new C0121a(18449);
                    if (this.f8606b.f8456c.m7974a() == 336 || this.f8606b.f8456c.m7974a() == 416) {
                        c0121a7.m1200a("resolution", 10);
                    } else {
                        c0121a7.m1200a("resolution", C0122b.m1228g(C0088a.m833d()));
                    }
                    this.f8606b.f8456c.m7995c(c0121a7);
                    break;
                }
                break;
            case 18545:
                if (c0121a.m1207b("result") == 0) {
                    this.f8606b.f8456c.m7995c(new C0121a(18464));
                    this.f8606b.m7715L();
                    this.f8606b.m7740a(false, "");
                    this.f8606b.f8456c.f8782c.f7650h.f7749v = 0;
                    if (C0088a.m833d() == 0) {
                        if (C0090a.m886a(this.f8606b.f8456c).getBoolean("showLiveViewModeToast", true)) {
                            this.f8606b.m7736a(this.f8606b.getResources().getString(R.string.live_mode_toast_msg), true);
                            C0090a.m887b(this.f8606b.f8456c).putBoolean("showLiveViewModeToast", false).apply();
                            break;
                        }
                    } else {
                        C0090a.m887b(this.f8606b.f8456c).putBoolean("showLiveViewModeToast", true).apply();
                        break;
                    }
                } else if (c0121a.m1207b("result") == 1) {
                    if (this.f8606b.f8456c.f8782c.f7650h.f7749v > 1000) {
                        m7827a("Over 1000 times check start live view status get busy. Connection error.", 0);
                        this.f8606b.f8456c.m7976a(8733, 0L);
                        this.f8606b.f8456c.f8782c.f7650h.f7749v = 0;
                        break;
                    } else {
                        this.f8606b.f8456c.m7996c(new C0121a(18545), 5L);
                        this.f8606b.f8456c.f8782c.f7650h.f7749v++;
                        break;
                    }
                } else if (c0121a.m1207b("result") == 2) {
                    m7827a("[UsbRemote] preparing live view", 0);
                    break;
                } else if (c0121a.m1207b("result") == 5) {
                    m7827a("[UsbRemote] skip start live view checking", 0);
                    break;
                } else {
                    this.f8606b.m7759b(false, "");
                    m7827a("[UsbRemote] check start live view status: fail", 0);
                    this.f8606b.f8456c.m7976a(8733, 0L);
                    this.f8606b.f8456c.f8782c.f7650h.f7749v = 0;
                    break;
                }
                break;
            case 18546:
                if (c0121a.m1207b("result") == 0) {
                    m7827a("MSG_REMOTE_USB_CMD_CHECK_STOP_LIVEVIEW_STATUS success", 0);
                    this.f8606b.f8456c.m7980a(new C0121a(8732));
                    break;
                } else if (c0121a.m1207b("result") == 1) {
                    this.f8606b.f8456c.m7996c(new C0121a(18546), 5L);
                    break;
                } else if (c0121a.m1207b("result") == 5) {
                    m7827a("[UsbRemote] skip stop live view checking", 0);
                    break;
                } else {
                    m7827a("[UsbRemote] check stop live view status: fail", 0);
                    this.f8606b.f8456c.m7976a(8733, 0L);
                    break;
                }
            case 61442:
                m7827a("*****Capture or recording event time out*****", 0);
                C0068g.m632a(2);
                this.f8606b.mo408a(8840, 0L);
                break;
            case 61443:
                this.f8606b.m7724U();
                break;
            default:
                switch (this.f8606b.f8456c.m7974a()) {
                    case 272:
                        m7832b(message);
                        break;
                    case 288:
                        m7833c(message);
                        break;
                    case HttpStatusCodes.STATUS_CODE_NOT_MODIFIED /* 304 */:
                        m7834d(message);
                        break;
                    case 305:
                        m7835e(message);
                        break;
                    case 320:
                        m7836f(message);
                        break;
                    case 336:
                        this.f8606b.m7706C().m7818a(message);
                        break;
                    case 352:
                        this.f8606b.m7706C().m7822b(message);
                        break;
                    case 368:
                        m7837g(message);
                        break;
                    case 384:
                        m7838h(message);
                        break;
                    case 400:
                        m7839i(message);
                        break;
                    case 416:
                        this.f8606b.m7706C().m7824c(message);
                        break;
                    case 432:
                        this.f8606b.m7706C().m7825d(message);
                        break;
                }
        }
    }

    @SuppressLint({"Wakelock"})
    /* renamed from: b */
    public void m7832b(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 0:
                C0091o.m899b(this.f8606b);
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 0;
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 8480:
                int m1207b = c0121a.m1207b("CameraStatus");
                m7827a("ulDscStatus: " + m1207b, 3);
                if (m1207b == 5 || m1207b == 11) {
                    this.f8606b.f8456c.m7988b(268435455L);
                    this.f8606b.mo408a(8774, 0L);
                    break;
                } else if (m1207b == 7 || m1207b == 10) {
                    this.f8606b.f8456c.m7988b(268435455L);
                    this.f8606b.mo408a(8782, 0L);
                    break;
                } else if (m1207b == 9) {
                    this.f8606b.f8456c.m7977a(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED, this.f8606b);
                    this.f8606b.f8456c.m7995c(new C0121a(16996));
                    break;
                } else if (m1207b == 8) {
                    this.f8606b.f8456c.m7977a(320, this.f8606b);
                    break;
                } else {
                    this.f8606b.mo408a(8754, 0L);
                    break;
                }
                break;
            case 8709:
                this.f8606b.f8456c.m7995c(new C0121a(16946));
                break;
            case 8717:
                this.f8606b.m7767e();
                for (int size = this.f8606b.f8500d.f7650h.f7661F.size() - 1; size >= 0; size--) {
                }
                this.f8606b.f8500d.f7650h.f7661F.clear();
                this.f8606b.m7770f();
                break;
            case 8726:
                if (this.f8606b.f8456c.f8783d.m1264b()) {
                    this.f8606b.f8456c.f8783d.m1261a(new C0121a(18455));
                }
                this.f8606b.m7759b(false, "");
                this.f8606b.m7760b(true, false);
                this.f8606b.m7713J();
                this.f8606b.m407a(8846);
                break;
            case 8742:
                if (c0121a.m1206a("muxerInitResult")) {
                    this.f8606b.m7780i(1);
                    this.f8606b.m7728Y();
                    this.f8606b.m7785k(false);
                    this.f8606b.m7712I();
                    this.f8606b.m7781i(true);
                    this.f8606b.m7743aa();
                    this.f8606b.f8456c.m7995c(new C0121a(18451));
                    break;
                } else {
                    this.f8606b.m7753ak();
                    this.f8606b.m7785k(false);
                    this.f8606b.f8500d.f7650h.f7730c = 288;
                    break;
                }
            case 8745:
                m7827a("MSG_UI_VIEW_CHECK_AVG_PING_TIME_DONE, ping result: " + c0121a.m1207b("avgPingTime"), 1);
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    this.f8606b.m7759b(false, "");
                    break;
                } else {
                    if (!C0120a.m1196a(this.f8606b)) {
                        m7829c();
                    } else if (C0120a.m1197b(this.f8606b) == 2) {
                        C0091o.m892a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.broadcast_mobile_network_title), this.f8606b.getResources().getString(R.string.broadcast_mobile_network_description), new String[]{this.f8606b.getResources().getString(R.string.dialog_option_no), this.f8606b.getResources().getString(R.string.dialog_option_yes)}, new int[]{12039, 10777});
                    } else {
                        this.f8606b.m407a(10777);
                    }
                    this.f8606b.m7759b(false, "");
                    break;
                }
            case 8754:
                this.f8606b.f8456c.m7995c(new C0121a(17153));
                break;
            case 8755:
                this.f8606b.f8456c.m7995c(new C0121a(17154));
                break;
            case 8756:
                m7827a("MSG_UI_VIEW_GET_THUMBNAIL_IMAGE", 4);
                this.f8606b.f8456c.m7996c(new C0121a(18466), 0L);
                break;
            case 8772:
                this.f8606b.f8500d.f7650h.f7730c = HttpStatusCodes.STATUS_CODE_SEE_OTHER;
                this.f8606b.mo408a(8458, 0L);
                break;
            case 8773:
                this.f8606b.f8500d.f7650h.f7730c = HttpStatusCodes.STATUS_CODE_NOT_MODIFIED;
                this.f8606b.mo408a(8454, 0L);
                break;
            case 8774:
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore record msg", 0);
                    break;
                } else if (this.f8606b.m7716M()) {
                    m7827a("Live view not ready, ignore record msg", 0);
                    break;
                } else {
                    C0052d.m466a((Context) this.f8606b, true);
                    this.f8606b.m7754al();
                    this.f8606b.f8500d.f7650h.f7730c = 294;
                    this.f8606b.m7746ad();
                    break;
                }
            case 8775:
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore capture msg", 0);
                    break;
                } else if (this.f8606b.m7716M()) {
                    m7827a("Live view not ready, ignore capture msg", 0);
                    break;
                } else if (!this.f8606b.f8456c.m7984a(268435455L)) {
                    m7827a("All key disabled, ignore capture cmd", 0);
                    break;
                } else {
                    m7827a("[CaptureDBG] Capture!", 1);
                    this.f8606b.m7712I();
                    this.f8606b.f8456c.m7977a(288, this.f8606b);
                    this.f8606b.m7732a(0, true);
                    this.f8606b.m7785k(false);
                    this.f8606b.f8500d.f7650h.f7730c = 289;
                    C0121a c0121a2 = new C0121a(18453);
                    c0121a2.m1200a("orientation", this.f8606b.f8500d.f7650h.f7748u);
                    this.f8606b.f8456c.m7995c(c0121a2);
                    break;
                }
            case 8776:
                this.f8606b.f8500d.f7650h.f7730c = HttpStatusCodes.STATUS_CODE_TEMPORARY_REDIRECT;
                this.f8606b.mo408a(8459, 0L);
                break;
            case 8779:
                this.f8606b.f8500d.f7650h.f7730c = 305;
                this.f8606b.mo408a(8449, 0L);
                break;
            case 8780:
                this.f8606b.f8500d.f7650h.f7730c = 306;
                this.f8606b.mo408a(8460, 0L);
                break;
            case 8782:
                this.f8606b.f8456c.m7977a(320, this.f8606b);
                this.f8606b.f8500d.f7650h.f7730c = 291;
                this.f8606b.f8456c.m7995c(new C0121a(16941));
                this.f8606b.mo408a(8715, 0L);
                break;
            case 8784:
                this.f8606b.m7759b(true, this.f8606b.getResources().getString(R.string.broadcast_initialize_busy));
                this.f8606b.m412b(20510);
                break;
            case 8786:
                if (this.f8606b.f8500d.f7650h.f7744q == 0) {
                    this.f8606b.f8500d.f7650h.f7744q = 1;
                    this.f8606b.f8502f.setViewType(1);
                    this.f8606b.f8502f.setInteractiveMode(3);
                } else if (this.f8606b.f8500d.f7650h.f7744q == 1) {
                    this.f8606b.f8500d.f7650h.f7744q = 2;
                    this.f8606b.f8502f.setViewType(1);
                    this.f8606b.f8502f.setInteractiveMode(1);
                } else if (this.f8606b.f8500d.f7650h.f7744q == 2) {
                    this.f8606b.f8500d.f7650h.f7744q = 0;
                    this.f8606b.f8502f.setViewType(4);
                    this.f8606b.f8502f.setInteractiveMode(0);
                }
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 8787:
                if (C0088a.m865s()) {
                    C0088a.m835d(false);
                    C0088a.m830c(C0122b.m1217a(false));
                } else {
                    C0088a.m835d(true);
                    C0088a.m830c(C0122b.m1217a(true));
                }
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 8788:
                this.f8606b.f8456c.m7977a(336, this.f8606b);
                this.f8606b.m407a(8788);
                break;
            case 8789:
                if (this.f8606b.f8500d.f7650h.f7747t == 0) {
                    this.f8606b.f8500d.f7650h.f7747t = 1;
                } else {
                    this.f8606b.f8500d.f7650h.f7747t = 0;
                }
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 8790:
                if (this.f8606b.f8456c.f8782c.f7650h.f7677V == 0) {
                    this.f8606b.f8456c.m7977a(400, this.f8606b);
                    this.f8606b.m7722S();
                    this.f8606b.m7778h(true);
                    this.f8606b.f8456c.f8782c.f7650h.f7677V = 1;
                    break;
                } else {
                    this.f8606b.m7778h(false);
                    this.f8606b.f8456c.f8782c.f7650h.f7677V = 0;
                    break;
                }
            case 8794:
                this.f8606b.f8456c.m7977a(416, this.f8606b);
                this.f8606b.m407a(8794);
                break;
            case 8795:
                this.f8606b.m7759b(true, this.f8606b.getResources().getString(R.string.broadcast_initialize_busy));
                this.f8606b.m412b(20510);
                break;
            case 8798:
                this.f8606b.m7717N();
                break;
            case 8799:
                this.f8606b.m7720Q();
                break;
            case 8800:
                this.f8606b.m7718O();
                break;
            case 8845:
                C0091o.m899b(this.f8606b);
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 337;
                break;
            case 8846:
                C0091o.m899b(this.f8606b);
                C0091o.m889a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.low_battery), this.f8606b.getResources().getString(R.string.low_battery_content), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.low_battery_warning_title));
                this.f8606b.f8456c.f8782c.f7649g.f7629a = 1036;
                break;
            case 8847:
                if (this.f8606b.f8456c.f8782c.f7654l.f7613n || this.f8606b.f8456c.f8782c.f7654l.f7617r) {
                    this.f8606b.m7794o(true);
                    break;
                }
                break;
            case 9248:
                this.f8606b.f8456c.f8782c.f7654l.f7614o = false;
                if (!C0090a.m886a(this.f8606b.f8456c).getBoolean("apkUpdateLater", false) && !this.f8606b.f8456c.f8782c.f7654l.f7600ag) {
                    this.f8606b.f8456c.f8782c.f7654l.f7600ag = true;
                    C0091o.m892a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.application_update_opimization_title), this.f8606b.getResources().getString(R.string.application_update_opimization) + "\n" + C0090a.m886a(this.f8606b.f8456c).getString("hotaOptimization", "") + "\n", new String[]{this.f8606b.getResources().getString(R.string.dialog_option_later), this.f8606b.getResources().getString(R.string.dialog_option_update)}, new int[]{9249, 9250});
                    break;
                }
                break;
            case 9249:
                C0090a.m887b(this.f8606b.f8456c).putBoolean("apkUpdateLater", true).apply();
                this.f8606b.f8456c.f8782c.f7654l.f7600ag = false;
                break;
            case 9250:
                this.f8606b.f8456c.f8782c.f7654l.f7614o = true;
                if (C0120a.m1196a(this.f8606b) && C0120a.m1197b(this.f8606b) == 2) {
                    C0091o.m892a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.version_update_title), this.f8606b.getResources().getString(R.string.version_update_update_not_wifi), new String[]{this.f8606b.getResources().getString(R.string.dialog_option_cancel), this.f8606b.getResources().getString(R.string.dialog_option_continue)}, new int[]{9254, 8454});
                } else {
                    this.f8606b.m407a(8454);
                }
                this.f8606b.f8456c.f8782c.f7654l.f7600ag = false;
                break;
            case 9254:
                this.f8606b.f8456c.f8782c.f7654l.f7614o = false;
                C0091o.m892a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.application_update_opimization_title), this.f8606b.getResources().getString(R.string.application_update_opimization) + "\n" + C0090a.m886a(this.f8606b.f8456c).getString("hotaOptimization", "") + "\n", new String[]{this.f8606b.getResources().getString(R.string.dialog_option_later), this.f8606b.getResources().getString(R.string.dialog_option_update)}, new int[]{9249, 9250});
                break;
            case 9255:
                this.f8606b.f8456c.f8782c.f7654l.f7618s = true;
                this.f8606b.m407a(8454);
                break;
            case 9256:
                this.f8606b.m7759b(false, "");
                C0090a.m887b(this.f8606b.f8456c).putBoolean("fwUpdateLater", true).apply();
                this.f8606b.m407a(8739);
                break;
            case 10774:
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore start facebook", 0);
                    break;
                } else {
                    C0091o.m893a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.broadcast_check_start_title), this.f8606b.getResources().getString(R.string.broadcast_check_start_description), new String[]{this.f8606b.getResources().getString(R.string.dialog_option_no), this.f8606b.getResources().getString(R.string.dialog_option_yes)}, new int[]{10776, 8794}, true);
                    break;
                }
            case 10775:
                if (!this.f8606b.f8456c.f8783d.m1264b()) {
                    m7827a("USB detached, ignore start youtube", 0);
                    break;
                } else {
                    C0091o.m893a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.broadcast_check_start_title), this.f8606b.getResources().getString(R.string.broadcast_check_start_description), new String[]{this.f8606b.getResources().getString(R.string.dialog_option_no), this.f8606b.getResources().getString(R.string.dialog_option_yes)}, new int[]{10776, 8788}, true);
                    break;
                }
            case 10777:
                m7830d();
                break;
            case 12032:
                Process.killProcess(Process.myPid());
                this.f8606b.finish();
                break;
            case 12041:
                m7827a("MSG_UI_SYSTEM_ACTIVITY_NEW_INTENT", 3);
                if (this.f8606b.f8456c.f8782c.f7653k.f7478b.f7526a.m526g(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0) == null) {
                    this.f8606b.m7796q();
                    this.f8606b.m412b(20508);
                }
                this.f8606b.m7760b(true, false);
                if (this.f8606b.f8502f != null) {
                    m7827a("[onNewIntent] liveviewSphericalVideoPlayer != null " + this.f8606b.f8502f.m209d(), 0);
                    if (this.f8606b.f8502f.m209d() == 1) {
                        if (C0088a.m840g() == 0) {
                            if (this.f8606b.f8456c.f8782c.f7650h.f7676U == 0) {
                                this.f8606b.f8502f.setIsShowThumbNail(false);
                            } else {
                                this.f8606b.f8502f.setIsShowThumbNail(true);
                            }
                        }
                        this.f8606b.f8502f.setPlayerMode(2);
                        this.f8606b.f8502f.setViewType(3);
                        this.f8606b.f8502f.setInteractiveMode(1);
                        if (C0088a.m833d() == 1) {
                            this.f8606b.f8502f.m204b(1920, 960);
                        } else {
                            this.f8606b.f8502f.m204b(1280, 640);
                        }
                        this.f8606b.f8502f.m212g();
                        break;
                    } else if (this.f8606b.f8502f.m209d() == 0) {
                        this.f8606b.m7795p();
                        break;
                    }
                } else {
                    m7827a("[onNewIntent] liveviewSphericalVideoPlayer == null", 0);
                    this.f8606b.m7795p();
                    break;
                }
                break;
            case 17153:
                m7827a("objMsgEx.getIntData(value1): " + c0121a.m1207b("value1"), 3);
                C0088a.m815D(c0121a.m1207b("value1"));
                this.f8606b.f8500d.f7650h.f7732e = c0121a.m1207b("value2");
                this.f8606b.mo408a(8755, 0L);
                break;
            case 17154:
                m7827a("objMsgEx.getIntData(value1): " + c0121a.m1207b("value1"), 3);
                C0088a.m816E(c0121a.m1207b("value1"));
                this.f8606b.f8500d.f7650h.f7733f = c0121a.m1207b("value2");
                if (this.f8606b.f8500d.f7650h.f7731d == 305) {
                    this.f8606b.mo408a(8449, 0L);
                    break;
                } else if (this.f8606b.f8500d.f7650h.f7731d == 306) {
                    this.f8606b.mo408a(8460, 0L);
                    break;
                } else {
                    this.f8606b.m7773g(65);
                    if (this.f8606b.f8500d.f7650h.f7742o) {
                        this.f8606b.f8500d.f7650h.f7742o = false;
                        this.f8606b.mo408a(8845, 0L);
                        break;
                    }
                }
                break;
            case 17924:
                m7827a("MSG_REMOTE_EVENT_CAPTURE_DONE2", 4);
                break;
            case 17934:
                m7827a("MSG_REMOTE_EVENT_RECORDING_START_OK", 3);
                this.f8606b.f8456c.m7977a(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED, this.f8606b);
                this.f8606b.f8500d.f7650h.f7730c = 295;
                this.f8606b.m7762c(15);
                this.f8606b.f8500d.f7650h.f7738k = true;
                this.f8606b.mo408a(8716, 0L);
                break;
            case 17935:
                m7827a("MSG_REMOTE_EVENT_RECORDING_START_FAIL", 4);
                this.f8606b.m7773g(64);
                this.f8606b.mo408a(8714, 0L);
                this.f8606b.mo408a(8716, 0L);
                break;
            case 18501:
                C0112b c0112b = (C0112b) c0121a.m1213f("DateTime").m1214a();
                m7827a("[CameraDateTime] " + c0112b.f857a + "/" + ((int) c0112b.f858b) + "/" + ((int) c0112b.f859c) + " " + ((int) c0112b.f860d) + ":" + ((int) c0112b.f861e) + ":" + ((int) c0112b.f862f), 2);
                break;
            case 18503:
                if (c0121a.m1207b("result") != 0) {
                    m7827a("Get camera all setting fail", 0);
                    break;
                }
                break;
            case 18517:
                if (c0121a.m1207b("result") != 0) {
                    m7827a("Set camera date time fail", 0);
                    break;
                } else {
                    this.f8606b.f8456c.m7995c(new C0121a(18503));
                    break;
                }
            case 32768:
                if (this.f8606b.f8456c.f8782c.f7650h.f7681Z) {
                    this.f8606b.f8456c.f8782c.f7650h.f7703aa = true;
                    this.f8606b.f8456c.f8782c.f7650h.f7704ab.cancel();
                    this.f8606b.f8456c.m7994c(268435455L);
                    break;
                } else if (this.f8606b.m7729Z() || this.f8606b.m7709F()) {
                    this.f8606b.f8456c.m7994c(268435455L);
                    break;
                } else if (this.f8606b.m7800u()) {
                    this.f8606b.m7763c(false);
                    this.f8606b.f8456c.m7994c(268435455L);
                    break;
                } else {
                    this.f8606b.m407a(8452);
                    break;
                }
                break;
        }
    }

    /* renamed from: c */
    public void m7833c(Message message) {
        switch (message.what) {
            case 8710:
                m7827a("MSG_UI_VIEW_CAPTURE_DONE", 3);
                if (this.f8606b.f8456c.m8001f() == 0) {
                    this.f8606b.m7713J();
                    this.f8606b.m7756b(this.f8606b.f8500d.f7653k.f7478b.f7526a.m528h(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0));
                }
                this.f8606b.f8500d.f7650h.f7730c = 288;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.m7732a(0, false);
                this.f8606b.mo408a(8716, 0L);
                if (this.f8606b.m7775g()) {
                    m7827a("[CaptureDBG] Keep get frame", 1);
                    this.f8606b.f8456c.m7996c(new C0121a(18464), 0L);
                } else {
                    m7827a("[CaptureDBG] Capture back with activity pause. UI_CheckNeedDownloadPicNum = " + this.f8606b.f8456c.m8001f(), 1);
                    if (this.f8606b.f8456c.m8001f() == 0) {
                        m7827a("[CaptureDBG] Capture and download complete, close communication", 1);
                        this.f8606b.f8456c.m7996c(new C0121a(18443), 0L);
                    }
                }
                if (this.f8606b.f8500d.f7650h.f7693aK) {
                    this.f8606b.m407a(8726);
                    this.f8606b.f8500d.f7650h.f7693aK = false;
                    break;
                }
                break;
            case 8726:
                this.f8606b.f8500d.f7650h.f7693aK = true;
                break;
            case 8729:
                this.f8606b.m7780i(0);
                break;
            case 18466:
                this.f8606b.m7711H();
                break;
            case 32768:
                m7827a("UI_LiveviewCapturing MSG_KEY_BACK", 3);
                break;
        }
    }

    /* renamed from: d */
    public void m7834d(Message message) {
        C0121a c0121a = new C0121a(message);
        switch (message.what) {
            case 8711:
                this.f8606b.f8500d.f7650h.f7730c = 295;
                this.f8606b.mo408a(8756, 0L);
                this.f8606b.mo408a(8716, 0L);
                return;
            case 8712:
                this.f8606b.f8500d.f7650h.f7730c = 295;
                this.f8606b.mo408a(8716, 0L);
                this.f8606b.m7773g(65);
                this.f8606b.f8456c.m7994c(268435455L);
                return;
            case 8714:
                this.f8606b.f8500d.f7650h.f7730c = 288;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                if (C0088a.m863r()) {
                    this.f8606b.f8500d.f7650h.f7742o = true;
                }
                this.f8606b.mo408a(8754, 0L);
                this.f8606b.mo408a(8716, 0L);
                return;
            case 8725:
                this.f8606b.m7738a(false, this.f8606b.f8500d.f7650h.f7735h);
                this.f8606b.m407a(8778);
                return;
            case 8726:
            case 32768:
                m7827a("MSG_KEY_BACK stop recording", 4);
                if (message.what == 32768) {
                    this.f8606b.f8456c.f8782c.f7650h.f7674S = 1;
                    break;
                } else if (message.what == 8726) {
                    this.f8606b.f8456c.f8782c.f7650h.f7674S = 3;
                    break;
                }
                break;
            case 8736:
                this.f8606b.m7741a(true, true);
                this.f8606b.m7713J();
                this.f8606b.m7781i(false);
                UI_LiveViewController uI_LiveViewController = this.f8606b;
                return;
            case 8741:
                this.f8606b.f8456c.f8782c.f7650h.f7674S = 6;
                this.f8606b.mo408a(8778, 0L);
                return;
            case 8756:
                m7827a("MSG_UI_VIEW_GET_PIV_THUMBNAIL_IMAGE", 4);
                this.f8606b.f8456c.m7996c(new C0121a(18466), 0L);
                return;
            case 8760:
                m7827a("MSG_UI_VIEW_GET_PICTURE_IMAGE", 4);
                C0121a c0121a2 = new C0121a(18465);
                c0121a2.m1200a("IsMiddleData", 0);
                this.f8606b.f8456c.m7996c(c0121a2, 0L);
                return;
            case 8777:
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.m7773g(64);
                this.f8606b.f8500d.f7650h.f7730c = 296;
                if (this.f8606b.f8500d.f7650h.f7735h > 0) {
                    this.f8606b.f8456c.m7995c(new C0121a(16938));
                    this.f8606b.mo408a(8715, 0L);
                    return;
                } else {
                    this.f8606b.mo408a(8777, 200L);
                    return;
                }
            case 8778:
                break;
            case 8779:
                this.f8606b.f8500d.f7650h.f7731d = 305;
                this.f8606b.mo408a(8778, 0L);
                return;
            case 8780:
                this.f8606b.f8500d.f7650h.f7731d = 306;
                this.f8606b.mo408a(8778, 0L);
                return;
            case 8791:
                m7827a("*****MSG_UI_VIEW_KEY_RECORD_END_BY_USB_DETACH", 0);
                this.f8606b.m7753ak();
                this.f8606b.m7721R();
                this.f8606b.m7732a(1, true);
                this.f8606b.m7784j(true);
                this.f8606b.f8456c.m7977a(305, this.f8606b);
                this.f8606b.m7741a(false, true);
                this.f8606b.m7747ae();
                this.f8606b.m7780i(1);
                return;
            case 8825:
                this.f8606b.m7738a(true, this.f8606b.f8500d.f7650h.f7735h);
                return;
            case 8843:
                this.f8606b.m7771f(52);
                return;
            case 12326:
                m7827a("MSG_FILE_DOWNLOAD_PIV_QUICKVIE_DONE", 4);
                m7827a("update thumbnail and continue recording", 3);
                this.f8606b.m7773g(65);
                this.f8606b.f8456c.m7994c(268435455L);
                return;
            case 16996:
                m7827a("MSG_REMOTE_GET_CURRENT_RECORDING_TIME value: " + c0121a.m1207b("value"), 4);
                this.f8606b.f8500d.f7650h.f7735h = c0121a.m1207b("value");
                if (this.f8606b.f8500d.f7650h.f7738k) {
                    if (this.f8606b.f8500d.f7650h.f7735h <= 0) {
                        this.f8606b.f8456c.m7996c(new C0121a(16996), 200L);
                        return;
                    } else {
                        this.f8606b.m7771f(49);
                        return;
                    }
                }
                this.f8606b.mo408a(8843, 0L);
                return;
            case 17937:
                m7827a("MSG_REMOTE_EVENT_STOP_RECORDING", 4);
                this.f8606b.m7762c(30);
                this.f8606b.m7771f(53);
                return;
            case 17966:
                m7827a("MSG_REMOTE_EVENT_PIV_DONE2 result: " + c0121a.m1207b("result"), 4);
                if (c0121a.m1207b("result") == -17) {
                    this.f8606b.mo408a(8712, 0L);
                    return;
                } else {
                    this.f8606b.mo408a(8711, 0L);
                    return;
                }
            default:
        }
        switch (this.f8606b.f8456c.f8782c.f7650h.f7674S) {
            case 2:
                this.f8606b.f8456c.m7995c(new C0121a(18443));
                this.f8606b.m7753ak();
                this.f8606b.m7721R();
                this.f8606b.m7732a(1, true);
                this.f8606b.m7784j(true);
                this.f8606b.m7738a(false, 0);
                this.f8606b.m7797r();
                this.f8606b.f8456c.m7977a(305, this.f8606b);
                this.f8606b.m7741a(false, true);
                this.f8606b.m7747ae();
                this.f8606b.m7785k(false);
                this.f8606b.m7780i(1);
                break;
            default:
                this.f8606b.m7753ak();
                this.f8606b.f8456c.m7995c(new C0121a(18452));
                this.f8606b.m7721R();
                this.f8606b.m7732a(1, true);
                this.f8606b.m7784j(true);
                this.f8606b.m7738a(false, 0);
                this.f8606b.m7797r();
                this.f8606b.f8456c.m7977a(305, this.f8606b);
                break;
        }
    }

    /* renamed from: e */
    public void m7835e(Message message) {
        new C0121a(message);
        switch (message.what) {
            case 8726:
                if (this.f8606b.f8500d.f7650h.f7674S != 1 && this.f8606b.f8500d.f7650h.f7674S != 4) {
                    this.f8606b.f8500d.f7650h.f7674S = 3;
                    break;
                }
                break;
            case 8727:
                this.f8606b.f8456c.f8782c.f7650h.f7751x = true;
                this.f8606b.m7732a(1, false);
                this.f8606b.m7750ah();
                if (this.f8606b.f8500d.f7653k.f7478b.f7526a.m528h(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0) != null) {
                    this.f8606b.m7756b(this.f8606b.f8500d.f7653k.f7478b.f7526a.m528h(this.f8606b.f8500d.f7653k.f7481e.m561c(), 0));
                }
                this.f8606b.m412b(20508);
                switch (this.f8606b.f8456c.f8782c.f7650h.f7674S) {
                    case 0:
                        m7827a("[lRecordStopCase] RECORD_STOP_NORMAL", 3);
                        break;
                    case 1:
                        m7827a("[lRecordStopCase] RECORD_STOP_BACK_KEY", 3);
                        this.f8606b.m407a(8452);
                        break;
                    case 2:
                        m7827a("[lRecordStopCase] RECORD_STOP_HOME_KEY", 3);
                        break;
                    case 3:
                        m7827a("[lRecordStopCase] RECORD_STOP_PHONE_LOW_BATTERY", 3);
                        this.f8606b.m407a(8726);
                        break;
                    case 4:
                        m7827a("[lRecordStopCase] RECORD_STOP_DISCONNECT_CAMERA", 3);
                        this.f8606b.m7759b(false, "");
                        this.f8606b.m7740a(true, this.f8606b.getResources().getString(R.string.no_camera));
                        this.f8606b.m7760b(true, true);
                        break;
                    case 5:
                        m7827a("[lRecordStopCase] RECORD_STOP_REMOVE_SD_CARD", 3);
                        break;
                }
                this.f8606b.f8456c.f8782c.f7650h.f7674S = 0;
                if (this.f8606b.m7744ab()) {
                    this.f8606b.m7745ac();
                }
                C0052d.m466a((Context) this.f8606b, false);
                break;
            case 8778:
                m7827a("Receive MSG_UI_VIEW_KEY_RECORD_END in UI_LiveviewStopRecording!", 1);
                break;
            case 17967:
                m7827a("MSG_REMOTE_EVENT_RECORDING_DONE_2", 2);
                this.f8606b.f8456c.f8782c.f7650h.f7752y = true;
                if (this.f8606b.m7744ab()) {
                    this.f8606b.m7745ac();
                    break;
                }
                break;
            case 18452:
                m7827a("*****lVideoTime: " + this.f8606b.f8456c.f8782c.f7650h.f7684aB, 0);
                this.f8606b.m7741a(false, true);
                this.f8606b.m7747ae();
                this.f8606b.m7780i(1);
                break;
            case 32768:
                m7827a("Receive MSG_KEY_BACK in UI_LiveviewStopRecording!", 1);
                break;
        }
    }

    /* renamed from: f */
    public void m7836f(Message message) {
        switch (message.what) {
            case 8779:
                this.f8606b.f8500d.f7650h.f7731d = 305;
                this.f8606b.mo408a(8783, 0L);
                break;
            case 8780:
                this.f8606b.f8500d.f7650h.f7731d = 306;
                this.f8606b.mo408a(8783, 0L);
                break;
            case 8783:
            case 32768:
                this.f8606b.m7773g(64);
                this.f8606b.f8456c.m7995c(new C0121a(16942));
                this.f8606b.mo408a(8715, 0L);
                break;
            case 8844:
            case 17963:
                this.f8606b.f8456c.m7994c(268435455L);
                this.f8606b.f8500d.f7650h.f7730c = 292;
                this.f8606b.mo408a(8716, 0L);
                break;
            case 17924:
                m7827a("MSG_REMOTE_EVENT_CAPTURE_DONE2", 4);
                this.f8606b.mo408a(8716, 0L);
                this.f8606b.m7773g(65);
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 17964:
                m7827a("MSG_REMOTE_EVENT_CAPTURE_START", 4);
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.m7773g(64);
                break;
            case 17965:
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.f8500d.f7650h.f7730c = 288;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.mo408a(8756, 0L);
                this.f8606b.mo408a(8716, 0L);
                break;
        }
    }

    /* renamed from: g */
    public void m7837g(Message message) {
        switch (message.what) {
            case 8752:
                this.f8606b.f8500d.f7650h.f7730c = HttpStatusCodes.STATUS_CODE_FOUND;
                m7827a("UI_SettingControl.GetCaptureType(): " + C0088a.m860q(), 3);
                this.f8606b.f8456c.m7978a(256, this.f8606b, (Intent) null);
                this.f8606b.mo408a(8715, 0L);
                break;
            case 8779:
                this.f8606b.f8500d.f7650h.f7729b = 256;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.mo408a(8779, 0L);
                break;
            case 8780:
                this.f8606b.f8500d.f7650h.f7729b = 256;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.mo408a(8780, 0L);
                break;
        }
    }

    /* renamed from: h */
    public void m7838h(Message message) {
        switch (message.what) {
            case 8753:
                C0121a c0121a = new C0121a(18514);
                c0121a.m1203a("value", C0122b.m1216a(C0088a.m854n()));
                this.f8606b.f8456c.m7995c(c0121a);
                break;
            case 8779:
                this.f8606b.f8500d.f7650h.f7729b = 256;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.mo408a(8779, 0L);
                break;
            case 8780:
                this.f8606b.f8500d.f7650h.f7729b = 256;
                this.f8606b.f8456c.m7977a(272, this.f8606b);
                this.f8606b.f8456c.m7988b(268435455L);
                this.f8606b.mo408a(8780, 0L);
                break;
        }
    }

    /* renamed from: i */
    public void m7839i(Message message) {
        switch (message.what) {
            case 8753:
                if (System.currentTimeMillis() - this.f8606b.f8456c.f8782c.f7650h.f7689aG <= 200) {
                    this.f8606b.m407a(8753);
                    break;
                } else {
                    C0121a c0121a = new C0121a(18514);
                    c0121a.m1200a("setting", C0122b.m1218b(C0088a.m854n()));
                    this.f8606b.f8456c.m7995c(c0121a);
                    this.f8606b.f8456c.f8782c.f7650h.f7689aG = System.currentTimeMillis();
                    break;
                }
            case 8758:
                C0121a c0121a2 = new C0121a(18515);
                c0121a2.m1200a("setting", C0122b.m1220c(C0088a.m856o()));
                this.f8606b.f8456c.m7995c(c0121a2);
                break;
            case 8759:
                C0121a c0121a3 = new C0121a(18516);
                c0121a3.m1200a("setting", C0122b.m1222d(C0088a.m858p()));
                this.f8606b.f8456c.m7995c(c0121a3);
                break;
            case 8790:
                if (this.f8606b.f8456c.f8782c.f7650h.f7677V == 0) {
                    this.f8606b.f8456c.m7977a(400, this.f8606b);
                    this.f8606b.m7778h(true);
                    this.f8606b.f8456c.f8782c.f7650h.f7677V = 1;
                } else {
                    this.f8606b.f8456c.m7977a(272, this.f8606b);
                    this.f8606b.m7778h(false);
                    this.f8606b.f8456c.f8782c.f7650h.f7677V = 0;
                }
                this.f8606b.f8456c.m7994c(268435455L);
                break;
            case 32768:
                m7827a("MSG_KEY_BACK hide effect tool menu", 3);
                this.f8606b.m407a(8790);
                break;
        }
    }

    /* renamed from: a */
    private void m7826a() {
        if (this.f8606b.f8456c.f8782c.f7650h.f7720ar > 10) {
            if (this.f8606b.f8456c.f8783d.m1264b()) {
                this.f8606b.f8456c.m8007l();
                this.f8606b.m7748af();
                return;
            } else {
                if (!this.f8606b.f8456c.f8782c.f7650h.f7722at) {
                    this.f8606b.f8456c.f8782c.f7650h.f7722at = true;
                    this.f8606b.f8456c.m8005j();
                    return;
                }
                return;
            }
        }
        this.f8606b.mo408a(8726, 0L);
    }

    /* renamed from: b */
    private void m7828b() {
        this.f8606b.f8502f.m216k();
        this.f8606b.f8502f.m217l();
    }

    /* renamed from: j */
    public void m7840j(Message message) {
        switch (message.what) {
            case 20507:
                if (C0088a.m820a() == 0) {
                    this.f8606b.f8456c.f8782c.f7650h.f7753z = C0052d.m461a(C1658c.f7453a, 0);
                } else {
                    if (this.f8606b.f8456c.f8782c.f7653k.f7478b.f7528ab == null) {
                        this.f8606b.f8456c.f8782c.f7653k.f7478b.f7528ab = this.f8606b.m7751ai();
                    }
                    if (this.f8606b.f8456c.f8782c.f7653k.f7478b.f7528ab != null) {
                        this.f8606b.f8456c.f8782c.f7650h.f7753z = C0052d.m461a(this.f8606b.f8456c.f8782c.f7653k.f7478b.f7528ab, 0);
                    }
                }
                this.f8606b.f8500d.f7650h.f7695aM = this.f8606b.f8456c.f8782c.f7650h.f7753z < 52428800;
                C0121a c0121a = new C0121a(8744);
                c0121a.m1204a("isMemoryFull", this.f8606b.f8500d.f7650h.f7695aM);
                this.f8606b.m409a(c0121a);
                break;
            case 20508:
                Bitmap m7710G = this.f8606b.m7710G();
                Bitmap bitmap = null;
                if (m7710G != null) {
                    bitmap = this.f8606b.m7730a(m7710G, m7710G.getHeight());
                    m7710G.recycle();
                }
                this.f8606b.f8500d.f7653k.f7478b.f7526a.m507a(this.f8606b.f8500d.f7653k.f7481e.m550a(), this.f8606b.f8500d.f7653k.f7482f);
                C0121a c0121a2 = new C0121a(8738);
                c0121a2.m1199a(bitmap);
                this.f8606b.m409a(c0121a2);
                break;
            case 20510:
                int m787a = (int) C0080a.m786a(this.f8606b).m787a(this.f8606b.f8456c.f8782c.f7650h.f7707ae);
                C0121a c0121a3 = new C0121a(8745);
                c0121a3.m1200a("avgPingTime", m787a);
                this.f8606b.m409a(c0121a3);
                break;
        }
    }

    /* renamed from: c */
    private void m7829c() {
        C0091o.m899b(this.f8606b);
        C0091o.m891a((Context) this.f8606b, true, true, this.f8606b.getResources().getString(R.string.broadcast_no_internet_title), this.f8606b.getResources().getString(R.string.broadcast_no_internet_description), this.f8606b.getResources().getString(R.string.dialog_option_ok), 12039, true);
    }

    /* renamed from: d */
    private void m7830d() {
        if (this.f8606b.f8456c.f8782c.f7650h.f7707ae == 0) {
            this.f8606b.f8456c.m8003h();
            if (C0078b.m746a()) {
                C0091o.m893a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.facebook_live_signin_title), this.f8606b.f8456c.m8003h().m767d(), new String[]{this.f8606b.getResources().getString(R.string.broadcast_account_sign_out), this.f8606b.getResources().getString(R.string.broadcast_account_confirm)}, new int[]{10753, 10774}, true);
                return;
            } else {
                this.f8606b.mo408a(10752, 0L);
                return;
            }
        }
        if (this.f8606b.f8456c.m8003h().m764b() && this.f8606b.m7706C().m7819a(this.f8606b.f8456c.m8003h().m765c())) {
            C0091o.m893a((Context) this.f8606b, true, false, this.f8606b.getResources().getString(R.string.youtube_live_signin_title), this.f8606b.f8456c.m8003h().m765c(), new String[]{this.f8606b.getResources().getString(R.string.broadcast_account_sign_out), this.f8606b.getResources().getString(R.string.broadcast_account_confirm)}, new int[]{10756, 10775}, true);
        } else {
            this.f8606b.mo408a(10755, 0L);
        }
    }
}
