package GeneralFunction.Player.player;

import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.Formatter;
import java.util.Locale;

/* renamed from: GeneralFunction.Player.player.e */
/* loaded from: classes.dex */
public class C0038e extends MediaController {

    /* renamed from: b */
    private static final String f238b = C0038e.class.getSimpleName();

    /* renamed from: A */
    private ImageButton f239A;

    /* renamed from: B */
    private ImageButton f240B;

    /* renamed from: C */
    private LinearLayout f241C;

    /* renamed from: D */
    private LinearLayout f242D;

    /* renamed from: E */
    private LinearLayout f243E;

    /* renamed from: F */
    private LinearLayout f244F;

    /* renamed from: G */
    private boolean f245G;

    /* renamed from: H */
    private boolean f246H;

    /* renamed from: I */
    private long f247I;

    /* renamed from: J */
    private boolean f248J;

    /* renamed from: K */
    private Handler f249K;

    /* renamed from: L */
    private SeekBar.OnSeekBarChangeListener f250L;

    /* renamed from: M */
    private final Runnable f251M;

    /* renamed from: N */
    private View.OnClickListener f252N;

    /* renamed from: O */
    private View.OnClickListener f253O;

    /* renamed from: a */
    public int f254a;

    /* renamed from: c */
    private ImageButton f255c;

    /* renamed from: d */
    private ProgressBar f256d;

    /* renamed from: e */
    private TextView f257e;

    /* renamed from: f */
    private TextView f258f;

    /* renamed from: g */
    private StringBuilder f259g;

    /* renamed from: h */
    private Formatter f260h;

    /* renamed from: i */
    private Context f261i;

    /* renamed from: j */
    private View f262j;

    /* renamed from: k */
    private boolean f263k;

    /* renamed from: l */
    private boolean f264l;

    /* renamed from: m */
    private int f265m;

    /* renamed from: n */
    private int f266n;

    /* renamed from: o */
    private SphericalVideoPlayer f267o;

    /* renamed from: p */
    private boolean f268p;

    /* renamed from: q */
    private int f269q;

    /* renamed from: r */
    private int f270r;

    /* renamed from: s */
    private boolean f271s;

    /* renamed from: t */
    private boolean f272t;

    /* renamed from: u */
    private int f273u;

    /* renamed from: v */
    private int f274v;

    /* renamed from: w */
    private boolean f275w;

    /* renamed from: x */
    private boolean f276x;

    /* renamed from: y */
    private ImageButton f277y;

    /* renamed from: z */
    private ImageButton f278z;

    /* renamed from: a */
    public void m324a(String str, int i) {
        C0052d.m465a(f238b, str, i);
    }

    public C0038e(Context context, SphericalVideoPlayer sphericalVideoPlayer) {
        super(context);
        this.f254a = 0;
        this.f255c = null;
        this.f256d = null;
        this.f263k = false;
        this.f264l = false;
        this.f265m = 0;
        this.f266n = 0;
        this.f268p = false;
        this.f269q = 3;
        this.f270r = 0;
        this.f271s = false;
        this.f272t = false;
        this.f273u = 0;
        this.f274v = 0;
        this.f275w = false;
        this.f276x = false;
        this.f277y = null;
        this.f278z = null;
        this.f239A = null;
        this.f240B = null;
        this.f241C = null;
        this.f242D = null;
        this.f243E = null;
        this.f244F = null;
        this.f245G = false;
        this.f246H = false;
        this.f247I = -1L;
        this.f248J = false;
        this.f249K = new Handler(Looper.getMainLooper()) { // from class: GeneralFunction.Player.player.e.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        C0038e.this.f267o.m220o();
                        C0038e.this.f246H = false;
                        long currentTimeMillis = System.currentTimeMillis() - C0038e.this.f247I;
                        if (currentTimeMillis < 200) {
                            if (!C0038e.this.f246H) {
                                C0038e.this.f246H = true;
                                C0038e.this.f245G = true;
                                C0038e.this.m320a(1, (int) (200 - currentTimeMillis));
                                break;
                            }
                        } else {
                            C0038e.this.f247I = System.currentTimeMillis();
                            if (C0038e.this.f267o != null) {
                                C0038e.this.f245G = false;
                                C0038e.this.f267o.seekTo(C0038e.this.f273u);
                                C0038e.this.m343g();
                                break;
                            }
                        }
                        break;
                    case 2:
                        C0038e.this.f255c.setImageResource(R.drawable.gallery_bottom_play);
                        break;
                    case 3:
                        C0038e.this.f256d.setEnabled(true);
                        break;
                    case 4:
                        C0038e.this.f256d.setEnabled(false);
                        break;
                }
            }
        };
        this.f250L = new SeekBar.OnSeekBarChangeListener() { // from class: GeneralFunction.Player.player.e.2
            AnonymousClass2() {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    long duration = (C0038e.this.f267o.getDuration() * i) / 1000;
                    if (!C0038e.this.f246H) {
                        C0038e.this.f246H = true;
                        C0038e.this.m320a(1, 0);
                    }
                    C0038e.this.f273u = (int) duration;
                    C0038e.this.m324a("================" + Integer.toString((int) duration) + "===========", 4);
                    if (C0038e.this.f258f != null) {
                        C0038e.this.f258f.setText(C0038e.this.m330c((int) duration));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                C0038e.this.show();
                C0038e.this.f263k = true;
                C0038e.this.removeCallbacks(C0038e.this.f251M);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                C0038e.this.f263k = false;
                C0038e.this.m343g();
                C0038e.this.m346h();
                C0038e.this.show();
                C0038e.this.removeCallbacks(C0038e.this.f251M);
                C0038e.this.post(C0038e.this.f251M);
            }
        };
        this.f251M = new Runnable() { // from class: GeneralFunction.Player.player.e.3
            AnonymousClass3() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C0038e.this.f263k && C0038e.this.f268p && C0038e.this.f264l) {
                    C0038e.this.m343g();
                    C0038e.this.postDelayed(C0038e.this.f251M, 50L);
                }
            }
        };
        this.f252N = new View.OnClickListener() { // from class: GeneralFunction.Player.player.e.4
            AnonymousClass4() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0038e.this.m354a();
                if (C0038e.this.f267o.isPlaying()) {
                    C0038e.this.f267o.pause();
                } else {
                    C0038e.this.f267o.start();
                }
                C0038e.this.show();
            }
        };
        this.f253O = new View.OnClickListener() { // from class: GeneralFunction.Player.player.e.5
            AnonymousClass5() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.LL_customMediaController_LayoutViewType /* 2131755206 */:
                    case R.id.IB_customMediaController_btnViewType /* 2131755207 */:
                        if (C0038e.this.f276x) {
                            C0038e.this.f276x = false;
                            C0038e.this.m339e(false);
                            break;
                        } else {
                            C0038e.this.f267o.m207c(0);
                            C0038e.this.f276x = true;
                            C0038e.this.m339e(true);
                            break;
                        }
                    case R.id.LL_customMediaController_LayoutSnapshot /* 2131755208 */:
                    case R.id.IB_customMediaController_btnSnapshot /* 2131755209 */:
                        C0038e.this.f267o.m207c(1);
                        break;
                    case R.id.LL_customMediaController_LayoutEdit /* 2131755210 */:
                    case R.id.IB_customMediaController_btnEdit /* 2131755211 */:
                        if (C0038e.this.f276x) {
                            C0038e.this.f239A.setImageResource(R.drawable.gallery_bottom_edit);
                            C0038e.this.f276x = false;
                            break;
                        } else {
                            C0038e.this.f267o.m207c(2);
                            C0038e.this.f239A.setImageResource(R.drawable.gallery_bottom_edit_green);
                            C0038e.this.f276x = true;
                            break;
                        }
                    case R.id.LL_customMediaController_LayoutDrag /* 2131755212 */:
                    case R.id.IB_customMediaController_btnDrag /* 2131755213 */:
                        if (C0038e.this.f276x) {
                            C0038e.this.f276x = false;
                            C0038e.this.m334d(false);
                            break;
                        } else {
                            C0038e.this.f267o.m207c(3);
                            C0038e.this.f276x = true;
                            C0038e.this.m334d(true);
                            break;
                        }
                }
            }
        };
        this.f261i = context;
        this.f267o = sphericalVideoPlayer;
    }

    @Override // android.widget.MediaController
    public void show() {
        show(this.f254a);
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        removeCallbacks(this.f251M);
        m363c(true);
        post(this.f251M);
        super.show(this.f254a);
    }

    @Override // android.widget.MediaController
    public void hide() {
        removeCallbacks(this.f251M);
        m363c(false);
        super.hide();
    }

    public void setControllerHide(boolean z) {
        if (z) {
            hide();
            this.f268p = false;
        } else {
            show();
            this.f268p = true;
        }
    }

    /* renamed from: a */
    public void m357a(boolean z) {
        this.f248J = z;
    }

    /* renamed from: e */
    private void m337e() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getLayoutParams());
        layoutParams.setMargins(0, 0, 0, (-this.f266n) / 20);
        setLayoutParams(layoutParams);
    }

    /* renamed from: f */
    private void m341f() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getLayoutParams());
        layoutParams.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (this.f248J && displayMetrics.heightPixels > displayMetrics.widthPixels) {
            m341f();
        } else {
            m337e();
        }
    }

    protected View makeControllerView() {
        this.f262j = ((LayoutInflater) this.f261i.getSystemService("layout_inflater")).inflate(R.layout.custom_media_controller, (ViewGroup) null);
        m323a(this.f262j);
        return this.f262j;
    }

    /* renamed from: a */
    private void m323a(View view) {
        this.f255c = (ImageButton) view.findViewById(R.id.IB_Media_Control);
        if (this.f255c != null) {
            this.f255c.requestFocus();
            this.f255c.setOnClickListener(this.f252N);
        }
        this.f256d = (SeekBar) view.findViewById(R.id.SB_Mediacontroller_Progress);
        if (this.f256d != null) {
            if (this.f256d instanceof SeekBar) {
                ((SeekBar) this.f256d).setOnSeekBarChangeListener(this.f250L);
            }
            this.f256d.setMax(1000);
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f265m = displayMetrics.widthPixels;
        this.f266n = displayMetrics.heightPixels;
        int m784a = C0079k.m784a(this.f261i, Math.max(this.f265m, this.f266n) / 38);
        this.f257e = (TextView) view.findViewById(R.id.TV_EndTime);
        this.f257e.setTextSize(m784a);
        this.f258f = (TextView) view.findViewById(R.id.TV_CurrentTime);
        this.f258f.setTextSize(m784a);
        this.f259g = new StringBuilder();
        this.f260h = new Formatter(this.f259g, Locale.getDefault());
        m328b(view);
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (!z) {
                return true;
            }
            this.f267o.m207c(5);
            if (this.f255c == null) {
                return true;
            }
            this.f255c.requestFocus();
            return true;
        }
        if (keyCode == 126) {
            if (!z || this.f267o.isPlaying()) {
                return true;
            }
            this.f267o.start();
            m346h();
            show();
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (!z || !this.f267o.isPlaying()) {
                return true;
            }
            this.f267o.pause();
            m346h();
            show();
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode == 4) {
            if (!z) {
                return true;
            }
            this.f267o.m207c(4);
            return true;
        }
        if (keyCode == 82) {
            return true;
        }
        show();
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: a */
    public void m320a(int i, int i2) {
        Message message = new Message();
        message.what = i;
        if (i2 > 0) {
            this.f249K.sendMessageDelayed(message, i2);
        } else {
            this.f249K.sendMessage(message);
        }
    }

    /* renamed from: GeneralFunction.Player.player.e$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    C0038e.this.f267o.m220o();
                    C0038e.this.f246H = false;
                    long currentTimeMillis = System.currentTimeMillis() - C0038e.this.f247I;
                    if (currentTimeMillis < 200) {
                        if (!C0038e.this.f246H) {
                            C0038e.this.f246H = true;
                            C0038e.this.f245G = true;
                            C0038e.this.m320a(1, (int) (200 - currentTimeMillis));
                            break;
                        }
                    } else {
                        C0038e.this.f247I = System.currentTimeMillis();
                        if (C0038e.this.f267o != null) {
                            C0038e.this.f245G = false;
                            C0038e.this.f267o.seekTo(C0038e.this.f273u);
                            C0038e.this.m343g();
                            break;
                        }
                    }
                    break;
                case 2:
                    C0038e.this.f255c.setImageResource(R.drawable.gallery_bottom_play);
                    break;
                case 3:
                    C0038e.this.f256d.setEnabled(true);
                    break;
                case 4:
                    C0038e.this.f256d.setEnabled(false);
                    break;
            }
        }
    }

    /* renamed from: GeneralFunction.Player.player.e$2 */
    class AnonymousClass2 implements SeekBar.OnSeekBarChangeListener {
        AnonymousClass2() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                long duration = (C0038e.this.f267o.getDuration() * i) / 1000;
                if (!C0038e.this.f246H) {
                    C0038e.this.f246H = true;
                    C0038e.this.m320a(1, 0);
                }
                C0038e.this.f273u = (int) duration;
                C0038e.this.m324a("================" + Integer.toString((int) duration) + "===========", 4);
                if (C0038e.this.f258f != null) {
                    C0038e.this.f258f.setText(C0038e.this.m330c((int) duration));
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            C0038e.this.show();
            C0038e.this.f263k = true;
            C0038e.this.removeCallbacks(C0038e.this.f251M);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            C0038e.this.f263k = false;
            C0038e.this.m343g();
            C0038e.this.m346h();
            C0038e.this.show();
            C0038e.this.removeCallbacks(C0038e.this.f251M);
            C0038e.this.post(C0038e.this.f251M);
        }
    }

    /* renamed from: GeneralFunction.Player.player.e$3 */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C0038e.this.f263k && C0038e.this.f268p && C0038e.this.f264l) {
                C0038e.this.m343g();
                C0038e.this.postDelayed(C0038e.this.f251M, 50L);
            }
        }
    }

    /* renamed from: g */
    public int m343g() {
        if (this.f267o == null || this.f263k) {
            return 0;
        }
        int currentPosition = this.f267o.getCurrentPosition();
        int duration = this.f267o.getDuration();
        if (currentPosition > duration) {
            currentPosition = duration;
        }
        if (duration == 0) {
            duration = 1;
        }
        if (this.f275w) {
            this.f256d.setProgress((int) ((currentPosition * 1000) / duration));
            this.f275w = false;
            this.f257e.setText(m330c(duration));
            this.f258f.setText(m330c(currentPosition));
            this.f273u = currentPosition;
            return currentPosition;
        }
        if (this.f274v > 0) {
            this.f274v--;
            return currentPosition;
        }
        if (this.f272t) {
            if (this.f273u > currentPosition) {
                return this.f273u;
            }
            if (this.f256d != null) {
                if (duration > 0) {
                    long j = (currentPosition * 1000) / duration;
                    if (this.f264l && !this.f245G) {
                        this.f256d.setProgress((int) j);
                    }
                }
                int bufferPercentage = this.f267o.getBufferPercentage();
                if (this.f264l) {
                    this.f256d.setSecondaryProgress(bufferPercentage * 10);
                }
            }
            if (this.f257e != null) {
                this.f257e.setText(m330c(duration));
            }
            if (this.f258f != null) {
                this.f258f.setText(m330c(currentPosition));
            }
        }
        return currentPosition;
    }

    /* renamed from: c */
    public String m330c(int i) {
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        this.f259g.setLength(0);
        return i5 > 0 ? this.f260h.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString() : this.f260h.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
    }

    /* renamed from: GeneralFunction.Player.player.e$4 */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0038e.this.m354a();
            if (C0038e.this.f267o.isPlaying()) {
                C0038e.this.f267o.pause();
            } else {
                C0038e.this.f267o.start();
            }
            C0038e.this.show();
        }
    }

    /* renamed from: a */
    public void m354a() {
        if (this.f264l) {
            this.f264l = false;
            this.f274v = 3;
        } else {
            this.f264l = true;
            this.f274v = 3;
        }
        m346h();
    }

    /* renamed from: a */
    public void m355a(int i) {
        this.f274v = i;
    }

    /* renamed from: b */
    public void m361b(boolean z) {
        this.f272t = z;
        if (!z) {
            this.f273u = -1;
        }
    }

    /* renamed from: c */
    public void m363c(boolean z) {
        if (z) {
            m320a(3, 0);
        } else {
            m320a(4, 0);
        }
    }

    /* renamed from: b */
    public void m358b() {
        m320a(2, 0);
        if (this.f256d != null) {
            this.f256d.setProgress(0);
        }
        this.f273u = -1;
        this.f264l = false;
        this.f263k = false;
    }

    /* renamed from: b */
    public void m359b(int i) {
        if (i == 0) {
            this.f256d.setProgress(0);
        } else {
            this.f275w = true;
        }
        int duration = this.f267o.getDuration();
        if (i > duration) {
            i = duration;
        }
        if (this.f258f != null) {
            this.f258f.setText(m330c(i));
        }
        if (this.f257e != null) {
            this.f257e.setText(m330c(duration));
        }
        m343g();
    }

    /* renamed from: h */
    public void m346h() {
        if (this.f262j != null && this.f255c != null) {
            this.f267o.m220o();
            if (this.f264l) {
                this.f255c.setImageResource(R.drawable.gallery_bottom_pause);
            } else {
                this.f255c.setImageResource(R.drawable.gallery_bottom_play);
            }
        }
    }

    public void setMediaControllerShowingStatus(boolean z) {
        this.f268p = z;
    }

    public boolean getMediaControllerShowingStatus() {
        return this.f268p;
    }

    /* renamed from: b */
    private void m328b(View view) {
        this.f277y = (ImageButton) view.findViewById(R.id.IB_customMediaController_btnViewType);
        this.f278z = (ImageButton) view.findViewById(R.id.IB_customMediaController_btnSnapshot);
        this.f239A = (ImageButton) view.findViewById(R.id.IB_customMediaController_btnEdit);
        this.f240B = (ImageButton) view.findViewById(R.id.IB_customMediaController_btnDrag);
        this.f241C = (LinearLayout) view.findViewById(R.id.LL_customMediaController_LayoutViewType);
        this.f242D = (LinearLayout) view.findViewById(R.id.LL_customMediaController_LayoutSnapshot);
        this.f243E = (LinearLayout) view.findViewById(R.id.LL_customMediaController_LayoutEdit);
        this.f244F = (LinearLayout) view.findViewById(R.id.LL_customMediaController_LayoutDrag);
        this.f277y.setImageResource(R.drawable.gallery_bottom_fisheye_white);
        this.f278z.setImageResource(R.drawable.gallery_bottom_snapshot);
        this.f239A.setImageResource(R.drawable.gallery_bottom_edit);
        this.f240B.setImageResource(R.drawable.gallery_bottom_drag_white);
        this.f277y.setOnClickListener(this.f253O);
        this.f278z.setOnClickListener(this.f253O);
        this.f239A.setOnClickListener(this.f253O);
        this.f240B.setOnClickListener(this.f253O);
        this.f241C.setOnClickListener(this.f253O);
        this.f242D.setOnClickListener(this.f253O);
        this.f243E.setOnClickListener(this.f253O);
        this.f244F.setOnClickListener(this.f253O);
    }

    /* renamed from: c */
    public void m362c() {
        this.f277y.setImageResource(R.drawable.gallery_bottom_fisheye_white);
        this.f278z.setImageResource(R.drawable.gallery_bottom_snapshot);
        this.f239A.setImageResource(R.drawable.gallery_bottom_edit);
        this.f240B.setImageResource(R.drawable.gallery_bottom_drag_white);
    }

    /* renamed from: d */
    public void m364d() {
        this.f239A.setImageResource(R.drawable.gallery_bottom_edit);
        this.f276x = false;
        m339e(false);
        m334d(false);
    }

    private void setAdditionalButtonVRLock(boolean z) {
        if (z) {
            this.f241C.setEnabled(false);
            this.f277y.setEnabled(false);
            this.f277y.setImageAlpha(100);
            this.f242D.setEnabled(false);
            this.f278z.setEnabled(false);
            this.f278z.setImageAlpha(100);
            this.f243E.setEnabled(false);
            this.f239A.setEnabled(false);
            this.f239A.setImageAlpha(100);
            return;
        }
        this.f241C.setEnabled(true);
        this.f277y.setEnabled(true);
        this.f277y.setImageAlpha(255);
        this.f242D.setEnabled(true);
        this.f278z.setEnabled(true);
        this.f278z.setImageAlpha(255);
        this.f243E.setEnabled(true);
        this.f239A.setEnabled(true);
        this.f239A.setImageAlpha(255);
    }

    /* renamed from: a */
    public void m356a(int i, boolean z) {
        this.f270r = i;
        m334d(z);
    }

    /* renamed from: d */
    public void m334d(boolean z) {
        switch (this.f270r) {
            case 0:
                setAdditionalButtonVRLock(false);
                break;
            case 1:
                setAdditionalButtonVRLock(false);
                if (z) {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_gyro_green);
                    break;
                } else {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_gyro_white);
                    break;
                }
            case 2:
                setAdditionalButtonVRLock(false);
                if (z) {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_drag_green);
                    break;
                } else {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_drag_white);
                    break;
                }
            case 3:
                if (z) {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_vr_green);
                } else {
                    this.f240B.setImageResource(R.drawable.gallery_bottom_vr_white);
                }
                setAdditionalButtonVRLock(true);
                break;
        }
    }

    /* renamed from: b */
    public void m360b(int i, boolean z) {
        this.f269q = i;
        m339e(z);
    }

    /* renamed from: e */
    public void m339e(boolean z) {
        switch (this.f269q) {
            case 2:
                if (z) {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_perspective_green);
                    break;
                } else {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_perspective_white);
                    break;
                }
            case 3:
                if (z) {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_fisheye_green);
                    break;
                } else {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_fisheye_white);
                    break;
                }
            case 5:
                if (z) {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_littleplanet_green);
                    break;
                } else {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_littleplanet_white);
                    break;
                }
            case 6:
                if (z) {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_crystalball_green);
                    break;
                } else {
                    this.f277y.setImageResource(R.drawable.gallery_bottom_crystalball_white);
                    break;
                }
        }
    }

    /* renamed from: GeneralFunction.Player.player.e$5 */
    class AnonymousClass5 implements View.OnClickListener {
        AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.LL_customMediaController_LayoutViewType /* 2131755206 */:
                case R.id.IB_customMediaController_btnViewType /* 2131755207 */:
                    if (C0038e.this.f276x) {
                        C0038e.this.f276x = false;
                        C0038e.this.m339e(false);
                        break;
                    } else {
                        C0038e.this.f267o.m207c(0);
                        C0038e.this.f276x = true;
                        C0038e.this.m339e(true);
                        break;
                    }
                case R.id.LL_customMediaController_LayoutSnapshot /* 2131755208 */:
                case R.id.IB_customMediaController_btnSnapshot /* 2131755209 */:
                    C0038e.this.f267o.m207c(1);
                    break;
                case R.id.LL_customMediaController_LayoutEdit /* 2131755210 */:
                case R.id.IB_customMediaController_btnEdit /* 2131755211 */:
                    if (C0038e.this.f276x) {
                        C0038e.this.f239A.setImageResource(R.drawable.gallery_bottom_edit);
                        C0038e.this.f276x = false;
                        break;
                    } else {
                        C0038e.this.f267o.m207c(2);
                        C0038e.this.f239A.setImageResource(R.drawable.gallery_bottom_edit_green);
                        C0038e.this.f276x = true;
                        break;
                    }
                case R.id.LL_customMediaController_LayoutDrag /* 2131755212 */:
                case R.id.IB_customMediaController_btnDrag /* 2131755213 */:
                    if (C0038e.this.f276x) {
                        C0038e.this.f276x = false;
                        C0038e.this.m334d(false);
                        break;
                    } else {
                        C0038e.this.f267o.m207c(3);
                        C0038e.this.f276x = true;
                        C0038e.this.m334d(true);
                        break;
                    }
            }
        }
    }
}
