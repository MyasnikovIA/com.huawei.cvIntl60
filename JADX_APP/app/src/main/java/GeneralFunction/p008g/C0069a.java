package GeneralFunction.p008g;

import GeneralFunction.C0052d;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: GeneralFunction.g.a */
/* loaded from: classes.dex */
public class C0069a {

    /* renamed from: a */
    private static String f558a = null;

    /* renamed from: a */
    public static String m638a() {
        if (f558a == null) {
            if (new File("/storage/emulated/0").exists()) {
                f558a = "/storage/emulated/0";
                return f558a;
            }
            String[] list = new File("/storage").list();
            C0052d.m465a("FS_API", "Can't find internal path, exist path as following!", 0);
            for (int i = 0; i < list.length; i++) {
                C0052d.m465a("FS_API", "[" + i + "]" + list[i], 0);
            }
            f558a = Environment.getExternalStorageDirectory().getPath();
            return f558a;
        }
        return f558a;
    }

    /* renamed from: a */
    public static boolean m643a(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("mov") || lowerCase.contains("mp4") || lowerCase.contains("avi");
    }

    /* renamed from: a */
    public static String m640a(String str, String str2) {
        String str3 = null;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!new File(str + str2).exists()) {
            return str + str2;
        }
        for (int i = 1; i < 100; i++) {
            str3 = str + (str2.substring(0, str2.lastIndexOf(".")) + "(" + i + ")" + str2.substring(str2.lastIndexOf(".")));
            if (!new File(str3).exists()) {
                return str3;
            }
        }
        return str3;
    }

    /* renamed from: b */
    public static String m644b(String str) {
        return m640a(str.substring(0, str.lastIndexOf("/") + 1), str.substring(str.lastIndexOf("/") + 1, str.length()));
    }

    /* renamed from: a */
    public static String m639a(Long l, String str) {
        return "PIC_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(l.longValue())) + "." + str;
    }

    /* renamed from: c */
    public static String m646c(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 1, str.length()).toLowerCase();
        }
        return null;
    }

    /* renamed from: b */
    public static String m645b(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf + 1) + str2;
        }
        return null;
    }

    /* renamed from: d */
    public static String m649d(String str) {
        int lastIndexOf;
        String str2;
        C0052d.m465a("FS_API", "ChangeVideoNameToThmName input result:" + str, 4);
        int lastIndexOf2 = str.lastIndexOf(46);
        boolean contains = str.toLowerCase().contains("thm");
        if (lastIndexOf2 != -1 && !contains) {
            String substring = str.substring(str.lastIndexOf(47) + 1, lastIndexOf2);
            if (str.contains("/Android/data/com.huawei.cvIntl60/")) {
                lastIndexOf = str.lastIndexOf("/Android/data/com.huawei.cvIntl60/");
            } else {
                lastIndexOf = str.contains("DCIM/CV60/") ? str.toUpperCase().lastIndexOf("/DCIM/CV60/") : -1;
            }
            if (lastIndexOf != -1) {
                String substring2 = str.substring(0, lastIndexOf);
                File file = new File(substring2 + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/");
                if (!file.exists()) {
                    C0052d.m465a("FS_API", "video thumbnail mkdir result: " + file.mkdirs(), 3);
                }
                str2 = substring2 + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/" + substring + "_thm.jpg";
            } else {
                str2 = str.substring(0, lastIndexOf2) + "_thm.jpg";
            }
            str = str2;
        }
        C0052d.m465a("FS_API", "ChangeVideoNameToThmName output result:" + str, 4);
        return str;
    }

    /* renamed from: c */
    public static void m647c(String str, String str2) {
        if (str == null) {
            C0052d.m465a("FS_API", "Null srcPath!! Skip FileCopy. srcPath: " + str, 0);
            return;
        }
        if (str2 == null) {
            C0052d.m465a("FS_API", "Null dstPath!! Skip FileCopy. dstPath: " + str2, 0);
            return;
        }
        File file = new File(str);
        File file2 = new File(str2);
        if (!file.exists()) {
            C0052d.m465a("FS_API", "FileCopy err: src not exist! " + str, 1);
        }
        if (file2.exists()) {
            file2.delete();
        }
        FileChannel channel = new FileInputStream(file).getChannel();
        FileChannel channel2 = new FileOutputStream(file2).getChannel();
        channel2.transferFrom(channel, 0L, channel.size());
        channel2.force(true);
        channel.close();
        channel2.close();
    }

    /* renamed from: a */
    public static void m642a(String str, Context context) {
        File file = new File(str);
        String lowerCase = str.substring(str.lastIndexOf(".") + 1).toLowerCase();
        if (lowerCase.equals("jpg")) {
            String[] strArr = {"_id"};
            String[] strArr2 = {str};
            if (Uri.fromFile(file) != null) {
                Cursor query = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "_data=?", strArr2, null);
                if (query != null && query.moveToFirst()) {
                    context.getContentResolver().delete(ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, query.getLong(query.getColumnIndexOrThrow("_id"))), null, null);
                } else {
                    file.delete();
                }
                if (query != null) {
                    query.close();
                }
            }
        } else if (m643a(lowerCase)) {
            String[] strArr3 = {"_id"};
            String[] strArr4 = {str};
            if (Uri.fromFile(file) != null) {
                Cursor query2 = context.getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, strArr3, "_data=?", strArr4, null);
                if (query2 != null && query2.moveToFirst()) {
                    context.getContentResolver().delete(ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, query2.getLong(query2.getColumnIndexOrThrow("_id"))), null, null);
                } else {
                    file.delete();
                }
                if (query2 != null) {
                    query2.close();
                }
            }
        } else {
            file.delete();
        }
        context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file)));
    }

    /* renamed from: e */
    public static Bitmap m650e(String str) {
        if (!new File(str).exists()) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L);
            mediaMetadataRetriever.release();
            if (frameAtTime == null) {
                C0052d.m465a("FS_API", "Can not get first frame:" + str, 1);
                return null;
            }
            int width = frameAtTime.getWidth();
            int height = frameAtTime.getHeight();
            Matrix matrix = new Matrix();
            matrix.postScale(960.0f / width, 480.0f / height);
            Bitmap createBitmap = Bitmap.createBitmap(frameAtTime, 0, 0, width, height, matrix, false);
            if (frameAtTime != createBitmap) {
                frameAtTime.recycle();
            }
            return createBitmap;
        } catch (IllegalArgumentException e) {
            mediaMetadataRetriever.release();
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public static int m648d(String str, String str2) {
        Bitmap m650e = m650e(str);
        if (m650e == null) {
            C0052d.m465a("FS_API", "Can not get first frame:" + str, 1);
            return -1;
        }
        File file = new File(str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
                return -1;
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            m650e.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            m650e.recycle();
            try {
                fileOutputStream.flush();
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                return 0;
            } catch (IOException e2) {
                e2.printStackTrace();
                return -1;
            }
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return -1;
        }
    }

    /* renamed from: a */
    public static void m641a(Context context, String str) {
        MediaScannerConnection.scanFile(context, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: GeneralFunction.g.a.1
            AnonymousClass1() {
            }

            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str2, Uri uri) {
            }
        });
    }

    /* renamed from: GeneralFunction.g.a$1 */
    static class AnonymousClass1 implements MediaScannerConnection.OnScanCompletedListener {
        AnonymousClass1() {
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str2, Uri uri) {
        }
    }
}
