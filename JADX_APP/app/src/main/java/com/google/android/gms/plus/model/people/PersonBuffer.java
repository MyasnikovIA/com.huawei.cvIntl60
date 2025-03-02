package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.internal.model.people.zzk;

/* loaded from: classes.dex */
public final class PersonBuffer extends AbstractDataBuffer<Person> {
    private final zzd<PersonEntity> aCc;

    public PersonBuffer(DataHolder dataHolder) {
        super(dataHolder);
        if (dataHolder.zzaui() == null || !dataHolder.zzaui().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false)) {
            this.aCc = null;
        } else {
            this.aCc = new zzd<>(dataHolder, PersonEntity.CREATOR);
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public Person get(int i) {
        return this.aCc != null ? (Person) ((SafeParcelable) this.aCc.get(i)) : new zzk(this.f6191zy, i);
    }
}
