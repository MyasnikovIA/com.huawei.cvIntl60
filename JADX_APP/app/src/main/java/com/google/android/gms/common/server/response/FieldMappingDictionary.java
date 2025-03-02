package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class FieldMappingDictionary extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FieldMappingDictionary> CREATOR = new zzc();

    /* renamed from: Fq */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f6390Fq;

    /* renamed from: Fr */
    private final ArrayList<Entry> f6391Fr = null;

    /* renamed from: Fs */
    private final String f6392Fs;
    final int mVersionCode;

    public static class Entry extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Entry> CREATOR = new zzd();

        /* renamed from: Ft */
        final ArrayList<FieldMapPair> f6393Ft;
        final String className;
        final int versionCode;

        Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.versionCode = i;
            this.className = str;
            this.f6393Ft = arrayList;
        }

        Entry(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
            this.versionCode = 1;
            this.className = str;
            this.f6393Ft = zzaw(map);
        }

        private static ArrayList<FieldMapPair> zzaw(Map<String, FastJsonResponse.Field<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<FieldMapPair> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new FieldMapPair(str, map.get(str)));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzd.zza(this, parcel, i);
        }

        HashMap<String, FastJsonResponse.Field<?, ?>> zzaxo() {
            HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
            int size = this.f6393Ft.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = this.f6393Ft.get(i);
                hashMap.put(fieldMapPair.zzcb, fieldMapPair.f6394Fu);
            }
            return hashMap;
        }
    }

    public static class FieldMapPair extends AbstractSafeParcelable {
        public static final Parcelable.Creator<FieldMapPair> CREATOR = new zzb();

        /* renamed from: Fu */
        final FastJsonResponse.Field<?, ?> f6394Fu;
        final int versionCode;
        final String zzcb;

        FieldMapPair(int i, String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = i;
            this.zzcb = str;
            this.f6394Fu = field;
        }

        FieldMapPair(String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = 1;
            this.zzcb = str;
            this.f6394Fu = field;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb.zza(this, parcel, i);
        }
    }

    FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.mVersionCode = i;
        this.f6390Fq = zzi(arrayList);
        this.f6392Fs = (String) zzaa.zzy(str);
        zzaxl();
    }

    private static HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zzi(ArrayList<Entry> arrayList) {
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Entry entry = arrayList.get(i);
            hashMap.put(entry.className, entry.zzaxo());
        }
        return hashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f6390Fq.keySet()) {
            sb.append(str).append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6390Fq.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public void zzaxl() {
        Iterator<String> it = this.f6390Fq.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6390Fq.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).zza(this);
            }
        }
    }

    ArrayList<Entry> zzaxm() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.f6390Fq.keySet()) {
            arrayList.add(new Entry(str, this.f6390Fq.get(str)));
        }
        return arrayList;
    }

    public String zzaxn() {
        return this.f6392Fs;
    }

    public Map<String, FastJsonResponse.Field<?, ?>> zzig(String str) {
        return this.f6390Fq.get(str);
    }
}
