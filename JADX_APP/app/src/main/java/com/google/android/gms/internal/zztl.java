package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.zztm;
import com.google.android.gms.internal.zztn;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zztl {

    /* renamed from: Qh */
    private static zztm f6896Qh;

    /* renamed from: Qj */
    private static String f6898Qj;

    /* renamed from: Qr */
    private final Context f6906Qr;

    /* renamed from: Qi */
    private static final HashMap<String, byte[]> f6897Qi = new HashMap<>();

    /* renamed from: Qk */
    private static final zzb.zza f6899Qk = new zzb.zza() { // from class: com.google.android.gms.internal.zztl.1
        C13971() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public zztl zza(Context context, String str, int i) {
            return zztl.zza(context, str, i);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzaa(Context context, String str) {
            return zztl.zzaa(context, str);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzb(Context context, String str, boolean z) {
            return zztl.zzb(context, str, z);
        }
    };

    /* renamed from: Ql */
    private static final zzb.zza f6900Ql = new zzb.zza() { // from class: com.google.android.gms.internal.zztl.2
        C13982() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public zztl zza(Context context, String str, int i) {
            return zztl.zzb(context, str, i);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzaa(Context context, String str) {
            return zztl.zzaa(context, str);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzb(Context context, String str, boolean z) {
            return zztl.zzc(context, str, z);
        }
    };

    /* renamed from: Qm */
    public static final zzb f6901Qm = new zzb() { // from class: com.google.android.gms.internal.zztl.3
        C13993() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6909Qu != 0) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
                if (c1908zzb.f6908Qt != 0) {
                    c1908zzb.f6910Qv = -1;
                }
            }
            return c1908zzb;
        }
    };

    /* renamed from: Qn */
    public static final zzb f6902Qn = new zzb() { // from class: com.google.android.gms.internal.zztl.4
        C14004() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            if (c1908zzb.f6908Qt != 0) {
                c1908zzb.f6910Qv = -1;
            } else {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
                if (c1908zzb.f6909Qu != 0) {
                    c1908zzb.f6910Qv = 1;
                }
            }
            return c1908zzb;
        }
    };

    /* renamed from: Qo */
    public static final zzb f6903Qo = new zzb() { // from class: com.google.android.gms.internal.zztl.5
        C14015() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6908Qt >= c1908zzb.f6909Qu) {
                c1908zzb.f6910Qv = -1;
            } else {
                c1908zzb.f6910Qv = 1;
            }
            return c1908zzb;
        }
    };

    /* renamed from: Qp */
    public static final zzb f6904Qp = new zzb() { // from class: com.google.android.gms.internal.zztl.6
        C14026() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6909Qu >= c1908zzb.f6908Qt) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6910Qv = -1;
            }
            return c1908zzb;
        }
    };

    /* renamed from: Qq */
    public static final zzb f6905Qq = new zzb() { // from class: com.google.android.gms.internal.zztl.7
        C14037() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            if (c1908zzb.f6908Qt != 0) {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, false);
            } else {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            }
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6909Qu >= c1908zzb.f6908Qt) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6910Qv = -1;
            }
            return c1908zzb;
        }
    };

    /* renamed from: com.google.android.gms.internal.zztl$1 */
    final class C13971 implements zzb.zza {
        C13971() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public zztl zza(Context context, String str, int i) {
            return zztl.zza(context, str, i);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzaa(Context context, String str) {
            return zztl.zzaa(context, str);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzb(Context context, String str, boolean z) {
            return zztl.zzb(context, str, z);
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$2 */
    final class C13982 implements zzb.zza {
        C13982() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public zztl zza(Context context, String str, int i) {
            return zztl.zzb(context, str, i);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzaa(Context context, String str) {
            return zztl.zzaa(context, str);
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzb(Context context, String str, boolean z) {
            return zztl.zzc(context, str, z);
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$3 */
    final class C13993 implements zzb {
        C13993() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6909Qu != 0) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
                if (c1908zzb.f6908Qt != 0) {
                    c1908zzb.f6910Qv = -1;
                }
            }
            return c1908zzb;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$4 */
    final class C14004 implements zzb {
        C14004() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            if (c1908zzb.f6908Qt != 0) {
                c1908zzb.f6910Qv = -1;
            } else {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
                if (c1908zzb.f6909Qu != 0) {
                    c1908zzb.f6910Qv = 1;
                }
            }
            return c1908zzb;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$5 */
    final class C14015 implements zzb {
        C14015() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6908Qt >= c1908zzb.f6909Qu) {
                c1908zzb.f6910Qv = -1;
            } else {
                c1908zzb.f6910Qv = 1;
            }
            return c1908zzb;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$6 */
    final class C14026 implements zzb {
        C14026() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6909Qu >= c1908zzb.f6908Qt) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6910Qv = -1;
            }
            return c1908zzb;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$7 */
    final class C14037 implements zzb {
        C14037() {
        }

        @Override // com.google.android.gms.internal.zztl.zzb
        public zzb.C1908zzb zza(Context context, String str, zzb.zza zzaVar) {
            zzb.C1908zzb c1908zzb = new zzb.C1908zzb();
            c1908zzb.f6908Qt = zzaVar.zzaa(context, str);
            if (c1908zzb.f6908Qt != 0) {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, false);
            } else {
                c1908zzb.f6909Qu = zzaVar.zzb(context, str, true);
            }
            if (c1908zzb.f6908Qt == 0 && c1908zzb.f6909Qu == 0) {
                c1908zzb.f6910Qv = 0;
            } else if (c1908zzb.f6909Qu >= c1908zzb.f6908Qt) {
                c1908zzb.f6910Qv = 1;
            } else {
                c1908zzb.f6910Qv = -1;
            }
            return c1908zzb;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$8 */
    final class C14048 implements zzb.zza {

        /* renamed from: Qs */
        final /* synthetic */ int f6907Qs;

        C14048(int i) {
            i = i;
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public zztl zza(Context context, String str, int i) {
            throw new zza("local only VersionPolicy should not load from remote");
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzaa(Context context, String str) {
            return i;
        }

        @Override // com.google.android.gms.internal.zztl.zzb.zza
        public int zzb(Context context, String str, boolean z) {
            return 0;
        }
    }

    /* renamed from: com.google.android.gms.internal.zztl$9 */
    final class C14059 extends PathClassLoader {
        C14059(String str, ClassLoader classLoader) {
            super(str, classLoader);
        }

        @Override // java.lang.ClassLoader
        protected Class<?> loadClass(String str, boolean z) {
            if (!str.startsWith("java.") && !str.startsWith("android.")) {
                try {
                    return findClass(str);
                } catch (ClassNotFoundException e) {
                }
            }
            return super.loadClass(str, z);
        }
    }

    public static class zza extends Exception {
        private zza(String str) {
            super(str);
        }

        /* synthetic */ zza(String str, C13971 c13971) {
            this(str);
        }

        private zza(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ zza(String str, Throwable th, C13971 c13971) {
            this(str, th);
        }
    }

    public interface zzb {

        public interface zza {
            zztl zza(Context context, String str, int i);

            int zzaa(Context context, String str);

            int zzb(Context context, String str, boolean z);
        }

        /* renamed from: com.google.android.gms.internal.zztl$zzb$zzb */
        public static class C1908zzb {

            /* renamed from: Qt */
            public int f6908Qt = 0;

            /* renamed from: Qu */
            public int f6909Qu = 0;

            /* renamed from: Qv */
            public int f6910Qv = 0;
        }

        C1908zzb zza(Context context, String str, zza zzaVar);
    }

    private zztl(Context context) {
        this.f6906Qr = (Context) com.google.android.gms.common.internal.zzaa.zzy(context);
    }

    private static Context zza(Context context, String str, byte[] bArr, String str2) {
        if (str2 == null || str2.isEmpty()) {
            Log.e("DynamiteModule", "No valid DynamiteLoader APK path");
            return null;
        }
        try {
            return (Context) com.google.android.gms.dynamic.zze.zzae(zztn.zza.zzff((IBinder) new PathClassLoader(str2, context.getClassLoader()) { // from class: com.google.android.gms.internal.zztl.9
                C14059(String str22, ClassLoader classLoader) {
                    super(str22, classLoader);
                }

                @Override // java.lang.ClassLoader
                protected Class<?> loadClass(String str3, boolean z) {
                    if (!str3.startsWith("java.") && !str3.startsWith("android.")) {
                        try {
                            return findClass(str3);
                        } catch (ClassNotFoundException e) {
                        }
                    }
                    return super.loadClass(str3, z);
                }
            }.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0])).zza(com.google.android.gms.dynamic.zze.zzac(context), str, bArr));
        } catch (RemoteException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            String valueOf = String.valueOf(e.toString());
            Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(valueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    public static zztl zza(Context context, zzb zzbVar, String str) {
        return zza(context, zzbVar, str, f6899Qk);
    }

    public static zztl zza(Context context, zzb zzbVar, String str, zzb.zza zzaVar) {
        zzb.C1908zzb zza2 = zzbVar.zza(context, str, zzaVar);
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(zza2.f6908Qt).append(" and remote module ").append(str).append(":").append(zza2.f6909Qu).toString());
        if (zza2.f6910Qv == 0 || ((zza2.f6910Qv == -1 && zza2.f6908Qt == 0) || (zza2.f6910Qv == 1 && zza2.f6909Qu == 0))) {
            throw new zza(new StringBuilder(91).append("No acceptable module found. Local version is ").append(zza2.f6908Qt).append(" and remote version is ").append(zza2.f6909Qu).append(".").toString());
        }
        if (zza2.f6910Qv == -1) {
            return zzac(context, str);
        }
        if (zza2.f6910Qv != 1) {
            throw new zza(new StringBuilder(47).append("VersionPolicy returned invalid code:").append(zza2.f6910Qv).toString());
        }
        try {
            return zzaVar.zza(context, str, zza2.f6909Qu);
        } catch (zza e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
            if (zza2.f6908Qt == 0 || zzbVar.zza(context, str, new zzb.zza() { // from class: com.google.android.gms.internal.zztl.8

                /* renamed from: Qs */
                final /* synthetic */ int f6907Qs;

                C14048(int i) {
                    i = i;
                }

                @Override // com.google.android.gms.internal.zztl.zzb.zza
                public zztl zza(Context context2, String str2, int i) {
                    throw new zza("local only VersionPolicy should not load from remote");
                }

                @Override // com.google.android.gms.internal.zztl.zzb.zza
                public int zzaa(Context context2, String str2) {
                    return i;
                }

                @Override // com.google.android.gms.internal.zztl.zzb.zza
                public int zzb(Context context2, String str2, boolean z) {
                    return 0;
                }
            }).f6910Qv != -1) {
                throw new zza("Remote load failed. No local fallback found.", e);
            }
            return zzac(context, str);
        }
    }

    public static zztl zza(Context context, String str, int i) {
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        zztm zzcs = zzcs(context);
        if (zzcs == null) {
            throw new zza("Failed to create IDynamiteLoader.");
        }
        try {
            com.google.android.gms.dynamic.zzd zza2 = zzcs.zza(com.google.android.gms.dynamic.zze.zzac(context), str, i);
            if (com.google.android.gms.dynamic.zze.zzae(zza2) == null) {
                throw new zza("Failed to load remote module.");
            }
            return new zztl((Context) com.google.android.gms.dynamic.zze.zzae(zza2));
        } catch (RemoteException e) {
            throw new zza("Failed to load remote module.", e);
        }
    }

    public static int zzaa(Context context, String str) {
        int i;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            String valueOf = String.valueOf("com.google.android.gms.dynamite.descriptors.");
            String valueOf2 = String.valueOf("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length() + String.valueOf(valueOf2).length()).append(valueOf).append(str).append(".").append(valueOf2).toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                i = declaredField2.getInt(null);
            } else {
                String valueOf3 = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", new StringBuilder(String.valueOf(valueOf3).length() + 51 + String.valueOf(str).length()).append("Module descriptor id '").append(valueOf3).append("' didn't match expected id '").append(str).append("'").toString());
                i = 0;
            }
            return i;
        } catch (ClassNotFoundException e) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            return 0;
        } catch (Exception e2) {
            String valueOf4 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf4.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf4) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int zzab(Context context, String str) {
        return zzb(context, str, false);
    }

    private static zztl zzac(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new zztl(context.getApplicationContext());
    }

    public static int zzb(Context context, String str, boolean z) {
        zztm zzcs = zzcs(context);
        if (zzcs == null) {
            return 0;
        }
        try {
            return zzcs.zza(com.google.android.gms.dynamic.zze.zzac(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    public static zztl zzb(Context context, String str, int i) {
        byte[] bArr;
        String str2;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        synchronized (zztl.class) {
            bArr = f6897Qi.get(new StringBuilder(String.valueOf(str).length() + 12).append(str).append(":").append(i).toString());
            str2 = f6898Qj;
        }
        if (bArr == null) {
            throw new zza("Module implementation could not be found.");
        }
        Context zza2 = zza(context.getApplicationContext(), str, bArr, str2);
        if (zza2 == null) {
            throw new zza("Failed to get module context");
        }
        return new zztl(zza2);
    }

    public static int zzc(Context context, String str, boolean z) {
        ContentResolver contentResolver;
        String str2 = z ? "api_force_staging" : "api";
        String valueOf = String.valueOf("content://com.google.android.gms.chimera/");
        Uri parse = Uri.parse(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length() + String.valueOf(str).length()).append(valueOf).append(str2).append("/").append(str).toString());
        if (context == null || (contentResolver = context.getContentResolver()) == null) {
            throw new zza("Failed to get dynamite module ContentResolver.");
        }
        Cursor query = contentResolver.query(parse, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    int i = query.getInt(0);
                    if (i > 0) {
                        synchronized (zztl.class) {
                            f6897Qi.put(new StringBuilder(String.valueOf(str).length() + 12).append(str).append(":").append(i).toString(), query.getBlob(1));
                            f6898Qj = query.getString(2);
                        }
                    }
                    return i;
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
        throw new zza("Failed to connect to dynamite module ContentResolver.");
    }

    private static zztm zzcs(Context context) {
        synchronized (zztl.class) {
            if (f6896Qh != null) {
                return f6896Qh;
            }
            if (com.google.android.gms.common.zzc.zzaql().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            }
            try {
                zztm zzfe = zztm.zza.zzfe((IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance());
                if (zzfe != null) {
                    f6896Qh = zzfe;
                    return zzfe;
                }
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    public Context zzbdt() {
        return this.f6906Qr;
    }

    public IBinder zzjd(String str) {
        try {
            return (IBinder) this.f6906Qr.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new zza(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e);
        }
    }
}
