package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.zzc;
import com.google.android.gms.common.zze;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static final zzc aDf = zzc.zzaql();
    private static final Object zzaox = new Object();
    private static Method aDg = null;

    /* renamed from: com.google.android.gms.security.ProviderInstaller$1 */
    final class AsyncTaskC14221 extends AsyncTask<Void, Void, Integer> {
        final /* synthetic */ ProviderInstallListener aDh;
        final /* synthetic */ Context zzang;

        AsyncTaskC14221(Context context, ProviderInstallListener providerInstallListener) {
            context = context;
            providerInstallListener = providerInstallListener;
        }

        @Override // android.os.AsyncTask
        /* renamed from: zzc */
        public Integer doInBackground(Void... voidArr) {
            try {
                ProviderInstaller.installIfNeeded(context);
                return 0;
            } catch (GooglePlayServicesNotAvailableException e) {
                return Integer.valueOf(e.errorCode);
            } catch (GooglePlayServicesRepairableException e2) {
                return Integer.valueOf(e2.getConnectionStatusCode());
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: zzg */
        public void onPostExecute(Integer num) {
            if (num.intValue() == 0) {
                providerInstallListener.onProviderInstalled();
            } else {
                providerInstallListener.onProviderInstallFailed(num.intValue(), ProviderInstaller.aDf.zzb(context, num.intValue(), "pi"));
            }
        }
    }

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(Context context) {
        zzaa.zzb(context, "Context must not be null");
        aDf.zzbm(context);
        Context remoteContext = zze.getRemoteContext(context);
        if (remoteContext == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (zzaox) {
            try {
                if (aDg == null) {
                    zzdv(remoteContext);
                }
                aDg.invoke(null, remoteContext);
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.e("ProviderInstaller", valueOf.length() != 0 ? "Failed to install provider: ".concat(valueOf) : new String("Failed to install provider: "));
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        zzaa.zzb(context, "Context must not be null");
        zzaa.zzb(providerInstallListener, "Listener must not be null");
        zzaa.zzhs("Must be called on the UI thread");
        new AsyncTask<Void, Void, Integer>() { // from class: com.google.android.gms.security.ProviderInstaller.1
            final /* synthetic */ ProviderInstallListener aDh;
            final /* synthetic */ Context zzang;

            AsyncTaskC14221(Context context2, ProviderInstallListener providerInstallListener2) {
                context = context2;
                providerInstallListener = providerInstallListener2;
            }

            @Override // android.os.AsyncTask
            /* renamed from: zzc */
            public Integer doInBackground(Void... voidArr) {
                try {
                    ProviderInstaller.installIfNeeded(context);
                    return 0;
                } catch (GooglePlayServicesNotAvailableException e) {
                    return Integer.valueOf(e.errorCode);
                } catch (GooglePlayServicesRepairableException e2) {
                    return Integer.valueOf(e2.getConnectionStatusCode());
                }
            }

            @Override // android.os.AsyncTask
            /* renamed from: zzg */
            public void onPostExecute(Integer num) {
                if (num.intValue() == 0) {
                    providerInstallListener.onProviderInstalled();
                } else {
                    providerInstallListener.onProviderInstallFailed(num.intValue(), ProviderInstaller.aDf.zzb(context, num.intValue(), "pi"));
                }
            }
        }.execute(new Void[0]);
    }

    private static void zzdv(Context context) {
        aDg = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
    }
}
