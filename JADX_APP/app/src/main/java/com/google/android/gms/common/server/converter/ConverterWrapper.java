package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* loaded from: classes.dex */
public class ConverterWrapper extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConverterWrapper> CREATOR = new zza();

    /* renamed from: Fa */
    private final StringToIntConverter f6374Fa;
    final int mVersionCode;

    ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.mVersionCode = i;
        this.f6374Fa = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.mVersionCode = 1;
        this.f6374Fa = stringToIntConverter;
    }

    public static ConverterWrapper zza(FastJsonResponse.zza<?, ?> zzaVar) {
        if (zzaVar instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) zzaVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    StringToIntConverter zzaww() {
        return this.f6374Fa;
    }

    public FastJsonResponse.zza<?, ?> zzawx() {
        if (this.f6374Fa != null) {
            return this.f6374Fa;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
