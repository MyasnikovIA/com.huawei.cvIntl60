package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;

/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    private final PendingIntent mPendingIntent;
    final int mVersionCode;

    /* renamed from: uo */
    private final int f6178uo;

    /* renamed from: wP */
    private final String f6179wP;

    /* renamed from: xZ */
    public static final Status f6171xZ = new Status(0);

    /* renamed from: ya */
    public static final Status f6172ya = new Status(14);

    /* renamed from: yb */
    public static final Status f6173yb = new Status(8);

    /* renamed from: yc */
    public static final Status f6174yc = new Status(15);

    /* renamed from: yd */
    public static final Status f6175yd = new Status(16);

    /* renamed from: ye */
    public static final Status f6176ye = new Status(17);

    /* renamed from: yf */
    public static final Status f6177yf = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new zzg();

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.mVersionCode = i;
        this.f6178uo = i2;
        this.f6179wP = str;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.mVersionCode == status.mVersionCode && this.f6178uo == status.f6178uo && zzz.equal(this.f6179wP, status.f6179wP) && zzz.equal(this.mPendingIntent, status.mPendingIntent);
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.f6178uo;
    }

    @Nullable
    public String getStatusMessage() {
        return this.f6179wP;
    }

    public boolean hasResolution() {
        return this.mPendingIntent != null;
    }

    public int hashCode() {
        return zzz.hashCode(Integer.valueOf(this.mVersionCode), Integer.valueOf(this.f6178uo), this.f6179wP, this.mPendingIntent);
    }

    public boolean isCanceled() {
        return this.f6178uo == 16;
    }

    public boolean isInterrupted() {
        return this.f6178uo == 14;
    }

    public boolean isSuccess() {
        return this.f6178uo <= 0;
    }

    public void startResolutionForResult(Activity activity, int i) {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        return zzz.zzx(this).zzg("statusCode", zzark()).zzg("resolution", this.mPendingIntent).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    PendingIntent zzarj() {
        return this.mPendingIntent;
    }

    public String zzark() {
        return this.f6179wP != null ? this.f6179wP : CommonStatusCodes.getStatusCodeString(this.f6178uo);
    }
}
