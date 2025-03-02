package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zzf();

    /* renamed from: Ga */
    private final long f6400Ga;

    /* renamed from: Gb */
    private int f6401Gb;

    /* renamed from: Gc */
    private final String f6402Gc;

    /* renamed from: Gd */
    private final String f6403Gd;

    /* renamed from: Ge */
    private final String f6404Ge;

    /* renamed from: Gf */
    private final int f6405Gf;

    /* renamed from: Gg */
    private final List<String> f6406Gg;

    /* renamed from: Gh */
    private final String f6407Gh;

    /* renamed from: Gi */
    private final long f6408Gi;

    /* renamed from: Gj */
    private int f6409Gj;

    /* renamed from: Gk */
    private final String f6410Gk;

    /* renamed from: Gl */
    private final float f6411Gl;

    /* renamed from: Gm */
    private long f6412Gm;
    private final long mTimeout;
    final int mVersionCode;

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.mVersionCode = i;
        this.f6400Ga = j;
        this.f6401Gb = i2;
        this.f6402Gc = str;
        this.f6403Gd = str3;
        this.f6404Ge = str5;
        this.f6405Gf = i3;
        this.f6412Gm = -1L;
        this.f6406Gg = list;
        this.f6407Gh = str2;
        this.f6408Gi = j2;
        this.f6409Gj = i4;
        this.f6410Gk = str4;
        this.f6411Gl = f;
        this.mTimeout = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public int getEventType() {
        return this.f6401Gb;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long getTimeMillis() {
        return this.f6400Ga;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long zzaxt() {
        return this.f6412Gm;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public String zzaxu() {
        String valueOf = String.valueOf("\t");
        String valueOf2 = String.valueOf(zzaxv());
        String valueOf3 = String.valueOf("\t");
        int zzaxy = zzaxy();
        String valueOf4 = String.valueOf("\t");
        String join = zzaxz() == null ? "" : TextUtils.join(",", zzaxz());
        String valueOf5 = String.valueOf("\t");
        int zzayc = zzayc();
        String valueOf6 = String.valueOf("\t");
        String zzaxw = zzaxw() == null ? "" : zzaxw();
        String valueOf7 = String.valueOf("\t");
        String zzayd = zzayd() == null ? "" : zzayd();
        String valueOf8 = String.valueOf("\t");
        float zzaye = zzaye();
        String valueOf9 = String.valueOf("\t");
        String zzaxx = zzaxx() == null ? "" : zzaxx();
        return new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(join).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length() + String.valueOf(zzaxw).length() + String.valueOf(valueOf7).length() + String.valueOf(zzayd).length() + String.valueOf(valueOf8).length() + String.valueOf(valueOf9).length() + String.valueOf(zzaxx).length()).append(valueOf).append(valueOf2).append(valueOf3).append(zzaxy).append(valueOf4).append(join).append(valueOf5).append(zzayc).append(valueOf6).append(zzaxw).append(valueOf7).append(zzayd).append(valueOf8).append(zzaye).append(valueOf9).append(zzaxx).toString();
    }

    public String zzaxv() {
        return this.f6402Gc;
    }

    public String zzaxw() {
        return this.f6403Gd;
    }

    public String zzaxx() {
        return this.f6404Ge;
    }

    public int zzaxy() {
        return this.f6405Gf;
    }

    public List<String> zzaxz() {
        return this.f6406Gg;
    }

    public String zzaya() {
        return this.f6407Gh;
    }

    public long zzayb() {
        return this.f6408Gi;
    }

    public int zzayc() {
        return this.f6409Gj;
    }

    public String zzayd() {
        return this.f6410Gk;
    }

    public float zzaye() {
        return this.f6411Gl;
    }

    public long zzayf() {
        return this.mTimeout;
    }
}
