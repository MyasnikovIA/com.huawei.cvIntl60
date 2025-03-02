package GeneralFunction.Player.p000a;

import android.opengl.GLES20;
import android.util.Log;

/* renamed from: GeneralFunction.Player.a.b */
/* loaded from: classes.dex */
public class C0014b {

    /* renamed from: a */
    private static final String f94a = C0014b.class.getSimpleName();

    /* renamed from: a */
    public static int m123a(int i) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i2 = iArr[0];
        GLES20.glActiveTexture(33984);
        if (i == 1 || i == 2) {
            try {
                GLES20.glBindTexture(36197, i2);
                GLES20.glTexParameteri(36197, 10241, 9729);
                GLES20.glTexParameteri(36197, 10240, 9729);
                GLES20.glTexParameteri(36197, 10242, 33071);
                GLES20.glTexParameteri(36197, 10243, 33071);
            } catch (RuntimeException e) {
                Log.e(f94a, e.toString(), e);
                if (i2 != -1) {
                    GLES20.glDeleteTextures(1, iArr, 0);
                }
                return -1;
            }
        }
        if (i == 3) {
            GLES20.glBindTexture(3553, i2);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            return i2;
        }
        return i2;
    }

    /* renamed from: a */
    public static void m124a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        String str2 = str + ": glError 0x" + Integer.toHexString(glGetError);
        Log.e(f94a, str2);
        throw new RuntimeException(str2);
    }
}
