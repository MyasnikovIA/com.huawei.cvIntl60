package GeneralFunction.p005e;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;

/* renamed from: GeneralFunction.e.f */
/* loaded from: classes.dex */
public class C0062f {

    /* renamed from: c */
    private static long f506c = -1;

    /* renamed from: a */
    public static final a[] f504a = {new a("_id", "INT"), new a("FileName", "TEXT"), new a("FilePath", "TEXT"), new a("FileSize", "INT"), new a("FileType", "INT"), new a("Orientation", "INT"), new a("Width", "INT"), new a("Height", "INT"), new a("VideoDurationTime", "INT"), new a("CaptureTime", "INT"), new a("DownloadTime", "INT"), new a("GroupIndex", "INT"), new a("FileIndexInGroup", "INT"), new a("HaveTN", "INT"), new a("HaveLRG", "INT"), new a("HaveQuickView", "INT"), new a("IsCaptureDuringAppON", "INT"), new a("IsFileProtected", "INT"), new a("Is360File", "INT"), new a("Have360Stitch", "INT"), new a("Reserved", "TEXT"), new a("IsSDCard", "INT"), new a("IsMyAlbum", "INT")};

    /* renamed from: b */
    public static final a[] f505b = {new a("_id", "INT"), new a("FileName", "TEXT"), new a("FilePath", "TEXT"), new a("FileSize", "INT"), new a("FileType", "INT"), new a("Orientation", "INT"), new a("Width", "INT"), new a("Height", "INT"), new a("VideoDurationTime", "INT"), new a("CaptureTime", "INT"), new a("DownloadTime", "INT"), new a("GroupIndex", "INT"), new a("FileIndexInGroup", "INT"), new a("Is360File", "INT"), new a("Have360Stitch", "INT"), new a("IsSDCard", "INT"), new a("IsMyAlbum", "INT")};

    /* renamed from: GeneralFunction.e.f$a */
    public static class a {

        /* renamed from: a */
        public String f507a;

        /* renamed from: b */
        public String f508b;

        public a(String str, String str2) {
            this.f507a = null;
            this.f508b = null;
            this.f507a = str;
            this.f508b = str2;
        }
    }

    /* renamed from: a */
    public String m574a(boolean z) {
        return z ? " AND CaptureTime>=" + m565c("" + f506c) : "CaptureTime>=" + m565c("" + f506c);
    }

    /* renamed from: a */
    public void m576a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, long j, int i, int i2, int i3, int i4, long j2, long j3, long j4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("FileName", str2);
        contentValues.put("FilePath", str3);
        contentValues.put("FileSize", Long.valueOf(j));
        contentValues.put("FileType", Integer.valueOf(i));
        contentValues.put("Orientation", Integer.valueOf(i2));
        contentValues.put("Width", Integer.valueOf(i3));
        contentValues.put("Height", Integer.valueOf(i4));
        contentValues.put("VideoDurationTime", Long.valueOf(j2));
        contentValues.put("CaptureTime", Long.valueOf(j3));
        contentValues.put("DownloadTime", Long.valueOf(j4));
        contentValues.put("GroupIndex", Integer.valueOf(i5));
        contentValues.put("FileIndexInGroup", Integer.valueOf(i6));
        contentValues.put("HaveTN", Integer.valueOf(i7));
        contentValues.put("HaveLRG", Integer.valueOf(i8));
        contentValues.put("HaveQuickView", Integer.valueOf(i9));
        contentValues.put("IsCaptureDuringAppON", Integer.valueOf(i10));
        contentValues.put("IsFileProtected", Integer.valueOf(i11));
        contentValues.put("Is360File", Integer.valueOf(i12));
        contentValues.put("Have360Stitch", Integer.valueOf(i13));
        contentValues.put("Reserved", "");
        contentValues.put("IsSDCard", Integer.valueOf(i14));
        contentValues.put("IsMyAlbum", Integer.valueOf(i15));
        sQLiteDatabase.insert(str, null, contentValues);
    }

    /* renamed from: a */
    public long m571a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query = sQLiteDatabase.query(str, new String[]{"CaptureTime", "FileName"}, null, null, null, null, "CaptureTime ASC");
        int count = query.getCount();
        int i = 5000 >= count ? 0 : count - 5000;
        if (i == 0) {
            f506c = 0L;
            return 0L;
        }
        query.moveToPosition(i);
        long j = query.getLong(query.getColumnIndex("CaptureTime"));
        query.close();
        f506c = j;
        return j;
    }

    /* renamed from: a */
    public ArrayList<String> m575a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, int i, int i2) {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, "IsSDCard = ? AND IsMyAlbum = ? AND GroupIndex >= ? AND GroupIndex <= ?", new String[]{str3, "0", m565c("" + i), m565c("" + i2)}, null, null, null);
        if (query.moveToFirst()) {
            int i3 = 0;
            while (!query.isAfterLast()) {
                arrayList.add(query.getString(query.getColumnIndex(str2)));
                query.moveToNext();
                i3++;
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public ArrayList<String> m580b(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, int i, int i2) {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, "IsMyAlbum = ? AND GroupIndex >= ? AND GroupIndex <= ?", new String[]{str3, m565c("" + i), m565c("" + i2)}, null, null, null);
        if (query.moveToFirst()) {
            int i3 = 0;
            while (!query.isAfterLast()) {
                arrayList.add(query.getString(query.getColumnIndex(str2)));
                query.moveToNext();
                i3++;
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public int m579b(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query = sQLiteDatabase.query(str, new String[]{m564b("GroupIndex")}, m574a(false), null, null, null, null);
        int i = 0;
        while (query.moveToNext()) {
            i = query.getInt(query.getColumnIndex(m564b("GroupIndex")));
        }
        query.close();
        return i;
    }

    /* renamed from: a */
    public Cursor m573a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        return sQLiteDatabase.query(str, new String[]{"GroupIndex", m562a("FileIndexInGroup"), "IsSDCard", "IsMyAlbum"}, m574a(false), null, "GroupIndex", m562a("FileIndexInGroup") + " >=0", str2 + " " + str3);
    }

    /* renamed from: a */
    public Cursor m572a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        return sQLiteDatabase.query(str, m563a(), m574a(false), null, null, null, "GroupIndex " + str2 + ",FileIndexInGroup " + str2);
    }

    /* renamed from: a */
    public void m577a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4, String str5) {
        sQLiteDatabase.delete(str, str2 + "=" + m565c(str3) + " AND " + str4 + "=" + m565c(str5), null);
    }

    /* renamed from: b */
    public boolean m581b(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4, String str5) {
        boolean z;
        Cursor query = sQLiteDatabase.query(str, new String[]{"_id"}, str2 + "=" + m565c(str3) + " AND " + str4 + "=" + m565c(str5), null, null, null, null);
        if (query.getCount() > 0) {
            z = true;
        } else {
            z = false;
        }
        query.close();
        return z;
    }

    /* renamed from: a */
    public void m578a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        ContentValues contentValues = new ContentValues();
        if (m566d(str7)) {
            contentValues.put(str6, Integer.valueOf(m569g(str7)));
        } else {
            contentValues.put(str6, str7);
        }
        sQLiteDatabase.update(str, contentValues, str2 + " = " + m565c(str3) + " AND " + str4 + " = " + m565c(str5), null);
    }

    /* renamed from: a */
    private static String[] m563a() {
        String[] strArr = new String[f505b.length];
        for (int i = 0; i < f505b.length; i++) {
            strArr[i] = f505b[i].f507a;
        }
        return strArr;
    }

    /* renamed from: a */
    public static String m562a(String str) {
        return "MIN(" + str + ")";
    }

    /* renamed from: b */
    public static String m564b(String str) {
        return "MAX(" + str + ")";
    }

    /* renamed from: c */
    private String m565c(String str) {
        if (m567e(str)) {
            return "" + str;
        }
        if (m568f(str)) {
            return "" + m570h(str);
        }
        return "'" + str + "'";
    }

    /* renamed from: d */
    private boolean m566d(String str) {
        return m567e(str) || m568f(str);
    }

    /* renamed from: e */
    private boolean m567e(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* renamed from: f */
    private boolean m568f(String str) {
        return str.toLowerCase().equals("true") || str.toLowerCase().equals("false");
    }

    /* renamed from: g */
    private int m569g(String str) {
        return m567e(str) ? Integer.parseInt(str) : m570h(str);
    }

    /* renamed from: h */
    private int m570h(String str) {
        return str.toLowerCase().equals("true") ? 1 : 0;
    }
}
