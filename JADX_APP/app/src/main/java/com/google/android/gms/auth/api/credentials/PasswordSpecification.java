package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class PasswordSpecification extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PasswordSpecification> CREATOR = new zzf();

    /* renamed from: iG */
    public static final PasswordSpecification f6014iG = new zza().zzl(12, 16).zzfw("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zzf("abcdefghijkmnopqrstxyz", 1).zzf("ABCDEFGHJKLMNPQRSTXY", 1).zzf("3456789", 1).zzaij();

    /* renamed from: iH */
    public static final PasswordSpecification f6015iH = new zza().zzl(12, 16).zzfw("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zzf("abcdefghijklmnopqrstuvwxyz", 1).zzf("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zzf("1234567890", 1).zzaij();

    /* renamed from: iI */
    final String f6016iI;

    /* renamed from: iJ */
    final List<String> f6017iJ;

    /* renamed from: iK */
    final List<Integer> f6018iK;

    /* renamed from: iL */
    final int f6019iL;

    /* renamed from: iM */
    final int f6020iM;
    final int mVersionCode;

    /* renamed from: iN */
    private final int[] f6021iN = zzaii();
    private final Random zzbao = new SecureRandom();

    public static class zza {

        /* renamed from: iO */
        private final TreeSet<Character> f6026iO = new TreeSet<>();

        /* renamed from: iJ */
        private final List<String> f6022iJ = new ArrayList();

        /* renamed from: iK */
        private final List<Integer> f6023iK = new ArrayList();

        /* renamed from: iL */
        private int f6024iL = 12;

        /* renamed from: iM */
        private int f6025iM = 16;

        private void zzaik() {
            int i;
            int i2 = 0;
            Iterator<Integer> it = this.f6023iK.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                } else {
                    i2 = it.next().intValue() + i;
                }
            }
            if (i > this.f6025iM) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
        }

        private void zzail() {
            boolean[] zArr = new boolean[95];
            Iterator<String> it = this.f6022iJ.iterator();
            while (it.hasNext()) {
                for (char c : it.next().toCharArray()) {
                    if (zArr[c - ' ']) {
                        throw new zzb(new StringBuilder(58).append("character ").append(c).append(" occurs in more than one required character set").toString());
                    }
                    zArr[c - ' '] = true;
                }
            }
        }

        private TreeSet<Character> zzv(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(String.valueOf(str2).concat(" cannot be null or empty"));
            }
            TreeSet<Character> treeSet = new TreeSet<>();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.zzc(c, 32, 126)) {
                    throw new zzb(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        public PasswordSpecification zzaij() {
            if (this.f6026iO.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            zzaik();
            zzail();
            return new PasswordSpecification(1, PasswordSpecification.zzb(this.f6026iO), this.f6022iJ, this.f6023iK, this.f6024iL, this.f6025iM);
        }

        public zza zzf(@NonNull String str, int i) {
            if (i < 1) {
                throw new zzb("count must be at least 1");
            }
            this.f6022iJ.add(PasswordSpecification.zzb(zzv(str, "requiredChars")));
            this.f6023iK.add(Integer.valueOf(i));
            return this;
        }

        public zza zzfw(@NonNull String str) {
            this.f6026iO.addAll(zzv(str, "allowedChars"));
            return this;
        }

        public zza zzl(int i, int i2) {
            if (i < 1) {
                throw new zzb("minimumSize must be at least 1");
            }
            if (i > i2) {
                throw new zzb("maximumSize must be greater than or equal to minimumSize");
            }
            this.f6024iL = i;
            this.f6025iM = i2;
            return this;
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.mVersionCode = i;
        this.f6016iI = str;
        this.f6017iJ = Collections.unmodifiableList(list);
        this.f6018iK = Collections.unmodifiableList(list2);
        this.f6019iL = i2;
        this.f6020iM = i3;
    }

    private int zza(char c) {
        return c - ' ';
    }

    private int[] zzaii() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        Iterator<String> it = this.f6017iJ.iterator();
        int i = 0;
        while (it.hasNext()) {
            for (char c : it.next().toCharArray()) {
                iArr[zza(c)] = i;
            }
            i++;
        }
        return iArr;
    }

    public static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        Iterator<Character> it = collection.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return new String(cArr);
            }
            i = i2 + 1;
            cArr[i2] = it.next().charValue();
        }
    }

    public static boolean zzc(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
