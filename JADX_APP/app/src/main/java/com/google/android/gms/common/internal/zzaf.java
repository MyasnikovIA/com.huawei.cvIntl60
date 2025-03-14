package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.C1228R;

/* loaded from: classes.dex */
public final class zzaf extends Button {
    public zzaf(Context context) {
        this(context, null);
    }

    public zzaf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyle);
    }

    private void zza(Resources resources) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        float f = resources.getDisplayMetrics().density;
        setMinHeight((int) ((f * 48.0f) + 0.5f));
        setMinWidth((int) ((f * 48.0f) + 0.5f));
    }

    private void zzb(Resources resources, int i, int i2) {
        setBackgroundDrawable(resources.getDrawable(zze(i, zzg(i2, C1228R.drawable.common_google_signin_btn_icon_dark, C1228R.drawable.common_google_signin_btn_icon_light, C1228R.drawable.common_google_signin_btn_icon_light), zzg(i2, C1228R.drawable.common_google_signin_btn_text_dark, C1228R.drawable.common_google_signin_btn_text_light, C1228R.drawable.common_google_signin_btn_text_light))));
    }

    private void zzc(Resources resources, int i, int i2) {
        setTextColor((ColorStateList) zzaa.zzy(resources.getColorStateList(zzg(i2, C1228R.color.common_google_signin_btn_text_dark, C1228R.color.common_google_signin_btn_text_light, C1228R.color.common_google_signin_btn_text_light))));
        switch (i) {
            case 0:
                setText(resources.getString(C1228R.string.common_signin_button_text));
                break;
            case 1:
                setText(resources.getString(C1228R.string.common_signin_button_text_long));
                break;
            case 2:
                setText((CharSequence) null);
                break;
            default:
                throw new IllegalStateException(new StringBuilder(32).append("Unknown button size: ").append(i).toString());
        }
        setTransformationMethod(null);
    }

    private int zze(int i, int i2, int i3) {
        switch (i) {
            case 0:
            case 1:
                return i3;
            case 2:
                return i2;
            default:
                throw new IllegalStateException(new StringBuilder(32).append("Unknown button size: ").append(i).toString());
        }
    }

    private int zzg(int i, int i2, int i3, int i4) {
        switch (i) {
            case 0:
                return i2;
            case 1:
                return i3;
            case 2:
                return i4;
            default:
                throw new IllegalStateException(new StringBuilder(33).append("Unknown color scheme: ").append(i).toString());
        }
    }

    public void zza(Resources resources, int i, int i2) {
        zza(resources);
        zzb(resources, i, i2);
        zzc(resources, i, i2);
    }
}
