package com.p052a.p053a.p057d.p067d.p072e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.p055b.InterfaceC0730a;
import com.p052a.p053a.p057d.InterfaceC0889m;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0765e;
import com.p052a.p053a.p057d.p067d.p072e.C0872g;
import com.p052a.p053a.p081j.C0954h;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.d.e.c */
/* loaded from: classes.dex */
public class C0868c extends Drawable implements Animatable, C0872g.b {

    /* renamed from: a */
    private final a f4682a;

    /* renamed from: b */
    private boolean f4683b;

    /* renamed from: c */
    private boolean f4684c;

    /* renamed from: d */
    private boolean f4685d;

    /* renamed from: e */
    private boolean f4686e;

    /* renamed from: f */
    private int f4687f;

    /* renamed from: g */
    private int f4688g;

    /* renamed from: h */
    private boolean f4689h;

    /* renamed from: i */
    private Paint f4690i;

    /* renamed from: j */
    private Rect f4691j;

    public C0868c(Context context, InterfaceC0730a interfaceC0730a, InterfaceC0765e interfaceC0765e, InterfaceC0889m<Bitmap> interfaceC0889m, int i, int i2, Bitmap bitmap) {
        this(new a(interfaceC0765e, new C0872g(ComponentCallbacks2C0735c.m4550a(context), interfaceC0730a, i, i2, interfaceC0889m, bitmap)));
    }

    C0868c(a aVar) {
        this.f4686e = true;
        this.f4688g = -1;
        this.f4682a = (a) C0954h.m5409a(aVar);
    }

    /* renamed from: a */
    public int m5063a() {
        return this.f4682a.f4693b.m5086d();
    }

    /* renamed from: b */
    public Bitmap m5065b() {
        return this.f4682a.f4693b.m5079a();
    }

    /* renamed from: a */
    public void m5064a(InterfaceC0889m<Bitmap> interfaceC0889m, Bitmap bitmap) {
        this.f4682a.f4693b.m5082a(interfaceC0889m, bitmap);
    }

    /* renamed from: c */
    public ByteBuffer m5066c() {
        return this.f4682a.f4693b.m5088f();
    }

    /* renamed from: d */
    public int m5067d() {
        return this.f4682a.f4693b.m5089g();
    }

    /* renamed from: e */
    public int m5068e() {
        return this.f4682a.f4693b.m5087e();
    }

    /* renamed from: h */
    private void m5058h() {
        this.f4687f = 0;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4684c = true;
        m5058h();
        if (this.f4686e) {
            m5059i();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4684c = false;
        m5060j();
    }

    /* renamed from: i */
    private void m5059i() {
        C0954h.m5413a(!this.f4685d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f4682a.f4693b.m5089g() == 1) {
            invalidateSelf();
        } else if (!this.f4683b) {
            this.f4683b = true;
            this.f4682a.f4693b.m5081a(this);
            invalidateSelf();
        }
    }

    /* renamed from: j */
    private void m5060j() {
        this.f4683b = false;
        this.f4682a.f4693b.m5084b(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C0954h.m5413a(!this.f4685d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f4686e = z;
        if (!z) {
            m5060j();
        } else if (this.f4684c) {
            m5059i();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4682a.f4693b.m5083b();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4682a.f4693b.m5085c();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4683b;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f4689h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f4685d) {
            if (this.f4689h) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m5061k());
                this.f4689h = false;
            }
            canvas.drawBitmap(this.f4682a.f4693b.m5091i(), (Rect) null, m5061k(), m5062l());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m5062l().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m5062l().setColorFilter(colorFilter);
    }

    /* renamed from: k */
    private Rect m5061k() {
        if (this.f4691j == null) {
            this.f4691j = new Rect();
        }
        return this.f4691j;
    }

    /* renamed from: l */
    private Paint m5062l() {
        if (this.f4690i == null) {
            this.f4690i = new Paint(2);
        }
        return this.f4690i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // com.p052a.p053a.p057d.p067d.p072e.C0872g.b
    /* renamed from: f */
    public void mo5069f() {
        if (getCallback() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (m5068e() == m5067d() - 1) {
            this.f4687f++;
        }
        if (this.f4688g != -1 && this.f4687f >= this.f4688g) {
            stop();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f4682a;
    }

    /* renamed from: g */
    public void m5070g() {
        this.f4685d = true;
        this.f4682a.f4693b.m5090h();
    }

    /* renamed from: com.a.a.d.d.e.c$a */
    static class a extends Drawable.ConstantState {

        /* renamed from: a */
        final InterfaceC0765e f4692a;

        /* renamed from: b */
        final C0872g f4693b;

        public a(InterfaceC0765e interfaceC0765e, C0872g c0872g) {
            this.f4692a = interfaceC0765e;
            this.f4693b = c0872g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0868c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }
}
