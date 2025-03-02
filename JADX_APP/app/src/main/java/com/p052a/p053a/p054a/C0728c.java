package com.p052a.p053a.p054a;

import com.google.android.exoplayer.C1167C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* renamed from: com.a.a.a.c */
/* loaded from: classes.dex */
final class C0728c {

    /* renamed from: a */
    static final Charset f4005a = Charset.forName("US-ASCII");

    /* renamed from: b */
    static final Charset f4006b = Charset.forName(C1167C.UTF8_NAME);

    /* renamed from: a */
    static void m4503a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m4503a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    /* renamed from: a */
    static void m4502a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }
}
