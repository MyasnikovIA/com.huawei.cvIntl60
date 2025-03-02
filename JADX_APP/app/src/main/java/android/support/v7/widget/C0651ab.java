package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(21)
/* renamed from: android.support.v7.widget.ab */
/* loaded from: classes.dex */
class C0651ab implements InterfaceC0654ae {
    C0651ab() {
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3842a(InterfaceC0653ad interfaceC0653ad, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        interfaceC0653ad.mo3050a(new C0674ay(colorStateList, f));
        View mo3054d = interfaceC0653ad.mo3054d();
        mo3054d.setClipToOutline(true);
        mo3054d.setElevation(f2);
        mo3845b(interfaceC0653ad, f3);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3841a(InterfaceC0653ad interfaceC0653ad, float f) {
        m3839j(interfaceC0653ad).m4077a(f);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3837a() {
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: b */
    public void mo3845b(InterfaceC0653ad interfaceC0653ad, float f) {
        m3839j(interfaceC0653ad).m4078a(f, interfaceC0653ad.mo3051a(), interfaceC0653ad.mo3052b());
        m3850f(interfaceC0653ad);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public float mo3840a(InterfaceC0653ad interfaceC0653ad) {
        return m3839j(interfaceC0653ad).m4076a();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: b */
    public float mo3844b(InterfaceC0653ad interfaceC0653ad) {
        return mo3848d(interfaceC0653ad) * 2.0f;
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: c */
    public float mo3846c(InterfaceC0653ad interfaceC0653ad) {
        return mo3848d(interfaceC0653ad) * 2.0f;
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: d */
    public float mo3848d(InterfaceC0653ad interfaceC0653ad) {
        return m3839j(interfaceC0653ad).m4080b();
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: c */
    public void mo3847c(InterfaceC0653ad interfaceC0653ad, float f) {
        interfaceC0653ad.mo3054d().setElevation(f);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: e */
    public float mo3849e(InterfaceC0653ad interfaceC0653ad) {
        return interfaceC0653ad.mo3054d().getElevation();
    }

    /* renamed from: f */
    public void m3850f(InterfaceC0653ad interfaceC0653ad) {
        if (!interfaceC0653ad.mo3051a()) {
            interfaceC0653ad.mo3049a(0, 0, 0, 0);
            return;
        }
        float mo3840a = mo3840a(interfaceC0653ad);
        float mo3848d = mo3848d(interfaceC0653ad);
        int ceil = (int) Math.ceil(C0675az.m4085b(mo3840a, mo3848d, interfaceC0653ad.mo3052b()));
        int ceil2 = (int) Math.ceil(C0675az.m4082a(mo3840a, mo3848d, interfaceC0653ad.mo3052b()));
        interfaceC0653ad.mo3049a(ceil, ceil2, ceil, ceil2);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: g */
    public void mo3851g(InterfaceC0653ad interfaceC0653ad) {
        mo3845b(interfaceC0653ad, mo3840a(interfaceC0653ad));
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: h */
    public void mo3852h(InterfaceC0653ad interfaceC0653ad) {
        mo3845b(interfaceC0653ad, mo3840a(interfaceC0653ad));
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3843a(InterfaceC0653ad interfaceC0653ad, @Nullable ColorStateList colorStateList) {
        m3839j(interfaceC0653ad).m4079a(colorStateList);
    }

    @Override // android.support.v7.widget.InterfaceC0654ae
    /* renamed from: i */
    public ColorStateList mo3853i(InterfaceC0653ad interfaceC0653ad) {
        return m3839j(interfaceC0653ad).m4081c();
    }

    /* renamed from: j */
    private C0674ay m3839j(InterfaceC0653ad interfaceC0653ad) {
        return (C0674ay) interfaceC0653ad.mo3053c();
    }
}
