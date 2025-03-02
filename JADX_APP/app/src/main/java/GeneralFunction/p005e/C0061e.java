package GeneralFunction.p005e;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;

/* renamed from: GeneralFunction.e.e */
/* loaded from: classes.dex */
public class C0061e {

    /* renamed from: b */
    private C0063g f501b;

    /* renamed from: c */
    private SQLiteDatabase f502c;

    /* renamed from: a */
    private Cursor f500a = null;

    /* renamed from: d */
    private final C0076j f503d = new C0076j();

    /* renamed from: a */
    private void m548a(String str, int i) {
        C0052d.m465a(getClass().getSimpleName(), str, i);
    }

    public C0061e(Context context) {
        this.f503d.m739a();
        m547a(context);
        this.f502c = this.f501b.getWritableDatabase();
        this.f503d.m740b();
    }

    /* renamed from: a */
    private void m547a(Context context) {
        this.f501b = new C0063g(context, "PICO2nd_DB", null, 1);
    }

    /* renamed from: a */
    public Cursor m550a() {
        this.f503d.m739a();
        this.f503d.m740b();
        return this.f500a;
    }

    /* renamed from: a */
    private void m546a(C0058b c0058b, int i) {
        C0057a c0057a = new C0057a();
        c0057a.f490b = i;
        c0058b.f492a.add(c0057a);
        C0059c c0059c = new C0059c();
        c0059c.f494a = c0058b.f492a.size() - 1;
        c0058b.f493b.put(Integer.valueOf(i), c0059c);
    }

    /* renamed from: a */
    private int m544a(C0058b c0058b, int i, int i2, int i3) {
        C0059c c0059c = c0058b.f493b.get(Integer.valueOf(i));
        if (c0059c == null) {
            m548a("Error: Group Map Get Null " + i, 4);
            this.f503d.m740b();
            return -1;
        }
        C0057a c0057a = c0058b.f492a.get(c0059c.f494a);
        if (c0057a.f489a == -1) {
            c0057a.f489a = i3;
            c0057a.f491c.add(Integer.valueOf(i2));
        } else {
            c0057a.f491c.add(Integer.valueOf(i2));
        }
        return 0;
    }

    /* renamed from: a */
    public int m549a(int i, C0058b c0058b, C0058b c0058b2, C0058b c0058b3) {
        Cursor m573a;
        this.f503d.m739a();
        long currentTimeMillis = System.currentTimeMillis();
        C0062f c0062f = new C0062f();
        c0062f.m571a(this.f502c, "PhonePicture_INF");
        this.f500a = c0062f.m572a(this.f502c, "PhonePicture_INF", "ASC");
        if (this.f500a == null) {
            m548a("Error: LocalAllFileCursor is not init", 0);
            this.f503d.m740b();
            return -1;
        }
        Cursor cursor = this.f500a;
        if (i == 1) {
            m573a = c0062f.m573a(this.f502c, "PhonePicture_INF", "DownloadTime", "DESC");
        } else {
            m573a = c0062f.m573a(this.f502c, "PhonePicture_INF", "DownloadTime", "ASC");
        }
        c0058b.m481a();
        c0058b2.m481a();
        c0058b3.m481a();
        if (!m573a.moveToFirst()) {
            m548a("Error: Database Group Empty", 0);
            this.f503d.m740b();
            return -2;
        }
        int i2 = 0;
        int columnIndex = m573a.getColumnIndex("GroupIndex");
        int columnIndex2 = m573a.getColumnIndex("IsSDCard");
        int columnIndex3 = m573a.getColumnIndex("IsMyAlbum");
        do {
            int parseInt = Integer.parseInt(m573a.getString(columnIndex));
            m548a("GroupCursor[" + i2 + "]lGroupIndex:" + parseInt + " " + m573a.getInt(columnIndex2) + " " + m573a.getInt(columnIndex3), 4);
            if (m573a.getInt(columnIndex2) == 1) {
                m546a(c0058b2, parseInt);
            } else if (m573a.getInt(columnIndex3) == 1) {
                m546a(c0058b3, parseInt);
            } else {
                m546a(c0058b, parseInt);
            }
            i2++;
        } while (m573a.moveToNext());
        if (!cursor.moveToFirst()) {
            m548a("Error: Database Empty", 0);
            c0058b.m481a();
            c0058b2.m481a();
            c0058b3.m481a();
            this.f503d.m740b();
            return -3;
        }
        int i3 = 0;
        int columnIndex4 = cursor.getColumnIndex("GroupIndex");
        int columnIndex5 = cursor.getColumnIndex("FileIndexInGroup");
        int columnIndex6 = cursor.getColumnIndex("IsSDCard");
        int columnIndex7 = cursor.getColumnIndex("IsMyAlbum");
        do {
            int parseInt2 = Integer.parseInt(cursor.getString(columnIndex4));
            int parseInt3 = Integer.parseInt(cursor.getString(columnIndex5));
            m548a("AllFileCursor " + parseInt2 + " " + parseInt3, 4);
            if (cursor.getInt(columnIndex6) == 1) {
                m544a(c0058b2, parseInt2, parseInt3, i3);
            } else if (cursor.getInt(columnIndex7) == 1) {
                m544a(c0058b3, parseInt2, parseInt3, i3);
            } else {
                m544a(c0058b, parseInt2, parseInt3, i3);
            }
            i3++;
        } while (cursor.moveToNext());
        m548a("GetLinkList cost time: " + (System.currentTimeMillis() - currentTimeMillis), 4);
        this.f503d.m740b();
        return 0;
    }

    /* renamed from: b */
    public void m559b() {
        this.f503d.m739a();
        C0062f c0062f = new C0062f();
        c0062f.m571a(this.f502c, "PhonePicture_INF");
        this.f500a = c0062f.m572a(this.f502c, "PhonePicture_INF", "ASC");
        this.f503d.m740b();
    }

    /* renamed from: a */
    public void m557a(String str, String str2, long j, int i, int i2, int i3, int i4, long j2, long j3, long j4, int i5, int i6, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        m558a(str, str2, j, i, i2, i3, i4, j2, j3, j4, i5, i6, z, z2, z3, z4, z5, z6, z7, false, false);
    }

    /* renamed from: a */
    public void m558a(String str, String str2, long j, int i, int i2, int i3, int i4, long j2, long j3, long j4, int i5, int i6, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f503d.m739a();
        long currentTimeMillis = System.currentTimeMillis();
        new C0062f().m576a(this.f502c, "PhonePicture_INF", str, str2, j, i, i2, i3, i4, j2, j3, j4, i5, i6, z ? 1 : 0, z2 ? 1 : 0, z3 ? 1 : 0, z4 ? 1 : 0, z5 ? 1 : 0, z6 ? 1 : 0, z7 ? 1 : 0, z8 ? 1 : 0, z9 ? 1 : 0);
        m548a("Local_AddToTable cost time: " + (System.currentTimeMillis() - currentTimeMillis), 4);
        this.f503d.m740b();
    }

    /* renamed from: a */
    public void m553a(int i, int i2) {
        this.f503d.m739a();
        long currentTimeMillis = System.currentTimeMillis();
        new C0062f().m577a(this.f502c, "PhonePicture_INF", "GroupIndex", "" + i, "FileIndexInGroup", "" + i2);
        m548a("Local_DeleteFile cost time: " + (System.currentTimeMillis() - currentTimeMillis), 4);
        this.f503d.m740b();
    }

    /* renamed from: a */
    public void m556a(String str, String str2) {
        this.f503d.m739a();
        long currentTimeMillis = System.currentTimeMillis();
        new C0062f().m577a(this.f502c, "PhonePicture_INF", "FileName", str, "FileSize", str2);
        m548a("Local_DeleteFile cost time: " + (System.currentTimeMillis() - currentTimeMillis), 4);
        this.f503d.m740b();
    }

    /* renamed from: b */
    public boolean m560b(String str, String str2) {
        this.f503d.m739a();
        boolean m581b = new C0062f().m581b(this.f502c, "PhonePicture_INF", "FilePath", str, "FileName", str2);
        this.f503d.m740b();
        return m581b;
    }

    /* renamed from: c */
    public int m561c() {
        this.f503d.m739a();
        int m579b = new C0062f().m579b(this.f502c, "PhonePicture_INF");
        this.f503d.m740b();
        return m579b;
    }

    /* renamed from: a */
    public ArrayList<String> m552a(String str, boolean z, int i, int i2) {
        new ArrayList();
        this.f503d.m739a();
        ArrayList<String> m575a = new C0062f().m575a(this.f502c, "PhonePicture_INF", str, Integer.toString(z ? 1 : 0), i, i2);
        this.f503d.m740b();
        return m575a;
    }

    /* renamed from: a */
    public ArrayList<String> m551a(String str, int i, int i2) {
        new ArrayList();
        this.f503d.m739a();
        ArrayList<String> m580b = new C0062f().m580b(this.f502c, "PhonePicture_INF", str, "1", i, i2);
        this.f503d.m740b();
        return m580b;
    }

    /* renamed from: a */
    public void m555a(int i, int i2, boolean z, String str) {
        this.f503d.m739a();
        C0062f c0062f = new C0062f();
        c0062f.m578a(this.f502c, "PhonePicture_INF", "GroupIndex", Integer.toString(i), "FileIndexInGroup", Integer.toString(i2), "FilePath", str);
        c0062f.m578a(this.f502c, "PhonePicture_INF", "GroupIndex", Integer.toString(i), "FileIndexInGroup", Integer.toString(i2), "IsSDCard", Integer.toString(z ? 1 : 0));
        this.f503d.m740b();
    }

    /* renamed from: a */
    public void m554a(int i, int i2, long j) {
        this.f503d.m739a();
        new C0062f().m578a(this.f502c, "PhonePicture_INF", "GroupIndex", Integer.toString(i), "FileIndexInGroup", Integer.toString(i2), "FileSize", Long.toString(j));
        this.f503d.m740b();
    }

    /* renamed from: a */
    public static C0058b m545a(ArrayList<C0057a> arrayList, int i) {
        C0058b c0058b = new C0058b();
        int i2 = arrayList.get(i).f490b;
        for (int i3 = 0; i3 < arrayList.get(i).f491c.size(); i3++) {
            int intValue = arrayList.get(i).f491c.get(i3).intValue();
            C0057a c0057a = new C0057a();
            c0057a.f489a = arrayList.get(i).f489a + i3;
            c0057a.f490b = i2;
            c0057a.f491c.add(Integer.valueOf(intValue));
            c0058b.f492a.add(c0057a);
        }
        C0059c c0059c = new C0059c();
        c0059c.f494a = 0;
        c0058b.f493b.put(Integer.valueOf(i2), c0059c);
        return c0058b;
    }
}
