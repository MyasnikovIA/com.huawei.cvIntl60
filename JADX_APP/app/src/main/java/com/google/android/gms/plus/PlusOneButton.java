package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzaj;
import com.google.android.gms.plus.internal.zzg;

/* loaded from: classes.dex */
public final class PlusOneButton extends FrameLayout {
    public static final int ANNOTATION_BUBBLE = 1;
    public static final int ANNOTATION_INLINE = 2;
    public static final int ANNOTATION_NONE = 0;
    public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
    public static final int SIZE_MEDIUM = 1;
    public static final int SIZE_SMALL = 0;
    public static final int SIZE_STANDARD = 3;
    public static final int SIZE_TALL = 2;
    private View aAN;
    private int aAO;
    private int aAP;
    private OnPlusOneClickListener aAQ;
    private int mSize;
    private String zzae;

    protected class DefaultOnPlusOneClickListener implements View.OnClickListener, OnPlusOneClickListener {
        private final OnPlusOneClickListener aAR;

        public DefaultOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
            this.aAR = onPlusOneClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = (Intent) PlusOneButton.this.aAN.getTag();
            if (this.aAR != null) {
                this.aAR.onPlusOneClick(intent);
            } else {
                onPlusOneClick(intent);
            }
        }

        @Override // com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener
        public void onPlusOneClick(Intent intent) {
            Context context = PlusOneButton.this.getContext();
            if (!(context instanceof Activity) || intent == null) {
                return;
            }
            ((Activity) context).startActivityForResult(intent, PlusOneButton.this.aAP);
        }
    }

    public interface OnPlusOneClickListener {
        void onPlusOneClick(Intent intent);
    }

    public PlusOneButton(Context context) {
        this(context, null);
    }

    public PlusOneButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = getSize(context, attributeSet);
        this.aAO = getAnnotation(context, attributeSet);
        this.aAP = -1;
        zzbw(getContext());
        if (isInEditMode()) {
        }
    }

    protected static int getAnnotation(Context context, AttributeSet attributeSet) {
        String zza = zzaj.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", context, attributeSet, true, false, "PlusOneButton");
        if ("INLINE".equalsIgnoreCase(zza)) {
            return 2;
        }
        return !HlsMediaPlaylist.ENCRYPTION_METHOD_NONE.equalsIgnoreCase(zza) ? 1 : 0;
    }

    protected static int getSize(Context context, AttributeSet attributeSet) {
        String zza = zzaj.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", context, attributeSet, true, false, "PlusOneButton");
        if ("SMALL".equalsIgnoreCase(zza)) {
            return 0;
        }
        if ("MEDIUM".equalsIgnoreCase(zza)) {
            return 1;
        }
        return "TALL".equalsIgnoreCase(zza) ? 2 : 3;
    }

    private void zzbw(Context context) {
        if (this.aAN != null) {
            removeView(this.aAN);
        }
        this.aAN = zzg.zza(context, this.mSize, this.aAO, this.zzae, this.aAP);
        setOnPlusOneClickListener(this.aAQ);
        addView(this.aAN);
    }

    public void initialize(String str, int i) {
        zzaa.zza(getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
        this.zzae = str;
        this.aAP = i;
        zzbw(getContext());
    }

    public void initialize(String str, OnPlusOneClickListener onPlusOneClickListener) {
        this.zzae = str;
        this.aAP = 0;
        zzbw(getContext());
        setOnPlusOneClickListener(onPlusOneClickListener);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.aAN.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.aAN;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void plusOneClick() {
        this.aAN.performClick();
    }

    public void setAnnotation(int i) {
        this.aAO = i;
        zzbw(getContext());
    }

    public void setIntent(Intent intent) {
        this.aAN.setTag(intent);
    }

    public void setOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
        this.aAQ = onPlusOneClickListener;
        this.aAN.setOnClickListener(new DefaultOnPlusOneClickListener(onPlusOneClickListener));
    }

    public void setSize(int i) {
        this.mSize = i;
        zzbw(getContext());
    }
}
