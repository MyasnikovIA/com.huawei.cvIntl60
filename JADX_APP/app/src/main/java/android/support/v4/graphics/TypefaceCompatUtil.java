package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.os.StrictMode;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    @Nullable
    public static File getTempFile(Context context) {
        String str = CACHE_FILE_PREFIX + Process.myPid() + "-" + Process.myTid() + "-";
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 100) {
                File file = new File(context.getCacheDir(), str + i2);
                if (!file.createNewFile()) {
                    i = i2 + 1;
                } else {
                    return file;
                }
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0031  */
    @android.support.annotation.RequiresApi(19)
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.nio.ByteBuffer mmap(java.io.File r9) {
        /*
            r6 = 0
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.IOException -> L24
            r7.<init>(r9)     // Catch: java.io.IOException -> L24
            r8 = 0
            java.nio.channels.FileChannel r0 = r7.getChannel()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L40
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L40
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L40
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L40
            if (r7 == 0) goto L1e
            if (r6 == 0) goto L27
            r7.close()     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L24
        L1e:
            return r0
        L1f:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L24
            goto L1e
        L24:
            r0 = move-exception
            r0 = r6
            goto L1e
        L27:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L1e
        L2b:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L2d
        L2d:
            r1 = move-exception
            r2 = r0
        L2f:
            if (r7 == 0) goto L36
            if (r2 == 0) goto L3c
            r7.close()     // Catch: java.io.IOException -> L24 java.lang.Throwable -> L37
        L36:
            throw r1     // Catch: java.io.IOException -> L24
        L37:
            r0 = move-exception
            r2.addSuppressed(r0)     // Catch: java.io.IOException -> L24
            goto L36
        L3c:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L36
        L40:
            r0 = move-exception
            r1 = r0
            r2 = r6
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(java.io.File):java.nio.ByteBuffer");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x005c  */
    @android.support.annotation.RequiresApi(19)
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.nio.ByteBuffer mmap(android.content.Context r11, android.os.CancellationSignal r12, android.net.Uri r13) {
        /*
            r6 = 0
            android.content.ContentResolver r0 = r11.getContentResolver()
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r7 = r0.openFileDescriptor(r13, r1, r12)     // Catch: java.io.IOException -> L1c
            r8 = 0
            if (r7 != 0) goto L23
            if (r7 == 0) goto L15
            if (r6 == 0) goto L1f
            r7.close()     // Catch: java.lang.Throwable -> L17 java.io.IOException -> L1c
        L15:
            r0 = r6
        L16:
            return r0
        L17:
            r0 = move-exception
            r8.addSuppressed(r0)     // Catch: java.io.IOException -> L1c
            goto L15
        L1c:
            r0 = move-exception
            r0 = r6
            goto L16
        L1f:
            r7.close()     // Catch: java.io.IOException -> L1c
            goto L15
        L23:
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            java.io.FileDescriptor r0 = r7.getFileDescriptor()     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            r10 = 0
            java.nio.channels.FileChannel r0 = r9.getChannel()     // Catch: java.lang.Throwable -> L6e java.lang.Throwable -> L8c
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L6e java.lang.Throwable -> L8c
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L6e java.lang.Throwable -> L8c
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L6e java.lang.Throwable -> L8c
            if (r9 == 0) goto L44
            if (r6 == 0) goto L62
            r9.close()     // Catch: java.lang.Throwable -> L51 java.lang.Throwable -> L66
        L44:
            if (r7 == 0) goto L16
            if (r6 == 0) goto L6a
            r7.close()     // Catch: java.io.IOException -> L1c java.lang.Throwable -> L4c
            goto L16
        L4c:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L1c
            goto L16
        L51:
            r1 = move-exception
            r10.addSuppressed(r1)     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            goto L44
        L56:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L58
        L58:
            r1 = move-exception
            r2 = r0
        L5a:
            if (r7 == 0) goto L61
            if (r2 == 0) goto L88
            r7.close()     // Catch: java.io.IOException -> L1c java.lang.Throwable -> L83
        L61:
            throw r1     // Catch: java.io.IOException -> L1c
        L62:
            r9.close()     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            goto L44
        L66:
            r0 = move-exception
            r1 = r0
            r2 = r6
            goto L5a
        L6a:
            r7.close()     // Catch: java.io.IOException -> L1c
            goto L16
        L6e:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L70
        L70:
            r1 = move-exception
            r2 = r0
        L72:
            if (r9 == 0) goto L79
            if (r2 == 0) goto L7f
            r9.close()     // Catch: java.lang.Throwable -> L66 java.lang.Throwable -> L7a
        L79:
            throw r1     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
        L7a:
            r0 = move-exception
            r2.addSuppressed(r0)     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            goto L79
        L7f:
            r9.close()     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L66
            goto L79
        L83:
            r0 = move-exception
            r2.addSuppressed(r0)     // Catch: java.io.IOException -> L1c
            goto L61
        L88:
            r7.close()     // Catch: java.io.IOException -> L1c
            goto L61
        L8c:
            r0 = move-exception
            r1 = r0
            r2 = r6
            goto L72
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @RequiresApi(19)
    @Nullable
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        ByteBuffer byteBuffer = null;
        File tempFile = getTempFile(context);
        if (tempFile != null) {
            try {
                if (copyToFile(tempFile, resources, i)) {
                    byteBuffer = mmap(tempFile);
                }
            } finally {
                tempFile.delete();
            }
        }
        return byteBuffer;
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e) {
                e = e;
                fileOutputStream = null;
            } catch (Throwable th) {
                th = th;
                closeQuietly(null);
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
                throw th;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        closeQuietly(fileOutputStream);
                        StrictMode.setThreadPolicy(allowThreadDiskWrites);
                        return true;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (IOException e2) {
                e = e2;
                Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
                closeQuietly(fileOutputStream);
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            closeQuietly(null);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream = null;
        try {
            inputStream = resources.openRawResource(i);
            return copyToFile(file, inputStream);
        } finally {
            closeQuietly(inputStream);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
