package com.p052a.p053a.p057d.p058a.p059a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.p052a.p053a.p057d.C0883g;
import com.p052a.p053a.p057d.InterfaceC0882f;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* renamed from: com.a.a.d.a.a.e */
/* loaded from: classes.dex */
class C0747e {

    /* renamed from: a */
    private static final C0743a f4167a = new C0743a();

    /* renamed from: b */
    private final C0743a f4168b;

    /* renamed from: c */
    private final InterfaceC0746d f4169c;

    /* renamed from: d */
    private final InterfaceC0762b f4170d;

    /* renamed from: e */
    private final ContentResolver f4171e;

    /* renamed from: f */
    private final List<InterfaceC0882f> f4172f;

    public C0747e(List<InterfaceC0882f> list, InterfaceC0746d interfaceC0746d, InterfaceC0762b interfaceC0762b, ContentResolver contentResolver) {
        this(list, f4167a, interfaceC0746d, interfaceC0762b, contentResolver);
    }

    public C0747e(List<InterfaceC0882f> list, C0743a c0743a, InterfaceC0746d interfaceC0746d, InterfaceC0762b interfaceC0762b, ContentResolver contentResolver) {
        this.f4168b = c0743a;
        this.f4169c = interfaceC0746d;
        this.f4170d = interfaceC0762b;
        this.f4171e = contentResolver;
        this.f4172f = list;
    }

    /* renamed from: a */
    public int m4628a(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f4171e.openInputStream(uri);
                int m5105b = C0883g.m5105b(this.f4172f, inputStream, this.f4170d);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return m5105b;
                    } catch (IOException e) {
                        return m5105b;
                    }
                }
                return m5105b;
            } catch (IOException | NullPointerException e2) {
                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                    Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e2);
                }
                return -1;
            }
        } finally {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                }
            }
        }
    }

    /* renamed from: b */
    public InputStream m4629b(Uri uri) {
        Cursor mo4627a = this.f4169c.mo4627a(uri);
        if (mo4627a != null) {
            try {
                if (mo4627a.moveToFirst()) {
                    String string = mo4627a.getString(0);
                    if (TextUtils.isEmpty(string)) {
                        if (mo4627a == null) {
                            return null;
                        }
                        mo4627a.close();
                        return null;
                    }
                    File m4614a = this.f4168b.m4614a(string);
                    Uri fromFile = (!this.f4168b.m4615a(m4614a) || this.f4168b.m4616b(m4614a) <= 0) ? null : Uri.fromFile(m4614a);
                    if (mo4627a != null) {
                        mo4627a.close();
                    }
                    if (fromFile == null) {
                        return null;
                    }
                    try {
                        return this.f4171e.openInputStream(fromFile);
                    } catch (NullPointerException e) {
                        throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + fromFile).initCause(e));
                    }
                }
            } finally {
                if (mo4627a != null) {
                    mo4627a.close();
                }
            }
        }
    }
}
