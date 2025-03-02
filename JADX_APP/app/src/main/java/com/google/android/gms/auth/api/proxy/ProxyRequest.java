package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Patterns;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final int VERSION_CODE = 2;
    public final byte[] body;
    public final int httpMethod;

    /* renamed from: iW */
    Bundle f6042iW;
    public final long timeoutMillis;
    public final String url;
    final int versionCode;
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zzb();
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int LAST_CODE = 7;

    public static class Builder {

        /* renamed from: iX */
        private String f6043iX;

        /* renamed from: iY */
        private int f6044iY = ProxyRequest.HTTP_METHOD_GET;
        private long zzcri = 3000;

        /* renamed from: iZ */
        private byte[] f6045iZ = null;

        /* renamed from: ja */
        private Bundle f6046ja = new Bundle();

        public Builder(String str) {
            zzaa.zzib(str);
            if (!Patterns.WEB_URL.matcher(str).matches()) {
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 51).append("The supplied url [ ").append(str).append("] is not match Patterns.WEB_URL!").toString());
            }
            this.f6043iX = str;
        }

        public ProxyRequest build() {
            if (this.f6045iZ == null) {
                this.f6045iZ = new byte[0];
            }
            return new ProxyRequest(2, this.f6043iX, this.f6044iY, this.zzcri, this.f6045iZ, this.f6046ja);
        }

        public Builder putHeader(String str, String str2) {
            zzaa.zzh(str, "Header name cannot be null or empty!");
            Bundle bundle = this.f6046ja;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString(str, str2);
            return this;
        }

        public Builder setBody(byte[] bArr) {
            this.f6045iZ = bArr;
            return this;
        }

        public Builder setHttpMethod(int i) {
            zzaa.zzb(i >= 0 && i <= ProxyRequest.LAST_CODE, "Unrecognized http method code.");
            this.f6044iY = i;
            return this;
        }

        public Builder setTimeoutMillis(long j) {
            zzaa.zzb(j >= 0, "The specified timeout must be non-negative.");
            this.zzcri = j;
            return this;
        }
    }

    ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.versionCode = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.f6042iW = bundle;
    }

    public Map<String, String> getHeaderMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f6042iW.size());
        for (String str : this.f6042iW.keySet()) {
            linkedHashMap.put(str, this.f6042iW.getString(str));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        String str = this.url;
        return new StringBuilder(String.valueOf(str).length() + 42).append("ProxyRequest[ url: ").append(str).append(", method: ").append(this.httpMethod).append(" ]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
