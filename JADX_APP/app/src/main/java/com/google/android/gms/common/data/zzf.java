package com.google.android.gms.common.data;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzf<T> extends AbstractDataBuffer<T> {

    /* renamed from: Cl */
    private boolean f6219Cl;

    /* renamed from: Cm */
    private ArrayList<Integer> f6220Cm;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.f6219Cl = false;
    }

    private void zzaur() {
        synchronized (this) {
            if (!this.f6219Cl) {
                int count = this.f6191zy.getCount();
                this.f6220Cm = new ArrayList<>();
                if (count > 0) {
                    this.f6220Cm.add(0);
                    String zzauq = zzauq();
                    String zzd = this.f6191zy.zzd(zzauq, 0, this.f6191zy.zzga(0));
                    int i = 1;
                    while (i < count) {
                        int zzga = this.f6191zy.zzga(i);
                        String zzd2 = this.f6191zy.zzd(zzauq, i, zzga);
                        if (zzd2 == null) {
                            throw new NullPointerException(new StringBuilder(String.valueOf(zzauq).length() + 78).append("Missing value for markerColumn: ").append(zzauq).append(", at row: ").append(i).append(", for window: ").append(zzga).toString());
                        }
                        if (zzd2.equals(zzd)) {
                            zzd2 = zzd;
                        } else {
                            this.f6220Cm.add(Integer.valueOf(i));
                        }
                        i++;
                        zzd = zzd2;
                    }
                }
                this.f6219Cl = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        zzaur();
        return zzn(zzge(i), zzgf(i));
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zzaur();
        return this.f6220Cm.size();
    }

    protected abstract String zzauq();

    protected String zzaus() {
        return null;
    }

    int zzge(int i) {
        if (i < 0 || i >= this.f6220Cm.size()) {
            throw new IllegalArgumentException(new StringBuilder(53).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        }
        return this.f6220Cm.get(i).intValue();
    }

    protected int zzgf(int i) {
        if (i < 0 || i == this.f6220Cm.size()) {
            return 0;
        }
        int count = i == this.f6220Cm.size() + (-1) ? this.f6191zy.getCount() - this.f6220Cm.get(i).intValue() : this.f6220Cm.get(i + 1).intValue() - this.f6220Cm.get(i).intValue();
        if (count != 1) {
            return count;
        }
        int zzge = zzge(i);
        int zzga = this.f6191zy.zzga(zzge);
        String zzaus = zzaus();
        if (zzaus == null || this.f6191zy.zzd(zzaus, zzge, zzga) != null) {
            return count;
        }
        return 0;
    }

    protected abstract T zzn(int i, int i2);
}
