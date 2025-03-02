// com.huawei.cvIntl60/smali/GeneralFunction/d/c.smali

package GeneralFunction.d;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.zip.ZipFile;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Message;

import ui_Controller.ui_StartMode.UI_ModeMain;
import GeneralFunction.d.b;
import GeneralFunction.d.a;

public class c {
    private UI_ModeMain a;
    private b b;
    private String c;

    public c(UI_ModeMain uiModeMain) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.a = uiModeMain;
        this.b = new b();
        b();
    }

    private FileOutputStream a(String str, String str2, boolean z) {
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

    private static void a(String str, int i) {
        d.a("UI_ConnectionController", str, i);
    }

    private void b() {
        try {
            ApplicationInfo applicationInfo = this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 0);
            ZipFile zipFile = new ZipFile(applicationInfo.sourceDir);
            long time = zipFile.getEntry("classes.dex") != null ? zipFile.getEntry("classes.dex").getTime() : 0;
            String format = DateFormat.getInstance().format(new Date(time));
            a("app time:" + format, 0);
            zipFile.close();
            this.b.a.b = Build.VERSION.RELEASE;
            this.b.a.c = Build.VERSION.SDK;
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
            this.b.a.d = packageInfo.versionName;
            this.b.a.a = packageInfo.versionCode;
            String str = "";
            String[] split = this.b.a.b.split("\\.");
            for (int i = 0; i < split.length; i++) {
                str = str + split[i];
            }
            this.b.a.e = this.b.a.e + "0" + str;
            a("appname = " + this.b.a.d + " || lAppCode = " + this.b.a.a, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            a("getPackageInfo NameNotFoundException", 3);
        } catch (IOException e2) {
            e2.printStackTrace();
            a("getPackageInfo IOException", 3);
        }
    }

    public String a() {
        return this.c;
    }

    public boolean a(Message message) {
        int i = message.what;
        switch (i) {
            case 18432: // 0x4800
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] USB Core init fail!", 0);
                    return false;
                }
                a("[UsbRemote] USB Core init success", 2);
                return false;
            case 18433: // 0x4801
                a("[UsbRemote] USB deinit done", 2);
                return false;
            case 18434: // 0x4802
                if (new a(message).b("result") == 0) {
                    return false;
                }
                a("[UsbRemote] USB Core reset fail!", 0);
                return false;
            case 18442: // 0x480a
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] Start communication fail", 0);
                    return false;
                }
                a("[UsbRemote] Start communication...", 2);
                return false;
            case 18443: // 0x480b
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] Close communication fail", 0);
                    return false;
                }
                a("[UsbRemote] Close communication...", 2);
                return false;
            case 18448: // 0x4810
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] reset camera fail!", 0);
                    return false;
                }
                this.a.c(new a(18544));
                return false;
            case 18449: // 0x4811
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] start live view fail!", 0);
                    return false;
                }
                a("[UsbRemote] start live view success", 2);
                this.a.c(new a(18545));
                return false;
            case 18450: // 0x4812
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] stop live view fail!", 0);
                    return false;
                }
                a("[UsbRemote] stop live view success", 2);
                this.a.a(new a(8752));
                this.a.c(new a(18546));
                return false;
            case 18451: // 0x4813
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] start recording fail!", 0);
                    this.a.c(new a(17935));
                    return false;
                }
                this.a.a(new a(8757));
                this.a.c(new a(18547), 5);
                return false;
            case 18452: // 0x4814
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] stop recording fail!", 0);
                    return false;
                }
                this.a.a(new a(8757));
                this.a.c(new a(18548), 5);
                return false;
            case 18453: // 0x4815
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] take picture fail!", 0);
                    return false;
                }
                this.a.a(new a(8757));
                this.a.c(new a(18549), 50);
                return false;
            case 18456: // 0x4818
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] enter fw upgrade mode fail!", 0);
                    this.a.a(new a(9258));
                    return false;
                }
                this.a.c(new a(18551), 5);
                return false;
            case 18457: // 0x4819
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] examine FW binary fail", 0);
                    this.a.a(new a(9258));
                    return false;
                }
                this.a.c(new a(18552), 5);
                return false;
            case 18458: // 0x481a
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] start update camera fw fail", 0);
                    return false;
                }
                this.a.c(new a(18553), 5);
                return false;
            case 18459: // 0x481b
                a("[UsbRemote] Clear camera picture buffer result: " + new a(message).b("result"), 1);
                return false;
            case 18464: // 0x4820
                if (new a(message).b("result") == -1) {
                    a("[UsbRemote] get frame fail!", 0);
                    return false;
                }
                return false;
            case 18465: // 0x4821
                if (new a(message).b("result") == 1) {
                    a aVar = new a(18465);
                    aVar.a("IsMiddleData", 0);
                    this.a.c(aVar, 5);
                    return false;
                } else if (new a(message).b("result") == 0) {
                    // Обработка данных изображения
                    return false;
                }
                return false;
            case 18466: // 0x4822
                if (new a(message).b("result") == 1) {
                    this.a.c(new a(18466), 5);
                    return false;
                } else if (new a(message).b("result") == 0) {
                    // Обработка данных изображения
                    return false;
                }
                return false;
            case 18480: // 0x4830
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] get fw version fail", 0);
                    this.a.a(8733, 0);
                    return false;
                }
                a("[UsbRemote] FWVersion: " + new a(message).d("fw_version"), 0);
                return false;
            case 18481: // 0x4831
                return false;
            case 18483: // 0x4833
                a("[UsbRemote] Camera remained picture number: " + new a(message).b("remained_pic_num"), 1);
                return false;
            case 18484: // 0x4834
                if (new a(message).b("result") == 0) {
                    a("[UsbRemote] SCSI Version: " + new a(message).d("scsi_version"), 0);
                    return false;
                }
                return false;
            case 18496: // 0x4840
                if (new a(message).b("result") != 0) {
                    a("[UsbRemote] get photo resolution fail", 0);
                    return false;
                }
                a("[UsbRemote] Get photo resolution: " + new a(message).b("photo_resolution"), 0);
                return false;
            case 18544: // 0x4870
                return false;
            case 18545: // 0x4871
                return false;
            case 18547: // 0x4873
                if (new a(message).b("result") == 0) {
                    this.a.a(new a(17934));
                    return false;
                } else if (new a(message).b("result") == 1) {
                    this.a.c(new a(18547), 5);
                    return false;
                } else {
                    a("[UsbRemote] check start recording status: fail", 0);
                    this.a.c(new a(17935));
                    return false;
                }
            case 18548: // 0x4874
                if (new a(message).b("result") == 0) {
                    this.a.a(new a(17967));
                    return false;
                } else if (new a(message).b("result") == 1) {
                    this.a.c(new a(18548), 5);
                    return false;
                } else {
                    a("[UsbRemote] check stop recording status: fail", 0);
                    return false;
                }
            case 18549: // 0x4875
                if (new a(message).a("play_shutter_sound")) {
                    this.a.a(new a(8729));
                }
                if (new a(message).b("result") == 0) {
                    this.a.c(new a(18466));
                    this.a.c(new a(18549), 50);
                    return false;
                } else if (new a(message).b("result") == 1) {
                    this.a.c(new a(18549), 5);
                    return false;
                } else if (new a(message).b("result") == 4) {
                    a("[CaptureDBG] Camera capture done", 1);
                    this.a.a(8710, 0);
                    return false;
                } else {
                    a("[UsbRemote] check take picture status: fail", 0);
                    return false;
                }
            default:
                return false;
        }
    }
}