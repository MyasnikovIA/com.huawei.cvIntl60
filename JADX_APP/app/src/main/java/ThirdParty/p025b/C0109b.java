package ThirdParty.p025b;

import ThirdParty.Rtmp.C0106a;
import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.support.v4.view.InputDeviceCompat;
import android.util.Log;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.api.client.extensions.android.http.AndroidHttp;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.CdnSettings;
import com.google.api.services.youtube.model.IngestionInfo;
import com.google.api.services.youtube.model.LiveBroadcast;
import com.google.api.services.youtube.model.LiveBroadcastContentDetails;
import com.google.api.services.youtube.model.LiveBroadcastListResponse;
import com.google.api.services.youtube.model.LiveBroadcastSnippet;
import com.google.api.services.youtube.model.LiveBroadcastStatus;
import com.google.api.services.youtube.model.LiveStream;
import com.google.api.services.youtube.model.LiveStreamSnippet;
import com.google.api.services.youtube.model.LiveStreamStatus;
import com.google.api.services.youtube.model.MonitorStreamInfo;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import p026a.p032c.C0121a;

/* renamed from: ThirdParty.b.b */
/* loaded from: classes.dex */
public class C0109b {

    /* renamed from: x */
    private static C0109b f815x = null;

    /* renamed from: a */
    private HandlerThread f816a;

    /* renamed from: b */
    private Handler f817b;

    /* renamed from: c */
    private Handler f818c;

    /* renamed from: e */
    private Activity f820e;

    /* renamed from: f */
    private YouTube f821f;

    /* renamed from: j */
    private int f825j;

    /* renamed from: k */
    private int f826k;

    /* renamed from: l */
    private int f827l;

    /* renamed from: m */
    private byte[] f828m;

    /* renamed from: n */
    private int f829n;

    /* renamed from: o */
    private int f830o;

    /* renamed from: p */
    private int f831p;

    /* renamed from: q */
    private int f832q;

    /* renamed from: d */
    private a f819d = null;

    /* renamed from: g */
    private HttpTransport f822g = null;

    /* renamed from: h */
    private JsonFactory f823h = null;

    /* renamed from: i */
    private int f824i = 0;

    /* renamed from: r */
    private boolean f833r = false;

    /* renamed from: s */
    private boolean f834s = true;

    /* renamed from: t */
    private String f835t = null;

    /* renamed from: u */
    private String f836u = null;

    /* renamed from: v */
    private String f837v = null;

    /* renamed from: w */
    private String f838w = null;

    /* renamed from: ThirdParty.b.b$a */
    public interface a {
        /* renamed from: a */
        void mo781a(int i, int i2);

        /* renamed from: a */
        void mo782a(String str, String str2);

        /* renamed from: a */
        void mo783a(boolean z);
    }

    /* renamed from: q */
    static /* synthetic */ int m1065q(C0109b c0109b) {
        int i = c0109b.f824i;
        c0109b.f824i = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m1037a(String str, int i) {
        if (i <= 5) {
            Log.e("YouTubeManager", str);
        }
    }

    private C0109b() {
    }

    /* renamed from: a */
    public static synchronized C0109b m1027a() {
        C0109b c0109b;
        synchronized (C0109b.class) {
            if (f815x == null) {
                f815x = new C0109b();
            }
            c0109b = f815x;
        }
        return c0109b;
    }

    /* renamed from: a */
    public void m1071a(Activity activity) {
        this.f820e = activity;
    }

    /* renamed from: a */
    public void m1073a(GoogleAccountCredential googleAccountCredential) {
        this.f822g = AndroidHttp.newCompatibleTransport();
        this.f823h = new GsonFactory();
        this.f821f = new YouTube.Builder(this.f822g, this.f823h, googleAccountCredential).setApplicationName("WatchMe").build();
        m1041b();
        m1031a(4096, 0);
    }

    /* renamed from: a */
    public void m1072a(Message message) {
        int i = message.what;
        if ((i & 61440) == 4096) {
            this.f817b.sendMessage(message);
        } else if ((i & 61440) == 8192) {
            this.f818c.sendMessage(message);
        }
    }

    /* renamed from: a */
    public void m1068a(int i) {
        Message message = new Message();
        message.what = i;
        m1072a(message);
    }

    /* renamed from: a */
    public void m1069a(int i, long j) {
        Message message = new Message();
        message.what = i;
        this.f817b.sendMessageDelayed(message, j);
    }

    /* renamed from: b */
    private void m1041b() {
        this.f816a = new HandlerThread("youtubeApiServer");
        this.f816a.start();
        this.f817b = new Handler(this.f816a.getLooper()) { // from class: ThirdParty.b.b.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i;
                int i2 = -1;
                super.handleMessage(message);
                C0109b.this.m1037a("[DEBUG] youtubeApiServerHandler: 0x" + Integer.toHexString(message.what), 1);
                switch (message.what) {
                    case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                        C0121a c0121a = new C0121a(message);
                        C0109b.this.m1037a("[DEBUG] YM MSG_YOUTUBE_CREATE_EVENT " + c0121a.m1211d("liveStreamTitle"), 3);
                        try {
                            C0109b.this.m1026a(c0121a, false);
                            Thread.sleep(500L);
                            List m1046c = C0109b.m1046c(C0109b.this.f821f);
                            C0109b.this.f836u = ((C0108a) m1046c.get(m1046c.size() - 1)).m1020a();
                            C0109b.this.f835t = ((C0108a) m1046c.get(m1046c.size() - 1)).m1023b();
                            C0109b.this.f838w = "https://www.youtube.com/watch?v=" + C0109b.this.f836u;
                            C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                            C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                            C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                            if (C0109b.this.f835t == null) {
                                i = -1;
                            } else {
                                if (C0109b.this.f834s) {
                                    C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                                }
                                i = 0;
                            }
                            i2 = i;
                            break;
                        } catch (UserRecoverableAuthIOException e) {
                            C0109b.this.f820e.startActivityForResult(e.getIntent(), 3);
                            break;
                        } catch (IOException e2) {
                            C0109b.this.m1037a("[DEBUG] Enter YM MSG_YOUTUBE_CREATE_EVENT", 3);
                            C0109b.this.m1031a(message.what, -1);
                            e2.printStackTrace();
                            break;
                        } catch (InterruptedException e3) {
                            C0109b.this.m1031a(message.what, -1);
                            e3.printStackTrace();
                            break;
                        }
                    case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                        try {
                            List m1049d = C0109b.m1049d(C0109b.this.f821f);
                            C0109b.this.f836u = ((C0108a) m1049d.get(m1049d.size() - 1)).m1020a();
                            C0109b.this.f835t = ((C0108a) m1049d.get(m1049d.size() - 1)).m1023b();
                            C0109b.this.f838w = "https://www.youtube.com/watch?v=" + C0109b.this.f836u;
                            C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                            C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                            C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                            if (C0109b.this.f835t != null) {
                                if (C0109b.this.f834s) {
                                    C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                                }
                                i2 = 0;
                                break;
                            }
                        } catch (UserRecoverableAuthIOException e4) {
                            C0109b.this.f820e.startActivityForResult(e4.getIntent(), 3);
                            break;
                        } catch (IOException e5) {
                            e5.printStackTrace();
                            break;
                        }
                        break;
                    case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                        C0121a c0121a2 = new C0121a(message);
                        C0109b.this.m1037a("[DEBUG] MSG_YOUTUBE_CREATE_360_EVENT " + c0121a2.m1211d("liveStreamTitle"), 3);
                        i2 = C0109b.this.m1026a(c0121a2, true);
                        C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                        C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                        C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                        if (i2 == 0) {
                            if (C0109b.this.f834s) {
                                C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                            }
                            i2 = 0;
                            break;
                        } else {
                            C0109b.this.m1037a("createLiveEvent res: " + i2, 0);
                            break;
                        }
                    case 4100:
                        if (C0109b.this.f824i > 20) {
                            C0109b.this.f824i = 0;
                            break;
                        } else if (C0109b.this.m1051d()) {
                            try {
                                C0109b.this.f824i = 0;
                                C0109b.m1050d(C0109b.this.f821f, C0109b.this.f836u);
                                i2 = 0;
                                break;
                            } catch (UserRecoverableAuthIOException e6) {
                                C0109b.this.f820e.startActivityForResult(e6.getIntent(), 3);
                                break;
                            } catch (IOException e7) {
                                e7.printStackTrace();
                                break;
                            }
                        } else {
                            C0109b.m1065q(C0109b.this);
                            C0109b.this.m1069a(4100, 3000L);
                            i2 = 1;
                            break;
                        }
                    case 4101:
                        try {
                            C0109b.m1052e(C0109b.this.f821f, C0109b.this.f836u);
                            i2 = 0;
                            break;
                        } catch (UserRecoverableAuthIOException e8) {
                            C0109b.this.f820e.startActivityForResult(e8.getIntent(), 3);
                            break;
                        } catch (IOException e9) {
                            e9.printStackTrace();
                            break;
                        }
                    case 4102:
                        try {
                            C0109b.m1049d(C0109b.this.f821f);
                            C0109b.this.f819d.mo783a(true);
                            break;
                        } catch (UserRecoverableAuthIOException e10) {
                            C0109b.this.f819d.mo783a(false);
                            C0109b.this.f820e.startActivityForResult(e10.getIntent(), 3);
                            break;
                        } catch (IOException e11) {
                            C0109b.this.f819d.mo783a(true);
                            e11.printStackTrace();
                            break;
                        }
                    case 4103:
                        C0109b.this.m1036a(C0109b.this.f821f, C0109b.this.f836u, true);
                        break;
                    case 4104:
                        C0109b.this.m1036a(C0109b.this.f821f, C0109b.this.f836u, false);
                        break;
                    case 4105:
                        if (C0109b.this.f824i > 20) {
                            C0109b.this.f824i = 0;
                            break;
                        } else if (C0109b.this.m1047c()) {
                            C0109b.this.f824i = 0;
                            i2 = 0;
                            break;
                        } else {
                            C0109b.m1065q(C0109b.this);
                            C0109b.this.m1069a(4105, 3000L);
                            i2 = 1;
                            break;
                        }
                }
                if (message.what != 4102) {
                    if (i2 != 1) {
                        C0109b.this.m1031a(message.what, i2);
                    }
                    if (i2 != 0 || message.what == 4101 || message.what == 4100) {
                        C0109b.this.f819d.mo782a((String) null, (String) null);
                    } else {
                        C0109b.this.f819d.mo782a(C0109b.this.f835t, C0109b.this.f838w);
                    }
                }
            }
        };
    }

    /* renamed from: ThirdParty.b.b$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            int i2 = -1;
            super.handleMessage(message);
            C0109b.this.m1037a("[DEBUG] youtubeApiServerHandler: 0x" + Integer.toHexString(message.what), 1);
            switch (message.what) {
                case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                    C0121a c0121a = new C0121a(message);
                    C0109b.this.m1037a("[DEBUG] YM MSG_YOUTUBE_CREATE_EVENT " + c0121a.m1211d("liveStreamTitle"), 3);
                    try {
                        C0109b.this.m1026a(c0121a, false);
                        Thread.sleep(500L);
                        List m1046c = C0109b.m1046c(C0109b.this.f821f);
                        C0109b.this.f836u = ((C0108a) m1046c.get(m1046c.size() - 1)).m1020a();
                        C0109b.this.f835t = ((C0108a) m1046c.get(m1046c.size() - 1)).m1023b();
                        C0109b.this.f838w = "https://www.youtube.com/watch?v=" + C0109b.this.f836u;
                        C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                        C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                        C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                        if (C0109b.this.f835t == null) {
                            i = -1;
                        } else {
                            if (C0109b.this.f834s) {
                                C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                            }
                            i = 0;
                        }
                        i2 = i;
                        break;
                    } catch (UserRecoverableAuthIOException e) {
                        C0109b.this.f820e.startActivityForResult(e.getIntent(), 3);
                        break;
                    } catch (IOException e2) {
                        C0109b.this.m1037a("[DEBUG] Enter YM MSG_YOUTUBE_CREATE_EVENT", 3);
                        C0109b.this.m1031a(message.what, -1);
                        e2.printStackTrace();
                        break;
                    } catch (InterruptedException e3) {
                        C0109b.this.m1031a(message.what, -1);
                        e3.printStackTrace();
                        break;
                    }
                case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                    try {
                        List m1049d = C0109b.m1049d(C0109b.this.f821f);
                        C0109b.this.f836u = ((C0108a) m1049d.get(m1049d.size() - 1)).m1020a();
                        C0109b.this.f835t = ((C0108a) m1049d.get(m1049d.size() - 1)).m1023b();
                        C0109b.this.f838w = "https://www.youtube.com/watch?v=" + C0109b.this.f836u;
                        C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                        C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                        C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                        if (C0109b.this.f835t != null) {
                            if (C0109b.this.f834s) {
                                C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                            }
                            i2 = 0;
                            break;
                        }
                    } catch (UserRecoverableAuthIOException e4) {
                        C0109b.this.f820e.startActivityForResult(e4.getIntent(), 3);
                        break;
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        break;
                    }
                    break;
                case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                    C0121a c0121a2 = new C0121a(message);
                    C0109b.this.m1037a("[DEBUG] MSG_YOUTUBE_CREATE_360_EVENT " + c0121a2.m1211d("liveStreamTitle"), 3);
                    i2 = C0109b.this.m1026a(c0121a2, true);
                    C0109b.this.m1037a("[DEBUG] broadcastId: " + C0109b.this.f836u, 3);
                    C0109b.this.m1037a("[DEBUG] rtmpUrl: " + C0109b.this.f835t, 3);
                    C0109b.this.m1037a("[DEBUG] streaming link: " + C0109b.this.f838w, 3);
                    if (i2 == 0) {
                        if (C0109b.this.f834s) {
                            C0106a.m966a().m1005a(C0109b.this.f825j, C0109b.this.f826k, C0109b.this.f827l, C0109b.this.f828m, C0109b.this.f829n, C0109b.this.f830o, C0109b.this.f831p, C0109b.this.f832q, C0109b.this.f835t);
                        }
                        i2 = 0;
                        break;
                    } else {
                        C0109b.this.m1037a("createLiveEvent res: " + i2, 0);
                        break;
                    }
                case 4100:
                    if (C0109b.this.f824i > 20) {
                        C0109b.this.f824i = 0;
                        break;
                    } else if (C0109b.this.m1051d()) {
                        try {
                            C0109b.this.f824i = 0;
                            C0109b.m1050d(C0109b.this.f821f, C0109b.this.f836u);
                            i2 = 0;
                            break;
                        } catch (UserRecoverableAuthIOException e6) {
                            C0109b.this.f820e.startActivityForResult(e6.getIntent(), 3);
                            break;
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            break;
                        }
                    } else {
                        C0109b.m1065q(C0109b.this);
                        C0109b.this.m1069a(4100, 3000L);
                        i2 = 1;
                        break;
                    }
                case 4101:
                    try {
                        C0109b.m1052e(C0109b.this.f821f, C0109b.this.f836u);
                        i2 = 0;
                        break;
                    } catch (UserRecoverableAuthIOException e8) {
                        C0109b.this.f820e.startActivityForResult(e8.getIntent(), 3);
                        break;
                    } catch (IOException e9) {
                        e9.printStackTrace();
                        break;
                    }
                case 4102:
                    try {
                        C0109b.m1049d(C0109b.this.f821f);
                        C0109b.this.f819d.mo783a(true);
                        break;
                    } catch (UserRecoverableAuthIOException e10) {
                        C0109b.this.f819d.mo783a(false);
                        C0109b.this.f820e.startActivityForResult(e10.getIntent(), 3);
                        break;
                    } catch (IOException e11) {
                        C0109b.this.f819d.mo783a(true);
                        e11.printStackTrace();
                        break;
                    }
                case 4103:
                    C0109b.this.m1036a(C0109b.this.f821f, C0109b.this.f836u, true);
                    break;
                case 4104:
                    C0109b.this.m1036a(C0109b.this.f821f, C0109b.this.f836u, false);
                    break;
                case 4105:
                    if (C0109b.this.f824i > 20) {
                        C0109b.this.f824i = 0;
                        break;
                    } else if (C0109b.this.m1047c()) {
                        C0109b.this.f824i = 0;
                        i2 = 0;
                        break;
                    } else {
                        C0109b.m1065q(C0109b.this);
                        C0109b.this.m1069a(4105, 3000L);
                        i2 = 1;
                        break;
                    }
            }
            if (message.what != 4102) {
                if (i2 != 1) {
                    C0109b.this.m1031a(message.what, i2);
                }
                if (i2 != 0 || message.what == 4101 || message.what == 4100) {
                    C0109b.this.f819d.mo782a((String) null, (String) null);
                } else {
                    C0109b.this.f819d.mo782a(C0109b.this.f835t, C0109b.this.f838w);
                }
            }
        }
    }

    /* renamed from: a */
    public void m1031a(int i, int i2) {
        if (this.f819d != null) {
            this.f819d.mo781a(i, i2);
        }
    }

    /* renamed from: c */
    public static List<C0108a> m1046c(YouTube youTube) {
        String boundStreamId;
        YouTube.LiveBroadcasts.List list = youTube.liveBroadcasts().list("id,snippet,contentDetails");
        list.setBroadcastStatus("upcoming");
        List<LiveBroadcast> items = list.execute().getItems();
        ArrayList arrayList = new ArrayList(items.size());
        for (LiveBroadcast liveBroadcast : items) {
            C0108a c0108a = new C0108a();
            c0108a.m1021a(liveBroadcast);
            if (liveBroadcast.getContentDetails() != null && (boundStreamId = liveBroadcast.getContentDetails().getBoundStreamId()) != null) {
                c0108a.m1022a(m1045c(youTube, boundStreamId));
            }
            arrayList.add(c0108a);
        }
        return arrayList;
    }

    /* renamed from: c */
    private static String m1045c(YouTube youTube, String str) {
        YouTube.LiveStreams.List list = youTube.liveStreams().list("cdn");
        list.setId(str);
        List<LiveStream> items = list.execute().getItems();
        if (items.isEmpty()) {
            return "";
        }
        IngestionInfo ingestionInfo = items.get(0).getCdn().getIngestionInfo();
        return ingestionInfo.getIngestionAddress() + "/" + ingestionInfo.getStreamName();
    }

    /* renamed from: a */
    public int m1026a(C0121a c0121a, boolean z) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        long currentTimeMillis = System.currentTimeMillis() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
        Date date = new Date();
        date.setTime(currentTimeMillis);
        simpleDateFormat.format(date);
        String date2 = new Date().toString();
        try {
            LiveBroadcastSnippet liveBroadcastSnippet = new LiveBroadcastSnippet();
            if (c0121a.m1211d("liveStreamTitle") == null) {
                liveBroadcastSnippet.setTitle("360 Live Stream - " + date2);
            } else {
                liveBroadcastSnippet.setTitle(c0121a.m1211d("liveStreamTitle"));
            }
            liveBroadcastSnippet.setDescription(c0121a.m1211d("liveStreamDescription"));
            liveBroadcastSnippet.setScheduledStartTime(new DateTime(date));
            LiveBroadcastContentDetails liveBroadcastContentDetails = new LiveBroadcastContentDetails();
            MonitorStreamInfo monitorStreamInfo = new MonitorStreamInfo();
            monitorStreamInfo.setEnableMonitorStream(false);
            liveBroadcastContentDetails.setMonitorStream(monitorStreamInfo);
            if (z) {
                liveBroadcastContentDetails.setProjection("360");
            }
            LiveBroadcastStatus liveBroadcastStatus = new LiveBroadcastStatus();
            liveBroadcastStatus.setPrivacyStatus("public");
            LiveBroadcast liveBroadcast = new LiveBroadcast();
            liveBroadcast.setKind("youtube#liveBroadcast");
            liveBroadcast.setSnippet(liveBroadcastSnippet);
            liveBroadcast.setStatus(liveBroadcastStatus);
            liveBroadcast.setContentDetails(liveBroadcastContentDetails);
            LiveBroadcast execute = this.f821f.liveBroadcasts().insert("snippet,status,contentDetails", liveBroadcast).execute();
            this.f836u = execute.getId();
            this.f838w = "https://www.youtube.com/watch?v=" + this.f836u;
            m1037a("================== Returned Broadcast ==================\n", 3);
            m1037a("Id: " + execute.getId(), 3);
            m1037a("Title: " + execute.getSnippet().getTitle(), 3);
            m1037a("Description: " + execute.getSnippet().getDescription(), 3);
            m1037a("Published At: " + execute.getSnippet().getPublishedAt(), 3);
            m1037a("Scheduled Start Time: " + execute.getSnippet().getScheduledStartTime(), 3);
            m1037a("Scheduled End Time: " + execute.getSnippet().getScheduledEndTime(), 3);
            m1037a("Streaming Link: " + this.f838w, 3);
            LiveStreamSnippet liveStreamSnippet = new LiveStreamSnippet();
            if (c0121a.m1211d("liveStreamTitle") == null) {
                liveStreamSnippet.setTitle("360 Live Stream - " + date2);
            } else {
                liveStreamSnippet.setTitle(c0121a.m1211d("liveStreamTitle"));
            }
            liveStreamSnippet.setDescription(c0121a.m1211d("liveStreamDescription"));
            CdnSettings cdnSettings = new CdnSettings();
            cdnSettings.setFormat(c0121a.m1211d("streamFormat"));
            cdnSettings.setIngestionType("rtmp");
            LiveStream liveStream = new LiveStream();
            liveStream.setKind("youtube#liveStream");
            liveStream.setSnippet(liveStreamSnippet);
            liveStream.setCdn(cdnSettings);
            LiveStream execute2 = this.f821f.liveStreams().insert("snippet,cdn", liveStream).execute();
            this.f835t = execute2.getCdn().getIngestionInfo().getIngestionAddress() + "/" + execute2.getCdn().getIngestionInfo().getStreamName();
            this.f837v = execute2.getId();
            m1037a("================== Returned Stream ==================\n", 3);
            m1037a("Id: " + execute2.getId(), 3);
            m1037a("Title: " + execute2.getSnippet().getTitle(), 3);
            m1037a("Description: " + execute2.getSnippet().getDescription(), 3);
            m1037a("Published At: " + execute2.getSnippet().getPublishedAt(), 3);
            m1037a("Rtmp URL: " + this.f835t, 3);
            YouTube.LiveBroadcasts.Bind bind = this.f821f.liveBroadcasts().bind(execute.getId(), "id,contentDetails");
            bind.setStreamId(execute2.getId());
            LiveBroadcast execute3 = bind.execute();
            m1037a("================== Returned Bind Broadcast ==================\n", 3);
            m1037a("Id: " + execute3.getId(), 3);
            m1037a("Streaming Link: https://www.youtube.com/watch?v=" + execute3.getId(), 3);
            m1037a("=============================================================\n", 3);
            return 0;
        } catch (GoogleJsonResponseException e) {
            System.err.println("GoogleJsonResponseException code: " + e.getDetails().getCode() + " : " + e.getDetails().getMessage() + " : " + e.getDetails().getMessage().equals("The user is not enabled for live streaming."));
            e.printStackTrace();
            if (e.getDetails().getMessage().equals("The user is not enabled for live streaming.")) {
                return -5;
            }
            if (e.getDetails().getMessage().equals("Title must be between 1 and 128 characters long") || e.getDetails().getMessage().equals("Title is invalid")) {
                return -6;
            }
            if (e.getDetails().getCode() >= 500) {
                return -3;
            }
            return e.getDetails().getCode() >= 400 ? -2 : 0;
        } catch (IOException e2) {
            System.err.println("IOException: " + e2.getMessage());
            e2.printStackTrace();
            return -1;
        } catch (Throwable th) {
            System.err.println("Throwable: " + th.getStackTrace());
            th.printStackTrace();
            return -4;
        }
    }

    /* renamed from: d */
    public static List<C0108a> m1049d(YouTube youTube) {
        String boundStreamId;
        YouTube.LiveBroadcasts.List list = youTube.liveBroadcasts().list("id, snippet, contentDetails, status");
        list.setBroadcastType("persistent");
        list.setMine(true);
        List<LiveBroadcast> items = list.execute().getItems();
        ArrayList arrayList = new ArrayList(items.size());
        for (LiveBroadcast liveBroadcast : items) {
            C0108a c0108a = new C0108a();
            c0108a.m1021a(liveBroadcast);
            if (liveBroadcast.getContentDetails() != null && (boundStreamId = liveBroadcast.getContentDetails().getBoundStreamId()) != null) {
                c0108a.m1022a(m1045c(youTube, boundStreamId));
            }
            arrayList.add(c0108a);
        }
        return arrayList;
    }

    /* renamed from: d */
    public static void m1050d(YouTube youTube, String str) {
        youTube.liveBroadcasts().transition("live", str, NotificationCompat.CATEGORY_STATUS).execute();
    }

    /* renamed from: e */
    public static void m1052e(YouTube youTube, String str) {
        youTube.liveBroadcasts().transition("complete", str, NotificationCompat.CATEGORY_STATUS).execute();
    }

    /* renamed from: a */
    public void m1036a(YouTube youTube, String str, boolean z) {
        try {
            YouTube.LiveBroadcasts.Control control = youTube.liveBroadcasts().control(str, "id, snippet, contentDetails, status");
            if (z) {
                control.setDisplaySlate(true);
            } else {
                control.setDisplaySlate(false);
            }
            LiveBroadcast execute = control.execute();
            m1037a("LifeCycleStatus: " + execute.getStatus().getLifeCycleStatus(), 3);
            m1037a("Id: " + execute.getId(), 3);
            m1037a("getStartWithSlate: " + execute.getContentDetails().getStartWithSlate(), 3);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public boolean m1047c() {
        try {
            LiveBroadcastListResponse execute = this.f821f.liveBroadcasts().list(NotificationCompat.CATEGORY_STATUS).setId(this.f836u).execute();
            m1037a("Broadcast status: " + execute.getItems().get(0).getStatus().getLifeCycleStatus(), 3);
            return execute.getItems().get(0).getStatus().getLifeCycleStatus().equals("live");
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public boolean m1051d() {
        boolean z;
        try {
            YouTube.LiveStreams.List list = this.f821f.liveStreams().list("id,snippet,status");
            list.setMine(true);
            LiveStreamStatus status = list.execute().getItems().get(0).getStatus();
            if (status.getStreamStatus().equals("active")) {
                m1037a("stream status: " + status.getStreamStatus(), 3);
                z = true;
            } else {
                m1037a("stream status: " + status.getStreamStatus(), 3);
                z = false;
            }
            return z;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public void m1070a(a aVar) {
        this.f819d = aVar;
    }
}
