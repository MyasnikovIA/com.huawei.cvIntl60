// com.huawei.cvIntl60/smali/GeneralFunction/g/a.smali

package GeneralFunction.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;

public class a {
    private static String a;

    static {
        a = null;
    }

    public static String a() {
        if (a == null) {
            File file = new File("/storage/emulated/0");
            if (file.exists()) {
                a = "/storage/emulated/0";
                return a;
            }
            String[] list = new File("/storage").list();
            if (list != null) {
                for (int i = 0; i < list.length; i++) {
                    d.a("FS_API", "[" + i + "]" + list[i], 0);
                }
            }
            a = android.os.Environment.getExternalStorageDirectory().getPath();
        }
        return a;
    }

    public static String a(Long l, String str) {
        String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(l.longValue()));
        return "PANO_" + format + "." + str;
    }

    public static String a(String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str + str2);
        if (!file2.exists()) {
            return str + str2;
        }
        int i = 1;
        while (i < 100) {
            String substring = str2.substring(0, str2.lastIndexOf("."));
            String substring2 = str2.substring(str2.lastIndexOf("."));
            String str3 = substring + "(" + i + ")" + substring2;
            String str4 = str + str3;
            if (!new File(str4).exists()) {
                return str4;
            }
            i++;
        }
        return null;
    }

    public static void a(Context context, String str) {
        MediaScannerConnection.scanFile(context, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() {
            public void onScanCompleted(String str, Uri uri) {
            }
        });
    }

    public static void a(String str, Context context) {
        File file = new File(str);
        String toLowerCase = str.substring(str.lastIndexOf(".") + 1).toLowerCase();
        if (toLowerCase.equals("jpg")) {
            Uri fromFile = Uri.fromFile(file);
            String[] strArr = new String[]{"_id"};
            String str2 = "_data=?";
            String[] strArr2 = new String[]{str};
            if (fromFile != null) {
                android.database.Cursor query = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, str2, strArr2, null);
                if (query != null && query.moveToFirst()) {
                    long j = query.getLong(query.getColumnIndexOrThrow("_id"));
                    context.getContentResolver().delete(ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j), null, null);
                } else {
                    file.delete();
                }
                if (query != null) {
                    query.close();
                }
            }
        } else if (a(toLowerCase)) {
            Uri fromFile2 = Uri.fromFile(file);
            String[] strArr3 = new String[]{"_id"};
            String str3 = "_data=?";
            String[] strArr4 = new String[]{str};
            if (fromFile2 != null) {
                android.database.Cursor query2 = context.getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, strArr3, str3, strArr4, null);
                if (query2 != null && query2.moveToFirst()) {
                    long j2 = query2.getLong(query2.getColumnIndexOrThrow("_id"));
                    context.getContentResolver().delete(ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, j2), null, null);
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

    public static boolean a(String str) {
        String toLowerCase = str.toLowerCase();
        return toLowerCase.contains("mov") || toLowerCase.contains("mp4") || toLowerCase.contains("avi");
    }

    public static String b(String str) {
        int lastIndexOf = str.lastIndexOf("/") + 1;
        return a(str.substring(0, lastIndexOf), str.substring(lastIndexOf));
    }

    public static String b(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf + 1) + str2;
        }
        return null;
    }

    public static String c(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 1).toLowerCase();
        }
        return null;
    }

    public static void c(String str, String str2) {
        if (str == null) {
            d.a("FS_API", "Null srcPath!! Skip FileCopy. srcPath: " + str, 0);
        } else if (str2 == null) {
            d.a("FS_API", "Null dstPath!! Skip FileCopy. dstPath: " + str2, 0);
        } else {
            File file = new File(str);
            File file2 = new File(str2);
            if (!file.exists()) {
                d.a("FS_API", "FileCopy err: src not exist! " + str, 1);
            }
            if (file2.exists()) {
                file2.delete();
            }
            try {
                FileChannel channel = new FileInputStream(file).getChannel();
                FileChannel channel2 = new FileOutputStream(file2).getChannel();
                channel2.transferFrom(channel, 0, channel.size());
                channel2.force(true);
                channel.close();
                channel2.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static int d(String str, String str2) {
        Bitmap e = e(str);
        if (e == null) {
            d.a("FS_API", "Can not get first frame:" + str, 1);
            return -1;
        }
        File file = new File(str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
                return -1;
            }
        }
        try {

            /*.line 394*/ FileOutputStream fileOutputStream = new FileOutputStream(file);
            /*.line 397  -- вставить код */
            /*.line 398  -- вставить код */
            /* .line 399 */ e.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            e.recycle();
            /*.line 401  -- вставить код */
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            return 0;
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return -1;
        } catch (IOException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public static String d(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            String substring = str.substring(0, lastIndexOf);
            if (!str.toLowerCase().contains("thm")) {
                int lastIndexOf2 = str.lastIndexOf("/") + 1;
                String substring2 = str.substring(lastIndexOf2, lastIndexOf);
                int lastIndexOf3 = str.contains("/Android/data/com.huawei.cvIntl60/") ? str.lastIndexOf("/Android/data/com.huawei.cvIntl60/") : str.toUpperCase().contains("/DCIM/PANORAMA_HUAWEI/") ? str.toUpperCase().lastIndexOf("/DCIM/PANORAMA_HUAWEI/") : -1;
                if (lastIndexOf3 != -1) {
                    String substring3 = str.substring(0, lastIndexOf3);
                    File file = new File(substring3 + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/");
                    if (!file.exists()) {
                        boolean mkdirs = file.mkdirs();
                        d.a("FS_API", "video thumbnail mkdir result: " + mkdirs, 3);
                    }
                    return substring3 + "/Android/data/com.huawei.cvIntl60/VideoThumbnail/" + substring2 + "_thm.jpg";
                }
                return substring + "_thm.jpg";
            }
        }
        return str;
    }

    public static Bitmap e(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0);
            mediaMetadataRetriever.release();
            if (frameAtTime == null) {
                d.a("FS_API", "Can not get first frame:" + str, 1);
                return null;
            }
            int width = frameAtTime.getWidth();
            int height = frameAtTime.getHeight();
            float f = 960.0f / ((float) width);
            float f2 = 480.0f / ((float) height);
            Matrix matrix = new Matrix();
            matrix.postScale(f, f2);
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
}