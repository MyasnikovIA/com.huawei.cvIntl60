package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class zzsj extends Drawable implements Drawable.Callback {

    /* renamed from: CH */
    private boolean f6863CH;

    /* renamed from: CM */
    private int f6864CM;

    /* renamed from: CN */
    private int f6865CN;

    /* renamed from: CO */
    private int f6866CO;

    /* renamed from: CP */
    private int f6867CP;

    /* renamed from: CQ */
    private int f6868CQ;

    /* renamed from: CR */
    private boolean f6869CR;

    /* renamed from: CS */
    private zzb f6870CS;

    /* renamed from: CT */
    private Drawable f6871CT;

    /* renamed from: CU */
    private Drawable f6872CU;

    /* renamed from: CV */
    private boolean f6873CV;

    /* renamed from: CW */
    private boolean f6874CW;

    /* renamed from: CX */
    private boolean f6875CX;

    /* renamed from: CY */
    private int f6876CY;

    /* renamed from: eg */
    private long f6877eg;
    private int mFrom;

    private static final class zza extends Drawable {

        /* renamed from: CZ */
        private static final zza f6878CZ = new zza();

        /* renamed from: Da */
        private static final C1905zza f6879Da = new C1905zza();

        /* renamed from: com.google.android.gms.internal.zzsj$zza$zza */
        private static final class C1905zza extends Drawable.ConstantState {
            private C1905zza() {
            }

            /* synthetic */ C1905zza(C13941 c13941) {
                this();
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.f6878CZ;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return f6879Da;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static final class zzb extends Drawable.ConstantState {

        /* renamed from: Db */
        int f6880Db;
        int mChangingConfigurations;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.mChangingConfigurations = zzbVar.mChangingConfigurations;
                this.f6880Db = zzbVar.f6880Db;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzsj(this);
        }
    }

    public zzsj(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.f6878CZ : drawable;
        this.f6871CT = drawable;
        drawable.setCallback(this);
        this.f6870CS.f6880Db |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.f6878CZ : drawable2;
        this.f6872CU = drawable2;
        drawable2.setCallback(this);
        this.f6870CS.f6880Db |= drawable2.getChangingConfigurations();
    }

    zzsj(zzb zzbVar) {
        this.f6864CM = 0;
        this.f6866CO = 255;
        this.f6868CQ = 0;
        this.f6863CH = true;
        this.f6870CS = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.f6873CV) {
            this.f6874CW = (this.f6871CT.getConstantState() == null || this.f6872CU.getConstantState() == null) ? false : true;
            this.f6873CV = true;
        }
        return this.f6874CW;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = false;
        switch (this.f6864CM) {
            case 1:
                this.f6877eg = SystemClock.uptimeMillis();
                this.f6864CM = 2;
                break;
            case 2:
                if (this.f6877eg >= 0) {
                    float uptimeMillis = (SystemClock.uptimeMillis() - this.f6877eg) / this.f6867CP;
                    r1 = uptimeMillis >= 1.0f;
                    if (r1) {
                        this.f6864CM = 0;
                    }
                    this.f6868CQ = (int) ((Math.min(uptimeMillis, 1.0f) * (this.f6865CN + 0)) + 0.0f);
                }
            default:
                z = r1;
                break;
        }
        int i = this.f6868CQ;
        boolean z2 = this.f6863CH;
        Drawable drawable = this.f6871CT;
        Drawable drawable2 = this.f6872CU;
        if (z) {
            if (!z2 || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.f6866CO) {
                drawable2.setAlpha(this.f6866CO);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.f6866CO - i);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.f6866CO);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.f6866CO);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f6870CS.mChangingConfigurations | this.f6870CS.f6880Db;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.f6870CS.mChangingConfigurations = getChangingConfigurations();
        return this.f6870CS;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.f6871CT.getIntrinsicHeight(), this.f6872CU.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.f6871CT.getIntrinsicWidth(), this.f6872CU.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.f6875CX) {
            this.f6876CY = Drawable.resolveOpacity(this.f6871CT.getOpacity(), this.f6872CU.getOpacity());
            this.f6875CX = true;
        }
        return this.f6876CY;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzayn() || (callback = getCallback()) == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f6869CR && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.f6871CT.mutate();
            this.f6872CU.mutate();
            this.f6869CR = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f6871CT.setBounds(rect);
        this.f6872CU.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzayn() || (callback = getCallback()) == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f6868CQ == this.f6866CO) {
            this.f6868CQ = i;
        }
        this.f6866CO = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f6871CT.setColorFilter(colorFilter);
        this.f6872CU.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.f6865CN = this.f6866CO;
        this.f6868CQ = 0;
        this.f6867CP = i;
        this.f6864CM = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzayn() || (callback = getCallback()) == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public Drawable zzauw() {
        return this.f6872CU;
    }
}
