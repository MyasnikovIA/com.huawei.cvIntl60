package ui_Controller.ui_Liveview;

import GeneralFunction.C0052d;
import GeneralFunction.C0056e;
import GeneralFunction.C0091o;
import GeneralFunction.p003c.C0051d;
import GeneralFunction.p021r.C0097a;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Message;
import com.huawei.cvIntl60.R;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Date;
import p026a.p027a.p028a.C0114d;
import p026a.p032c.C0121a;
import ui_Controller.p110b.C1672n;

/* renamed from: ui_Controller.ui_Liveview.a */
/* loaded from: classes.dex */
public class C1829a {

    /* renamed from: a */
    private UI_LiveViewController f8603a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7811a(String str, int i) {
        C0052d.m465a("UI_LiveViewBroadcast", str, i);
    }

    public C1829a(UI_LiveViewController uI_LiveViewController) {
        this.f8603a = null;
        this.f8603a = uI_LiveViewController;
    }

    /* renamed from: a */
    protected boolean m7819a(String str) {
        AccountManager accountManager = AccountManager.get(this.f8603a.f8456c);
        if (accountManager == null) {
            return false;
        }
        Account[] accounts = accountManager.getAccounts();
        for (Account account : accounts) {
            if (account.name.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m7818a(Message message) {
        switch (message.what) {
            case 8719:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(10756, 0L);
                break;
            case 8741:
                if (this.f8603a.f8500d.f7650h.f7730c == 299) {
                    this.f8603a.mo408a(8785, 0L);
                    break;
                } else {
                    m7811a("error case of btnYoutubeStop ", 4);
                    break;
                }
            case 8779:
                this.f8603a.f8500d.f7650h.f7731d = 305;
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8785, 0L);
                break;
            case 8780:
                this.f8603a.f8500d.f7650h.f7731d = 306;
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8785, 0L);
                break;
            case 8785:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8785, 0L);
                break;
            case 8788:
                this.f8603a.m7754al();
                this.f8603a.m7759b(true, this.f8603a.getResources().getString(R.string.broadcast_wait_active));
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                this.f8603a.m409a(new C0121a(10763));
                this.f8603a.f8500d.f7650h.f7730c = 298;
                m7814a();
                m7815a(10759, this.f8603a.f8500d.f7650h.f7700aR, this.f8603a.f8500d.f7650h.f7701aS);
                m7820b();
                break;
            case 8792:
                this.f8603a.m7737a(true);
                break;
            case 8793:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8793, 0L);
                break;
            case 8797:
                if (this.f8603a.f8456c.f8783d.m1264b()) {
                    this.f8603a.f8456c.f8783d.m1261a(new C0121a(18455));
                }
                this.f8603a.m7759b(false, "");
                this.f8603a.m7760b(true, false);
                this.f8603a.m7713J();
                this.f8603a.m407a(8846);
                this.f8603a.m407a(8785);
                break;
            case 8825:
                if (this.f8603a.f8456c.f8782c.f7650h.f7730c == 299) {
                    this.f8603a.m7758b(true, this.f8603a.f8500d.f7650h.f7735h);
                    break;
                }
                break;
            case 8846:
                C0091o.m899b(this.f8603a);
                C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.low_battery), this.f8603a.getResources().getString(R.string.low_battery_content), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8603a.f8456c.f8782c.f7649g.f7629a = 1036;
                break;
            case 10776:
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                break;
            case 10837:
            case 10838:
            case 10839:
                C0121a c0121a = new C0121a(10760);
                c0121a.m1200a("StreamingType", 1);
                c0121a.m1200a("Width", 1440);
                c0121a.m1200a("Height", 720);
                c0121a.m1200a("AudioSampleRate", 44100);
                c0121a.m1205a("SpsPpsBuffer", C1672n.f7775c);
                c0121a.m1200a("SpsPpsSize", 27);
                c0121a.m1200a("VideoFps", 30);
                c0121a.m1200a("VideoBitrate", 3145728);
                c0121a.m1200a("VideoGOP", 15);
                this.f8603a.m409a(c0121a);
                break;
            case 10840:
                this.f8603a.m7759b(false, "");
                this.f8603a.m7805z();
                this.f8603a.m7766d(true);
                break;
            case 10842:
                if (!new C0121a(message).m1206a("havePermission")) {
                    this.f8603a.m7759b(false, "");
                    break;
                }
                break;
            case 10845:
                this.f8603a.f8500d.f7650h.f7730c = 299;
                this.f8603a.m407a(8737);
                break;
            case 10846:
                this.f8603a.f8456c.f8782c.f7650h.f7690aH = new C0121a(message).m1211d("streamingLink");
                m7811a("[YOUTUBE TEST] Link: " + this.f8603a.f8456c.f8782c.f7650h.f7690aH, 0);
                break;
            case 10917:
            case 10918:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                this.f8603a.m7759b(false, "");
                m7823c();
                C0121a c0121a2 = new C0121a(message);
                if (c0121a2.m1207b("youtubeApiResult") == -2) {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_client_error_title), this.f8603a.getResources().getString(R.string.broadcast_client_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                } else if (c0121a2.m1207b("youtubeApiResult") == -3) {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_server_error_title), this.f8603a.getResources().getString(R.string.broadcast_server_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                } else if (c0121a2.m1207b("youtubeApiResult") == -5) {
                    C0091o.m890a(this.f8603a, true, true, this.f8603a.getResources().getString(R.string.youtube_live_not_enable_title), this.f8603a.getResources().getString(R.string.youtube_live_not_enable_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039, 12039, false, true);
                } else if (c0121a2.m1207b("youtubeApiResult") == -6) {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_title_invalid_title), this.f8603a.getResources().getString(R.string.broadcast_title_invalid_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                } else {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_internet_error_title), this.f8603a.getResources().getString(R.string.broadcast_internet_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                }
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                break;
            case 10921:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8743, 0L);
                break;
            case 10922:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8747, 0L);
                break;
            case 32768:
                m7811a("MSG_KEY_BACK youtube", 4);
                if (this.f8603a.m7788l()) {
                    this.f8603a.m7737a(false);
                } else if (!this.f8603a.m7709F()) {
                    C0091o.m893a((Context) this.f8603a, true, false, this.f8603a.getResources().getString(R.string.broadcast_check_stop_title), this.f8603a.getResources().getString(R.string.broadcast_check_stop_description), new String[]{this.f8603a.getResources().getString(R.string.dialog_option_no), this.f8603a.getResources().getString(R.string.dialog_option_yes)}, new int[]{0, 8785}, true);
                }
                this.f8603a.f8456c.m7994c(268435455L);
                break;
        }
    }

    /* renamed from: b */
    public void m7822b(Message message) {
        switch (message.what) {
            case 8743:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                C0091o.m891a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_no_internet_title), this.f8603a.getResources().getString(R.string.broadcast_no_internet_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039, true);
                C0121a c0121a = new C0121a(10761);
                c0121a.m1200a("StreamingType", 1);
                this.f8603a.m409a(c0121a);
                this.f8603a.m7741a(false, false);
                this.f8603a.m7766d(false);
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                this.f8603a.m7715L();
                m7814a();
                m7823c();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 8747:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_internet_error_title), this.f8603a.getResources().getString(R.string.broadcast_internet_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8603a.m7759b(false, "");
                this.f8603a.m7766d(false);
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                m7823c();
                this.f8603a.m7715L();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 8785:
                this.f8603a.m7753ak();
                this.f8603a.f8500d.f7650h.f7730c = 288;
                this.f8603a.m7759b(true, this.f8603a.getResources().getString(R.string.broadcast_stop_busy));
                C0121a c0121a2 = new C0121a(10761);
                c0121a2.m1200a("StreamingType", 1);
                this.f8603a.m409a(c0121a2);
                this.f8603a.m7741a(false, false);
                m7814a();
                m7823c();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 8793:
                this.f8603a.m407a(8785);
                this.f8603a.m7766d(false);
                m7814a();
                this.f8603a.m7715L();
                this.f8603a.m7759b(false, "");
                this.f8603a.m7772f(false);
                this.f8603a.m7774g(false);
                break;
            case 10836:
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                this.f8603a.f8456c.m7994c(268435455L);
                break;
            case 10841:
            case 10919:
                this.f8603a.m7759b(false, "");
                this.f8603a.m7766d(false);
                m7814a();
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                this.f8603a.m7715L();
                break;
        }
    }

    /* renamed from: c */
    public void m7824c(Message message) {
        switch (message.what) {
            case 8741:
                if (this.f8603a.f8500d.f7650h.f7730c == 299) {
                    this.f8603a.mo408a(8796, 0L);
                    break;
                } else {
                    m7811a("error case of btnfacebookStop ", 4);
                    break;
                }
            case 8779:
                this.f8603a.f8500d.f7650h.f7731d = 305;
                this.f8603a.f8456c.m7977a(432, this.f8603a);
                this.f8603a.mo408a(8796, 0L);
                break;
            case 8780:
                this.f8603a.f8500d.f7650h.f7731d = 306;
                this.f8603a.f8456c.m7977a(432, this.f8603a);
                this.f8603a.mo408a(8796, 0L);
                break;
            case 8793:
                this.f8603a.f8456c.m7977a(432, this.f8603a);
                this.f8603a.mo408a(8793, 0L);
                break;
            case 8794:
                this.f8603a.m7754al();
                this.f8603a.m7759b(true, this.f8603a.getResources().getString(R.string.broadcast_wait_active));
                this.f8603a.f8500d.f7650h.f7730c = 298;
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                C0121a c0121a = new C0121a(10754);
                c0121a.m1203a("liveStreamDescription", this.f8603a.f8500d.f7650h.f7699aQ);
                this.f8603a.m409a(c0121a);
                m7814a();
                m7820b();
                break;
            case 8796:
                this.f8603a.f8456c.m7977a(432, this.f8603a);
                this.f8603a.mo408a(8796, 0L);
                break;
            case 8797:
                if (this.f8603a.f8456c.f8783d.m1264b()) {
                    this.f8603a.f8456c.f8783d.m1261a(new C0121a(18455));
                }
                this.f8603a.m7759b(false, "");
                this.f8603a.m7760b(true, false);
                this.f8603a.m7713J();
                this.f8603a.m407a(8846);
                this.f8603a.m407a(8796);
                break;
            case 8825:
                if (this.f8603a.f8456c.f8782c.f7650h.f7730c == 299) {
                    this.f8603a.m7758b(true, this.f8603a.f8500d.f7650h.f7735h);
                    break;
                }
                break;
            case 8846:
                C0091o.m899b(this.f8603a);
                C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.low_battery), this.f8603a.getResources().getString(R.string.low_battery_content), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8603a.f8456c.f8782c.f7649g.f7629a = 1036;
                break;
            case 10776:
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                break;
            case 10833:
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                break;
            case 10834:
                C0121a c0121a2 = new C0121a(message);
                C0121a c0121a3 = new C0121a(10764);
                c0121a3.m1200a("StreamingType", 1);
                c0121a3.m1200a("Width", 1440);
                c0121a3.m1200a("Height", 720);
                c0121a3.m1200a("AudioSampleRate", 44100);
                c0121a3.m1205a("SpsPpsBuffer", C1672n.f7775c);
                c0121a3.m1200a("SpsPpsSize", 27);
                c0121a3.m1200a("VideoFps", 30);
                c0121a3.m1200a("VideoBitrate", 3145728);
                c0121a3.m1200a("VideoGOP", 15);
                c0121a3.m1203a("rtmpURL", c0121a2.m1211d("rtmpURL"));
                this.f8603a.m409a(c0121a3);
                break;
            case 10845:
                this.f8603a.f8500d.f7650h.f7730c = 299;
                this.f8603a.m407a(8737);
                this.f8603a.m7759b(false, "");
                this.f8603a.m7805z();
                this.f8603a.m7766d(true);
                break;
            case 10913:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                this.f8603a.m7759b(false, "");
                m7823c();
                C0121a c0121a4 = new C0121a(message);
                if (c0121a4.m1207b("httpStatusCode") >= 500) {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_server_error_title), this.f8603a.getResources().getString(R.string.broadcast_server_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                } else if (c0121a4.m1207b("httpStatusCode") >= 400) {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_client_error_title), this.f8603a.getResources().getString(R.string.broadcast_client_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                } else {
                    C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_internet_error_title), this.f8603a.getResources().getString(R.string.broadcast_internet_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                }
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                break;
            case 10921:
                this.f8603a.f8456c.m7977a(432, this.f8603a);
                this.f8603a.mo408a(8743, 0L);
                break;
            case 10922:
                this.f8603a.f8456c.m7977a(352, this.f8603a);
                this.f8603a.mo408a(8747, 0L);
                break;
            case 32768:
                m7811a("MSG_KEY_BACK facebook", 4);
                if (!this.f8603a.m7709F()) {
                    C0091o.m893a((Context) this.f8603a, true, false, this.f8603a.getResources().getString(R.string.broadcast_check_stop_title), this.f8603a.getResources().getString(R.string.broadcast_check_stop_description), new String[]{this.f8603a.getResources().getString(R.string.dialog_option_no), this.f8603a.getResources().getString(R.string.dialog_option_yes)}, new int[]{0, 8796}, true);
                }
                this.f8603a.f8456c.m7994c(268435455L);
                break;
        }
    }

    /* renamed from: d */
    public void m7825d(Message message) {
        switch (message.what) {
            case 8743:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                C0091o.m891a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_no_internet_title), this.f8603a.getResources().getString(R.string.broadcast_no_internet_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039, true);
                C0121a c0121a = new C0121a(10773);
                c0121a.m1200a("StreamingType", 1);
                this.f8603a.m409a(c0121a);
                this.f8603a.m7741a(false, false);
                this.f8603a.m7766d(false);
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                this.f8603a.m7715L();
                m7814a();
                m7823c();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 8747:
                this.f8603a.f8500d.f7650h.f7730c = 288;
                C0091o.m889a((Context) this.f8603a, true, true, this.f8603a.getResources().getString(R.string.broadcast_internet_error_title), this.f8603a.getResources().getString(R.string.broadcast_internet_error_description), this.f8603a.getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8603a.m7759b(false, "");
                this.f8603a.m7766d(false);
                this.f8603a.f8456c.m7977a(272, this.f8603a);
                m7823c();
                this.f8603a.m7715L();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 8793:
                this.f8603a.m407a(8796);
                this.f8603a.m7766d(false);
                m7814a();
                this.f8603a.m7715L();
                this.f8603a.m7759b(false, "");
                this.f8603a.m7772f(false);
                this.f8603a.m7774g(false);
                break;
            case 8796:
                this.f8603a.m7753ak();
                this.f8603a.f8500d.f7650h.f7730c = 288;
                this.f8603a.m7759b(true, this.f8603a.getResources().getString(R.string.broadcast_stop_busy));
                C0121a c0121a2 = new C0121a(10773);
                c0121a2.m1200a("StreamingType", 1);
                this.f8603a.m409a(c0121a2);
                this.f8603a.m7741a(false, false);
                m7814a();
                m7823c();
                this.f8603a.f8456c.m7995c(new C0121a(18450));
                break;
            case 10844:
                this.f8603a.m7759b(false, "");
                this.f8603a.m7766d(false);
                this.f8603a.f8456c.m7975a(272);
                break;
        }
    }

    /* renamed from: a */
    protected void m7814a() {
        this.f8603a.f8500d.f7650h.f7666K = false;
        this.f8603a.f8500d.f7650h.f7667L = false;
        this.f8603a.f8500d.f7650h.f7668M.clear();
        this.f8603a.f8500d.f7650h.f7669N = 0L;
        this.f8603a.f8500d.f7650h.f7671P = 0L;
        this.f8603a.f8500d.f7650h.f7670O = 0L;
        this.f8603a.f8500d.f7650h.f7672Q = 0L;
    }

    /* renamed from: a */
    protected void m7815a(int i, String str, String str2) {
        m7811a("CreateYoutubeType", 3);
        C0121a c0121a = new C0121a(i);
        if (i == 10759) {
            m7811a("MSG_UI_LIVE_STREAMING_YOUTUBE_CREATE_360_EVENT", 3);
            String date = new Date().toString();
            if (!str.equals("")) {
                c0121a.m1203a("liveStreamTitle", str);
            } else {
                c0121a.m1203a("liveStreamTitle", "360 Live Stream - " + date);
            }
            if (!str2.equals("")) {
                c0121a.m1203a("liveStreamDescription", str2);
            }
            c0121a.m1203a("streamFormat", "720p");
        } else if (i == 10758) {
            m7811a("MSG_UI_LIVE_STREAMING_YOUTUBE_CREATE_EVENT", 3);
            c0121a.m1203a("liveStreamTitle", "Live Stream - " + new Date().toString());
            c0121a.m1203a("streamFormat", "720p");
        }
        this.f8603a.f8456c.m7981a(c0121a, 0L);
    }

    /* renamed from: b */
    protected void m7820b() {
        this.f8603a.f8500d.f7650h.f7716an = new C0097a(new C0097a.a() { // from class: ui_Controller.ui_Liveview.a.1
            @Override // GeneralFunction.p021r.C0097a.a
            /* renamed from: a */
            public void mo928a(MediaFormat mediaFormat) {
            }

            @Override // GeneralFunction.p021r.C0097a.a
            /* renamed from: a */
            public void mo929a(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
                if (byteBuffer == null) {
                    C1829a.this.m7811a("OnAudioFrameReady receive objAudioData is null:" + bufferInfo, 0);
                    return;
                }
                byteBuffer.position(bufferInfo.offset);
                byte[] bArr = new byte[bufferInfo.size];
                byteBuffer.get(bArr, bufferInfo.offset, bufferInfo.size);
                C1829a.this.m7810a(new C0051d(bArr), bufferInfo);
            }

            @Override // GeneralFunction.p021r.C0097a.a
            /* renamed from: a */
            public void mo927a() {
                C1829a.this.f8603a.f8456c.f8782c.f7650h.f7716an.m926c();
                C1829a.this.f8603a.f8456c.f8782c.f7650h.f7716an.m921a((C0097a.a) null);
            }
        });
        this.f8603a.f8500d.f7650h.f7716an.m920a();
    }

    /* renamed from: c */
    protected void m7823c() {
        if (this.f8603a.f8456c.f8782c.f7650h.f7716an != null) {
            this.f8603a.f8456c.f8782c.f7650h.f7716an.m924b();
        }
    }

    /* renamed from: a */
    protected void m7817a(C0114d c0114d) {
        int i = this.f8603a.f8500d.f7650h.f7730c;
        boolean m478b = C0056e.m478b(c0114d.f872a.m454a());
        if (i == 299 || i == 300) {
            boolean z = false;
            long j = 0;
            if (this.f8603a.f8500d.f7650h.f7667L) {
                z = true;
                j = this.f8603a.f8500d.f7650h.f7669N + ((this.f8603a.f8500d.f7650h.f7670O * 1000) / 30);
                if (this.f8603a.f8500d.f7650h.f7670O % 60 == 0) {
                    m7811a("[Live DBG]RECEIVE video frame number:" + this.f8603a.f8500d.f7650h.f7670O, 2);
                    m7811a("[Live DBG] Video pts: " + j, 3);
                    m7811a("[Live DBG] Audio pts: " + this.f8603a.f8500d.f7650h.f7672Q, 3);
                }
            } else if (m478b) {
                m7811a("[Live DBG] Send first I frame", 2);
                this.f8603a.f8500d.f7650h.f7667L = true;
                this.f8603a.f8500d.f7650h.f7669N = c0114d.f872a.f470b - 166;
                z = true;
                j = this.f8603a.f8500d.f7650h.f7669N + ((this.f8603a.f8500d.f7650h.f7670O * 1000) / 30);
            }
            if (z) {
                if (this.f8603a.f8500d.f7650h.f7666K) {
                    if (i == 299 && m478b) {
                        this.f8603a.f8500d.f7650h.f7666K = false;
                    }
                } else if (i == 300 && m478b) {
                    this.f8603a.f8500d.f7650h.f7666K = true;
                }
                if (this.f8603a.f8500d.f7650h.f7666K) {
                    InputStream openRawResource = this.f8603a.getResources().openRawResource(R.raw.h264_360test_960p_0001 + ((int) (this.f8603a.f8500d.f7650h.f7670O % 15)));
                    try {
                        C0051d c0051d = new C0051d(new byte[openRawResource.available()]);
                        openRawResource.read(c0051d.m454a());
                        m7821b(c0051d, j);
                    } catch (IOException e) {
                        m7811a("***FAKE FRAME IO ERROR***", 0);
                    }
                    try {
                        openRawResource.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    m7821b(c0114d.f872a, j);
                }
                this.f8603a.f8500d.f7650h.f7670O++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7810a(C0051d c0051d, MediaCodec.BufferInfo bufferInfo) {
        if (this.f8603a.f8500d.f7650h.f7730c == 299 || this.f8603a.f8500d.f7650h.f7730c == 300) {
            c0051d.f474f = bufferInfo.presentationTimeUs / 1000;
            this.f8603a.f8500d.f7650h.f7672Q = c0051d.f474f;
            this.f8603a.f8500d.f7650h.f7668M.add(c0051d);
            if (this.f8603a.f8500d.f7650h.f7667L) {
                for (int i = 0; i < this.f8603a.f8500d.f7650h.f7668M.size(); i++) {
                    C0051d c0051d2 = this.f8603a.f8500d.f7650h.f7668M.get(0);
                    this.f8603a.f8500d.f7650h.f7668M.remove(0);
                    if (c0051d2.f474f >= this.f8603a.f8500d.f7650h.f7669N) {
                        m7816a(c0051d2, c0051d2.f474f);
                    }
                }
            }
            this.f8603a.f8500d.f7650h.f7671P++;
        }
    }

    /* renamed from: a */
    protected void m7816a(C0051d c0051d, long j) {
        this.f8603a.f8456c.m8003h().m758a(c0051d, j);
    }

    /* renamed from: b */
    protected void m7821b(C0051d c0051d, long j) {
        this.f8603a.f8456c.m8003h().m762b(c0051d, j);
    }
}
