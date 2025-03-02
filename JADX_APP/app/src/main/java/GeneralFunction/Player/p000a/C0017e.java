package GeneralFunction.Player.p000a;

import GeneralFunction.Player.player.C0035b;
import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.huawei.cvIntl60.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* renamed from: GeneralFunction.Player.a.e */
/* loaded from: classes.dex */
public class C0017e {

    /* renamed from: a */
    private static final String f119a = C0017e.class.getSimpleName();

    /* renamed from: b */
    private C0015c f120b;

    /* renamed from: c */
    private int f121c;

    /* renamed from: d */
    private int f122d;

    /* renamed from: e */
    private int f123e;

    /* renamed from: f */
    private int f124f;

    /* renamed from: k */
    private C0016d f129k;

    /* renamed from: g */
    private float[] f125g = new float[16];

    /* renamed from: h */
    private float[] f126h = new float[16];

    /* renamed from: i */
    private float[] f127i = new float[16];

    /* renamed from: j */
    private float[] f128j = new float[16];

    /* renamed from: l */
    private FloatBuffer f130l = null;

    /* renamed from: m */
    private FloatBuffer f131m = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer().put(new float[]{1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});

    public C0017e(Context context, int i, float f) {
        C0035b.m274a(f119a, "SphericalSceneRenderer VideoMode:" + Integer.toString(i), 3);
        if (i == 1 || i == 2) {
            this.f120b = new C0015c(m145a(context, R.raw.player_360_vertex_shader), m145a(context, R.raw.player_360_fragment_shader_for_video));
            C0035b.m274a(f119a, "Load the video_fragment_shader", 3);
        } else if (i == 3) {
            this.f120b = new C0015c(m145a(context, R.raw.player_360_vertex_shader), m145a(context, R.raw.player_360_fragment_shader_for_bitmap));
            C0035b.m274a(f119a, "Load the bitmap_fragment_shader", 3);
        } else {
            C0035b.m274a(f119a, "Not correct VideoMode:" + i, 3);
            return;
        }
        this.f121c = this.f120b.m129a("aPosition");
        this.f122d = this.f120b.m130b("uMVPMatrix");
        this.f123e = this.f120b.m130b("uTextureMatrix");
        this.f124f = this.f120b.m129a("aTextureCoord");
        GLES20.glDisable(2929);
        this.f129k = new C0016d(180, 0.0f, 0.0f, 0.0f, f, 1, 1);
        GLES20.glUseProgram(this.f120b.m128a());
        GLES20.glEnableVertexAttribArray(this.f121c);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f121c, 3, 5126, false, this.f129k.m140b(), (Buffer) this.f129k.m139a());
        C0014b.m124a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f124f);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f124f, 2, 5126, false, this.f129k.m140b(), this.f129k.m139a().duplicate().position(3));
        C0014b.m124a("glVertexAttribPointer");
        this.f131m.position(0);
    }

    /* renamed from: a */
    public void m157a(int i, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, int i2, int i3, int i4, float f, int i5, int i6, int i7, boolean z, int i8, boolean z2) {
        m153b();
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
                m151a(fArr, fArr2, fArr3, fArr4, fArr5, i8, z2, i4, i3);
                m154b(i3, i);
                m148a(i7, i6, i5);
                if (z) {
                    m150a(fArr2, fArr3, fArr4, fArr5, f);
                    m154b(i3, i);
                    m147a(i7, i6);
                    break;
                }
                break;
            case 4:
                m150a(fArr2, fArr3, fArr4, fArr5, f);
                m154b(i3, i);
                m149a(i2, i7, i6, i5);
                break;
        }
    }

    /* renamed from: b */
    private void m153b() {
        GLES20.glClear(16384);
    }

    /* renamed from: a */
    private void m149a(int i, int i2, int i3, int i4) {
        GLES20.glViewport(0, 0, i3, i2);
        GLES20.glEnable(3089);
        GLES20.glScissor(0, 0, i3, i2);
        GLES20.glDisable(3089);
        GLES20.glDrawArrays(4, 0, 6);
        C0014b.m124a("glDrawArrays");
    }

    /* renamed from: a */
    private void m147a(int i, int i2) {
        GLES20.glViewport(((-i2) * 4) / 7, (-i) / 4, (i2 * 5) / 7, (i * 2) / 3);
        GLES20.glDrawArrays(4, 0, 6);
        GLES20.glViewport((i2 * 1) / 7, (-i) / 4, (i2 * 5) / 7, (i * 2) / 3);
        GLES20.glDrawArrays(4, 0, 6);
        GLES20.glViewport(((i2 * 6) / 7) - 1, (-i) / 4, (i2 * 5) / 7, (i * 2) / 3);
        GLES20.glDrawArrays(4, 0, 6);
    }

    /* renamed from: a */
    private void m148a(int i, int i2, int i3) {
        int i4 = 0;
        if (i3 == 1) {
            GLES20.glViewport(0, 0, i2 / 2, i);
            GLES20.glEnable(3089);
            GLES20.glScissor(0, 0, i2 / 2, i);
            GLES20.glDisable(3089);
            for (int i5 = 0; i5 < this.f129k.m142d().length; i5++) {
                GLES20.glDrawElements(4, this.f129k.m142d()[i5], 5123, this.f129k.m141c()[i5]);
                C0014b.m124a("glDrawElements");
            }
            GLES20.glViewport(i2 / 2, 0, i2 / 2, i);
            GLES20.glEnable(3089);
            GLES20.glScissor(i2 / 2, 0, i2 / 2, i);
            GLES20.glDisable(3089);
            while (i4 < this.f129k.m142d().length) {
                GLES20.glDrawElements(4, this.f129k.m142d()[i4], 5123, this.f129k.m141c()[i4]);
                C0014b.m124a("glDrawElements");
                i4++;
            }
            return;
        }
        GLES20.glViewport(0, 0, i2, i);
        GLES20.glEnable(3089);
        GLES20.glScissor(0, 0, i2, i);
        GLES20.glDisable(3089);
        while (i4 < this.f129k.m142d().length) {
            GLES20.glDrawElements(4, this.f129k.m142d()[i4], 5123, this.f129k.m141c()[i4]);
            C0014b.m124a("glDrawElements");
            i4++;
        }
    }

    /* renamed from: a */
    private void m151a(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, int i, boolean z, int i2, int i3) {
        float[] fArr6 = new float[16];
        System.arraycopy(fArr, 0, fArr6, 0, 16);
        GLES20.glVertexAttribPointer(this.f121c, 3, 5126, false, this.f129k.m140b(), (Buffer) this.f129k.m139a());
        C0014b.m124a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f124f);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f124f, 2, 5126, false, this.f129k.m140b(), this.f129k.m139a().duplicate().position(3));
        C0014b.m124a("glVertexAttribPointer");
        Matrix.translateM(fArr6, 0, 0.0f, 1.0f, 0.0f);
        float[] fArr7 = (float[]) fArr3.clone();
        if (z) {
            Matrix.multiplyMM(this.f126h, 0, fArr4, 0, m152a(i, fArr7), 0);
        } else {
            Matrix.multiplyMM(this.f126h, 0, fArr4, 0, fArr7, 0);
        }
        if ((i3 == 3 && i2 == 2) || (i3 == 3 && i2 == 3)) {
            if (z) {
                Matrix.multiplyMM(fArr7, 0, fArr5, 0, fArr2, 0);
                m146a(i);
                Matrix.multiplyMM(fArr7, 0, m155b(i, (float[]) fArr5.clone()), 0, fArr2, 0);
            } else {
                Matrix.multiplyMM(fArr7, 0, fArr5, 0, fArr2, 0);
            }
        } else {
            Matrix.multiplyMM(fArr7, 0, fArr5, 0, fArr2, 0);
        }
        Matrix.multiplyMM(this.f128j, 0, this.f126h, 0, fArr7, 0);
        GLES20.glUniformMatrix4fv(this.f123e, 1, false, fArr6, 0);
        C0014b.m124a("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.f122d, 1, false, this.f128j, 0);
        C0014b.m124a("glUniformMatrix4fv");
    }

    /* renamed from: a */
    private void m146a(int i) {
        switch (i) {
            case 3:
                Matrix.rotateM(this.f126h, 0, 180.0f, 0.0f, 0.0f, 1.0f);
                Matrix.translateM(this.f126h, 0, 0.0f, -1.0f, 0.0f);
                break;
            case 6:
                Matrix.rotateM(this.f126h, 0, -90.0f, 0.0f, 0.0f, 1.0f);
                Matrix.translateM(this.f126h, 0, 0.0f, -1.0f, 0.0f);
                break;
            case 8:
                Matrix.rotateM(this.f126h, 0, 90.0f, 0.0f, 0.0f, 1.0f);
                Matrix.translateM(this.f126h, 0, 0.0f, -1.0f, 0.0f);
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0009, code lost:
    
        return r9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float[] m152a(int r8, float[] r9) {
        /*
            r7 = this;
            r5 = 1065353216(0x3f800000, float:1.0)
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r1 = 0
            r3 = 0
            switch(r8) {
                case 3: goto L15;
                case 4: goto L9;
                case 5: goto L9;
                case 6: goto La;
                case 7: goto L9;
                case 8: goto L20;
                default: goto L9;
            }
        L9:
            return r9
        La:
            r2 = 1119092736(0x42b40000, float:90.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r3, r6, r3)
            goto L9
        L15:
            r2 = 1127481344(0x43340000, float:180.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r3, r6, r3)
            goto L9
        L20:
            r2 = 1132920832(0x43870000, float:270.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r6, r3, r3)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.p000a.C0017e.m152a(int, float[]):float[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0009, code lost:
    
        return r9;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float[] m155b(int r8, float[] r9) {
        /*
            r7 = this;
            r5 = 1065353216(0x3f800000, float:1.0)
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r1 = 0
            r3 = 0
            switch(r8) {
                case 3: goto L15;
                case 4: goto L9;
                case 5: goto L9;
                case 6: goto La;
                case 7: goto L9;
                case 8: goto L20;
                default: goto L9;
            }
        L9:
            return r9
        La:
            r2 = 1119092736(0x42b40000, float:90.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r3, r6, r3)
            goto L9
        L15:
            r2 = 1127481344(0x43340000, float:180.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r3, r6, r3)
            goto L9
        L20:
            r2 = 1132920832(0x43870000, float:270.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r6, r3, r3)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.p000a.C0017e.m155b(int, float[]):float[]");
    }

    /* renamed from: a */
    private void m150a(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float f) {
        float[] fArr5 = new float[16];
        float[] fArr6 = new float[16];
        if (f < 1.0f) {
            this.f130l = ByteBuffer.allocateDirect(72).order(ByteOrder.nativeOrder()).asFloatBuffer().put(new float[]{1.0f, -f, -8.0f, -1.0f, f, -8.0f, 1.0f, f, -8.0f, 1.0f, -f, -8.0f, -1.0f, -f, -8.0f, -1.0f, f, -8.0f});
        } else {
            float f2 = 1.0f / f;
            this.f130l = ByteBuffer.allocateDirect(72).order(ByteOrder.nativeOrder()).asFloatBuffer().put(new float[]{-1.0f, f2, -8.0f, 1.0f, -f2, -8.0f, 1.0f, f2, -8.0f, -1.0f, f2, -8.0f, -1.0f, -f2, -8.0f, 1.0f, -f2, -8.0f});
        }
        this.f130l.position(0);
        GLES20.glVertexAttribPointer(this.f121c, 3, 5126, false, 0, (Buffer) this.f130l);
        C0014b.m124a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f124f);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f124f, 2, 5126, false, 0, (Buffer) this.f131m);
        C0014b.m124a("glVertexAttribPointer");
        Matrix.translateM(fArr5, 0, 0.0f, 1.0f, 0.0f);
        Matrix.multiplyMM(this.f125g, 0, fArr3, 0, fArr2, 0);
        Matrix.multiplyMM(fArr6, 0, fArr4, 0, fArr, 0);
        Matrix.multiplyMM(this.f127i, 0, this.f125g, 0, fArr6, 0);
        this.f127i = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 1.0f};
        GLES20.glUniformMatrix4fv(this.f123e, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        C0014b.m124a("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.f122d, 1, false, this.f127i, 0);
        C0014b.m124a("glUniformMatrix4fv");
    }

    /* renamed from: b */
    private void m154b(int i, int i2) {
        switch (i) {
            case 1:
                GLES20.glBindTexture(36197, i2);
                C0014b.m124a("glBindTexture");
                break;
            case 2:
                GLES20.glBindTexture(36197, i2);
                C0014b.m124a("glBindTexture");
                break;
            case 3:
                GLES20.glBindTexture(3553, i2);
                C0014b.m124a("glBindTexture");
                break;
        }
    }

    /* renamed from: a */
    public void m156a() {
        this.f120b.m131b();
    }

    /* renamed from: a */
    private static String m145a(Context context, int i) {
        InputStream openRawResource = context.getResources().openRawResource(i);
        InputStreamReader inputStreamReader = new InputStreamReader(openRawResource);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine).append('\n');
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                break;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        bufferedReader.close();
        try {
            inputStreamReader.close();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            openRawResource.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return sb.toString();
    }
}
