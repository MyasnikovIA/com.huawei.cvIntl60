package GeneralFunction.p005e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* renamed from: GeneralFunction.e.g */
/* loaded from: classes.dex */
public class C0063g extends SQLiteOpenHelper {

    /* renamed from: a */
    private static int f509a = 0;

    /* renamed from: b */
    private static String f510b = "Default";

    public C0063g(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        f509a = i;
        f510b = str;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        String str = "";
        for (int i = 1; i < C0062f.f504a.length; i++) {
            str = str + ", " + C0062f.f504a[i].f507a + " " + C0062f.f504a[i].f508b;
        }
        sQLiteDatabase.execSQL(m582a("PhonePicture_INF", str));
        sQLiteDatabase.execSQL(m582a("CameraPicture_INF", str));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* renamed from: a */
    private String m582a(String str, String str2) {
        return (str.isEmpty() || str2.isEmpty()) ? "" : "CREATE TABLE IF NOT EXISTS " + str + "( _id INTEGER PRIMARY KEY AUTOINCREMENT" + str2 + ");";
    }
}
