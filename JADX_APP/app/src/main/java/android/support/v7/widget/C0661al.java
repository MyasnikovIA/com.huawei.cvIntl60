package android.support.v7.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import com.google.android.gms.common.ConnectionResult;

@VisibleForTesting
/* renamed from: android.support.v7.widget.al */
/* loaded from: classes.dex */
class C0661al extends RecyclerView.AbstractC0602h implements RecyclerView.InterfaceC0607m {

    /* renamed from: k */
    private static final int[] f3510k = {R.attr.state_pressed};

    /* renamed from: l */
    private static final int[] f3511l = new int[0];

    /* renamed from: a */
    final StateListDrawable f3517a;

    /* renamed from: b */
    final Drawable f3518b;

    /* renamed from: c */
    @VisibleForTesting
    int f3519c;

    /* renamed from: d */
    @VisibleForTesting
    int f3520d;

    /* renamed from: e */
    @VisibleForTesting
    float f3521e;

    /* renamed from: f */
    @VisibleForTesting
    int f3522f;

    /* renamed from: g */
    @VisibleForTesting
    int f3523g;

    /* renamed from: h */
    @VisibleForTesting
    float f3524h;

    /* renamed from: m */
    private final int f3527m;

    /* renamed from: n */
    private final int f3528n;

    /* renamed from: o */
    private final int f3529o;

    /* renamed from: p */
    private final int f3530p;

    /* renamed from: q */
    private final StateListDrawable f3531q;

    /* renamed from: r */
    private final Drawable f3532r;

    /* renamed from: s */
    private final int f3533s;

    /* renamed from: t */
    private final int f3534t;

    /* renamed from: w */
    private RecyclerView f3537w;

    /* renamed from: u */
    private int f3535u = 0;

    /* renamed from: v */
    private int f3536v = 0;

    /* renamed from: x */
    private boolean f3538x = false;

    /* renamed from: y */
    private boolean f3539y = false;

    /* renamed from: z */
    private int f3540z = 0;

    /* renamed from: A */
    private int f3512A = 0;

    /* renamed from: B */
    private final int[] f3513B = new int[2];

    /* renamed from: C */
    private final int[] f3514C = new int[2];

    /* renamed from: i */
    final ValueAnimator f3525i = ValueAnimator.ofFloat(0.0f, 1.0f);

    /* renamed from: j */
    int f3526j = 0;

    /* renamed from: D */
    private final Runnable f3515D = new Runnable() { // from class: android.support.v7.widget.al.1
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0661al.this.m3965b(500);
        }
    };

    /* renamed from: E */
    private final RecyclerView.AbstractC0608n f3516E = new RecyclerView.AbstractC0608n() { // from class: android.support.v7.widget.al.2
        AnonymousClass2() {
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0608n
        /* renamed from: a */
        public void mo3499a(RecyclerView recyclerView, int i, int i2) {
            C0661al.this.m3961a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    /* renamed from: android.support.v7.widget.al$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0661al.this.m3965b(500);
        }
    }

    /* renamed from: android.support.v7.widget.al$2 */
    class AnonymousClass2 extends RecyclerView.AbstractC0608n {
        AnonymousClass2() {
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0608n
        /* renamed from: a */
        public void mo3499a(RecyclerView recyclerView, int i, int i2) {
            C0661al.this.m3961a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    C0661al(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f3517a = stateListDrawable;
        this.f3518b = drawable;
        this.f3531q = stateListDrawable2;
        this.f3532r = drawable2;
        this.f3529o = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f3530p = Math.max(i, drawable.getIntrinsicWidth());
        this.f3533s = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f3534t = Math.max(i, drawable2.getIntrinsicWidth());
        this.f3527m = i2;
        this.f3528n = i3;
        this.f3517a.setAlpha(255);
        this.f3518b.setAlpha(255);
        this.f3525i.addListener(new a());
        this.f3525i.addUpdateListener(new b());
        m3962a(recyclerView);
    }

    /* renamed from: a */
    public void m3962a(@Nullable RecyclerView recyclerView) {
        if (this.f3537w != recyclerView) {
            if (this.f3537w != null) {
                m3954d();
            }
            this.f3537w = recyclerView;
            if (this.f3537w != null) {
                m3952c();
            }
        }
    }

    /* renamed from: c */
    private void m3952c() {
        this.f3537w.m3239a((RecyclerView.AbstractC0602h) this);
        this.f3537w.m3241a((RecyclerView.InterfaceC0607m) this);
        this.f3537w.m3242a(this.f3516E);
    }

    /* renamed from: d */
    private void m3954d() {
        this.f3537w.m3255b((RecyclerView.AbstractC0602h) this);
        this.f3537w.m3256b((RecyclerView.InterfaceC0607m) this);
        this.f3537w.m3257b(this.f3516E);
        m3956f();
    }

    /* renamed from: a */
    void m3959a() {
        this.f3537w.invalidate();
    }

    /* renamed from: a */
    void m3960a(int i) {
        if (i == 2 && this.f3540z != 2) {
            this.f3517a.setState(f3510k);
            m3956f();
        }
        if (i == 0) {
            m3959a();
        } else {
            m3964b();
        }
        if (this.f3540z == 2 && i != 2) {
            this.f3517a.setState(f3511l);
            m3953c(1200);
        } else if (i == 1) {
            m3953c(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f3540z = i;
    }

    /* renamed from: e */
    private boolean m3955e() {
        return ViewCompat.getLayoutDirection(this.f3537w) == 1;
    }

    /* renamed from: b */
    public void m3964b() {
        switch (this.f3526j) {
            case 0:
                break;
            case 1:
            case 2:
            default:
                return;
            case 3:
                this.f3525i.cancel();
                break;
        }
        this.f3526j = 1;
        this.f3525i.setFloatValues(((Float) this.f3525i.getAnimatedValue()).floatValue(), 1.0f);
        this.f3525i.setDuration(500L);
        this.f3525i.setStartDelay(0L);
        this.f3525i.start();
    }

    @VisibleForTesting
    /* renamed from: b */
    void m3965b(int i) {
        switch (this.f3526j) {
            case 1:
                this.f3525i.cancel();
                break;
            case 2:
                break;
            default:
                return;
        }
        this.f3526j = 3;
        this.f3525i.setFloatValues(((Float) this.f3525i.getAnimatedValue()).floatValue(), 0.0f);
        this.f3525i.setDuration(i);
        this.f3525i.start();
    }

    /* renamed from: f */
    private void m3956f() {
        this.f3537w.removeCallbacks(this.f3515D);
    }

    /* renamed from: c */
    private void m3953c(int i) {
        m3956f();
        this.f3537w.postDelayed(this.f3515D, i);
    }

    @Override // android.support.v7.widget.RecyclerView.AbstractC0602h
    /* renamed from: a */
    public void mo3377a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0614t c0614t) {
        if (this.f3535u != this.f3537w.getWidth() || this.f3536v != this.f3537w.getHeight()) {
            this.f3535u = this.f3537w.getWidth();
            this.f3536v = this.f3537w.getHeight();
            m3960a(0);
        } else if (this.f3526j != 0) {
            if (this.f3538x) {
                m3949a(canvas);
            }
            if (this.f3539y) {
                m3951b(canvas);
            }
        }
    }

    /* renamed from: a */
    private void m3949a(Canvas canvas) {
        int i = this.f3535u - this.f3529o;
        int i2 = this.f3520d - (this.f3519c / 2);
        this.f3517a.setBounds(0, 0, this.f3529o, this.f3519c);
        this.f3518b.setBounds(0, 0, this.f3530p, this.f3536v);
        if (m3955e()) {
            this.f3518b.draw(canvas);
            canvas.translate(this.f3529o, i2);
            canvas.scale(-1.0f, 1.0f);
            this.f3517a.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.f3529o, -i2);
            return;
        }
        canvas.translate(i, 0.0f);
        this.f3518b.draw(canvas);
        canvas.translate(0.0f, i2);
        this.f3517a.draw(canvas);
        canvas.translate(-i, -i2);
    }

    /* renamed from: b */
    private void m3951b(Canvas canvas) {
        int i = this.f3536v - this.f3533s;
        int i2 = this.f3523g - (this.f3522f / 2);
        this.f3531q.setBounds(0, 0, this.f3522f, this.f3533s);
        this.f3532r.setBounds(0, 0, this.f3535u, this.f3534t);
        canvas.translate(0.0f, i);
        this.f3532r.draw(canvas);
        canvas.translate(i2, 0.0f);
        this.f3531q.draw(canvas);
        canvas.translate(-i2, -i);
    }

    /* renamed from: a */
    void m3961a(int i, int i2) {
        int computeVerticalScrollRange = this.f3537w.computeVerticalScrollRange();
        int i3 = this.f3536v;
        this.f3538x = computeVerticalScrollRange - i3 > 0 && this.f3536v >= this.f3527m;
        int computeHorizontalScrollRange = this.f3537w.computeHorizontalScrollRange();
        int i4 = this.f3535u;
        this.f3539y = computeHorizontalScrollRange - i4 > 0 && this.f3535u >= this.f3527m;
        if (!this.f3538x && !this.f3539y) {
            if (this.f3540z != 0) {
                m3960a(0);
                return;
            }
            return;
        }
        if (this.f3538x) {
            this.f3520d = (int) (((i2 + (i3 / 2.0f)) * i3) / computeVerticalScrollRange);
            this.f3519c = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.f3539y) {
            this.f3523g = (int) (((i + (i4 / 2.0f)) * i4) / computeHorizontalScrollRange);
            this.f3522f = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        if (this.f3540z == 0 || this.f3540z == 1) {
            m3960a(1);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.InterfaceC0607m
    /* renamed from: a */
    public boolean mo3496a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.f3540z != 1) {
            return this.f3540z == 2;
        }
        boolean m3963a = m3963a(motionEvent.getX(), motionEvent.getY());
        boolean m3966b = m3966b(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0 || (!m3963a && !m3966b)) {
            return false;
        }
        if (m3966b) {
            this.f3512A = 1;
            this.f3524h = (int) motionEvent.getX();
        } else if (m3963a) {
            this.f3512A = 2;
            this.f3521e = (int) motionEvent.getY();
        }
        m3960a(2);
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.InterfaceC0607m
    /* renamed from: b */
    public void mo3497b(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.f3540z != 0) {
            if (motionEvent.getAction() == 0) {
                boolean m3963a = m3963a(motionEvent.getX(), motionEvent.getY());
                boolean m3966b = m3966b(motionEvent.getX(), motionEvent.getY());
                if (m3963a || m3966b) {
                    if (m3966b) {
                        this.f3512A = 1;
                        this.f3524h = (int) motionEvent.getX();
                    } else if (m3963a) {
                        this.f3512A = 2;
                        this.f3521e = (int) motionEvent.getY();
                    }
                    m3960a(2);
                    return;
                }
                return;
            }
            if (motionEvent.getAction() == 1 && this.f3540z == 2) {
                this.f3521e = 0.0f;
                this.f3524h = 0.0f;
                m3960a(1);
                this.f3512A = 0;
                return;
            }
            if (motionEvent.getAction() == 2 && this.f3540z == 2) {
                m3964b();
                if (this.f3512A == 1) {
                    m3950b(motionEvent.getX());
                }
                if (this.f3512A == 2) {
                    m3948a(motionEvent.getY());
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.InterfaceC0607m
    /* renamed from: a */
    public void mo3495a(boolean z) {
    }

    /* renamed from: a */
    private void m3948a(float f) {
        int[] m3957g = m3957g();
        float max = Math.max(m3957g[0], Math.min(m3957g[1], f));
        if (Math.abs(this.f3520d - max) >= 2.0f) {
            int m3947a = m3947a(this.f3521e, max, m3957g, this.f3537w.computeVerticalScrollRange(), this.f3537w.computeVerticalScrollOffset(), this.f3536v);
            if (m3947a != 0) {
                this.f3537w.scrollBy(0, m3947a);
            }
            this.f3521e = max;
        }
    }

    /* renamed from: b */
    private void m3950b(float f) {
        int[] m3958h = m3958h();
        float max = Math.max(m3958h[0], Math.min(m3958h[1], f));
        if (Math.abs(this.f3523g - max) >= 2.0f) {
            int m3947a = m3947a(this.f3524h, max, m3958h, this.f3537w.computeHorizontalScrollRange(), this.f3537w.computeHorizontalScrollOffset(), this.f3535u);
            if (m3947a != 0) {
                this.f3537w.scrollBy(m3947a, 0);
            }
            this.f3524h = max;
        }
    }

    /* renamed from: a */
    private int m3947a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    @VisibleForTesting
    /* renamed from: a */
    boolean m3963a(float f, float f2) {
        if (!m3955e() ? f >= this.f3535u - this.f3529o : f <= this.f3529o / 2) {
            if (f2 >= this.f3520d - (this.f3519c / 2) && f2 <= this.f3520d + (this.f3519c / 2)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    /* renamed from: b */
    boolean m3966b(float f, float f2) {
        return f2 >= ((float) (this.f3536v - this.f3533s)) && f >= ((float) (this.f3523g - (this.f3522f / 2))) && f <= ((float) (this.f3523g + (this.f3522f / 2)));
    }

    /* renamed from: g */
    private int[] m3957g() {
        this.f3513B[0] = this.f3528n;
        this.f3513B[1] = this.f3536v - this.f3528n;
        return this.f3513B;
    }

    /* renamed from: h */
    private int[] m3958h() {
        this.f3514C[0] = this.f3528n;
        this.f3514C[1] = this.f3535u - this.f3528n;
        return this.f3514C;
    }

    /* renamed from: android.support.v7.widget.al$a */
    private class a extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f3544b = false;

        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3544b) {
                this.f3544b = false;
            } else if (((Float) C0661al.this.f3525i.getAnimatedValue()).floatValue() == 0.0f) {
                C0661al.this.f3526j = 0;
                C0661al.this.m3960a(0);
            } else {
                C0661al.this.f3526j = 2;
                C0661al.this.m3959a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3544b = true;
        }
    }

    /* renamed from: android.support.v7.widget.al$b */
    private class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0661al.this.f3517a.setAlpha(floatValue);
            C0661al.this.f3518b.setAlpha(floatValue);
            C0661al.this.m3959a();
        }
    }
}
