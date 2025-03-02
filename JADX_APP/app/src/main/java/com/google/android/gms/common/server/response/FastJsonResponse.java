package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.common.util.zzq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.zza CREATOR = new com.google.android.gms.common.server.response.zza();

        /* renamed from: Fg */
        protected final int f6380Fg;

        /* renamed from: Fh */
        protected final boolean f6381Fh;

        /* renamed from: Fi */
        protected final int f6382Fi;

        /* renamed from: Fj */
        protected final boolean f6383Fj;

        /* renamed from: Fk */
        protected final String f6384Fk;

        /* renamed from: Fl */
        protected final int f6385Fl;

        /* renamed from: Fm */
        protected final Class<? extends FastJsonResponse> f6386Fm;

        /* renamed from: Fn */
        protected final String f6387Fn;

        /* renamed from: Fo */
        private FieldMappingDictionary f6388Fo;

        /* renamed from: Fp */
        private zza<I, O> f6389Fp;
        private final int mVersionCode;

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.mVersionCode = i;
            this.f6380Fg = i2;
            this.f6381Fh = z;
            this.f6382Fi = i3;
            this.f6383Fj = z2;
            this.f6384Fk = str;
            this.f6385Fl = i4;
            if (str2 == null) {
                this.f6386Fm = null;
                this.f6387Fn = null;
            } else {
                this.f6386Fm = SafeParcelResponse.class;
                this.f6387Fn = str2;
            }
            if (converterWrapper == null) {
                this.f6389Fp = null;
            } else {
                this.f6389Fp = (zza<I, O>) converterWrapper.zzawx();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, zza<I, O> zzaVar) {
            this.mVersionCode = 1;
            this.f6380Fg = i;
            this.f6381Fh = z;
            this.f6382Fi = i2;
            this.f6383Fj = z2;
            this.f6384Fk = str;
            this.f6385Fl = i3;
            this.f6386Fm = cls;
            if (cls == null) {
                this.f6387Fn = null;
            } else {
                this.f6387Fn = cls.getCanonicalName();
            }
            this.f6389Fp = zzaVar;
        }

        public static Field zza(String str, int i, zza<?, ?> zzaVar, boolean z) {
            return new Field(7, z, 0, false, str, i, null, zzaVar);
        }

        public static <T extends FastJsonResponse> Field<T, T> zza(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Integer, Integer> zzk(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> zzl(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static Field<String, String> zzm(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.f6389Fp.convertBack(o);
        }

        public int getVersionCode() {
            return this.mVersionCode;
        }

        public String toString() {
            zzz.zza zzg = zzz.zzx(this).zzg("versionCode", Integer.valueOf(this.mVersionCode)).zzg("typeIn", Integer.valueOf(this.f6380Fg)).zzg("typeInArray", Boolean.valueOf(this.f6381Fh)).zzg("typeOut", Integer.valueOf(this.f6382Fi)).zzg("typeOutArray", Boolean.valueOf(this.f6383Fj)).zzg("outputFieldName", this.f6384Fk).zzg("safeParcelFieldId", Integer.valueOf(this.f6385Fl)).zzg("concreteTypeName", zzaxh());
            Class<? extends FastJsonResponse> zzaxg = zzaxg();
            if (zzaxg != null) {
                zzg.zzg("concreteType.class", zzaxg.getCanonicalName());
            }
            if (this.f6389Fp != null) {
                zzg.zzg("converterName", this.f6389Fp.getClass().getCanonicalName());
            }
            return zzg.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            com.google.android.gms.common.server.response.zza.zza(this, parcel, i);
        }

        public void zza(FieldMappingDictionary fieldMappingDictionary) {
            this.f6388Fo = fieldMappingDictionary;
        }

        public int zzaxa() {
            return this.f6380Fg;
        }

        public boolean zzaxb() {
            return this.f6381Fh;
        }

        public int zzaxc() {
            return this.f6382Fi;
        }

        public boolean zzaxd() {
            return this.f6383Fj;
        }

        public String zzaxe() {
            return this.f6384Fk;
        }

        public int zzaxf() {
            return this.f6385Fl;
        }

        public Class<? extends FastJsonResponse> zzaxg() {
            return this.f6386Fm;
        }

        String zzaxh() {
            if (this.f6387Fn == null) {
                return null;
            }
            return this.f6387Fn;
        }

        public boolean zzaxi() {
            return this.f6389Fp != null;
        }

        ConverterWrapper zzaxj() {
            if (this.f6389Fp == null) {
                return null;
            }
            return ConverterWrapper.zza(this.f6389Fp);
        }

        public Map<String, Field<?, ?>> zzaxk() {
            zzaa.zzy(this.f6387Fn);
            zzaa.zzy(this.f6388Fo);
            return this.f6388Fo.zzig(this.f6387Fn);
        }
    }

    public interface zza<I, O> {
        I convertBack(O o);
    }

    private void zza(StringBuilder sb, Field field, Object obj) {
        if (field.zzaxa() == 11) {
            sb.append(field.zzaxg().cast(obj).toString());
        } else {
            if (field.zzaxa() != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(zzp.zzii((String) obj));
            sb.append("\"");
        }
    }

    private void zza(StringBuilder sb, Field field, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, field, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        Map<String, Field<?, ?>> zzawz = zzawz();
        StringBuilder sb = new StringBuilder(100);
        for (String str : zzawz.keySet()) {
            Field<?, ?> field = zzawz.get(str);
            if (zza(field)) {
                Object zza2 = zza(field, zzb(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (zza2 != null) {
                    switch (field.zzaxc()) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq((byte[]) zza2)).append("\"");
                            break;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzr((byte[]) zza2)).append("\"");
                            break;
                        case 10:
                            zzq.zza(sb, (HashMap) zza2);
                            break;
                        default:
                            if (field.zzaxb()) {
                                zza(sb, (Field) field, (ArrayList<Object>) zza2);
                                break;
                            } else {
                                zza(sb, field, zza2);
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <O, I> I zza(Field<I, O> field, Object obj) {
        return ((Field) field).f6389Fp != null ? field.convertBack(obj) : obj;
    }

    protected boolean zza(Field field) {
        return field.zzaxc() == 11 ? field.zzaxd() ? zzif(field.zzaxe()) : zzie(field.zzaxe()) : zzid(field.zzaxe());
    }

    public abstract Map<String, Field<?, ?>> zzawz();

    protected Object zzb(Field field) {
        String zzaxe = field.zzaxe();
        if (field.zzaxg() == null) {
            return zzic(field.zzaxe());
        }
        zzaa.zza(zzic(field.zzaxe()) == null, "Concrete field shouldn't be value object: %s", field.zzaxe());
        if (field.zzaxd()) {
        }
        try {
            char upperCase = Character.toUpperCase(zzaxe.charAt(0));
            String valueOf = String.valueOf(zzaxe.substring(1));
            return getClass().getMethod(new StringBuilder(String.valueOf(valueOf).length() + 4).append("get").append(upperCase).append(valueOf).toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzic(String str);

    protected abstract boolean zzid(String str);

    protected boolean zzie(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzif(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }
}
