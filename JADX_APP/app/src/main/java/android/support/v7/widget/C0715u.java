package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* renamed from: android.support.v7.widget.u */
/* loaded from: classes.dex */
public class C0715u extends SeekBar {

    /* renamed from: a */
    private final C0716v f3902a;

    public C0715u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    public C0715u(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3902a = new C0716v(this);
        this.f3902a.mo4356a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f3902a.m4358a(canvas);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f3902a.m4361c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f3902a.m4360b();
    }
}
