package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public final class PersonEntity extends FastSafeParcelableJsonResponse implements Person {
    public static final Parcelable.Creator<PersonEntity> CREATOR = new com.google.android.gms.plus.internal.model.people.zza();
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
    boolean aBA;
    NameEntity aBB;
    String aBC;
    int aBD;
    List<OrganizationsEntity> aBE;
    List<PlacesLivedEntity> aBF;
    int aBG;
    int aBH;
    String aBI;
    List<UrlsEntity> aBJ;
    boolean aBK;
    final Set<Integer> aBr;
    String aBs;
    AgeRangeEntity aBt;
    String aBu;
    String aBv;
    int aBw;
    CoverEntity aBx;
    String aBy;
    ImageEntity aBz;

    /* renamed from: bZ */
    String f6935bZ;

    /* renamed from: jh */
    String f6936jh;
    final int mVersionCode;
    String zzae;
    int zzazc;
    String zzboa;

    public static final class AgeRangeEntity extends FastSafeParcelableJsonResponse implements Person.AgeRange {
        public static final Parcelable.Creator<AgeRangeEntity> CREATOR = new zzb();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        int aBL;
        int aBM;
        final Set<Integer> aBr;
        final int mVersionCode;

        static {
            aBq.put("max", FastJsonResponse.Field.zzk("max", 2));
            aBq.put("min", FastJsonResponse.Field.zzk("min", 3));
        }

        public AgeRangeEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        AgeRangeEntity(Set<Integer> set, int i, int i2, int i3) {
            this.aBr = set;
            this.mVersionCode = i;
            this.aBL = i2;
            this.aBM = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AgeRangeEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            AgeRangeEntity ageRangeEntity = (AgeRangeEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (ageRangeEntity.zza(field) && zzb(field).equals(ageRangeEntity.zzb(field))) {
                    }
                    return false;
                }
                if (ageRangeEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMax() {
            return this.aBL;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMin() {
            return this.aBM;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMax() {
            return this.aBr.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMin() {
            return this.aBr.contains(3);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return Integer.valueOf(this.aBL);
                case 3:
                    return Integer.valueOf(this.aBM);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzccf */
        public AgeRangeEntity freeze() {
            return this;
        }
    }

    public static final class CoverEntity extends FastSafeParcelableJsonResponse implements Person.Cover {
        public static final Parcelable.Creator<CoverEntity> CREATOR = new zzc();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        CoverInfoEntity aBN;
        CoverPhotoEntity aBO;
        int aBP;
        final Set<Integer> aBr;
        final int mVersionCode;

        public static final class CoverInfoEntity extends FastSafeParcelableJsonResponse implements Person.Cover.CoverInfo {
            public static final Parcelable.Creator<CoverInfoEntity> CREATOR = new zzd();
            private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
            int aBQ;
            int aBR;
            final Set<Integer> aBr;
            final int mVersionCode;

            static {
                aBq.put("leftImageOffset", FastJsonResponse.Field.zzk("leftImageOffset", 2));
                aBq.put("topImageOffset", FastJsonResponse.Field.zzk("topImageOffset", 3));
            }

            public CoverInfoEntity() {
                this.mVersionCode = 1;
                this.aBr = new HashSet();
            }

            CoverInfoEntity(Set<Integer> set, int i, int i2, int i3) {
                this.aBr = set;
                this.mVersionCode = i;
                this.aBQ = i2;
                this.aBR = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof CoverInfoEntity)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                CoverInfoEntity coverInfoEntity = (CoverInfoEntity) obj;
                for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                    if (zza(field)) {
                        if (coverInfoEntity.zza(field) && zzb(field).equals(coverInfoEntity.zzb(field))) {
                        }
                        return false;
                    }
                    if (coverInfoEntity.zza(field)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getLeftImageOffset() {
                return this.aBQ;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getTopImageOffset() {
                return this.aBR;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasLeftImageOffset() {
                return this.aBr.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasTopImageOffset() {
                return this.aBr.contains(3);
            }

            public int hashCode() {
                int i = 0;
                Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
                while (true) {
                    int i2 = i;
                    if (!it.hasNext()) {
                        return i2;
                    }
                    FastJsonResponse.Field<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzaxf();
                    } else {
                        i = i2;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zzd.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected boolean zza(FastJsonResponse.Field field) {
                return this.aBr.contains(Integer.valueOf(field.zzaxf()));
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected Object zzb(FastJsonResponse.Field field) {
                switch (field.zzaxf()) {
                    case 2:
                        return Integer.valueOf(this.aBQ);
                    case 3:
                        return Integer.valueOf(this.aBR);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
                }
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            /* renamed from: zzccd */
            public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
                return aBq;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* renamed from: zzcch */
            public CoverInfoEntity freeze() {
                return this;
            }
        }

        public static final class CoverPhotoEntity extends FastSafeParcelableJsonResponse implements Person.Cover.CoverPhoto {
            public static final Parcelable.Creator<CoverPhotoEntity> CREATOR = new zze();
            private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
            final Set<Integer> aBr;
            final int mVersionCode;
            String zzae;
            int zzakh;
            int zzaki;

            static {
                aBq.put("height", FastJsonResponse.Field.zzk("height", 2));
                aBq.put("url", FastJsonResponse.Field.zzm("url", 3));
                aBq.put("width", FastJsonResponse.Field.zzk("width", 4));
            }

            public CoverPhotoEntity() {
                this.mVersionCode = 1;
                this.aBr = new HashSet();
            }

            CoverPhotoEntity(Set<Integer> set, int i, int i2, String str, int i3) {
                this.aBr = set;
                this.mVersionCode = i;
                this.zzaki = i2;
                this.zzae = str;
                this.zzakh = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof CoverPhotoEntity)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                CoverPhotoEntity coverPhotoEntity = (CoverPhotoEntity) obj;
                for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                    if (zza(field)) {
                        if (coverPhotoEntity.zza(field) && zzb(field).equals(coverPhotoEntity.zzb(field))) {
                        }
                        return false;
                    }
                    if (coverPhotoEntity.zza(field)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getHeight() {
                return this.zzaki;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public String getUrl() {
                return this.zzae;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getWidth() {
                return this.zzakh;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasHeight() {
                return this.aBr.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasUrl() {
                return this.aBr.contains(3);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasWidth() {
                return this.aBr.contains(4);
            }

            public int hashCode() {
                int i = 0;
                Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
                while (true) {
                    int i2 = i;
                    if (!it.hasNext()) {
                        return i2;
                    }
                    FastJsonResponse.Field<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzaxf();
                    } else {
                        i = i2;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zze.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected boolean zza(FastJsonResponse.Field field) {
                return this.aBr.contains(Integer.valueOf(field.zzaxf()));
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected Object zzb(FastJsonResponse.Field field) {
                switch (field.zzaxf()) {
                    case 2:
                        return Integer.valueOf(this.zzaki);
                    case 3:
                        return this.zzae;
                    case 4:
                        return Integer.valueOf(this.zzakh);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
                }
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            /* renamed from: zzccd */
            public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
                return aBq;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* renamed from: zzcci */
            public CoverPhotoEntity freeze() {
                return this;
            }
        }

        static {
            aBq.put("coverInfo", FastJsonResponse.Field.zza("coverInfo", 2, CoverInfoEntity.class));
            aBq.put("coverPhoto", FastJsonResponse.Field.zza("coverPhoto", 3, CoverPhotoEntity.class));
            aBq.put(TtmlNode.TAG_LAYOUT, FastJsonResponse.Field.zza(TtmlNode.TAG_LAYOUT, 4, new StringToIntConverter().zzj("banner", 0), false));
        }

        public CoverEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        CoverEntity(Set<Integer> set, int i, CoverInfoEntity coverInfoEntity, CoverPhotoEntity coverPhotoEntity, int i2) {
            this.aBr = set;
            this.mVersionCode = i;
            this.aBN = coverInfoEntity;
            this.aBO = coverPhotoEntity;
            this.aBP = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof CoverEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            CoverEntity coverEntity = (CoverEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (coverEntity.zza(field) && zzb(field).equals(coverEntity.zzb(field))) {
                    }
                    return false;
                }
                if (coverEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverInfo getCoverInfo() {
            return this.aBN;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverPhoto getCoverPhoto() {
            return this.aBO;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public int getLayout() {
            return this.aBP;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverInfo() {
            return this.aBr.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverPhoto() {
            return this.aBr.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasLayout() {
            return this.aBr.contains(4);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return this.aBN;
                case 3:
                    return this.aBO;
                case 4:
                    return Integer.valueOf(this.aBP);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzccg */
        public CoverEntity freeze() {
            return this;
        }
    }

    public static final class ImageEntity extends FastSafeParcelableJsonResponse implements Person.Image {
        public static final Parcelable.Creator<ImageEntity> CREATOR = new zzf();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        final Set<Integer> aBr;
        final int mVersionCode;
        String zzae;

        static {
            aBq.put("url", FastJsonResponse.Field.zzm("url", 2));
        }

        public ImageEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        public ImageEntity(String str) {
            this.aBr = new HashSet();
            this.mVersionCode = 1;
            this.zzae = str;
            this.aBr.add(2);
        }

        ImageEntity(Set<Integer> set, int i, String str) {
            this.aBr = set;
            this.mVersionCode = i;
            this.zzae = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ImageEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageEntity imageEntity = (ImageEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (imageEntity.zza(field) && zzb(field).equals(imageEntity.zzb(field))) {
                    }
                    return false;
                }
                if (imageEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public String getUrl() {
            return this.zzae;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public boolean hasUrl() {
            return this.aBr.contains(2);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzf.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return this.zzae;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzccj */
        public ImageEntity freeze() {
            return this;
        }
    }

    public static final class NameEntity extends FastSafeParcelableJsonResponse implements Person.Name {
        public static final Parcelable.Creator<NameEntity> CREATOR = new zzg();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        String aBS;
        String aBT;
        String aBU;
        String aBV;
        final Set<Integer> aBr;

        /* renamed from: is */
        String f6937is;

        /* renamed from: it */
        String f6938it;
        final int mVersionCode;

        static {
            aBq.put("familyName", FastJsonResponse.Field.zzm("familyName", 2));
            aBq.put("formatted", FastJsonResponse.Field.zzm("formatted", 3));
            aBq.put("givenName", FastJsonResponse.Field.zzm("givenName", 4));
            aBq.put("honorificPrefix", FastJsonResponse.Field.zzm("honorificPrefix", 5));
            aBq.put("honorificSuffix", FastJsonResponse.Field.zzm("honorificSuffix", 6));
            aBq.put("middleName", FastJsonResponse.Field.zzm("middleName", 7));
        }

        public NameEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        NameEntity(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, String str6) {
            this.aBr = set;
            this.mVersionCode = i;
            this.f6938it = str;
            this.aBS = str2;
            this.f6937is = str3;
            this.aBT = str4;
            this.aBU = str5;
            this.aBV = str6;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof NameEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            NameEntity nameEntity = (NameEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (nameEntity.zza(field) && zzb(field).equals(nameEntity.zzb(field))) {
                    }
                    return false;
                }
                if (nameEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFamilyName() {
            return this.f6938it;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFormatted() {
            return this.aBS;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getGivenName() {
            return this.f6937is;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificPrefix() {
            return this.aBT;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificSuffix() {
            return this.aBU;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getMiddleName() {
            return this.aBV;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFamilyName() {
            return this.aBr.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFormatted() {
            return this.aBr.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasGivenName() {
            return this.aBr.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificPrefix() {
            return this.aBr.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificSuffix() {
            return this.aBr.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasMiddleName() {
            return this.aBr.contains(7);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzg.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return this.f6938it;
                case 3:
                    return this.aBS;
                case 4:
                    return this.f6937is;
                case 5:
                    return this.aBT;
                case 6:
                    return this.aBU;
                case 7:
                    return this.aBV;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzcck */
        public NameEntity freeze() {
            return this;
        }
    }

    public static final class OrganizationsEntity extends FastSafeParcelableJsonResponse implements Person.Organizations {
        public static final Parcelable.Creator<OrganizationsEntity> CREATOR = new zzh();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();

        /* renamed from: JB */
        String f6939JB;
        String aBW;
        String aBX;
        String aBY;
        boolean aBZ;
        final Set<Integer> aBr;
        String aCa;

        /* renamed from: cg */
        String f6940cg;
        String mName;
        final int mVersionCode;

        /* renamed from: nV */
        int f6941nV;

        static {
            aBq.put("department", FastJsonResponse.Field.zzm("department", 2));
            aBq.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, FastJsonResponse.Field.zzm(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, 3));
            aBq.put("endDate", FastJsonResponse.Field.zzm("endDate", 4));
            aBq.put("location", FastJsonResponse.Field.zzm("location", 5));
            aBq.put("name", FastJsonResponse.Field.zzm("name", 6));
            aBq.put("primary", FastJsonResponse.Field.zzl("primary", 7));
            aBq.put("startDate", FastJsonResponse.Field.zzm("startDate", 8));
            aBq.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, FastJsonResponse.Field.zzm(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, 9));
            aBq.put(IjkMediaMeta.IJKM_KEY_TYPE, FastJsonResponse.Field.zza(IjkMediaMeta.IJKM_KEY_TYPE, 10, new StringToIntConverter().zzj("work", 0).zzj("school", 1), false));
        }

        public OrganizationsEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        OrganizationsEntity(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i2) {
            this.aBr = set;
            this.mVersionCode = i;
            this.aBW = str;
            this.f6940cg = str2;
            this.aBX = str3;
            this.aBY = str4;
            this.mName = str5;
            this.aBZ = z;
            this.aCa = str6;
            this.f6939JB = str7;
            this.f6941nV = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OrganizationsEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            OrganizationsEntity organizationsEntity = (OrganizationsEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (organizationsEntity.zza(field) && zzb(field).equals(organizationsEntity.zzb(field))) {
                    }
                    return false;
                }
                if (organizationsEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDepartment() {
            return this.aBW;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDescription() {
            return this.f6940cg;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getEndDate() {
            return this.aBX;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getLocation() {
            return this.aBY;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getName() {
            return this.mName;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getStartDate() {
            return this.aCa;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getTitle() {
            return this.f6939JB;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public int getType() {
            return this.f6941nV;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDepartment() {
            return this.aBr.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDescription() {
            return this.aBr.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasEndDate() {
            return this.aBr.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasLocation() {
            return this.aBr.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasName() {
            return this.aBr.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasPrimary() {
            return this.aBr.contains(7);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasStartDate() {
            return this.aBr.contains(8);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasTitle() {
            return this.aBr.contains(9);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasType() {
            return this.aBr.contains(10);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean isPrimary() {
            return this.aBZ;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzh.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return this.aBW;
                case 3:
                    return this.f6940cg;
                case 4:
                    return this.aBX;
                case 5:
                    return this.aBY;
                case 6:
                    return this.mName;
                case 7:
                    return Boolean.valueOf(this.aBZ);
                case 8:
                    return this.aCa;
                case 9:
                    return this.f6939JB;
                case 10:
                    return Integer.valueOf(this.f6941nV);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzccl */
        public OrganizationsEntity freeze() {
            return this;
        }
    }

    public static final class PlacesLivedEntity extends FastSafeParcelableJsonResponse implements Person.PlacesLived {
        public static final Parcelable.Creator<PlacesLivedEntity> CREATOR = new zzi();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        boolean aBZ;
        final Set<Integer> aBr;
        String mValue;
        final int mVersionCode;

        static {
            aBq.put("primary", FastJsonResponse.Field.zzl("primary", 2));
            aBq.put("value", FastJsonResponse.Field.zzm("value", 3));
        }

        public PlacesLivedEntity() {
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        PlacesLivedEntity(Set<Integer> set, int i, boolean z, String str) {
            this.aBr = set;
            this.mVersionCode = i;
            this.aBZ = z;
            this.mValue = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PlacesLivedEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            PlacesLivedEntity placesLivedEntity = (PlacesLivedEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (placesLivedEntity.zza(field) && zzb(field).equals(placesLivedEntity.zzb(field))) {
                    }
                    return false;
                }
                if (placesLivedEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasPrimary() {
            return this.aBr.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasValue() {
            return this.aBr.contains(3);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean isPrimary() {
            return this.aBZ;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzi.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 2:
                    return Boolean.valueOf(this.aBZ);
                case 3:
                    return this.mValue;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzccm */
        public PlacesLivedEntity freeze() {
            return this;
        }
    }

    public static final class UrlsEntity extends FastSafeParcelableJsonResponse implements Person.Urls {
        public static final Parcelable.Creator<UrlsEntity> CREATOR = new zzj();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> aBq = new HashMap<>();
        final Set<Integer> aBr;
        private final int aCb;

        /* renamed from: ce */
        String f6942ce;
        String mValue;
        final int mVersionCode;

        /* renamed from: nV */
        int f6943nV;

        static {
            aBq.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, FastJsonResponse.Field.zzm(PlusShare.KEY_CALL_TO_ACTION_LABEL, 5));
            aBq.put(IjkMediaMeta.IJKM_KEY_TYPE, FastJsonResponse.Field.zza(IjkMediaMeta.IJKM_KEY_TYPE, 6, new StringToIntConverter().zzj("home", 0).zzj("work", 1).zzj("blog", 2).zzj(Scopes.PROFILE, 3).zzj("other", 4).zzj("otherProfile", 5).zzj("contributor", 6).zzj("website", 7), false));
            aBq.put("value", FastJsonResponse.Field.zzm("value", 4));
        }

        public UrlsEntity() {
            this.aCb = 4;
            this.mVersionCode = 1;
            this.aBr = new HashSet();
        }

        UrlsEntity(Set<Integer> set, int i, String str, int i2, String str2, int i3) {
            this.aCb = 4;
            this.aBr = set;
            this.mVersionCode = i;
            this.f6942ce = str;
            this.f6943nV = i2;
            this.mValue = str2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof UrlsEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            UrlsEntity urlsEntity = (UrlsEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
                if (zza(field)) {
                    if (urlsEntity.zza(field) && zzb(field).equals(urlsEntity.zzb(field))) {
                    }
                    return false;
                }
                if (urlsEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getLabel() {
            return this.f6942ce;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public int getType() {
            return this.f6943nV;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasLabel() {
            return this.aBr.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasType() {
            return this.aBr.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasValue() {
            return this.aBr.contains(4);
        }

        public int hashCode() {
            int i = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzaxf();
                } else {
                    i = i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzj.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.aBr.contains(Integer.valueOf(field.zzaxf()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzaxf()) {
                case 4:
                    return this.mValue;
                case 5:
                    return this.f6942ce;
                case 6:
                    return Integer.valueOf(this.f6943nV);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* renamed from: zzccd */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
            return aBq;
        }

        @Deprecated
        public int zzccn() {
            return 4;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzcco */
        public UrlsEntity freeze() {
            return this;
        }
    }

    public static class zza {
        public static int zznt(String str) {
            if (str.equals("person")) {
                return 0;
            }
            if (str.equals("page")) {
                return 1;
            }
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown objectType string: ".concat(valueOf) : new String("Unknown objectType string: "));
        }
    }

    static {
        aBq.put("aboutMe", FastJsonResponse.Field.zzm("aboutMe", 2));
        aBq.put("ageRange", FastJsonResponse.Field.zza("ageRange", 3, AgeRangeEntity.class));
        aBq.put("birthday", FastJsonResponse.Field.zzm("birthday", 4));
        aBq.put("braggingRights", FastJsonResponse.Field.zzm("braggingRights", 5));
        aBq.put("circledByCount", FastJsonResponse.Field.zzk("circledByCount", 6));
        aBq.put("cover", FastJsonResponse.Field.zza("cover", 7, CoverEntity.class));
        aBq.put("currentLocation", FastJsonResponse.Field.zzm("currentLocation", 8));
        aBq.put("displayName", FastJsonResponse.Field.zzm("displayName", 9));
        aBq.put("gender", FastJsonResponse.Field.zza("gender", 12, new StringToIntConverter().zzj("male", 0).zzj("female", 1).zzj("other", 2), false));
        aBq.put(TtmlNode.ATTR_ID, FastJsonResponse.Field.zzm(TtmlNode.ATTR_ID, 14));
        aBq.put("image", FastJsonResponse.Field.zza("image", 15, ImageEntity.class));
        aBq.put("isPlusUser", FastJsonResponse.Field.zzl("isPlusUser", 16));
        aBq.put(IjkMediaMeta.IJKM_KEY_LANGUAGE, FastJsonResponse.Field.zzm(IjkMediaMeta.IJKM_KEY_LANGUAGE, 18));
        aBq.put("name", FastJsonResponse.Field.zza("name", 19, NameEntity.class));
        aBq.put("nickname", FastJsonResponse.Field.zzm("nickname", 20));
        aBq.put("objectType", FastJsonResponse.Field.zza("objectType", 21, new StringToIntConverter().zzj("person", 0).zzj("page", 1), false));
        aBq.put("organizations", FastJsonResponse.Field.zzb("organizations", 22, OrganizationsEntity.class));
        aBq.put("placesLived", FastJsonResponse.Field.zzb("placesLived", 23, PlacesLivedEntity.class));
        aBq.put("plusOneCount", FastJsonResponse.Field.zzk("plusOneCount", 24));
        aBq.put("relationshipStatus", FastJsonResponse.Field.zza("relationshipStatus", 25, new StringToIntConverter().zzj("single", 0).zzj("in_a_relationship", 1).zzj("engaged", 2).zzj("married", 3).zzj("its_complicated", 4).zzj("open_relationship", 5).zzj("widowed", 6).zzj("in_domestic_partnership", 7).zzj("in_civil_union", 8), false));
        aBq.put("tagline", FastJsonResponse.Field.zzm("tagline", 26));
        aBq.put("url", FastJsonResponse.Field.zzm("url", 27));
        aBq.put("urls", FastJsonResponse.Field.zzb("urls", 28, UrlsEntity.class));
        aBq.put("verified", FastJsonResponse.Field.zzl("verified", 29));
    }

    public PersonEntity() {
        this.mVersionCode = 1;
        this.aBr = new HashSet();
    }

    public PersonEntity(String str, String str2, ImageEntity imageEntity, int i, String str3) {
        this.mVersionCode = 1;
        this.aBr = new HashSet();
        this.f6936jh = str;
        this.aBr.add(9);
        this.zzboa = str2;
        this.aBr.add(14);
        this.aBz = imageEntity;
        this.aBr.add(15);
        this.aBD = i;
        this.aBr.add(21);
        this.zzae = str3;
        this.aBr.add(27);
    }

    PersonEntity(Set<Integer> set, int i, String str, AgeRangeEntity ageRangeEntity, String str2, String str3, int i2, CoverEntity coverEntity, String str4, String str5, int i3, String str6, ImageEntity imageEntity, boolean z, String str7, NameEntity nameEntity, String str8, int i4, List<OrganizationsEntity> list, List<PlacesLivedEntity> list2, int i5, int i6, String str9, String str10, List<UrlsEntity> list3, boolean z2) {
        this.aBr = set;
        this.mVersionCode = i;
        this.aBs = str;
        this.aBt = ageRangeEntity;
        this.aBu = str2;
        this.aBv = str3;
        this.aBw = i2;
        this.aBx = coverEntity;
        this.aBy = str4;
        this.f6936jh = str5;
        this.zzazc = i3;
        this.zzboa = str6;
        this.aBz = imageEntity;
        this.aBA = z;
        this.f6935bZ = str7;
        this.aBB = nameEntity;
        this.aBC = str8;
        this.aBD = i4;
        this.aBE = list;
        this.aBF = list2;
        this.aBG = i5;
        this.aBH = i6;
        this.aBI = str9;
        this.zzae = str10;
        this.aBJ = list3;
        this.aBK = z2;
    }

    public static PersonEntity zzaf(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        PersonEntity createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PersonEntity)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PersonEntity personEntity = (PersonEntity) obj;
        for (FastJsonResponse.Field<?, ?> field : aBq.values()) {
            if (zza(field)) {
                if (personEntity.zza(field) && zzb(field).equals(personEntity.zzb(field))) {
                }
                return false;
            }
            if (personEntity.zza(field)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getAboutMe() {
        return this.aBs;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.AgeRange getAgeRange() {
        return this.aBt;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBirthday() {
        return this.aBu;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBraggingRights() {
        return this.aBv;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getCircledByCount() {
        return this.aBw;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Cover getCover() {
        return this.aBx;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getCurrentLocation() {
        return this.aBy;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getDisplayName() {
        return this.f6936jh;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getGender() {
        return this.zzazc;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getId() {
        return this.zzboa;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Image getImage() {
        return this.aBz;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getLanguage() {
        return this.f6935bZ;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Name getName() {
        return this.aBB;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getNickname() {
        return this.aBC;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getObjectType() {
        return this.aBD;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Organizations> getOrganizations() {
        return (ArrayList) this.aBE;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.PlacesLived> getPlacesLived() {
        return (ArrayList) this.aBF;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getPlusOneCount() {
        return this.aBG;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getRelationshipStatus() {
        return this.aBH;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getTagline() {
        return this.aBI;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getUrl() {
        return this.zzae;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Urls> getUrls() {
        return (ArrayList) this.aBJ;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAboutMe() {
        return this.aBr.contains(2);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAgeRange() {
        return this.aBr.contains(3);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBirthday() {
        return this.aBr.contains(4);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBraggingRights() {
        return this.aBr.contains(5);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCircledByCount() {
        return this.aBr.contains(6);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCover() {
        return this.aBr.contains(7);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCurrentLocation() {
        return this.aBr.contains(8);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasDisplayName() {
        return this.aBr.contains(9);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasGender() {
        return this.aBr.contains(12);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasId() {
        return this.aBr.contains(14);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasImage() {
        return this.aBr.contains(15);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasIsPlusUser() {
        return this.aBr.contains(16);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasLanguage() {
        return this.aBr.contains(18);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasName() {
        return this.aBr.contains(19);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasNickname() {
        return this.aBr.contains(20);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasObjectType() {
        return this.aBr.contains(21);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasOrganizations() {
        return this.aBr.contains(22);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlacesLived() {
        return this.aBr.contains(23);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlusOneCount() {
        return this.aBr.contains(24);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasRelationshipStatus() {
        return this.aBr.contains(25);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasTagline() {
        return this.aBr.contains(26);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrl() {
        return this.aBr.contains(27);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrls() {
        return this.aBr.contains(28);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasVerified() {
        return this.aBr.contains(29);
    }

    public int hashCode() {
        int i = 0;
        Iterator<FastJsonResponse.Field<?, ?>> it = aBq.values().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            FastJsonResponse.Field<?, ?> next = it.next();
            if (zza(next)) {
                i = zzb(next).hashCode() + i2 + next.zzaxf();
            } else {
                i = i2;
            }
        }
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isPlusUser() {
        return this.aBA;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isVerified() {
        return this.aBK;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        com.google.android.gms.plus.internal.model.people.zza.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected boolean zza(FastJsonResponse.Field field) {
        return this.aBr.contains(Integer.valueOf(field.zzaxf()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected Object zzb(FastJsonResponse.Field field) {
        switch (field.zzaxf()) {
            case 2:
                return this.aBs;
            case 3:
                return this.aBt;
            case 4:
                return this.aBu;
            case 5:
                return this.aBv;
            case 6:
                return Integer.valueOf(this.aBw);
            case 7:
                return this.aBx;
            case 8:
                return this.aBy;
            case 9:
                return this.f6936jh;
            case 10:
            case 11:
            case 13:
            case 17:
            default:
                throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzaxf()).toString());
            case 12:
                return Integer.valueOf(this.zzazc);
            case 14:
                return this.zzboa;
            case 15:
                return this.aBz;
            case 16:
                return Boolean.valueOf(this.aBA);
            case 18:
                return this.f6935bZ;
            case 19:
                return this.aBB;
            case 20:
                return this.aBC;
            case 21:
                return Integer.valueOf(this.aBD);
            case 22:
                return this.aBE;
            case 23:
                return this.aBF;
            case 24:
                return Integer.valueOf(this.aBG);
            case 25:
                return Integer.valueOf(this.aBH);
            case 26:
                return this.aBI;
            case 27:
                return this.zzae;
            case 28:
                return this.aBJ;
            case 29:
                return Boolean.valueOf(this.aBK);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: zzccd */
    public HashMap<String, FastJsonResponse.Field<?, ?>> zzawz() {
        return aBq;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzcce */
    public PersonEntity freeze() {
        return this;
    }
}
