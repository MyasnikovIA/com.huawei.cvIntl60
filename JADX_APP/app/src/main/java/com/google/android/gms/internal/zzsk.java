package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.net.Uri;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class zzsk extends ImageView {

    /* renamed from: Dc */
    private Uri f6881Dc;

    /* renamed from: Dd */
    private int f6882Dd;

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public int zzauy() {
        return this.f6882Dd;
    }

    public void zzgi(int i) {
        this.f6882Dd = i;
    }

    public void zzr(Uri uri) {
        this.f6881Dc = uri;
    }
}
