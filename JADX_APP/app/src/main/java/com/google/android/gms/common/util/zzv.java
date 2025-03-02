package com.google.android.gms.common.util;

import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class zzv {

    /* renamed from: GG */
    private static final Pattern f6462GG = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzij(String str) {
        return str == null || str.trim().isEmpty();
    }
}
