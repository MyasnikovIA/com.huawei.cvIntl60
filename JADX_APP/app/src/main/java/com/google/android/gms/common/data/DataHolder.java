package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zze();

    /* renamed from: Cf */
    private static final zza f6197Cf = new zza(new String[0], null) { // from class: com.google.android.gms.common.data.DataHolder.1
        C12561(String[] strArr, String str) {
            super(strArr, str);
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zzb(HashMap<String, Object> hashMap) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    };

    /* renamed from: BY */
    private final String[] f6198BY;

    /* renamed from: BZ */
    Bundle f6199BZ;

    /* renamed from: Ca */
    private final CursorWindow[] f6200Ca;

    /* renamed from: Cb */
    private final Bundle f6201Cb;

    /* renamed from: Cc */
    int[] f6202Cc;

    /* renamed from: Cd */
    int f6203Cd;

    /* renamed from: Ce */
    private boolean f6204Ce;
    boolean mClosed;
    final int mVersionCode;

    /* renamed from: uo */
    private final int f6205uo;

    /* renamed from: com.google.android.gms.common.data.DataHolder$1 */
    final class C12561 extends zza {
        C12561(String[] strArr, String str) {
            super(strArr, str);
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zzb(HashMap<String, Object> hashMap) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    }

    public static class zza {

        /* renamed from: BY */
        private final String[] f6206BY;

        /* renamed from: Cg */
        private final ArrayList<HashMap<String, Object>> f6207Cg;

        /* renamed from: Ch */
        private final String f6208Ch;

        /* renamed from: Ci */
        private final HashMap<Object, Integer> f6209Ci;

        /* renamed from: Cj */
        private boolean f6210Cj;

        /* renamed from: Ck */
        private String f6211Ck;

        private zza(String[] strArr, String str) {
            this.f6206BY = (String[]) zzaa.zzy(strArr);
            this.f6207Cg = new ArrayList<>();
            this.f6208Ch = str;
            this.f6209Ci = new HashMap<>();
            this.f6210Cj = false;
            this.f6211Ck = null;
        }

        /* synthetic */ zza(String[] strArr, String str, C12561 c12561) {
            this(strArr, str);
        }

        private int zzc(HashMap<String, Object> hashMap) {
            Object obj;
            if (this.f6208Ch != null && (obj = hashMap.get(this.f6208Ch)) != null) {
                Integer num = this.f6209Ci.get(obj);
                if (num != null) {
                    return num.intValue();
                }
                this.f6209Ci.put(obj, Integer.valueOf(this.f6207Cg.size()));
                return -1;
            }
            return -1;
        }

        public zza zza(ContentValues contentValues) {
            com.google.android.gms.common.internal.zzc.zzu(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zzb(hashMap);
        }

        public zza zzb(HashMap<String, Object> hashMap) {
            com.google.android.gms.common.internal.zzc.zzu(hashMap);
            int zzc = zzc(hashMap);
            if (zzc == -1) {
                this.f6207Cg.add(hashMap);
            } else {
                this.f6207Cg.remove(zzc);
                this.f6207Cg.add(zzc, hashMap);
            }
            this.f6210Cj = false;
            return this;
        }

        public DataHolder zzgc(int i) {
            return new DataHolder(this, i, (Bundle) null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.f6204Ce = true;
        this.mVersionCode = i;
        this.f6198BY = strArr;
        this.f6200Ca = cursorWindowArr;
        this.f6205uo = i2;
        this.f6201Cb = bundle;
    }

    private DataHolder(zza zzaVar, int i, Bundle bundle) {
        this(zzaVar.f6206BY, zza(zzaVar, -1), i, bundle);
    }

    /* synthetic */ DataHolder(zza zzaVar, int i, Bundle bundle, C12561 c12561) {
        this(zzaVar, i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.f6204Ce = true;
        this.mVersionCode = 1;
        this.f6198BY = (String[]) zzaa.zzy(strArr);
        this.f6200Ca = (CursorWindow[]) zzaa.zzy(cursorWindowArr);
        this.f6205uo = i;
        this.f6201Cb = bundle;
        zzaun();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(f6197Cf, i, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.util.List] */
    private static CursorWindow[] zza(zza zzaVar, int i) {
        int i2;
        boolean z;
        if (zzaVar.f6206BY.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList subList = (i < 0 || i >= zzaVar.f6207Cg.size()) ? zzaVar.f6207Cg : zzaVar.f6207Cg.subList(0, i);
        int size = subList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(zzaVar.f6206BY.length);
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    Log.d("DataHolder", new StringBuilder(72).append("Allocating additional cursor window for large data set (row ").append(i3).append(")").toString());
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i3);
                    cursorWindow.setNumColumns(zzaVar.f6206BY.length);
                    arrayList.add(cursorWindow);
                    if (!cursorWindow.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) subList.get(i3);
                boolean z3 = true;
                for (int i4 = 0; i4 < zzaVar.f6206BY.length && z3; i4++) {
                    String str = zzaVar.f6206BY[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z3 = cursorWindow.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        z3 = cursorWindow.putString((String) obj, i3, i4);
                    } else if (obj instanceof Long) {
                        z3 = cursorWindow.putLong(((Long) obj).longValue(), i3, i4);
                    } else if (obj instanceof Integer) {
                        z3 = cursorWindow.putLong(((Integer) obj).intValue(), i3, i4);
                    } else if (obj instanceof Boolean) {
                        z3 = cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i3, i4);
                    } else if (obj instanceof byte[]) {
                        z3 = cursorWindow.putBlob((byte[]) obj, i3, i4);
                    } else if (obj instanceof Double) {
                        z3 = cursorWindow.putDouble(((Double) obj).doubleValue(), i3, i4);
                    } else {
                        if (!(obj instanceof Float)) {
                            String valueOf = String.valueOf(obj);
                            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length()).append("Unsupported object for column ").append(str).append(": ").append(valueOf).toString());
                        }
                        z3 = cursorWindow.putDouble(((Float) obj).floatValue(), i3, i4);
                    }
                }
                if (z3) {
                    i2 = i3;
                    z = false;
                } else {
                    if (z2) {
                        throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    Log.d("DataHolder", new StringBuilder(74).append("Couldn't populate window data for row ").append(i3).append(" - allocating new window.").toString());
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i3);
                    cursorWindow.setNumColumns(zzaVar.f6206BY.length);
                    arrayList.add(cursorWindow);
                    i2 = i3 - 1;
                    z = true;
                }
                i3 = i2 + 1;
                z2 = z;
            } catch (RuntimeException e) {
                int size2 = arrayList.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList.get(i5)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    public static zza zzc(String[] strArr) {
        return new zza(strArr, null);
    }

    public static DataHolder zzgb(int i) {
        return zza(i, (Bundle) null);
    }

    private void zzi(String str, int i) {
        if (this.f6199BZ == null || !this.f6199BZ.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= this.f6203Cd) {
            throw new CursorIndexOutOfBoundsException(i, this.f6203Cd);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.f6200Ca.length; i++) {
                    this.f6200Ca[i].close();
                }
            }
        }
    }

    protected void finalize() {
        try {
            if (this.f6204Ce && this.f6200Ca.length > 0 && !isClosed()) {
                close();
                String valueOf = String.valueOf(toString());
                Log.e("DataBuffer", new StringBuilder(String.valueOf(valueOf).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(valueOf).append(")").toString());
            }
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        return this.f6203Cd;
    }

    public int getStatusCode() {
        return this.f6205uo;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzi(str, i);
        this.f6200Ca[i2].copyStringToBuffer(i, this.f6199BZ.getInt(str), charArrayBuffer);
    }

    public Bundle zzaui() {
        return this.f6201Cb;
    }

    public void zzaun() {
        this.f6199BZ = new Bundle();
        for (int i = 0; i < this.f6198BY.length; i++) {
            this.f6199BZ.putInt(this.f6198BY[i], i);
        }
        this.f6202Cc = new int[this.f6200Ca.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.f6200Ca.length; i3++) {
            this.f6202Cc[i3] = i2;
            i2 += this.f6200Ca[i3].getNumRows() - (i2 - this.f6200Ca[i3].getStartPosition());
        }
        this.f6203Cd = i2;
    }

    String[] zzauo() {
        return this.f6198BY;
    }

    CursorWindow[] zzaup() {
        return this.f6200Ca;
    }

    public long zzb(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].getLong(i, this.f6199BZ.getInt(str));
    }

    public int zzc(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].getInt(i, this.f6199BZ.getInt(str));
    }

    public String zzd(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].getString(i, this.f6199BZ.getInt(str));
    }

    public boolean zze(String str, int i, int i2) {
        zzi(str, i);
        return Long.valueOf(this.f6200Ca[i2].getLong(i, this.f6199BZ.getInt(str))).longValue() == 1;
    }

    public float zzf(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].getFloat(i, this.f6199BZ.getInt(str));
    }

    public byte[] zzg(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].getBlob(i, this.f6199BZ.getInt(str));
    }

    public int zzga(int i) {
        int i2 = 0;
        zzaa.zzbs(i >= 0 && i < this.f6203Cd);
        while (true) {
            if (i2 >= this.f6202Cc.length) {
                break;
            }
            if (i < this.f6202Cc[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.f6202Cc.length ? i2 - 1 : i2;
    }

    public Uri zzh(String str, int i, int i2) {
        String zzd = zzd(str, i, i2);
        if (zzd == null) {
            return null;
        }
        return Uri.parse(zzd);
    }

    public boolean zzho(String str) {
        return this.f6199BZ.containsKey(str);
    }

    public boolean zzi(String str, int i, int i2) {
        zzi(str, i);
        return this.f6200Ca[i2].isNull(i, this.f6199BZ.getInt(str));
    }
}
