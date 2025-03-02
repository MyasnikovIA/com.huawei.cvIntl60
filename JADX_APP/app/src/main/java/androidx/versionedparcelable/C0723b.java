package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: androidx.versionedparcelable.b */
/* loaded from: classes.dex */
class C0723b extends AbstractC0722a {

    /* renamed from: a */
    private final SparseIntArray f3960a;

    /* renamed from: b */
    private final Parcel f3961b;

    /* renamed from: c */
    private final int f3962c;

    /* renamed from: d */
    private final int f3963d;

    /* renamed from: e */
    private final String f3964e;

    /* renamed from: f */
    private int f3965f;

    /* renamed from: g */
    private int f3966g;

    C0723b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "");
    }

    C0723b(Parcel parcel, int i, int i2, String str) {
        this.f3960a = new SparseIntArray();
        this.f3965f = -1;
        this.f3966g = 0;
        this.f3961b = parcel;
        this.f3962c = i;
        this.f3963d = i2;
        this.f3966g = this.f3962c;
        this.f3964e = str;
    }

    /* renamed from: d */
    private int m4449d(int i) {
        while (this.f3966g < this.f3963d) {
            this.f3961b.setDataPosition(this.f3966g);
            int readInt = this.f3961b.readInt();
            int readInt2 = this.f3961b.readInt();
            this.f3966g = readInt + this.f3966g;
            if (readInt2 == i) {
                return this.f3961b.dataPosition();
            }
        }
        return -1;
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: b */
    public boolean mo4440b(int i) {
        int m4449d = m4449d(i);
        if (m4449d == -1) {
            return false;
        }
        this.f3961b.setDataPosition(m4449d);
        return true;
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: c */
    public void mo4443c(int i) {
        mo4439b();
        this.f3965f = i;
        this.f3960a.put(i, this.f3961b.dataPosition());
        mo4423a(0);
        mo4423a(i);
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: b */
    public void mo4439b() {
        if (this.f3965f >= 0) {
            int i = this.f3960a.get(this.f3965f);
            int dataPosition = this.f3961b.dataPosition();
            this.f3961b.setDataPosition(i);
            this.f3961b.writeInt(dataPosition - i);
            this.f3961b.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: c */
    protected AbstractC0722a mo4442c() {
        return new C0723b(this.f3961b, this.f3961b.dataPosition(), this.f3966g == this.f3962c ? this.f3963d : this.f3966g, this.f3964e + "  ");
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: a */
    public void mo4432a(byte[] bArr) {
        if (bArr != null) {
            this.f3961b.writeInt(bArr.length);
            this.f3961b.writeByteArray(bArr);
        } else {
            this.f3961b.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: a */
    public void mo4423a(int i) {
        this.f3961b.writeInt(i);
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: a */
    public void mo4429a(String str) {
        this.f3961b.writeString(str);
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: a */
    public void mo4425a(Parcelable parcelable) {
        this.f3961b.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: d */
    public int mo4444d() {
        return this.f3961b.readInt();
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: e */
    public String mo4445e() {
        return this.f3961b.readString();
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: f */
    public byte[] mo4446f() {
        int readInt = this.f3961b.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f3961b.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.AbstractC0722a
    /* renamed from: g */
    public <T extends Parcelable> T mo4447g() {
        return (T) this.f3961b.readParcelable(getClass().getClassLoader());
    }
}
