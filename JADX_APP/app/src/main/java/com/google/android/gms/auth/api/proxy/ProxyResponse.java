package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zzc();
    public static final int STATUS_CODE_NO_CONNECTION = -1;
    public final byte[] body;
    public final int googlePlayServicesStatusCode;

    /* renamed from: iW */
    final Bundle f6047iW;
    public final PendingIntent recoveryAction;
    public final int statusCode;
    final int versionCode;

    ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.versionCode = i;
        this.googlePlayServicesStatusCode = i2;
        this.statusCode = i3;
        this.f6047iW = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    public ProxyResponse(int i, PendingIntent pendingIntent, int i2, Bundle bundle, byte[] bArr) {
        this(1, i, pendingIntent, i2, bundle, bArr);
    }

    private ProxyResponse(int i, Bundle bundle, byte[] bArr) {
        this(1, 0, null, i, bundle, bArr);
    }

    public ProxyResponse(int i, Map<String, String> map, byte[] bArr) {
        this(i, zzav(map), bArr);
    }

    public static ProxyResponse createErrorProxyResponse(int i, PendingIntent pendingIntent, int i2, Map<String, String> map, byte[] bArr) {
        return new ProxyResponse(1, i, pendingIntent, i2, zzav(map), bArr);
    }

    private static Bundle zzav(Map<String, String> map) {
        Bundle bundle = new Bundle();
        if (map == null) {
            return bundle;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public Map<String, String> getHeaders() {
        if (this.f6047iW == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.f6047iW.keySet()) {
            hashMap.put(str, this.f6047iW.getString(str));
        }
        return hashMap;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
