package GeneralFunction.p004d;

import GeneralFunction.C0052d;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: GeneralFunction.d.c */
/* loaded from: classes.dex */
public class C0055c {

    /* renamed from: a */
    private UI_ModeMain f486a;

    /* renamed from: b */
    private C0054b f487b;

    /* renamed from: c */
    private String f488c = null;

    /* renamed from: a */
    private static void m472a(String str, int i) {
        C0052d.m465a("UI_ConnectionController", str, i);
    }

    public C0055c(UI_ModeMain uI_ModeMain) {
        this.f486a = null;
        this.f487b = null;
        this.f486a = uI_ModeMain;
        this.f487b = new C0054b();
        m473b();
    }

    /* renamed from: a */
    public String m474a() {
        return this.f488c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0011, code lost:
    
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m475a(android.os.Message r11) {
        /*
            Method dump skipped, instructions count: 1540
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p004d.C0055c.m475a(android.os.Message):boolean");
    }

    /* renamed from: b */
    private void m473b() {
        try {
            ZipFile zipFile = new ZipFile(this.f486a.getPackageManager().getApplicationInfo(this.f486a.getPackageName(), 0).sourceDir);
            ZipEntry entry = zipFile.getEntry("classes.dex");
            long j = 0;
            if (entry != null) {
                j = entry.getTime();
            }
            m472a("app time:" + SimpleDateFormat.getInstance().format(new Date(j)), 0);
            zipFile.close();
            this.f487b.f485a.f481b = Build.VERSION.RELEASE;
            this.f487b.f485a.f482c = Build.VERSION.SDK;
            this.f487b.f485a.f483d = this.f486a.getPackageManager().getPackageInfo(this.f486a.getPackageName(), 0).versionName;
            this.f487b.f485a.f480a = this.f486a.getPackageManager().getPackageInfo(this.f486a.getPackageName(), 0).versionCode;
            String str = "";
            for (String str2 : this.f487b.f485a.f481b.split("\\.")) {
                str = str + str2;
            }
            this.f487b.f485a.f484e += "0" + str;
            m472a("appname = " + this.f487b.f485a.f483d + " || lAppCode = " + this.f487b.f485a.f480a, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            m472a("getPackageInfo NameNotFoundException", 3);
        } catch (IOException e2) {
            e2.printStackTrace();
            m472a("getPackageInfo IOException", 3);
        }
    }

    /* renamed from: a */
    private FileOutputStream m471a(String str, String str2, boolean z) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str + str2);
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else if (z) {
            file2.delete();
            try {
                file2.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        try {
            return new FileOutputStream(str + str2, true);
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
