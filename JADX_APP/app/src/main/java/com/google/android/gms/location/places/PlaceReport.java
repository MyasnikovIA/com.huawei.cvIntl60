package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;

/* loaded from: classes.dex */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zzi();
    private final String alV;

    /* renamed from: bQ */
    private final String f6929bQ;
    private final String mTag;
    final int mVersionCode;

    PlaceReport(int i, String str, String str2, String str3) {
        this.mVersionCode = i;
        this.alV = str;
        this.mTag = str2;
        this.f6929bQ = str3;
    }

    public static PlaceReport create(String str, String str2) {
        return zzj(str, str2, "unknown");
    }

    public static PlaceReport zzj(String str, String str2, String str3) {
        zzaa.zzy(str);
        zzaa.zzib(str2);
        zzaa.zzib(str3);
        zzaa.zzb(zzla(str3), "Invalid source");
        return new PlaceReport(1, str, str2, str3);
    }

    private static boolean zzla(String str) {
        switch (str) {
            case "unknown":
            case "userReported":
            case "inferredGeofencing":
            case "inferredRadioSignals":
            case "inferredReverseGeocoding":
            case "inferredSnappedToRoad":
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return zzz.equal(this.alV, placeReport.alV) && zzz.equal(this.mTag, placeReport.mTag) && zzz.equal(this.f6929bQ, placeReport.f6929bQ);
    }

    public String getPlaceId() {
        return this.alV;
    }

    public String getSource() {
        return this.f6929bQ;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return zzz.hashCode(this.alV, this.mTag, this.f6929bQ);
    }

    public String toString() {
        zzz.zza zzx = zzz.zzx(this);
        zzx.zzg("placeId", this.alV);
        zzx.zzg("tag", this.mTag);
        if (!"unknown".equals(this.f6929bQ)) {
            zzx.zzg("source", this.f6929bQ);
        }
        return zzx.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
