package com.google.android.gms.internal;

import java.lang.reflect.Field;
import java.util.Locale;

/* loaded from: classes.dex */
public enum zzaoq implements zzaor {
    IDENTITY { // from class: com.google.android.gms.internal.zzaoq.1
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.android.gms.internal.zzaoq.2
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzum(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.android.gms.internal.zzaoq.3
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzum(zzaoq.zzbz(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.android.gms.internal.zzaoq.4
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzbz(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.android.gms.internal.zzaoq.5
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzbz(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: com.google.android.gms.internal.zzaoq$1 */
    enum C12841 extends zzaoq {
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return field.getName();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaoq$2 */
    enum C12852 extends zzaoq {
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzum(field.getName());
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaoq$3 */
    enum C12863 extends zzaoq {
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzum(zzaoq.zzbz(field.getName(), " "));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaoq$4 */
    enum C12874 extends zzaoq {
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzbz(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaoq$5 */
    enum C12885 extends zzaoq {
        @Override // com.google.android.gms.internal.zzaor
        public String zzc(Field field) {
            return zzaoq.zzbz(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    }

    /* synthetic */ zzaoq(C12841 c12841) {
        this();
    }

    private static String zza(char c, String str, int i) {
        if (i >= str.length()) {
            return String.valueOf(c);
        }
        String valueOf = String.valueOf(str.substring(i));
        return new StringBuilder(String.valueOf(valueOf).length() + 1).append(c).append(valueOf).toString();
    }

    public static String zzbz(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static String zzum(String str) {
        int i = 0;
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        return i == str.length() ? sb.toString() : !Character.isUpperCase(charAt) ? sb.append(zza(Character.toUpperCase(charAt), str, i + 1)).toString() : str;
    }
}
