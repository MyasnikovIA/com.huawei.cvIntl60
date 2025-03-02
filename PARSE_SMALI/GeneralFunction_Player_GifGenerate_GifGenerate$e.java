// com.huawei.cvIntl60/smali/GeneralFunction/Player/GifGenerate/GifGenerate$e.smali


package GeneralFunction.Player.GifGenerate;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.view.Choreographer;
import android.view.Surface;

import com.a.a.c.a;
import com.a.a.c.d;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import LGeneralFunction.Player.a.a;
import LGeneralFunction.Player.a.b;
import LGeneralFunction.Player.player.h;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

public class GifGenerate$e extends HandlerThread {
    private int A;
    private int B;
    private ArrayList<Bitmap> C;
    private int D;
    private int E;
    private int F;
    private int G;
    private a H;
    int a;
    final GifGenerate b;
    private int c;
    private Handler d;
    private Choreographer.FrameCallback e;
    private a f;
    private SurfaceTexture g;
    private int h;
    private int i;
    private int j;
    private float[] k;
    private float[] l;
    private float[] m;
    private float[] n;
    private float[] o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private String x;
    private int y;
    private int z;

    public GifGenerate$e(GifGenerate gifGenerate, String str) {
        super(str);
        this.b = gifGenerate;
        this.c = 0;
        this.e = new GifGenerate$e$a(this, null);
        this.h = -1;
        this.i = 1;
        this.j = 1;
        this.k = new float[16];
        this.l = new float[16];
        this.m = new float[16];
        this.n = new float[16];
        this.o = new float[3];
        this.p = false;
        this.q = false;
        this.t = false;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = 0;
        this.z = 360;
        this.A = 360;
        this.B = 0;
        this.D = 600;
        this.E = 300;
        this.F = 212;
        this.G = 30;
        this.a = 0;
        this.f = new a();
    }

    static int a(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.A = i;
        return i;
    }

    private Surface a() {
        if (!this.f.e()) {
            throw new IllegalStateException("Cannot get video decode surface without GL context");
        }
        this.h = b.a(this.b.c().m);
        this.g = new SurfaceTexture(this.h);
        this.g.setOnFrameAvailableListener(new GifGenerate$e$2(this));
        return new Surface(this.g);
    }

    static Surface a(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.a();
    }

    static String a(GifGenerate$e gifGenerate$e, String str) {
        gifGenerate$e.x = str;
        return str;
    }

    private void a(float f, boolean z) {
        float f2 = 50.0f;
        if (z) {
            this.b.c().b();
        } else {
            if (((int) f) == 1) {
                f2 = -50.0f;
            }
            this.b.c().a(this.b.c().l + f2);
        }
        this.s = true;
    }

    private void a(int i) {
        if (this.b.c().p > this.b.c().o) {
            this.b.c().a(i, false);
        } else {
            this.b.c().a(i, true);
        }
    }

    private void a(int i, int i2) {
        if (!this.t) {
            Bitmap bitmap;
            if (!this.b.d()) {
                bitmap = this.b.getBitmap();
            } else {
                bitmap = null;
            }
            if (bitmap != null) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, this.D, this.E, false);
                if (!this.b.d()) {
                    try {
                        Thread.sleep(40);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                Bitmap b = b(createScaledBitmap);
                if (!this.b.d()) {
                    this.C.add(b);
                }
                if (!this.b.d()) {
                    try {
                        Thread.sleep(40);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                bitmap.recycle();
                if (createScaledBitmap != b) {
                    createScaledBitmap.recycle();
                }
                if (!this.b.d()) {
                    try {
                        Thread.sleep(40);
                    } catch (InterruptedException e22) {
                        e22.printStackTrace();
                    }
                }
                GifGenerate.b("++++Finish++++++", 2);
            }
            GifGenerate.b("++++Finish++++++", 2);
        }
    }

    static void a(GifGenerate$e gifGenerate$e, float f, boolean z) {
        gifGenerate$e.a(f, z);
    }

    static void a(GifGenerate$e gifGenerate$e, GifGenerate$f gifGenerate$f) {
        gifGenerate$e.a(gifGenerate$f);
    }

    static void a(GifGenerate$e gifGenerate$e, Bitmap bitmap) {
        gifGenerate$e.a(bitmap);
    }

    static void a(GifGenerate$e gifGenerate$e, SurfaceTexture surfaceTexture, int i, int i2) {
        gifGenerate$e.a(surfaceTexture, i, i2);
    }

    static void a(GifGenerate$e gifGenerate$e, boolean z) {
        gifGenerate$e.a(z);
    }

    private void a(GifGenerate$f gifGenerate$f) {
        this.b.c().q = (this.b.c().q - (gifGenerate$f.a * 0.1f)) % 360.0f;
        this.b.c().r = this.b.c().r - (gifGenerate$f.b * 0.1f);
        this.s = true;
    }

    private void a(Bitmap bitmap) {
        this.i = bitmap.getWidth();
        this.j = bitmap.getHeight();
        GLES20.glBindTexture(3553, this.h);
        if (!bitmap.isRecycled()) {
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            GifGenerate.b("updateBitmap with recycle bitmap!", 1);
        }
        this.s = true;
    }

    private void a(SurfaceTexture surfaceTexture, int i, int i2) {
        if (!this.q) {
            this.q = true;
            GifGenerate.b("surfacePrepare w: " + i + " h: " + i2, 3);
            this.f.a(surfaceTexture);
            Choreographer.getInstance().postFrameCallback(this.e);
            GLES20.glViewport(0, 0, i, i2);
            GifGenerate.b("glViewport", 0);
            h();
            Matrix.setIdentityM(this.m, 0);
            Matrix.setRotateM(this.l, 0, 90.0f, 0.0f, 1.0f, 0.0f);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            this.H = new a(this.b.getContext(), this.b.c().m);
            switch (this.b.c().m) {
                case 1:
                    if (this.b.a == null) {
                        this.b.a(this.b.e());
                        break;
                    }
                    this.b.a.setSurface(a());
                    this.b.a(2);
                    this.b.b(2);
                    break;
                case 3:
                    this.h = b.a(this.b.c().m);
                    this.b.g();
                    if (this.b.h() != null) {
                        this.b.a(this.b.h());
                        break;
                    }
                    break;
            }
            if (this.b.c().s == 1 || this.b.c().s == 0) {
                Matrix.setIdentityM(this.b.c().z, 0);
            }
        }
    }

    private void a(boolean z) {
        GifGenerate.b("surfaceDestroy", 3);
        if (this.q) {
            this.q = false;
            GifGenerate.b("start_surfaceDestroy", 3);
            this.b.c(3);
            this.b.d(3);
            this.b.c().m = 0;
            this.b.c(0);
            Choreographer.getInstance().removeFrameCallback(this.e);
            if (!z) {
                this.d = null;
                if (this.f != null) {
                    k();
                    this.f.d();
                    this.f = null;
                }
                if (this.b.f() != null) {
                    this.b.f().quit();
                    this.b.a((GifGenerate$e) null);
                }
                this.b.c().a = 0;
                if (this.b.a != null) {
                    try {
                        Thread.sleep(30);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    this.b.a.stop();
                    this.b.a.release();
                    this.b.a = null;
                }
                this.C = null;
            } else if (this.f != null) {
                this.f.d();
            }
            if (this.b.a != null) {
                try {
                    Thread.sleep(30);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                this.b.a.setSurface(null);
            }
            if (this.b.k() != null) {
                this.b.k().a();
                this.b.k().interrupt();
                this.b.a((GifGenerate$b) null);
            }
            if (this.h != -1) {
                GLES20.glDeleteTextures(1, new int[]{this.h}, 0);
                this.h = -1;
            }
            if (this.g != null) {
                this.g.release();
                this.g = null;
                this.r = false;
            }
            Matrix.setIdentityM(this.b.c().z, 0);
            this.s = false;
            if (this.H != null) {
                this.H.a();
                this.H = null;
            }
            this.b.l().clear();
            if (!z) {
                this.b.a(5);
                this.b.b(5);
                this.b.a(1);
                this.b.b(1);
            }
            GifGenerate.b("finish_surfaceDestroy", 3);
        }
    }

    static int b(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.c = i;
        return i;
    }

    private Bitmap b(Bitmap bitmap) {
        Bitmap d = d(this.v);
        if (d != null) {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(d, this.F, this.G, false);
            Canvas canvas = new Canvas(bitmap);
            canvas.drawBitmap(bitmap, new Matrix(), (Paint) null);
            canvas.drawBitmap(createScaledBitmap, 10.0f, ((float) (this.E - (this.E / 7))) - 10.0f, (Paint) null);
            canvas.save();
            canvas.restore();
            d.recycle();
            createScaledBitmap.recycle();
        } else {
            GifGenerate.b("No WarterMark", 3);
        }
        return bitmap;
    }

    private void b() {
        if (this.f != null && this.f.e()) {
            Choreographer.getInstance().postFrameCallback(this.e);
            if (this.r || this.s) {
                this.f.c();
                if (this.b.c().m != 3) {
                    this.g.updateTexImage();
                    this.g.getTransformMatrix(this.k);
                } else {
                    this.k = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
                }
                i();
                float[] clone = this.b.c().z.clone();
                if (this.b.c().s != 2 && this.b.c().s != 3) {
                    Matrix.setIdentityM(clone, 0);
                }
                this.H.a(this.h, this.k, this.l, this.m, this.n, clone, this.b.c().m, this.b.c().o, this.b.c().p, this.c, this.p);
                if (this.r) {
                    if (this.b.b() != 0) {
                        if (this.b.b() == 2) {
                            GifGenerate.b("add image", 3);
                            if (this.b.b % 2 == 0) {
                                a(this.b.c().o, this.b.c().p);
                            }
                            this.b.b++;
                        }
                        d();
                    }
                    this.r = false;
                } else if (this.b.c().m == 3 && this.b.b() == 2 && !this.t && !this.b.d()) {
                    a(this.b.c().o, this.b.c().p);
                }
                c();
            }
            if (!this.t && this.f != null) {
                this.f.b();
            }
        }
    }

    private void b(int i) {
        if (this.b.b() == 1) {
            try {
                Thread.sleep(230);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (this.A >= this.B && this.b.b() != 1) {
            if (i == 0) {
                this.b.c().q = (this.b.c().q + 10.0f) % 360.0f;
            } else {
                this.b.c().q = (this.b.c().q - 10.0f) % 360.0f;
            }
            this.A -= 10;
        }
        h();
        this.b.c().r = Math.max(-85.0f, Math.min(85.0f, this.b.c().r));
        float f = 90.0f - this.b.c().r;
        float f2 = (float) Math.toRadians((double) f);
        float f3 = (float) Math.toRadians((double) this.b.c().q);
        this.o[0] = (float) (((double) this.b.c().l) * Math.sin((double) f2) * Math.cos((double) f3));
        this.o[1] = (float) (((double) this.b.c().l) * Math.cos((double) f2));
        this.o[2] = (float) (((double) this.b.c().l) * Math.sin((double) f2) * Math.sin((double) f3));
        float[] fArr = new float[]{(float) (((double) (this.b.c().j - 100.0f)) * Math.sin((double) f2) * Math.cos((double) f3)), (float) (((double) (this.b.c().j - 100.0f)) * Math.cos((double) f2)), (float) (((double) (this.b.c().j - 100.0f)) * Math.sin((double) f2) * Math.sin((double) f3))};
        Matrix.setLookAtM(this.m, 0, this.o[0], this.o[1], this.o[2], fArr[0], fArr[1], fArr[2], 0.0f, 1.0f, 0.0f);
    }

    static void b(GifGenerate$e gifGenerate$e) {
        gifGenerate$e.b();
    }

    static boolean b(GifGenerate$e gifGenerate$e, boolean z) {
        gifGenerate$e.s = z;
        return z;
    }

    private void c() {
        if (this.s) {
            if (this.b.c().m == 3 && !this.t) {
                if (this.b.b() == 1 || this.b.b() == 2) {
                    if (this.A > this.B) {
                        b(this.u);
                        return;
                    } else if (this.b.b() == 2) {
                        if (this.C.size() != 0) {
                            GifGenerate.b("bitmapArrayList.size()" + this.C.size(), 2);
                            if (!this.b.d()) {
                                a(this.x, this.C);
                            }
                        }
                        f();
                    }
                    this.A = this.z;
                    this.s = false;
                    if (this.b.b() == 1) {
                        this.b.c(0);
                        this.b.d(0);
                        return;
                    } else if (this.b.d() != 1) {
                        this.b.c(4);
                        this.b.d(4);
                        return;
                    } else {
                        this.b.c(3);
                        this.b.d(3);
                        return;
                    }
                }
                this.s = false;
            } else if (this.t) {
                this.b.c(0);
                this.s = false;
                if (this.b.a != null) {
                    this.b.a.pause();
                    this.b.seekTo(this.y);
                }
                c(this.u);
                f();
                this.A = this.z;
                this.t = false;
                this.s = true;
                this.b.d(0);
                this.b.c(0);
            } else {
                this.s = false;
            }
        }
    }

    private void c(int i) {
        if (i == 0) {
            this.b.c().q = (this.b.c().q - ((float) (this.z - this.A))) % 360.0f;
        } else {
            this.b.c().q = (this.b.c().q + ((float) (this.z - this.A))) % 360.0f;
        }
    }

    static void c(GifGenerate$e gifGenerate$e) {
        gifGenerate$e.j();
    }

    static void c(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.a(i);
    }

    static boolean c(GifGenerate$e gifGenerate$e, boolean z) {
        gifGenerate$e.p = z;
        return z;
    }

    static int d(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.z;
    }

    static int d(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.i = i;
        return i;
    }

    private Bitmap d(int i) {
        switch (i) {
            case 1:
                return BitmapFactory.decodeResource(this.b.j().getResources(), 2130838280);
            case 2:
                return BitmapFactory.decodeResource(this.b.j().getResources(), 2130838284);
            case 3:
                return BitmapFactory.decodeResource(this.b.j().getResources(), 2130838287);
            case 4:
                return BitmapFactory.decodeResource(this.b.j().getResources(), 2130838291);
            default:
                return null;
        }
    }

    private void d() {
        if (this.b.c().m == 1) {
            if (!this.t) {
                Log.e(GifGenerate.h(), "getCurrentPosition" + this.b.a.getCurrentPosition());
                Log.e(GifGenerate.h(), "playVideoEndTime" + this.b.i());
                if (this.b.getCurrentPosition() / 1000 < this.b.i()) {
                    return;
                }
                if (this.b.b() == 2) {
                    if (this.C.size() != 0) {
                        GifGenerate.b("bitmapArrayList.size()" + this.C.size(), 2);
                        if (!this.b.d()) {
                            a(this.x, this.C);
                        }
                    }
                    f();
                }
                this.s = false;
                this.b.a.pause();
                this.b.seekTo(this.y);
                this.A = this.z;
                if (this.b.b() == 1) {
                    this.b.c(0);
                    this.b.d(0);
                    return;
                } else if (this.b.d() != 1) {
                    this.b.c(4);
                    this.b.d(4);
                    return;
                } else {
                    this.b.c(3);
                    this.b.d(3);
                    return;
                }
            }
            this.b.c(0);
            this.s = false;
            if (this.b.a != null) {
                this.b.a.pause();
                this.b.seekTo(this.y);
            }
            f();
            this.A = this.z;
            this.t = false;
            this.b.d(0);
            this.b.c(0);
        }
    }

    static boolean d(GifGenerate$e gifGenerate$e, boolean z) {
        gifGenerate$e.t = z;
        return z;
    }

    static int e(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.u;
    }

    static int e(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.j = i;
        return i;
    }

    private void e() {
        this.C = new ArrayList();
    }

    static void e(GifGenerate$e gifGenerate$e, boolean z) {
        gifGenerate$e.r = z;
    }

    static int f(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.c = i;
        return i;
    }

    private void f() {
        GifGenerate.b("imageListClean", 2);
        if (this.C != null) {
            if (this.C.size() != 0) {
                for (int i = 0; i < this.C.size(); i++) {
                    ((Bitmap) this.C.get(i)).recycle();
                }
                this.C.clear();
            }
            GifGenerate.b("imageListCleaEnd", 2);
        }
        this.b.b = 0;
    }

    static void f(GifGenerate$e gifGenerate$e) {
        gifGenerate$e.e();
    }

    static int g(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.w;
    }

    static int g(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.v = i;
        return i;
    }

    private float g() {
        if (this.b.c().b == 0) {
            return ((float) this.b.c().o) / ((float) this.b.c().p);
        }
        return ((float) (this.b.c().o / 2)) / ((float) this.b.c().p);
    }

    static ArrayList h(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.C;
    }

    private void h() {
        float g = g();
        if (this.b.c().a != 5) {
            if (this.b.c().a == 3 || this.b.c().a == 6) {
                if (this.b.c().l < 0.0f) {
                    Matrix.perspectiveM(this.n, 0, this.b.c().f, g, this.b.c().c);
                } else {
                    Matrix.perspectiveM(this.n, 0, this.b.c().f, g, this.b.c().l - 300.0f, this.b.c().c);
                }
            } else if (this.b.c().l < 0.0f) {
                Matrix.perspectiveM(this.n, 0, this.b.c().f, g, this.b.c().c);
            } else {
                Matrix.perspectiveM(this.n, 0, this.b.c().f, g, this.b.c().l, this.b.c().c);
            }
        } else {
            Matrix.perspectiveM(this.n, 0, this.b.c().f, g, this.b.c().c);
        }
    }

    static void h(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.b(i);
    }

    static int i(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.y = i;
        return i;
    }

    static String i(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.x;
    }

    private void i() {
        h();
        this.b.c().r = Math.max(-85.0f, Math.min(85.0f, this.b.c().r));
        float f = 90.0f - this.b.c().r;
        float f2 = (float) Math.toRadians((double) f);
        float f3;
        if (this.b.c().s == 1) {
            f3 = (float) Math.toRadians((double) (this.b.c().q + 90.0f));
        } else if (this.b.c().s == 3) {
            f3 = (float) Math.toRadians(90.0d);
        } else {
            f3 = (float) Math.toRadians((double) this.b.c().q);
        }
        this.o[0] = (float) (((double) this.b.c().l) * Math.sin((double) f2) * Math.cos((double) f3));
        this.o[1] = (float) (((double) this.b.c().l) * Math.cos((double) f2));
        this.o[2] = (float) (((double) this.b.c().l) * Math.sin((double) f2) * Math.sin((double) f3));
        float[] fArr = new float[]{(float) (((double) (this.b.c().j - 100.0f)) * Math.sin((double) f2) * Math.cos((double) f3)), (float) (((double) (this.b.c().j - 100.0f)) * Math.cos((double) f2)), (float) (((double) (this.b.c().j - 100.0f)) * Math.sin((double) f2) * Math.sin((double) f3))};
        Matrix.setLookAtM(this.m, 0, this.o[0], this.o[1], this.o[2], fArr[0], fArr[1], fArr[2], 0.0f, 1.0f, 0.0f);
    }

    static int j(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.D = i;
        return i;
    }

    private void j() {
        this.r = true;
    }

    static void j(GifGenerate$e gifGenerate$e) {
        gifGenerate$e.f();
    }

    static int k(GifGenerate$e gifGenerate$e) {
        return gifGenerate$e.y;
    }

    static int k(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.E = i;
        return i;
    }

    private void k() {
        GLES20.glClear(16384);
        GifGenerate.b("glClear", 0);
        this.f.b();
    }

    static int l(GifGenerate$e gifGenerate$e, int i) {
        gifGenerate$e.w = i;
        return i;
    }

    public int a(Message message) {
        if (this.d == null) {
            return -1;
        }
        this.d.sendMessage(message);
        return 0;
    }

    public void a(String str, ArrayList<Bitmap> arrayList) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(new File(str));
            try {
                byte[] a = a(arrayList);
                if (a != null) {
                    fileOutputStream.write(a);
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (IOException e2) {
                fileOutputStream2 = fileOutputStream;
                try {
                    e2.printStackTrace();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                throw th;
            }
        } catch (IOException e5) {
            e5.printStackTrace();
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        }
        if (this.b.d() != 1) {
            LGeneralFunction.g.a.a(this.b.j(), str);
        }
    }

    public byte[] a(ArrayList<Bitmap> arrayList) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a aVar = new a();
        this.a = 0;
        aVar.b(0);
        aVar.c(18);
        if (this.v == 2 || this.v == 4) {
            aVar.a(new int[]{-1, -1, -1, -2, -2, -2});
            aVar.a(new d[]{new d(10.0f, 10, (this.E - (this.E / 7)) - 10, this.F - 20, this.G)});
        }
        if (this.b.c().m == 3) {
            aVar.a(230);
        } else {
            aVar.a(100);
        }
        GifGenerate.b("bitmaps.size()" + arrayList.size(), 3);
        aVar.a(byteArrayOutputStream);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Bitmap bitmap = (Bitmap) it.next();
            GifGenerate.b("count" + this.a, 3);
            if (this.b.d() != 1) {
                if (bitmap != null) {
                    aVar.a(bitmap);
                    bitmap.recycle();
                }
                this.a++;
            } else {
                byteArrayOutputStream.reset();
                aVar.a();
                return null;
            }
        }
        aVar.a();
        return byteArrayOutputStream.toByteArray();
    }

    public synchronized void start() {
        super.start();
        this.d = new GifGenerate$e$1(this, getLooper());
    }
}