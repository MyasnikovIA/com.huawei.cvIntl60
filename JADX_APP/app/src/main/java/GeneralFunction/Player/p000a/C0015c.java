package GeneralFunction.Player.p000a;

import android.opengl.GLES20;
import android.util.Log;

/* renamed from: GeneralFunction.Player.a.c */
/* loaded from: classes.dex */
public class C0015c {

    /* renamed from: a */
    public static final String f95a = C0015c.class.getSimpleName();

    /* renamed from: b */
    private int f96b;

    public C0015c(String str, String str2) {
        this.f96b = m125a(str, str2);
    }

    /* renamed from: a */
    public int m128a() {
        return this.f96b;
    }

    /* renamed from: b */
    public void m131b() {
        GLES20.glDeleteProgram(this.f96b);
        this.f96b = -1;
    }

    /* renamed from: a */
    private static void m126a(int i, String str) {
        if (i >= 0) {
        } else {
            throw new RuntimeException("Could not find location for " + str);
        }
    }

    /* renamed from: a */
    public int m129a(String str) {
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f96b, str);
        m126a(glGetAttribLocation, str);
        return glGetAttribLocation;
    }

    /* renamed from: b */
    public int m130b(String str) {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.f96b, str);
        m126a(glGetUniformLocation, str);
        return glGetUniformLocation;
    }

    /* renamed from: a */
    private static int m125a(String str, String str2) {
        int m127b = m127b(35633, str);
        int m127b2 = m127b(35632, str2);
        int glCreateProgram = GLES20.glCreateProgram();
        C0014b.m124a("glCreateProgram");
        if (glCreateProgram == 0) {
            Log.e(f95a, "Could not create program");
            return 0;
        }
        GLES20.glAttachShader(glCreateProgram, m127b);
        C0014b.m124a("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, m127b2);
        C0014b.m124a("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return glCreateProgram;
        }
        Log.e(f95a, "Could not link program: ");
        Log.e(f95a, GLES20.glGetProgramInfoLog(glCreateProgram));
        GLES20.glDeleteProgram(glCreateProgram);
        return 0;
    }

    /* renamed from: b */
    private static int m127b(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        C0014b.m124a("glCreateShader type=" + i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Log.e(f95a, "Could not compile shader " + i + ":");
        Log.e(f95a, " " + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }
}
