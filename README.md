# com.huawei.cvIntl60
UnPack Huawei App


adb tcpip 5037
adb connect 192.168.15.50:5037

adb install -d "Z:\ApkDeompiuleWin\com.huawei.cvIntl60\com.huawei.cvIntl60 signed.apk"

---------------------------------
1) Конвертировать smali в Java класс
2) Показать результат Java класса без пояснений
   код smali:
---------------------------------



НАЧАТЬ
lunch_video_button_go:I = 0x7f0a00d3
const v2, 0x7f0a00d3
smali/ui_Controller/ui_LaunchScreen/UI_LaunchScreenController.smali


------------------------------------------
com.huawei.cvIntl60/smali/ui_Controller/a/c.smali
.line 62
new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    sget-object v1, Lui_Controller/a/c;->a:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "/DCIM/PANORAMA_HUAWEI/"
------------------------------------------	


------------------------------------------
smali/GeneralFunction/d/c.smali
    const-string v5, "PANO_"
    const-string v2, ".jpg"	
------------------------------------------	

------------------------------------------
com.huawei.cvIntl60/smali/GeneralFunction/g/a.smali
подумать
        context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file)));
------------------------------------------

------------------------------------------
Применение 
com.huawei.cvIntl60/smali/GeneralFunction/d/c.smali

Можно вставить вызов команды в строку между .line 241 и .line 243
<pre>
 case 18465: // 0x4821
            if (aVar.b("result") == 1) {
                La/c.a aVar2 = new La/c.a(18465); // 0x4821
                aVar2.a("IsMiddleData", i4);
                this.a.c(aVar2, j);
                break;
            } else if (aVar.b("result") == 0) {
                La/a/a.d dVar = (La/a/a.d) aVar.f("PictureData").a();
                int i6 = dVar.a.a;
                long c = aVar.c("CurrentTime");
                String format = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss", java.util.Locale.US).format(new java.util.Date(c));
                String str = "PIC_" + format + ".jpg";
                // --  Можно вставить вызов команды в строку между .line 241 и .line 243--
                String a = LGeneralFunction.d.a(this.a.a);
                // --  Можно вставить вызов команды в строку между .line 243 и .line 245--
                LGeneralFunction.d.c.a("MSG_REMOTE_USB_CMD_READ_GET_PICTURE szSdPath: " + a, 3);
                if (LGeneralFunction.m.a.a() == 1) {
                    a = a + "/Android/data/com.huawei.cvIntl60/" + "DCIM/PANORAMA_HUAWEI/";
                } else {
                    a = Lui_Controller.a.c.c;
                }
                this.c = a + str;
                java.io.FileOutputStream a2 = a(a, str, i4);
                if (a2 == null) {
                    LGeneralFunction.d.c.a("[UsbRemote] create saving file fail", i4);
                    dVar.a.d();
                    break;
                }
                if (i6 != 0) {
                    try {
                        a2.write(dVar.a.a(), 0, i6);
                    } catch (java.io.FileNotFoundException e) {
                        e.printStackTrace();
                    } catch (java.io.IOException e2) {
                        e2.printStackTrace();
                    }
                }
                try {
                    a2.close();
                } catch (java.io.FileNotFoundException e3) {
                    e3.printStackTrace();
                } catch (java.io.IOException e4) {
                    e4.printStackTrace();
                }
                dVar.a.d();
                if (aVar.b("IsDataEnd") == 0) {
                    La/c.a aVar3 = new La/c.a(18465); // 0x4821
                    aVar3.a("IsMiddleData", i3);
                    aVar3.a("CurrentTime", aVar.c("CurrentTime"));
                    this.a.c(aVar3);
                    break;
                }
                this.c = null;
                La/c.a aVar4 = new La/c.a(18185); // 0x4709
                aVar4.a("storage_name", str);
                aVar4.a("storage_path", a);
                aVar4.a("file_size", i6);
                aVar4.a("current_time", aVar.c("CurrentTime"));
                this.a.a(aVar4);
                break;
            }
            break;
</pre>
------------------------------------------


