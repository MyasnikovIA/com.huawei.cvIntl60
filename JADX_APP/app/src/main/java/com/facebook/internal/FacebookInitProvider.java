package com.facebook.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.facebook.C1074k;

/* loaded from: classes.dex */
public final class FacebookInitProvider extends ContentProvider {

    /* renamed from: a */
    private static final String f5426a = FacebookInitProvider.class.getSimpleName();

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            C1074k.m6169a(getContext());
            return false;
        } catch (Exception e) {
            Log.i(f5426a, "Failed to auto initialize the Facebook SDK", e);
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
