package com.facebook.p089a.p090a.p091a;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;

/* renamed from: com.facebook.a.a.a.d */
/* loaded from: classes.dex */
public class C1008d {
    /* renamed from: a */
    public static boolean m5648a(View view) {
        if (!(view instanceof TextView)) {
            return false;
        }
        TextView textView = (TextView) view;
        return m5649a(textView) || m5654f(textView) || m5651c(textView) || m5652d(textView) || m5653e(textView) || m5650b(textView);
    }

    /* renamed from: a */
    private static boolean m5649a(TextView textView) {
        if (textView.getInputType() == 128) {
            return true;
        }
        return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
    }

    /* renamed from: b */
    private static boolean m5650b(TextView textView) {
        if (textView.getInputType() == 32) {
            return true;
        }
        String m5665d = C1010f.m5665d(textView);
        if (m5665d == null || m5665d.length() == 0) {
            return false;
        }
        return Patterns.EMAIL_ADDRESS.matcher(m5665d).matches();
    }

    /* renamed from: c */
    private static boolean m5651c(TextView textView) {
        return textView.getInputType() == 96;
    }

    /* renamed from: d */
    private static boolean m5652d(TextView textView) {
        return textView.getInputType() == 112;
    }

    /* renamed from: e */
    private static boolean m5653e(TextView textView) {
        return textView.getInputType() == 3;
    }

    /* renamed from: f */
    private static boolean m5654f(TextView textView) {
        String replaceAll = C1010f.m5665d(textView).replaceAll("\\s", "");
        int length = replaceAll.length();
        if (length < 12 || length > 19) {
            return false;
        }
        int i = length - 1;
        boolean z = false;
        int i2 = 0;
        while (i >= 0) {
            char charAt = replaceAll.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return false;
            }
            int i3 = charAt - '0';
            if (z && (i3 = i3 * 2) > 9) {
                i3 = (i3 % 10) + 1;
            }
            i2 += i3;
            i--;
            z = !z;
        }
        return i2 % 10 == 0;
    }
}
