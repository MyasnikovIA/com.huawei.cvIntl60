package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: classes.dex */
public class zzd<T extends SafeParcelable> extends AbstractDataBuffer<T> {

    /* renamed from: BW */
    private static final String[] f6217BW = {"data"};

    /* renamed from: BX */
    private final Parcelable.Creator<T> f6218BX;

    public zzd(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.f6218BX = creator;
    }

    public static <T extends SafeParcelable> void zza(DataHolder.zza zzaVar, T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        zzaVar.zza(contentValues);
        obtain.recycle();
    }

    public static DataHolder.zza zzaum() {
        return DataHolder.zzc(f6217BW);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zzfz */
    public T get(int i) {
        byte[] zzg = this.f6191zy.zzg("data", i, this.f6191zy.zzga(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(zzg, 0, zzg.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.f6218BX.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
