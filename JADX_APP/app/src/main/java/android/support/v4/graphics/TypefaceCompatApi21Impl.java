package android.support.v4.graphics;

import android.os.ParcelFileDescriptor;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    TypefaceCompatApi21Impl() {
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x004e  */
    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r7, android.os.CancellationSignal r8, @android.support.annotation.NonNull android.support.v4.provider.FontsContractCompat.FontInfo[] r9, int r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = r9.length
            r2 = 1
            if (r1 >= r2) goto L6
        L5:
            return r0
        L6:
            android.support.v4.provider.FontsContractCompat$FontInfo r1 = r6.findBestInfo(r9, r10)
            android.content.ContentResolver r2 = r7.getContentResolver()
            android.net.Uri r1 = r1.getUri()     // Catch: java.io.IOException -> L54
            java.lang.String r3 = "r"
            android.os.ParcelFileDescriptor r4 = r2.openFileDescriptor(r1, r3, r8)     // Catch: java.io.IOException -> L54
            r2 = 0
            java.io.File r1 = r6.getFile(r4)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            if (r1 == 0) goto L25
            boolean r3 = r1.canRead()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            if (r3 != 0) goto L7b
        L25:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            java.io.FileDescriptor r1 = r4.getFileDescriptor()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            r5 = 0
            android.graphics.Typeface r1 = super.createFromInputStream(r7, r3)     // Catch: java.lang.Throwable -> L67 java.lang.Throwable -> L9b
            if (r3 == 0) goto L3a
            if (r0 == 0) goto L56
            r3.close()     // Catch: java.lang.Throwable -> L43 java.lang.Throwable -> L5a
        L3a:
            if (r4 == 0) goto L41
            if (r0 == 0) goto L63
            r4.close()     // Catch: java.io.IOException -> L54 java.lang.Throwable -> L5e
        L41:
            r0 = r1
            goto L5
        L43:
            r3 = move-exception
            r5.addSuppressed(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            goto L3a
        L48:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L4a
        L4a:
            r2 = move-exception
            r3 = r1
        L4c:
            if (r4 == 0) goto L53
            if (r3 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L54 java.lang.Throwable -> L92
        L53:
            throw r2     // Catch: java.io.IOException -> L54
        L54:
            r1 = move-exception
            goto L5
        L56:
            r3.close()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            goto L3a
        L5a:
            r1 = move-exception
            r2 = r1
            r3 = r0
            goto L4c
        L5e:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L54
            goto L41
        L63:
            r4.close()     // Catch: java.io.IOException -> L54
            goto L41
        L67:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L69
        L69:
            r1 = move-exception
        L6a:
            if (r3 == 0) goto L71
            if (r2 == 0) goto L77
            r3.close()     // Catch: java.lang.Throwable -> L5a java.lang.Throwable -> L72
        L71:
            throw r1     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
        L72:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            goto L71
        L77:
            r3.close()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            goto L71
        L7b:
            android.graphics.Typeface r1 = android.graphics.Typeface.createFromFile(r1)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5a
            if (r4 == 0) goto L86
            if (r0 == 0) goto L8e
            r4.close()     // Catch: java.io.IOException -> L54 java.lang.Throwable -> L89
        L86:
            r0 = r1
            goto L5
        L89:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L54
            goto L86
        L8e:
            r4.close()     // Catch: java.io.IOException -> L54
            goto L86
        L92:
            r1 = move-exception
            r3.addSuppressed(r1)     // Catch: java.io.IOException -> L54
            goto L53
        L97:
            r4.close()     // Catch: java.io.IOException -> L54
            goto L53
        L9b:
            r1 = move-exception
            r2 = r0
            goto L6a
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }
}
