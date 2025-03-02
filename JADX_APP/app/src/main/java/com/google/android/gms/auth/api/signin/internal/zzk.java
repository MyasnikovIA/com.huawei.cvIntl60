package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.zzaa;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes.dex */
public class zzk {

    /* renamed from: jS */
    private static final Lock f6105jS = new ReentrantLock();

    /* renamed from: jT */
    private static zzk f6106jT;

    /* renamed from: jU */
    private final Lock f6107jU = new ReentrantLock();

    /* renamed from: jV */
    private final SharedPreferences f6108jV;

    zzk(Context context) {
        this.f6108jV = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static zzk zzba(Context context) {
        zzaa.zzy(context);
        f6105jS.lock();
        try {
            if (f6106jT == null) {
                f6106jT = new zzk(context.getApplicationContext());
            }
            return f6106jT;
        } finally {
            f6105jS.unlock();
        }
    }

    private String zzx(String str, String str2) {
        String valueOf = String.valueOf(":");
        return new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString();
    }

    void zza(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzaa.zzy(googleSignInAccount);
        zzaa.zzy(googleSignInOptions);
        String zzaip = googleSignInAccount.zzaip();
        zzw(zzx("googleSignInAccount", zzaip), googleSignInAccount.zzair());
        zzw(zzx("googleSignInOptions", zzaip), googleSignInOptions.zzaiq());
    }

    public GoogleSignInAccount zzajm() {
        return zzgd(zzgf("defaultGoogleSignInAccount"));
    }

    public GoogleSignInOptions zzajn() {
        return zzge(zzgf("defaultGoogleSignInAccount"));
    }

    public void zzajo() {
        String zzgf = zzgf("defaultGoogleSignInAccount");
        zzgh("defaultGoogleSignInAccount");
        zzgg(zzgf);
    }

    public void zzb(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzaa.zzy(googleSignInAccount);
        zzaa.zzy(googleSignInOptions);
        zzw("defaultGoogleSignInAccount", googleSignInAccount.zzaip());
        zza(googleSignInAccount, googleSignInOptions);
    }

    GoogleSignInAccount zzgd(String str) {
        String zzgf;
        if (TextUtils.isEmpty(str) || (zzgf = zzgf(zzx("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zzfz(zzgf);
        } catch (JSONException e) {
            return null;
        }
    }

    GoogleSignInOptions zzge(String str) {
        String zzgf;
        if (TextUtils.isEmpty(str) || (zzgf = zzgf(zzx("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zzgb(zzgf);
        } catch (JSONException e) {
            return null;
        }
    }

    protected String zzgf(String str) {
        this.f6107jU.lock();
        try {
            return this.f6108jV.getString(str, null);
        } finally {
            this.f6107jU.unlock();
        }
    }

    void zzgg(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgh(zzx("googleSignInAccount", str));
        zzgh(zzx("googleSignInOptions", str));
    }

    protected void zzgh(String str) {
        this.f6107jU.lock();
        try {
            this.f6108jV.edit().remove(str).apply();
        } finally {
            this.f6107jU.unlock();
        }
    }

    protected void zzw(String str, String str2) {
        this.f6107jU.lock();
        try {
            this.f6108jV.edit().putString(str, str2).apply();
        } finally {
            this.f6107jU.unlock();
        }
    }
}
