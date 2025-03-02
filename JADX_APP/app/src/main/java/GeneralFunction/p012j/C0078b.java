package GeneralFunction.p012j;

import GeneralFunction.C0052d;
import GeneralFunction.p003c.C0051d;
import GeneralFunction.p017n.C0090a;
import ThirdParty.Rtmp.C0106a;
import ThirdParty.p024a.C0107a;
import ThirdParty.p025b.C0109b;
import android.content.Intent;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.InputDeviceCompat;
import com.facebook.AbstractC1163w;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.C1111p;
import com.facebook.GraphRequest;
import com.facebook.InterfaceC1044d;
import com.facebook.InterfaceC1046f;
import com.facebook.Profile;
import com.facebook.login.C1106g;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import org.json.JSONException;
import org.json.JSONObject;
import p026a.p032c.C0121a;
import ui_Controller.p110b.C1672n;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: GeneralFunction.j.b */
/* loaded from: classes.dex */
public class C0078b {

    /* renamed from: a */
    private UI_ModeMain f630a;

    /* renamed from: b */
    private C0077a f631b;

    /* renamed from: c */
    private long f632c = -1;

    /* renamed from: d */
    private C0107a.a f633d = new C0107a.a() { // from class: GeneralFunction.j.b.4
        AnonymousClass4() {
        }

        @Override // ThirdParty.p024a.C0107a.a
        /* renamed from: a */
        public void mo779a(int i, String str) {
            C0078b.m748b("onAccountLogin result: " + i, 3);
            C0078b.m748b("accountName " + str, 3);
            if (i == 0) {
                C0078b.this.m759a(str);
                C0078b.this.m760a(true);
                C0078b.this.m753j();
                C0078b.this.f630a.m7976a(10835, 0L);
                C0078b.this.m756m();
                return;
            }
            C0078b.this.m759a(str);
            C0078b.this.m760a(false);
            C0078b.this.f630a.m7976a(10914, 0L);
        }

        @Override // ThirdParty.p024a.C0107a.a
        /* renamed from: a */
        public void mo778a(int i) {
            C0078b.m748b("onAccountLogout result: " + i, 3);
            if (i == 0) {
                C0078b.this.m759a((String) null);
                C0078b.this.m760a(false);
                C0090a.m886a(C0078b.this.f630a).edit().remove("googleAccountName").commit();
                C0078b.this.f630a.m7976a(10836, 0L);
            }
        }
    };

    /* renamed from: e */
    private C0106a.a f634e = new C0106a.a() { // from class: GeneralFunction.j.b.5
        AnonymousClass5() {
        }

        @Override // ThirdParty.Rtmp.C0106a.a
        /* renamed from: a */
        public void mo780a(int i, int i2) {
            switch (i) {
                case 8192:
                    C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_INIT " + i2, 0);
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10845, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10922, 0L);
                        break;
                    }
                case 8193:
                    if (i2 < 0) {
                        C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_VIDEO_FRAME ***ERROR*** " + i2, 0);
                        if (i2 != -999) {
                            if (C0078b.this.f632c == -1) {
                                C0078b.this.f632c = System.currentTimeMillis();
                            }
                            if (System.currentTimeMillis() - C0078b.this.f632c > HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS) {
                                C0078b.this.f630a.m7976a(10921, 0L);
                                break;
                            }
                        } else {
                            C0078b.this.f630a.m7976a(10921, 0L);
                            break;
                        }
                    } else {
                        C0078b.this.f632c = -1L;
                        break;
                    }
                    break;
                case 8194:
                    if (i2 < 0) {
                        C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_AUDIO_FRAME ***ERROR*** " + i2, 0);
                        break;
                    }
                    break;
                case 8195:
                    if (i2 == 0 && C0078b.this.f631b.f627k != 1) {
                        if (C0078b.this.f631b.f627k == 2) {
                            C0078b.this.f630a.m7976a(10844, 0L);
                            break;
                        } else {
                            C0078b.m748b("ERROR FILE_STREAMING_TO_THE_END StreamingSns!!!", 0);
                            break;
                        }
                    }
                    break;
            }
        }
    };

    /* renamed from: f */
    private C0109b.a f635f = new C0109b.a() { // from class: GeneralFunction.j.b.6
        AnonymousClass6() {
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo781a(int i, int i2) {
            switch (i) {
                case 4096:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10843, 0L);
                        break;
                    }
                    break;
                case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10838, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10916, 0L);
                        break;
                    }
                case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10837, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10915, 0L);
                        break;
                    }
                case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                    if (i2 == 0) {
                        if (!C0106a.m966a().m1008b()) {
                            C0106a.m966a().m1004a(1440, 720, 44100, C1672n.f7775c, 27, 30, 3145728, 15);
                            C0106a.m966a().m1003a(8192);
                        }
                        C0078b.this.f630a.m7976a(10839, 0L);
                        break;
                    } else {
                        C0121a c0121a = new C0121a(10917);
                        c0121a.m1200a("youtubeApiResult", i2);
                        C0078b.this.f630a.m7980a(c0121a);
                        break;
                    }
                case 4100:
                    if (i2 != 0) {
                        C0078b.this.f630a.m7976a(10918, 0L);
                        break;
                    } else {
                        C0109b.m1027a().m1068a(4105);
                        break;
                    }
                case 4101:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10841, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10919, 0L);
                        break;
                    }
                case 4105:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10840, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10918, 0L);
                        break;
                    }
            }
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo782a(String str, String str2) {
            if (str != null) {
                C0078b.this.f631b.f619c = str;
                C0078b.this.f631b.f620d = str2;
                C0121a c0121a = new C0121a(10846);
                c0121a.m1203a("streamingLink", C0078b.this.f631b.f620d);
                C0078b.this.f630a.m7980a(c0121a);
            }
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo783a(boolean z) {
            C0121a c0121a = new C0121a(10842);
            c0121a.m1204a("havePermission", z);
            C0078b.this.f630a.m7980a(c0121a);
        }
    };

    /* renamed from: b */
    public static void m748b(String str, int i) {
        C0052d.m465a("UI_LiveStreamingController", str, i);
    }

    public C0078b(UI_ModeMain uI_ModeMain) {
        this.f630a = null;
        this.f631b = null;
        this.f630a = uI_ModeMain;
        this.f631b = new C0077a();
        C1074k.m6169a(this.f630a);
        this.f631b.f622f = InterfaceC1044d.a.m5916a();
        this.f631b.f625i = new C0107a(this.f630a);
        this.f631b.f625i.m1015a(this.f633d);
        C0106a.m966a().m1006a(this.f634e);
        C0109b.m1027a().m1070a(this.f635f);
        C0109b.m1027a().m1071a(this.f630a.f8782c.f7644b);
        m754k();
        m755l();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0011, code lost:
    
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m761a(android.os.Message r13) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p012j.C0078b.m761a(android.os.Message):boolean");
    }

    /* renamed from: GeneralFunction.j.b$1 */
    class AnonymousClass1 implements InterfaceC1046f<C1106g> {
        AnonymousClass1() {
        }

        @Override // com.facebook.InterfaceC1046f
        /* renamed from: a */
        public void mo775a(C1106g c1106g) {
            Profile m5614a = Profile.m5614a();
            C0078b.m748b("FacebookCallback onSuccess", 3);
            if (m5614a != null) {
                C0078b.m748b("profile: " + m5614a.m5619d(), 3);
                C0078b.this.m763b(m5614a.m5619d());
                C0078b.this.m766c(m5614a.m5618c());
                C0078b.this.f630a.m7976a(10832, 0L);
                return;
            }
            C0078b.m748b("profile is null...", 3);
            C0078b.this.m763b(" ");
            C0078b.this.m766c(" ");
            new AbstractC1163w() { // from class: GeneralFunction.j.b.1.1
                C18661() {
                }

                @Override // com.facebook.AbstractC1163w
                /* renamed from: a */
                protected void mo776a(Profile profile, Profile profile2) {
                    C0078b.m748b("onCurrentProfileChanged(): " + profile2.m5619d(), 3);
                    C0078b.this.m763b(profile2.m5619d());
                    C0078b.this.m766c(profile2.m5618c());
                    m6580b();
                    C0078b.this.f630a.m7976a(10832, 0L);
                }
            }.m6579a();
        }

        /* renamed from: GeneralFunction.j.b$1$1 */
        class C18661 extends AbstractC1163w {
            C18661() {
            }

            @Override // com.facebook.AbstractC1163w
            /* renamed from: a */
            protected void mo776a(Profile profile, Profile profile2) {
                C0078b.m748b("onCurrentProfileChanged(): " + profile2.m5619d(), 3);
                C0078b.this.m763b(profile2.m5619d());
                C0078b.this.m766c(profile2.m5618c());
                m6580b();
                C0078b.this.f630a.m7976a(10832, 0L);
            }
        }

        @Override // com.facebook.InterfaceC1046f
        /* renamed from: a */
        public void mo773a() {
            C0078b.m748b("FacebookCallback onCancel", 3);
            C0078b.this.f630a.m7976a(10912, 0L);
        }

        @Override // com.facebook.InterfaceC1046f
        /* renamed from: a */
        public void mo774a(C1048h c1048h) {
            C0078b.m748b("FacebookCallback onError", 3);
            C0078b.this.f630a.m7976a(10912, 0L);
        }
    }

    /* renamed from: GeneralFunction.j.b$2 */
    class AnonymousClass2 implements GraphRequest.InterfaceC0995b {
        AnonymousClass2() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (c1111p == null) {
                C0078b.m748b("GraphRequest's response == null", 3);
                C0121a c0121a = new C0121a(10913);
                c0121a.m1200a("httpStatusCode", -1);
                C0078b.this.f630a.m7980a(c0121a);
                return;
            }
            C0078b.m748b("GraphRequest's response =/= null ", 3);
            C0078b.this.m744a(c1111p);
        }
    }

    /* renamed from: GeneralFunction.j.b$3 */
    class AnonymousClass3 implements GraphRequest.InterfaceC0995b {
        AnonymousClass3() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (c1111p == null) {
                C0078b.m748b("GraphRequest's response == null", 3);
            } else {
                C0078b.m748b("GraphRequest's response =/= null ", 3);
            }
        }
    }

    /* renamed from: a */
    public static boolean m746a() {
        return AccessToken.m5496a() != null;
    }

    /* renamed from: i */
    private InterfaceC1044d m752i() {
        return this.f631b.f622f;
    }

    /* renamed from: a */
    public void m760a(boolean z) {
        m748b("setGoogleAccountName: " + z, 1);
        this.f631b.f626j = z;
    }

    /* renamed from: b */
    public boolean m764b() {
        return this.f631b.f626j;
    }

    /* renamed from: a */
    public void m759a(String str) {
        this.f631b.f623g = str;
    }

    /* renamed from: c */
    public String m765c() {
        return this.f631b.f623g;
    }

    /* renamed from: b */
    public void m763b(String str) {
        this.f631b.f624h = str;
    }

    /* renamed from: c */
    public void m766c(String str) {
        this.f631b.f618b = str;
    }

    /* renamed from: d */
    public String m767d() {
        return this.f631b.f624h;
    }

    /* renamed from: e */
    public String m769e() {
        return this.f631b.f618b;
    }

    /* renamed from: d */
    public void m768d(String str) {
        this.f631b.f621e = str;
    }

    /* renamed from: f */
    public String m770f() {
        return this.f631b.f621e;
    }

    /* renamed from: g */
    public C0107a m771g() {
        return this.f631b.f625i;
    }

    /* renamed from: h */
    public GoogleAccountCredential m772h() {
        return this.f631b.f625i.f807a;
    }

    /* renamed from: a */
    public void m757a(int i, int i2, Intent intent) {
        m771g().m1014a(i, i2, intent);
        m752i().mo5915a(i, i2, intent);
    }

    /* renamed from: a */
    public void m758a(C0051d c0051d, long j) {
        C0121a c0121a = new C0121a(8194);
        c0121a.m1202a("streamAudioData", new C0121a.a(c0051d));
        c0121a.m1200a("streamAudioPts", (int) j);
        C0106a.m966a().m1007a(c0121a.m1208b());
    }

    /* renamed from: b */
    public void m762b(C0051d c0051d, long j) {
        C0121a c0121a = new C0121a(8193);
        c0121a.m1202a("streamVideoData", new C0121a.a(c0051d));
        c0121a.m1200a("streamVideoPts", (int) j);
        C0106a.m966a().m1007a(c0121a.m1208b());
    }

    /* renamed from: j */
    public void m753j() {
        m748b("[DBG] saveAccount", 3);
        C0090a.m887b(this.f630a).putString("googleAccountName", m765c()).apply();
    }

    /* renamed from: k */
    private void m754k() {
        m748b("loadAccount", 3);
        m759a(C0090a.m886a(this.f630a).getString("googleAccountName", null));
        if (m765c() == null) {
            m748b(" GoogleAccountName: " + this.f631b.f623g, 3);
            m760a(false);
        } else {
            m748b(" GoogleAccountName:" + this.f631b.f623g, 3);
            m771g().m1016a(m765c());
            m760a(true);
        }
    }

    /* renamed from: l */
    private void m755l() {
        if (m746a()) {
            m763b(Profile.m5614a().m5619d());
            m766c(Profile.m5614a().m5618c());
        } else {
            m763b("");
            m766c("");
        }
    }

    /* renamed from: m */
    public void m756m() {
        m771g().m1016a(m765c());
        C0109b.m1027a().m1071a(this.f630a.f8782c.f7644b);
        C0109b.m1027a().m1073a(m771g().f807a);
        C0109b.m1027a().m1068a(4102);
    }

    /* renamed from: a */
    public void m744a(C1111p c1111p) {
        if (c1111p.m6419a() != null) {
            m748b("StatusCode: " + c1111p.m6419a().m5528a(), 3);
            m748b(c1111p.m6419a().m5532e(), 3);
            C0121a c0121a = new C0121a(10913);
            c0121a.m1200a("httpStatusCode", c1111p.m6419a().m5528a());
            this.f630a.m7980a(c0121a);
            return;
        }
        JSONObject m6420b = c1111p.m6420b();
        try {
            this.f631b.f619c = m6420b.getString("stream_url");
            m748b("LiveStreamingURL: " + this.f631b.f619c, 3);
            m768d(m6420b.getString(TtmlNode.ATTR_ID));
            C0121a c0121a2 = new C0121a(10834);
            c0121a2.m1203a("rtmpURL", this.f631b.f619c);
            this.f630a.m7982a(c0121a2.m1208b(), 0L);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: GeneralFunction.j.b$4 */
    class AnonymousClass4 implements C0107a.a {
        AnonymousClass4() {
        }

        @Override // ThirdParty.p024a.C0107a.a
        /* renamed from: a */
        public void mo779a(int i, String str) {
            C0078b.m748b("onAccountLogin result: " + i, 3);
            C0078b.m748b("accountName " + str, 3);
            if (i == 0) {
                C0078b.this.m759a(str);
                C0078b.this.m760a(true);
                C0078b.this.m753j();
                C0078b.this.f630a.m7976a(10835, 0L);
                C0078b.this.m756m();
                return;
            }
            C0078b.this.m759a(str);
            C0078b.this.m760a(false);
            C0078b.this.f630a.m7976a(10914, 0L);
        }

        @Override // ThirdParty.p024a.C0107a.a
        /* renamed from: a */
        public void mo778a(int i) {
            C0078b.m748b("onAccountLogout result: " + i, 3);
            if (i == 0) {
                C0078b.this.m759a((String) null);
                C0078b.this.m760a(false);
                C0090a.m886a(C0078b.this.f630a).edit().remove("googleAccountName").commit();
                C0078b.this.f630a.m7976a(10836, 0L);
            }
        }
    }

    /* renamed from: GeneralFunction.j.b$5 */
    class AnonymousClass5 implements C0106a.a {
        AnonymousClass5() {
        }

        @Override // ThirdParty.Rtmp.C0106a.a
        /* renamed from: a */
        public void mo780a(int i, int i2) {
            switch (i) {
                case 8192:
                    C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_INIT " + i2, 0);
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10845, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10922, 0L);
                        break;
                    }
                case 8193:
                    if (i2 < 0) {
                        C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_VIDEO_FRAME ***ERROR*** " + i2, 0);
                        if (i2 != -999) {
                            if (C0078b.this.f632c == -1) {
                                C0078b.this.f632c = System.currentTimeMillis();
                            }
                            if (System.currentTimeMillis() - C0078b.this.f632c > HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS) {
                                C0078b.this.f630a.m7976a(10921, 0L);
                                break;
                            }
                        } else {
                            C0078b.this.f630a.m7976a(10921, 0L);
                            break;
                        }
                    } else {
                        C0078b.this.f632c = -1L;
                        break;
                    }
                    break;
                case 8194:
                    if (i2 < 0) {
                        C0078b.m748b("MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_AUDIO_FRAME ***ERROR*** " + i2, 0);
                        break;
                    }
                    break;
                case 8195:
                    if (i2 == 0 && C0078b.this.f631b.f627k != 1) {
                        if (C0078b.this.f631b.f627k == 2) {
                            C0078b.this.f630a.m7976a(10844, 0L);
                            break;
                        } else {
                            C0078b.m748b("ERROR FILE_STREAMING_TO_THE_END StreamingSns!!!", 0);
                            break;
                        }
                    }
                    break;
            }
        }
    }

    /* renamed from: GeneralFunction.j.b$6 */
    class AnonymousClass6 implements C0109b.a {
        AnonymousClass6() {
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo781a(int i, int i2) {
            switch (i) {
                case 4096:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10843, 0L);
                        break;
                    }
                    break;
                case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10838, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10916, 0L);
                        break;
                    }
                case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10837, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10915, 0L);
                        break;
                    }
                case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                    if (i2 == 0) {
                        if (!C0106a.m966a().m1008b()) {
                            C0106a.m966a().m1004a(1440, 720, 44100, C1672n.f7775c, 27, 30, 3145728, 15);
                            C0106a.m966a().m1003a(8192);
                        }
                        C0078b.this.f630a.m7976a(10839, 0L);
                        break;
                    } else {
                        C0121a c0121a = new C0121a(10917);
                        c0121a.m1200a("youtubeApiResult", i2);
                        C0078b.this.f630a.m7980a(c0121a);
                        break;
                    }
                case 4100:
                    if (i2 != 0) {
                        C0078b.this.f630a.m7976a(10918, 0L);
                        break;
                    } else {
                        C0109b.m1027a().m1068a(4105);
                        break;
                    }
                case 4101:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10841, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10919, 0L);
                        break;
                    }
                case 4105:
                    if (i2 == 0) {
                        C0078b.this.f630a.m7976a(10840, 0L);
                        break;
                    } else {
                        C0078b.this.f630a.m7976a(10918, 0L);
                        break;
                    }
            }
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo782a(String str, String str2) {
            if (str != null) {
                C0078b.this.f631b.f619c = str;
                C0078b.this.f631b.f620d = str2;
                C0121a c0121a = new C0121a(10846);
                c0121a.m1203a("streamingLink", C0078b.this.f631b.f620d);
                C0078b.this.f630a.m7980a(c0121a);
            }
        }

        @Override // ThirdParty.p025b.C0109b.a
        /* renamed from: a */
        public void mo783a(boolean z) {
            C0121a c0121a = new C0121a(10842);
            c0121a.m1204a("havePermission", z);
            C0078b.this.f630a.m7980a(c0121a);
        }
    }
}
