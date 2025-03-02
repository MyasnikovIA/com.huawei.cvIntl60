package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.support.v7.widget.C0675az;

/* renamed from: android.support.v7.widget.ac */
/* loaded from: classes.dex */
class C0652ac implements InterfaceC0654ae {

    /* renamed from: a */
    final RectF f3434a = new RectF();

    C0652ac() {
    }

    /* renamed from: android.support.v7.widget.ac$1 */
    class AnonymousClass1 implements C0675az.a {
        AnonymousClass1() {
        }

        @Override // android.support.v7.widget.C0675az.a
        /* renamed from: a */
        public void mo3838a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float width = (rectF.width() - f2) - 1.0f;
            float height = (rectF.height() - f2) - 1.0f;
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                C0652ac.this.f3434a.set(-f3, -f3, f3, f3);
                int save = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                canvas.translate(height, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(save);
                canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, 1.0f + (rectF.right - f3), rectF.top + f3, paint);
                canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, 1.0f + (rectF.right - f3), rectF.bottom, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
        }
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3837a() {
        C0675az.f3666a = new C0675az.a() { // from class: android.support.v7.widget.ac.1
            AnonymousClass1() {
            }

            @Override // android.support.v7.widget.C0675az.a
            /* renamed from: a */
            public void mo3838a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = (rectF.height() - f2) - 1.0f;
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    C0652ac.this.f3434a.set(-f3, -f3, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                    canvas.translate(height, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0652ac.this.f3434a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, 1.0f + (rectF.right - f3), rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, 1.0f + (rectF.right - f3), rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3842a(InterfaceC0653ad interfaceC0653ad, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0675az m3854a = m3854a(context, colorStateList, f, f2, f3);
        m3854a.m4094a(interfaceC0653ad.mo3052b());
        interfaceC0653ad.mo3050a(m3854a);
        m3856f(interfaceC0653ad);
    }

    /* renamed from: a */
    private C0675az m3854a(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new C0675az(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: f */
    public void m3856f(InterfaceC0653ad interfaceC0653ad) {
        Rect rect = new Rect();
        m3855j(interfaceC0653ad).m4093a(rect);
        interfaceC0653ad.mo3048a((int) Math.ceil(mo3844b(interfaceC0653ad)), (int) Math.ceil(mo3846c(interfaceC0653ad)));
        interfaceC0653ad.mo3049a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: g */
    public void mo3851g(InterfaceC0653ad interfaceC0653ad) {
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: h */
    public void mo3852h(InterfaceC0653ad interfaceC0653ad) {
        m3855j(interfaceC0653ad).m4094a(interfaceC0653ad.mo3052b());
        m3856f(interfaceC0653ad);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3843a(InterfaceC0653ad interfaceC0653ad, @Nullable ColorStateList colorStateList) {
        m3855j(interfaceC0653ad).m4092a(colorStateList);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: i */
    public ColorStateList mo3853i(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4101f();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3841a(InterfaceC0653ad interfaceC0653ad, float f) {
        m3855j(interfaceC0653ad).m4091a(f);
        m3856f(interfaceC0653ad);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: d */
    public float mo3848d(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4090a();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: c */
    public void mo3847c(InterfaceC0653ad interfaceC0653ad, float f) {
        m3855j(interfaceC0653ad).m4096b(f);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: e */
    public float mo3849e(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4095b();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: b */
    public void mo3845b(InterfaceC0653ad interfaceC0653ad, float f) {
        m3855j(interfaceC0653ad).m4098c(f);
        m3856f(interfaceC0653ad);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public float mo3840a(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4097c();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: b */
    public float mo3844b(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4099d();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: c */
    public float mo3846c(InterfaceC0653ad interfaceC0653ad) {
        return m3855j(interfaceC0653ad).m4100e();
    }

    /* renamed from: j */
    private C0675az m3855j(InterfaceC0653ad interfaceC0653ad) {
        return (C0675az) interfaceC0653ad.mo3053c();
    }
}
