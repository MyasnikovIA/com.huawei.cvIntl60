package GeneralFunction;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.exoplayer.ExoPlayer;
import com.huawei.cvIntl60.R;

/* renamed from: GeneralFunction.a */
/* loaded from: classes.dex */
public class C0043a {

    /* renamed from: a */
    private final int f407a;

    /* renamed from: b */
    private Toast f408b;

    /* renamed from: c */
    private Toast f409c;

    /* renamed from: d */
    private Handler f410d;

    /* renamed from: e */
    private int f411e;

    /* renamed from: f */
    private ImageView f412f;

    /* renamed from: g */
    private ImageView f413g;

    /* renamed from: h */
    private TextView f414h;

    /* renamed from: i */
    private LinearLayout f415i;

    /* renamed from: j */
    private LinearLayout f416j;

    /* renamed from: k */
    private TextView f417k;

    /* renamed from: l */
    private Bitmap f418l;

    /* renamed from: m */
    private Runnable f419m;

    public C0043a() {
        this.f407a = 0;
        this.f410d = new Handler();
        this.f411e = -1;
        this.f418l = null;
        this.f419m = new Runnable() { // from class: GeneralFunction.a.1
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0043a.this.m404a();
            }
        };
    }

    public C0043a(Context context, String str, int i, boolean z) {
        this.f407a = 0;
        this.f410d = new Handler();
        this.f411e = -1;
        this.f418l = null;
        this.f419m = new Runnable() { // from class: GeneralFunction.a.1
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0043a.this.m404a();
            }
        };
        this.f411e = 2;
        if (this.f409c == null) {
            View inflate = LayoutInflater.from(context).inflate(R.layout.style_long_toast_layout, (ViewGroup) null);
            this.f417k = (TextView) inflate.findViewById(R.id.tvLongToastText);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            this.f417k.setTextSize(new C0047c(15).m434d((int) (15 * 0.9d)).m436f((int) (15 * 0.8d)).m437g((int) (15 * 0.9d)).m438h((int) (15 * 0.9d)).m440j((int) (15 * 0.9d)).m443m((int) (15 * 0.9d)).m445o((int) (15 * 0.8d)).m442l((int) (15 * 0.8d)).m444n((int) (15 * 0.9d)).m439i((int) (15 * 0.9d)).m430a());
            this.f417k.setTextColor(Color.argb(170, 255, 255, 255));
            inflate.setLayoutParams(layoutParams);
            this.f409c = new Toast(context);
            this.f409c.setView(inflate);
        }
        this.f417k.setText(" " + str + " ");
        if (z) {
            this.f409c.setGravity(17, 0, 300);
        }
        this.f409c.setDuration(0);
        this.f409c.show();
        if (m402a(i)) {
            m403b(i);
        }
    }

    public C0043a(Context context, String str, int i) {
        this.f407a = 0;
        this.f410d = new Handler();
        this.f411e = -1;
        this.f418l = null;
        this.f419m = new Runnable() { // from class: GeneralFunction.a.1
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0043a.this.m404a();
            }
        };
        this.f411e = 0;
        if (this.f408b == null) {
            View inflate = LayoutInflater.from(context).inflate(R.layout.style_toast_layout, (ViewGroup) null);
            this.f415i = (LinearLayout) inflate.findViewById(R.id.LL_ThumbnailLayout);
            this.f416j = (LinearLayout) inflate.findViewById(R.id.LL_ToastIconLayout);
            this.f412f = (ImageView) inflate.findViewById(R.id.ivThumbnailView);
            this.f414h = (TextView) inflate.findViewById(R.id.tvToastText);
            this.f413g = (ImageView) inflate.findViewById(R.id.ivToastIcon);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            this.f414h.setTextSize(new C0047c(15).m434d((int) (15 * 0.9d)).m444n((int) (15 * 0.9d)).m437g((int) (15 * 0.9d)).m438h((int) (15 * 0.9d)).m440j((int) (15 * 0.9d)).m430a());
            this.f414h.setTextColor(Color.argb(170, 255, 255, 255));
            inflate.setLayoutParams(layoutParams);
            this.f408b = new Toast(context);
            this.f408b.setView(inflate);
        }
        this.f415i.setVisibility(8);
        this.f412f.setVisibility(8);
        this.f413g.setVisibility(4);
        this.f416j.setVisibility(8);
        this.f414h.setText(str);
        this.f408b.setDuration(0);
        this.f408b.show();
        if (m402a(i)) {
            m403b(i);
        }
    }

    public C0043a(Context context, boolean z, String str, int i) {
        this.f407a = 0;
        this.f410d = new Handler();
        this.f411e = -1;
        this.f418l = null;
        this.f419m = new Runnable() { // from class: GeneralFunction.a.1
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0043a.this.m404a();
            }
        };
        this.f411e = 1;
        if (this.f408b == null) {
            View inflate = LayoutInflater.from(context).inflate(R.layout.style_toast_layout, (ViewGroup) null);
            this.f415i = (LinearLayout) inflate.findViewById(R.id.LL_ThumbnailLayout);
            this.f416j = (LinearLayout) inflate.findViewById(R.id.LL_ToastIconLayout);
            this.f412f = (ImageView) inflate.findViewById(R.id.ivThumbnailView);
            this.f414h = (TextView) inflate.findViewById(R.id.tvToastText);
            this.f413g = (ImageView) inflate.findViewById(R.id.ivToastIcon);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            this.f414h.setTextSize(new C0047c(15).m436f((int) (15 * 0.9d)).m434d((int) (15 * 0.9d)).m430a());
            this.f414h.setTextColor(Color.argb(170, 255, 255, 255));
            inflate.setLayoutParams(layoutParams);
            this.f408b = new Toast(context);
            this.f408b.setView(inflate);
        }
        this.f415i.setVisibility(8);
        this.f412f.setVisibility(8);
        this.f416j.setVisibility(0);
        this.f413g.setImageResource(R.drawable.system_ep_white);
        this.f414h.setText(str);
        this.f414h.setGravity(17);
        this.f408b.setDuration(0);
        this.f408b.show();
        if (m402a(i)) {
            m403b(i);
        }
    }

    /* renamed from: a */
    public void m404a() {
        if (this.f408b != null) {
            this.f408b.cancel();
        }
        if (this.f418l != null) {
            this.f418l.recycle();
            this.f418l = null;
        }
    }

    /* renamed from: b */
    public int m405b() {
        return this.f411e;
    }

    /* renamed from: a */
    private boolean m402a(long j) {
        int i;
        boolean z = false;
        switch (z) {
            case false:
                i = ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS;
                break;
            case true:
                i = 3500;
                break;
            default:
                i = 0;
                break;
        }
        return j < ((long) i);
    }

    /* renamed from: b */
    private void m403b(long j) {
        this.f410d.postDelayed(this.f419m, j);
    }

    /* renamed from: GeneralFunction.a$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0043a.this.m404a();
        }
    }
}
