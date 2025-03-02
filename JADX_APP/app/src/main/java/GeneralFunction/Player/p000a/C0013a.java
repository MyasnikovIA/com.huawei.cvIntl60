package GeneralFunction.Player.p000a;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLUtils;

/* renamed from: GeneralFunction.Player.a.a */
/* loaded from: classes.dex */
public class C0013a {

    /* renamed from: b */
    private EGLConfig f91b;

    /* renamed from: a */
    private EGLDisplay f90a = EGL14.EGL_NO_DISPLAY;

    /* renamed from: c */
    private EGLContext f92c = EGL14.EGL_NO_CONTEXT;

    /* renamed from: d */
    private EGLSurface f93d = EGL14.EGL_NO_SURFACE;

    public C0013a() {
        m116a();
    }

    /* renamed from: a */
    public void m116a() {
        this.f90a = EGL14.eglGetDisplay(0);
        if (this.f90a == EGL14.EGL_NO_DISPLAY) {
            m115a("eglGetDisplay");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.f90a, iArr, 0, iArr, 1)) {
            m115a("eglInitialize");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        if (!EGL14.eglChooseConfig(this.f90a, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12352, 4, 12344}, 0, eGLConfigArr, 0, eGLConfigArr.length, iArr2, 0)) {
            m115a("eglChooseConfig");
        }
        if (iArr2[0] <= 0) {
            m115a("No EGL config found for attribute list");
        }
        this.f91b = eGLConfigArr[0];
        this.f92c = EGL14.eglCreateContext(this.f90a, this.f91b, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        if (this.f92c == null) {
            m115a("eglCreateContext");
        }
    }

    /* renamed from: a */
    public void m117a(SurfaceTexture surfaceTexture) {
        if (!m121e()) {
            m116a();
        }
        this.f93d = EGL14.eglCreateWindowSurface(this.f90a, this.f91b, surfaceTexture, new int[]{12344}, 0);
        if (this.f93d == null || this.f93d == EGL14.EGL_NO_SURFACE) {
            m115a("eglCreateWindowSurface");
        }
        m119c();
    }

    /* renamed from: b */
    public void m118b() {
        if (!EGL14.eglSwapBuffers(this.f90a, this.f93d)) {
        }
    }

    /* renamed from: a */
    private void m115a(String str) {
        int eglGetError = EGL14.eglGetError();
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError) + ": " + GLUtils.getEGLErrorString(eglGetError));
    }

    /* renamed from: c */
    public void m119c() {
        if (!EGL14.eglMakeCurrent(this.f90a, this.f93d, this.f93d, this.f92c)) {
            m115a("eglMakeCurrent");
        }
    }

    /* renamed from: d */
    public void m120d() {
        if (this.f90a != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(this.f90a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.f90a, this.f93d);
            EGL14.eglDestroyContext(this.f90a, this.f92c);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f90a);
        }
        this.f90a = EGL14.EGL_NO_DISPLAY;
        this.f93d = EGL14.EGL_NO_SURFACE;
        this.f92c = EGL14.EGL_NO_CONTEXT;
        this.f91b = null;
    }

    /* renamed from: e */
    public boolean m121e() {
        return this.f92c != EGL14.EGL_NO_CONTEXT;
    }

    /* renamed from: f */
    public boolean m122f() {
        return this.f93d != EGL14.EGL_NO_SURFACE;
    }
}
