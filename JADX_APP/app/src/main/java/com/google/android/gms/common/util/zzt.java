package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class zzt {

    /* renamed from: GE */
    private static String f6460GE = null;

    /* renamed from: GF */
    private static final int f6461GF = Process.myPid();

    public static String zzayz() {
        if (f6460GE == null) {
            f6460GE = zzhi(f6461GF);
        }
        return f6460GE;
    }

    static String zzhi(int i) {
        Throwable th;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        String str = null;
        if (i > 0) {
            try {
                StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    bufferedReader2 = new BufferedReader(new FileReader(new StringBuilder(25).append("/proc/").append(i).append("/cmdline").toString()));
                    try {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        str = bufferedReader2.readLine().trim();
                        zzo.zzb(bufferedReader2);
                    } catch (IOException e) {
                        zzo.zzb(bufferedReader2);
                        return str;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        zzo.zzb(bufferedReader);
                        throw th;
                    }
                } finally {
                }
            } catch (IOException e2) {
                bufferedReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        }
        return str;
    }
}
