package android.support.design.p040c.p041a;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.p040c.C0178c;
import android.support.design.p040c.InterfaceC0179d;
import android.support.v7.widget.CardView;

/* renamed from: android.support.design.c.a.a */
/* loaded from: classes.dex */
public class C0176a extends CardView implements InterfaceC0179d {

    /* renamed from: e */
    private final C0178c f1121e;

    @Override // android.support.design.p040c.InterfaceC0179d
    /* renamed from: a */
    public void mo1466a() {
        this.f1121e.m1476a();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    /* renamed from: b */
    public void mo1468b() {
        this.f1121e.m1481b();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setRevealInfo(@Nullable InterfaceC0179d.d dVar) {
        this.f1121e.m1480a(dVar);
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    @Nullable
    public InterfaceC0179d.d getRevealInfo() {
        return this.f1121e.m1482c();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f1121e.m1477a(i);
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public int getCircularRevealScrimColor() {
        return this.f1121e.m1483d();
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f1121e.m1484e();
    }

    @Override // android.support.design.p040c.InterfaceC0179d
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f1121e.m1479a(drawable);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f1121e != null) {
            this.f1121e.m1478a(canvas);
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
        return this.f1121e != null ? this.f1121e.m1485f() : super.isOpaque();
    }

    @Override // android.support.design.p040c.C0178c.a
    /* renamed from: c */
    public boolean mo1469c() {
        return super.isOpaque();
    }
}
