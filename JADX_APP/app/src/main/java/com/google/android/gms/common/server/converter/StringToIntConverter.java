package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.zza<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zzb();

    /* renamed from: Fb */
    private final HashMap<String, Integer> f6375Fb;

    /* renamed from: Fc */
    private final SparseArray<String> f6376Fc;

    /* renamed from: Fd */
    private final ArrayList<Entry> f6377Fd;
    final int mVersionCode;

    public static final class Entry extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Entry> CREATOR = new zzc();

        /* renamed from: Fe */
        final String f6378Fe;

        /* renamed from: Ff */
        final int f6379Ff;
        final int versionCode;

        Entry(int i, String str, int i2) {
            this.versionCode = i;
            this.f6378Fe = str;
            this.f6379Ff = i2;
        }

        Entry(String str, int i) {
            this.versionCode = 1;
            this.f6378Fe = str;
            this.f6379Ff = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc.zza(this, parcel, i);
        }
    }

    public StringToIntConverter() {
        this.mVersionCode = 1;
        this.f6375Fb = new HashMap<>();
        this.f6376Fc = new SparseArray<>();
        this.f6377Fd = null;
    }

    StringToIntConverter(int i, ArrayList<Entry> arrayList) {
        this.mVersionCode = i;
        this.f6375Fb = new HashMap<>();
        this.f6376Fc = new SparseArray<>();
        this.f6377Fd = null;
        zzh(arrayList);
    }

    private void zzh(ArrayList<Entry> arrayList) {
        Iterator<Entry> it = arrayList.iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            zzj(next.f6378Fe, next.f6379Ff);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    ArrayList<Entry> zzawy() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.f6375Fb.keySet()) {
            arrayList.add(new Entry(str, this.f6375Fb.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    /* renamed from: zzd */
    public String convertBack(Integer num) {
        String str = this.f6376Fc.get(num.intValue());
        return (str == null && this.f6375Fb.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter zzj(String str, int i) {
        this.f6375Fb.put(str, Integer.valueOf(i));
        this.f6376Fc.put(i, str);
        return this;
    }
}
