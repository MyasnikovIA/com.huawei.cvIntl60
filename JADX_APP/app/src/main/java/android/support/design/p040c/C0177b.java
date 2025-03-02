package android.support.design.p040c;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.p040c.InterfaceC0179d;
import android.widget.FrameLayout;

/* renamed from: android.support.design.c.b */
/* loaded from: classes.dex */
public class C0177b extends FrameLayout implements InterfaceC0179d {

    /* renamed from: a */
    private final C0178c f1122a;

    @Override // android.support.design.p040c.InterfaceC0179d
    /* renamed from: a */
    public void mo1466a() {
        this.f1122a.m1476a();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    /* renamed from: b */
    public void mo1468b() {
        this.f1122a.m1481b();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    @Nullable
    public InterfaceC0179d.d getRevealInfo() {
        return this.f1122a.m1482c();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setRevealInfo(@Nullable InterfaceC0179d.d dVar) {
        this.f1122a.m1480a(dVar);
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public int getCircularRevealScrimColor() {
        return this.f1122a.m1483d();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f1122a.m1477a(i);
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f1122a.m1484e();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f1122a.m1479a(drawable);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
        if (this.f1122a != null) {
            this.f1122a.m1478a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // android.support.design.p040c.C0178c.a
    /* renamed from: a */
    public void mo1467a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean isOpaque() {
        return this.f1122a != null ? this.f1122a.m1485f() : super.isOpaque();
    }

    @Override // android.support.design.p040c.C0178c.a
    /* renamed from: c */
    public boolean mo1469c() {
        return super.isOpaque();
    }
}
