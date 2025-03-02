package ui_Controller.CustomWidget;

import GeneralFunction.C0052d;
import GeneralFunction.C0076j;
import GeneralFunction.p008g.C0069a;
import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

/* renamed from: ui_Controller.CustomWidget.a */
/* loaded from: classes.dex */
public class C1649a {

    /* renamed from: a */
    public static final C0076j f7337a = new C0076j();

    /* renamed from: c */
    private ExecutorService f7339c;

    /* renamed from: d */
    private ExecutorService f7340d;

    /* renamed from: h */
    private BitmapFactory.Options f7344h;

    /* renamed from: i */
    private Map<Integer, Bitmap> f7345i;

    /* renamed from: j */
    private Map<Integer, Bitmap> f7346j;

    /* renamed from: k */
    private b f7347k;

    /* renamed from: q */
    private boolean f7353q;

    /* renamed from: b */
    private ExifInterface f7338b = null;

    /* renamed from: e */
    private Handler f7341e = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private HandlerThread f7342f = null;

    /* renamed from: g */
    private Handler f7343g = null;

    /* renamed from: l */
    private int f7348l = 0;

    /* renamed from: m */
    private int f7349m = 0;

    /* renamed from: n */
    private d f7350n = null;

    /* renamed from: o */
    private d f7351o = null;

    /* renamed from: p */
    private final C0076j f7352p = new C0076j();

    /* renamed from: ui_Controller.CustomWidget.a$a */
    public interface a {
        /* renamed from: a */
        void mo6834a(Bitmap bitmap, int i);
    }

    /* renamed from: ui_Controller.CustomWidget.a$b */
    public static class b {

        /* renamed from: a */
        public String f7434a = null;

        /* renamed from: b */
        public int f7435b = 0;

        /* renamed from: c */
        public int f7436c = 0;

        /* renamed from: d */
        public int f7437d = 0;

        /* renamed from: e */
        public int f7438e = 0;

        /* renamed from: f */
        public boolean f7439f = true;

        /* renamed from: g */
        public boolean f7440g = true;

        /* renamed from: h */
        public boolean f7441h = true;

        /* renamed from: i */
        public int f7442i = 10;

        /* renamed from: j */
        public int f7443j = 0;
    }

    /* renamed from: ui_Controller.CustomWidget.a$d */
    public interface d {
        /* renamed from: a */
        void mo7070a(int i, Bitmap bitmap);
    }

    /* renamed from: ui_Controller.CustomWidget.a$c */
    private class c implements Runnable {

        /* renamed from: b */
        private boolean f7445b = false;

        /* renamed from: c */
        private Semaphore f7446c = new Semaphore(0, true);

        /* renamed from: d */
        private d f7447d;

        /* renamed from: e */
        private int f7448e;

        /* renamed from: f */
        private Bitmap f7449f;

        public c(d dVar, int i, Bitmap bitmap) {
            this.f7447d = null;
            this.f7448e = 0;
            this.f7449f = null;
            this.f7447d = dVar;
            this.f7448e = i;
            this.f7449f = bitmap;
        }

        /* renamed from: a */
        public void m7074a() {
            if (!this.f7445b) {
                try {
                    this.f7446c.acquire();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.f7445b = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7447d.mo7070a(this.f7448e, this.f7449f);
            this.f7446c.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m7019b(String str, int i) {
        C0052d.m465a("AsyncImageLoader", str, i);
    }

    @SuppressLint({"UseSparseArrays"})
    public C1649a(b bVar) {
        this.f7339c = null;
        this.f7340d = null;
        this.f7344h = null;
        this.f7345i = null;
        this.f7346j = null;
        this.f7347k = null;
        this.f7353q = false;
        this.f7347k = bVar;
        this.f7345i = new HashMap();
        this.f7346j = new HashMap();
        this.f7339c = Executors.newFixedThreadPool(1);
        this.f7340d = Executors.newFixedThreadPool(1);
        this.f7344h = new BitmapFactory.Options();
        this.f7353q = false;
        m7018b();
        new File(this.f7347k.f7434a + "/").mkdirs();
    }

    /* renamed from: b */
    private void m7018b() {
        if (this.f7347k.f7441h) {
            this.f7343g = new Handler(Looper.getMainLooper());
            return;
        }
        this.f7342f = new HandlerThread("FileLoadThread");
        this.f7342f.start();
        this.f7343g = new Handler(this.f7342f.getLooper());
    }

    /* renamed from: a */
    public void m7031a() {
        m7019b("AsyncImageLoader Release", 3);
        this.f7352p.m739a();
        this.f7353q = true;
        ArrayList<Integer> m7008a = m7008a(this.f7345i);
        for (int i = 0; i < m7008a.size(); i++) {
            Bitmap bitmap = this.f7345i.get(m7008a.get(i));
            if (bitmap != null && !bitmap.isRecycled()) {
                if (this.f7350n != null) {
                    this.f7350n.mo7070a(m7008a.get(i).intValue(), bitmap);
                }
                bitmap.recycle();
            }
            this.f7345i.remove(m7008a.get(i));
        }
        ArrayList<Integer> m7008a2 = m7008a(this.f7346j);
        for (int i2 = 0; i2 < m7008a2.size(); i2++) {
            Bitmap bitmap2 = this.f7346j.get(m7008a2.get(i2));
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                if (this.f7351o != null) {
                    this.f7351o.mo7070a(m7008a2.get(i2).intValue(), bitmap2);
                }
                bitmap2.recycle();
            }
            this.f7346j.remove(m7008a2.get(i2));
        }
        if (this.f7342f != null) {
            this.f7342f.quit();
        }
        this.f7343g = null;
        this.f7339c.shutdown();
        this.f7339c.shutdownNow();
        this.f7339c = null;
        this.f7340d.shutdown();
        this.f7340d.shutdownNow();
        this.f7340d = null;
        this.f7352p.m740b();
    }

    /* renamed from: a */
    public void m7034a(d dVar) {
        this.f7351o = dVar;
    }

    /* renamed from: a */
    public void m7033a(final String str, final int i, int i2, final int i3, final int i4, final a aVar) {
        this.f7348l = i2;
        this.f7340d.submit(new Runnable() { // from class: ui_Controller.CustomWidget.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (!C1649a.this.f7353q) {
                    int i5 = C1649a.this.f7348l;
                    if ((i <= i5 || i - i5 <= C1649a.this.f7347k.f7442i) && (i >= i5 || i5 - i <= C1649a.this.f7347k.f7442i)) {
                        if (C1649a.this.f7345i.containsKey(Integer.valueOf(i))) {
                            C1649a.this.f7343g.post(new Runnable() { // from class: ui_Controller.CustomWidget.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C1649a.this.m7010a(aVar, (Bitmap) C1649a.this.f7345i.get(Integer.valueOf(i)), i);
                                }
                            });
                            return;
                        }
                        if (C1649a.this.f7347k.f7439f) {
                            C1649a.this.m7024d();
                        }
                        final Bitmap m7015b = C1649a.this.m7015b(str, i3, i4);
                        C1649a.this.f7352p.m739a();
                        if (!C1649a.this.f7353q) {
                            if (C1649a.this.f7347k.f7439f) {
                                C1649a.this.f7345i.put(Integer.valueOf(i), m7015b);
                            }
                            C1649a.this.f7352p.m740b();
                            C1649a.this.f7343g.post(new Runnable() { // from class: ui_Controller.CustomWidget.a.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    C1649a.m7019b("AsyncLoadMainImageBitmap post:" + m7015b + " " + i, 4);
                                    C1649a.this.m7010a(aVar, m7015b, i);
                                }
                            });
                            return;
                        }
                        if (m7015b != null && !m7015b.isRecycled()) {
                            m7015b.recycle();
                        }
                        C1649a.this.f7352p.m740b();
                        return;
                    }
                    C1649a.m7019b("AsyncLoadMainImageBitmap out of range thus release:" + i, 2);
                }
            }
        });
    }

    /* renamed from: b */
    public void m7035b(final String str, final int i, int i2, final int i3, final int i4, final a aVar) {
        this.f7349m = i2;
        this.f7339c.submit(new Runnable() { // from class: ui_Controller.CustomWidget.a.2
            @Override // java.lang.Runnable
            public void run() {
                C1649a.m7019b("AsyncLoadThumbnialBitmap S " + str + " " + i, 4);
                if (!C1649a.this.f7353q) {
                    int i5 = C1649a.this.f7349m;
                    if ((i <= i5 || i - i5 <= C1649a.this.f7347k.f7442i) && (i >= i5 || i5 - i <= C1649a.this.f7347k.f7442i)) {
                        if (C1649a.this.f7346j.containsKey(Integer.valueOf(i))) {
                            C1649a.this.f7343g.post(new Runnable() { // from class: ui_Controller.CustomWidget.a.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C1649a.this.m7010a(aVar, (Bitmap) C1649a.this.f7346j.get(Integer.valueOf(i)), i);
                                }
                            });
                        } else {
                            if (C1649a.this.f7347k.f7440g) {
                                C1649a.this.m7022c();
                            }
                            if (C1649a.this.f7352p.m739a() < 0) {
                                C1649a.m7019b("pMutex.Get() fail " + i, 2);
                                return;
                            }
                            final Bitmap m7005a = C1649a.this.m7005a(str, i3, i4);
                            if (!C1649a.this.f7353q) {
                                if (C1649a.this.f7347k.f7440g) {
                                    C1649a.this.f7346j.put(Integer.valueOf(i), m7005a);
                                }
                                C1649a.this.f7352p.m740b();
                                C1649a.this.f7343g.post(new Runnable() { // from class: ui_Controller.CustomWidget.a.2.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        C1649a.this.m7010a(aVar, m7005a, i);
                                    }
                                });
                            } else {
                                if (m7005a != null && !m7005a.isRecycled()) {
                                    m7005a.recycle();
                                }
                                C1649a.this.f7352p.m740b();
                                return;
                            }
                        }
                        C1649a.m7019b("AsyncLoadThumbnialBitmap E" + str + " " + i, 4);
                        return;
                    }
                    C1649a.m7019b("AsyncLoadThumbnailBitmap out of range thus release:" + i, 2);
                }
            }
        });
    }

    /* renamed from: a */
    public void m7032a(int i) {
        this.f7352p.m739a();
        ArrayList<Integer> m7008a = m7008a(this.f7346j);
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < m7008a.size(); i2++) {
            if (m7008a.get(i2).intValue() > i) {
                hashMap.put(Integer.valueOf(m7008a.get(i2).intValue() - 1), this.f7346j.get(m7008a.get(i2)));
            } else if (m7008a.get(i2).intValue() == i) {
                if (this.f7346j.get(m7008a.get(i2)) != null && !this.f7346j.get(m7008a.get(i2)).isRecycled()) {
                    m7019b("DeleteImage:" + this.f7346j.get(m7008a.get(i2)), 4);
                    if (this.f7351o != null) {
                        this.f7351o.mo7070a(m7008a.get(i2).intValue(), this.f7346j.get(m7008a.get(i2)));
                    }
                    this.f7346j.get(m7008a.get(i2)).recycle();
                }
            } else {
                hashMap.put(m7008a.get(i2), this.f7346j.get(m7008a.get(i2)));
            }
        }
        this.f7346j = hashMap;
        ArrayList<Integer> m7008a2 = m7008a(this.f7345i);
        HashMap hashMap2 = new HashMap();
        for (int i3 = 0; i3 < m7008a2.size(); i3++) {
            if (m7008a2.get(i3).intValue() > i) {
                hashMap2.put(Integer.valueOf(m7008a2.get(i3).intValue() - 1), this.f7345i.get(m7008a2.get(i3)));
            } else if (m7008a2.get(i3).intValue() == i) {
                if (!this.f7345i.get(m7008a2.get(i3)).isRecycled()) {
                    if (this.f7350n != null) {
                        this.f7350n.mo7070a(m7008a2.get(i3).intValue(), this.f7345i.get(m7008a2.get(i3)));
                    }
                    this.f7345i.get(m7008a2.get(i3)).recycle();
                }
            } else {
                hashMap2.put(m7008a2.get(i3), this.f7345i.get(m7008a2.get(i3)));
            }
        }
        this.f7345i = hashMap2;
        this.f7352p.m740b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7010a(a aVar, Bitmap bitmap, int i) {
        aVar.mo6834a(bitmap, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m7022c() {
        int intValue;
        if (this.f7346j.size() == this.f7347k.f7438e) {
            int i = this.f7349m;
            ArrayList<Integer> m7008a = m7008a(this.f7346j);
            if (i - m7008a.get(0).intValue() > m7008a.get(m7008a.size() - 1).intValue() - i) {
                intValue = m7008a.get(0).intValue();
            } else {
                intValue = m7008a.get(m7008a.size() - 1).intValue();
            }
            for (int i2 = 0; i2 < m7008a.size(); i2++) {
                m7019b("pKeyList:" + m7008a.get(i2), 4);
            }
            m7019b("CheckFreeThumbnalImage onFree:" + intValue + " " + i, 4);
            Bitmap bitmap = this.f7346j.get(Integer.valueOf(intValue));
            if (this.f7351o != null) {
                c cVar = new c(this.f7351o, intValue, bitmap);
                this.f7341e.post(cVar);
                cVar.m7074a();
            }
            this.f7346j.remove(Integer.valueOf(intValue));
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"DefaultLocale"})
    /* renamed from: a */
    public Bitmap m7005a(String str, int i, int i2) {
        Bitmap m7020c;
        FileOutputStream fileOutputStream;
        m7019b("LoadThumbnialFromSD S: pszFilePath " + str + " ulWidth " + i + " ulHeight " + i2, 4);
        String lowerCase = str.substring(str.lastIndexOf(".") + 1).toLowerCase();
        String lowerCase2 = str.substring(str.lastIndexOf("/") + 1).toLowerCase();
        String substring = str.substring(0, str.lastIndexOf("/"));
        String str2 = this.f7347k.f7434a + "thm_" + substring.substring(substring.lastIndexOf("/") + 1).toLowerCase() + "_" + lowerCase2;
        File file = new File(str);
        if (!file.exists() && !file.getPath().contains("thm")) {
            m7019b("File not exist: " + str, 3);
            return null;
        }
        if (f7337a.m739a() < 0) {
            m7019b("pFileCreateMutex.Get() fail ", 2);
            return null;
        }
        if (new File(str2).exists()) {
            m7019b("runtime file exist", 4);
            this.f7344h.inSampleSize = 1;
            this.f7344h.inJustDecodeBounds = false;
            this.f7344h.inPreferredConfig = Bitmap.Config.ARGB_8888;
            Bitmap decodeFile = BitmapFactory.decodeFile(str2, this.f7344h);
            f7337a.m740b();
            return decodeFile;
        }
        f7337a.m740b();
        if (!lowerCase.toLowerCase().equals("jpg") && !lowerCase.toLowerCase().equals("thm") && !lowerCase.toLowerCase().equals("gif")) {
            return null;
        }
        if (!new File(str).exists()) {
            m7020c = m7006a(str, this.f7347k.f7436c / 4, i, i2);
        } else {
            try {
                this.f7338b = new ExifInterface(str);
            } catch (IOException e) {
                e.printStackTrace();
            }
            byte[] thumbnail = this.f7338b.getThumbnail();
            int attributeInt = this.f7338b.getAttributeInt("Orientation", -1);
            if (thumbnail != null) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = this.f7338b.getAttributeInt("ImageWidth", 0) / 768;
                Bitmap decodeFile2 = BitmapFactory.decodeFile(str, options);
                if (decodeFile2 == null) {
                    return null;
                }
                Matrix matrix = new Matrix();
                Bitmap m7004a = m7004a(decodeFile2, i, i2);
                if (attributeInt != 6) {
                    if (attributeInt == 3) {
                        matrix.postRotate(180.0f);
                        Bitmap createBitmap = Bitmap.createBitmap(m7004a, 0, 0, m7004a.getWidth(), m7004a.getHeight(), matrix, true);
                        m7004a.recycle();
                        m7004a = createBitmap;
                    } else if (attributeInt == 8) {
                    }
                }
                m7020c = m7004a;
            } else if (str.contains("thm")) {
                m7020c = m7006a(str, this.f7347k.f7436c / 4, i, i2);
            } else {
                m7020c = m7020c(str, this.f7347k.f7436c / 4, i, i2);
            }
        }
        if (m7020c != null) {
            if (f7337a.m739a() < 0) {
                m7019b("pFileCreateMutex.Get() fail ", 2);
                return null;
            }
            m7019b("Create runtime file:" + str2, 4);
            String m645b = C0069a.m645b(str2, "tmp");
            try {
                fileOutputStream = new FileOutputStream(m645b);
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
                fileOutputStream = null;
            }
            m7020c.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            if (!new File(str).exists()) {
                String m645b2 = C0069a.m645b(str, "tmp");
                try {
                    C0069a.m647c(m645b, m645b2);
                    new File(m645b2).renameTo(new File(str));
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            new File(m645b).renameTo(new File(str2));
            f7337a.m740b();
        }
        m7019b("LoadThumbnialFromSD E:" + str, 4);
        return m7020c;
    }

    /* renamed from: a */
    private static Bitmap m7004a(Bitmap bitmap, int i, int i2) {
        int i3;
        if (bitmap != null && i != -1 && i2 != -1) {
            float width = bitmap.getWidth();
            float height = bitmap.getHeight();
            float f = i / width;
            float f2 = i2 / height;
            Matrix matrix = new Matrix();
            if (f < f2) {
                int i4 = (int) (((f2 - f) * width) / f2);
                if (i4 != 0) {
                    m7019b("RemoveBlackPorion W>H:" + i4, 4);
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap, i4 / 2, 0, ((int) width) - i4, (int) height, matrix, true);
                    if (bitmap != createBitmap) {
                        bitmap.recycle();
                    }
                    return createBitmap;
                }
                return bitmap;
            }
            if (f2 < f && (i3 = (int) (((f - f2) * height) / f)) != 0) {
                m7019b("RemoveBlackPorion H>W:" + i3, 4);
                Bitmap createBitmap2 = Bitmap.createBitmap(bitmap, 0, i3 / 2, (int) width, ((int) height) - i3, matrix, true);
                if (bitmap != createBitmap2) {
                    bitmap.recycle();
                }
                return createBitmap2;
            }
            return bitmap;
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m7024d() {
        int intValue;
        if (this.f7345i.size() == this.f7347k.f7437d) {
            int i = this.f7348l;
            ArrayList<Integer> m7008a = m7008a(this.f7345i);
            if (i - m7008a.get(0).intValue() > m7008a.get(m7008a.size() - 1).intValue() - i) {
                intValue = m7008a.get(0).intValue();
            } else {
                intValue = m7008a.get(m7008a.size() - 1).intValue();
            }
            for (int i2 = 0; i2 < m7008a.size(); i2++) {
                m7019b("pKeyList:" + m7008a.get(i2), 4);
            }
            m7019b("CheckFreeMainImage onFree:" + intValue + " " + i, 4);
            Bitmap bitmap = this.f7345i.get(Integer.valueOf(intValue));
            if (this.f7350n != null) {
                this.f7350n.mo7070a(intValue, bitmap);
            }
            this.f7345i.remove(Integer.valueOf(intValue));
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"DefaultLocale"})
    /* renamed from: b */
    public Bitmap m7015b(String str, int i, int i2) {
        m7019b("LoadMainImageFromSD pszFilePath " + str + " ulWidth " + i + " ulHeight " + i2, 4);
        try {
            String lowerCase = str.substring(str.lastIndexOf(".") + 1, str.length()).toLowerCase();
            if (!new File(str).exists()) {
                return null;
            }
            if (!lowerCase.equals("jpg") && !lowerCase.equals("thm") && !lowerCase.equals("gif")) {
                return null;
            }
            m7019b("LoadMainImageFromSD jpg thm gif", 4);
            return m7016b(str, this.f7347k.f7435b, i, i2);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public static Bitmap m7006a(String str, int i, int i2, int i3) {
        Bitmap bitmap = null;
        String lowerCase = str.substring(str.lastIndexOf(".") + 1, str.length()).toLowerCase();
        File file = new File(str);
        if (!lowerCase.equals("jpg") && !lowerCase.equals("thm") && !lowerCase.equals("gif")) {
            return null;
        }
        if (file.exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = options.outWidth / 640;
            options.inJustDecodeBounds = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            bitmap = BitmapFactory.decodeFile(str, options);
        }
        return m7004a(bitmap, i2, i3);
    }

    /* renamed from: b */
    public static Bitmap m7016b(String str, int i, int i2, int i3) {
        ExifInterface exifInterface;
        Bitmap bitmap = null;
        String lowerCase = str.substring(str.lastIndexOf(".") + 1, str.length()).toLowerCase();
        if (new File(str).exists() && (lowerCase.equals("jpg") || lowerCase.equals("thm") || lowerCase.equals("gif"))) {
            try {
                exifInterface = new ExifInterface(str);
            } catch (IOException e) {
                e.printStackTrace();
                exifInterface = null;
            }
            int attributeInt = exifInterface.getAttributeInt("Orientation", -1);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = m7003a(options.outWidth, options.outHeight, i);
            options.inJustDecodeBounds = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
            new Matrix();
            bitmap = m7004a(decodeFile, i2, i3);
            if (attributeInt == 6) {
                m7019b("ORIENTATION_ROTATE_90", 3);
            } else if (attributeInt == 3) {
                m7019b("ORIENTATION_ROTATE_180", 3);
            } else if (attributeInt == 8) {
                m7019b("ORIENTATION_ROTATE_2700", 3);
            }
        }
        return bitmap;
    }

    /* renamed from: c */
    public static Bitmap m7020c(String str, int i, int i2, int i3) {
        Bitmap decodeFile;
        String lowerCase = str.substring(str.lastIndexOf(".") + 1, str.length()).toLowerCase();
        if (!new File(str).exists()) {
            return null;
        }
        if (!lowerCase.equals("jpg") && !lowerCase.equals("gif")) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = m7003a(options.outWidth, options.outHeight, i) / 2;
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        if (options.outWidth / options.outHeight >= 4) {
            options.inSampleSize = m7013b(options.outWidth, options.outHeight, i);
            decodeFile = BitmapFactory.decodeFile(str, options);
        } else {
            decodeFile = BitmapFactory.decodeFile(str, options);
        }
        return m7004a(decodeFile, i2, i3);
    }

    /* renamed from: a */
    public static int m7003a(int i, int i2, int i3) {
        int i4 = 1;
        int ceil = i3 == -1 ? 1 : (int) Math.ceil(Math.sqrt((i * i2) / i3));
        if (128 >= ceil && i3 == -1) {
            ceil = 1;
        }
        while (i / ceil > 4096) {
            ceil++;
        }
        if (ceil <= 8) {
            while (i4 < ceil) {
                i4 <<= 1;
            }
            return i4;
        }
        return ((ceil + 7) / 8) * 8;
    }

    /* renamed from: b */
    public static int m7013b(int i, int i2, int i3) {
        int ceil = (int) Math.ceil(Math.sqrt(i3));
        int max = Math.max(i / ceil, i2 / ceil);
        m7019b("AAA " + max, 3);
        return Math.max(1, max);
    }

    /* renamed from: a */
    private ArrayList<Integer> m7008a(Map map) {
        Set entrySet = map.entrySet();
        ArrayList<Integer> arrayList = new ArrayList<>();
        if (entrySet != null) {
            Iterator it = entrySet.iterator();
            while (it.hasNext()) {
                arrayList.add((Integer) ((Map.Entry) it.next()).getKey());
            }
        }
        Collections.sort(arrayList, new Comparator<Integer>() { // from class: ui_Controller.CustomWidget.a.3
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return num.compareTo(num2);
            }
        });
        return arrayList;
    }
}
