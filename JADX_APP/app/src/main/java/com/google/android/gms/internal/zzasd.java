package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzasd {
    public static final int[] btR = new int[0];
    public static final long[] btS = new long[0];
    public static final float[] btT = new float[0];
    public static final double[] btU = new double[0];
    public static final boolean[] btV = new boolean[0];
    public static final String[] btW = new String[0];
    public static final byte[][] btX = new byte[0][];
    public static final byte[] btY = new byte[0];

    static int zzahk(int i) {
        return i & 7;
    }

    public static int zzahl(int i) {
        return i >>> 3;
    }

    public static int zzak(int i, int i2) {
        return (i << 3) | i2;
    }

    public static boolean zzb(zzars zzarsVar, int i) {
        return zzarsVar.zzagr(i);
    }

    public static final int zzc(zzars zzarsVar, int i) {
        int i2 = 1;
        int position = zzarsVar.getPosition();
        zzarsVar.zzagr(i);
        while (zzarsVar.m6646bU() == i) {
            zzarsVar.zzagr(i);
            i2++;
        }
        zzarsVar.zzagv(position);
        return i2;
    }
}
