package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzbz;
import com.google.android.gms.internal.zzoe;
import com.google.android.gms.internal.zzsu;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

/* loaded from: classes.dex */
public class zze {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";

    /* renamed from: hC */
    private static final String[] f6112hC = {"com.google", "com.google.work", "cn.google"};

    /* renamed from: hD */
    private static final ComponentName f6113hD;

    /* renamed from: hE */
    private static final ComponentName f6114hE;

    /* renamed from: hF */
    private static final zzsu f6115hF;

    /* renamed from: com.google.android.gms.auth.zze$1 */
    final class C12501 implements zza<TokenData> {

        /* renamed from: hG */
        final /* synthetic */ Account f6116hG;

        /* renamed from: hH */
        final /* synthetic */ String f6117hH;
        final /* synthetic */ Bundle val$options;

        C12501(Account account, String str, Bundle bundle) {
            account = account;
            str = str;
            bundle2 = bundle;
        }

        @Override // com.google.android.gms.auth.zze.zza
        /* renamed from: zzbt */
        public TokenData zzbu(IBinder iBinder) {
            Bundle bundle = (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(account, str, bundle2));
            TokenData zzd = TokenData.zzd(bundle, "tokenDetails");
            if (zzd != null) {
                return zzd;
            }
            String string = bundle.getString("Error");
            Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
            zzoe zzgi = zzoe.zzgi(string);
            if (!zzoe.zza(zzgi)) {
                if (zzoe.zzb(zzgi)) {
                    throw new IOException(string);
                }
                throw new GoogleAuthException(string);
            }
            zzsu zzsuVar = zze.f6115hF;
            String valueOf = String.valueOf(zzgi);
            zzsuVar.zzf("GoogleAuthUtil", new StringBuilder(String.valueOf(valueOf).length() + 31).append("isUserRecoverableError status: ").append(valueOf).toString());
            throw new UserRecoverableAuthException(string, intent);
        }
    }

    /* renamed from: com.google.android.gms.auth.zze$2 */
    final class C12512 implements zza<Void> {

        /* renamed from: hI */
        final /* synthetic */ String f6118hI;

        /* renamed from: hJ */
        final /* synthetic */ Bundle f6119hJ;

        C12512(String str, Bundle bundle) {
            str = str;
            bundle = bundle;
        }

        @Override // com.google.android.gms.auth.zze.zza
        /* renamed from: zzbv */
        public Void zzbu(IBinder iBinder) {
            Bundle bundle = (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(str, bundle));
            String string = bundle.getString("Error");
            if (bundle.getBoolean("booleanResult")) {
                return null;
            }
            throw new GoogleAuthException(string);
        }
    }

    /* renamed from: com.google.android.gms.auth.zze$3 */
    final class C12523 implements zza<List<AccountChangeEvent>> {

        /* renamed from: hK */
        final /* synthetic */ String f6120hK;

        /* renamed from: hL */
        final /* synthetic */ int f6121hL;

        C12523(String str, int i) {
            str = str;
            i = i;
        }

        @Override // com.google.android.gms.auth.zze.zza
        /* renamed from: zzbw */
        public List<AccountChangeEvent> zzbu(IBinder iBinder) {
            return ((AccountChangeEventsResponse) zze.zzn(zzbz.zza.zza(iBinder).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)))).getEvents();
        }
    }

    /* renamed from: com.google.android.gms.auth.zze$4 */
    final class C12534 implements zza<Bundle> {

        /* renamed from: hG */
        final /* synthetic */ Account f6122hG;

        C12534(Account account) {
            account = account;
        }

        @Override // com.google.android.gms.auth.zze.zza
        /* renamed from: zzbx */
        public Bundle zzbu(IBinder iBinder) {
            return (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(account));
        }
    }

    private interface zza<T> {
        T zzbu(IBinder iBinder);
    }

    static {
        KEY_CALLER_UID = Build.VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        KEY_ANDROID_PACKAGE_NAME = Build.VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        f6113hD = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        f6114hE = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
        f6115hF = zzd.zzb("GoogleAuthUtil");
    }

    zze() {
    }

    public static void clearToken(Context context, String str) {
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        zzaz(context);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        zza(context, f6113hD, new zza<Void>() { // from class: com.google.android.gms.auth.zze.2

            /* renamed from: hI */
            final /* synthetic */ String f6118hI;

            /* renamed from: hJ */
            final /* synthetic */ Bundle f6119hJ;

            C12512(String str3, Bundle bundle2) {
                str = str3;
                bundle = bundle2;
            }

            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzbv */
            public Void zzbu(IBinder iBinder) {
                Bundle bundle2 = (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(str, bundle));
                String string = bundle2.getString("Error");
                if (bundle2.getBoolean("booleanResult")) {
                    return null;
                }
                throw new GoogleAuthException(string);
            }
        });
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) {
        zzaa.zzh(str, "accountName must be provided");
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        zzaz(context);
        return (List) zza(context, f6113hD, new zza<List<AccountChangeEvent>>() { // from class: com.google.android.gms.auth.zze.3

            /* renamed from: hK */
            final /* synthetic */ String f6120hK;

            /* renamed from: hL */
            final /* synthetic */ int f6121hL;

            C12523(String str2, int i2) {
                str = str2;
                i = i2;
            }

            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzbw */
            public List<AccountChangeEvent> zzbu(IBinder iBinder) {
                return ((AccountChangeEventsResponse) zze.zzn(zzbz.zza.zza(iBinder).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)))).getEvents();
            }
        });
    }

    public static String getAccountId(Context context, String str) {
        zzaa.zzh(str, "accountName must be provided");
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        zzaz(context);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) {
        zzc(account);
        return zzc(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    @TargetApi(23)
    public static Bundle removeAccount(Context context, Account account) {
        zzaa.zzy(context);
        zzc(account);
        zzaz(context);
        return (Bundle) zza(context, f6113hD, new zza<Bundle>() { // from class: com.google.android.gms.auth.zze.4

            /* renamed from: hG */
            final /* synthetic */ Account f6122hG;

            C12534(Account account2) {
                account = account2;
            }

            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzbx */
            public Bundle zzbu(IBinder iBinder) {
                return (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(account));
            }
        });
    }

    private static <T> T zza(Context context, ComponentName componentName, zza<T> zzaVar) {
        com.google.android.gms.common.zza zzaVar2 = new com.google.android.gms.common.zza();
        zzl zzcc = zzl.zzcc(context);
        try {
            if (!zzcc.zza(componentName, zzaVar2, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                return zzaVar.zzbu(zzaVar2.zzaqk());
            } catch (RemoteException | InterruptedException e) {
                f6115hF.zze("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } finally {
            zzcc.zzb(componentName, zzaVar2, "GoogleAuthUtil");
        }
    }

    private static void zzaz(Context context) {
        try {
            com.google.android.gms.common.zze.zzaz(context.getApplicationContext());
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    public static TokenData zzc(Context context, Account account, String str, Bundle bundle) {
        zzaa.zzht("Calling this from your main thread can lead to deadlock");
        zzaa.zzh(str, "Scope cannot be empty or null.");
        zzc(account);
        zzaz(context);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) zza(context, f6113hD, new zza<TokenData>() { // from class: com.google.android.gms.auth.zze.1

            /* renamed from: hG */
            final /* synthetic */ Account f6116hG;

            /* renamed from: hH */
            final /* synthetic */ String f6117hH;
            final /* synthetic */ Bundle val$options;

            C12501(Account account2, String str3, Bundle bundle22) {
                account = account2;
                str = str3;
                bundle2 = bundle22;
            }

            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzbt */
            public TokenData zzbu(IBinder iBinder) {
                Bundle bundle3 = (Bundle) zze.zzn(zzbz.zza.zza(iBinder).zza(account, str, bundle2));
                TokenData zzd = TokenData.zzd(bundle3, "tokenDetails");
                if (zzd != null) {
                    return zzd;
                }
                String string = bundle3.getString("Error");
                Intent intent = (Intent) bundle3.getParcelable("userRecoveryIntent");
                zzoe zzgi = zzoe.zzgi(string);
                if (!zzoe.zza(zzgi)) {
                    if (zzoe.zzb(zzgi)) {
                        throw new IOException(string);
                    }
                    throw new GoogleAuthException(string);
                }
                zzsu zzsuVar = zze.f6115hF;
                String valueOf = String.valueOf(zzgi);
                zzsuVar.zzf("GoogleAuthUtil", new StringBuilder(String.valueOf(valueOf).length() + 31).append("isUserRecoverableError status: ").append(valueOf).toString());
                throw new UserRecoverableAuthException(string, intent);
            }
        });
    }

    private static void zzc(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        }
        if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        for (String str : f6112hC) {
            if (str.equals(account.type)) {
                return;
            }
        }
        throw new IllegalArgumentException("Account type not supported");
    }

    static void zzi(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    public static <T> T zzn(T t) {
        if (t != null) {
            return t;
        }
        f6115hF.zzf("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }
}
