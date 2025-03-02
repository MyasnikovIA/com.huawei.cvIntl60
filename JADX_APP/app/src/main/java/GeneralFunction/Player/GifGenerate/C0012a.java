package GeneralFunction.Player.GifGenerate;

import GeneralFunction.Player.p000a.C0014b;
import GeneralFunction.Player.p000a.C0015c;
import GeneralFunction.Player.p000a.C0016d;
import GeneralFunction.Player.p000a.C0017e;
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

/* renamed from: GeneralFunction.Player.GifGenerate.a */
/* loaded from: classes.dex */
public class C0012a {

    /* renamed from: a */
    private static final String f80a = C0017e.class.getSimpleName();

    /* renamed from: b */
    private C0015c f81b;

    /* renamed from: c */
    private int f82c;

    /* renamed from: d */
    private int f83d;

    /* renamed from: e */
    private int f84e;

    /* renamed from: f */
    private int f85f;

    /* renamed from: i */
    private C0016d f88i;

    /* renamed from: g */
    private float[] f86g = new float[16];

    /* renamed from: h */
    private float[] f87h = new float[16];

    /* renamed from: j */
    private FloatBuffer f89j = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer().put(new float[]{1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});

    public C0012a(Context context, int i) {
        C0035b.m274a(f80a, "SphericalSceneRenderer VideoMode:" + Integer.toString(i), 3);
        if (i == 1 || i == 2) {
            this.f81b = new C0015c(m107a(context, R.raw.player_360_vertex_shader), m107a(context, R.raw.player_360_fragment_shader_for_video));
            C0035b.m274a(f80a, "Load the video_fragment_shader", 3);
        } else if (i == 3) {
            this.f81b = new C0015c(m107a(context, R.raw.player_360_vertex_shader), m107a(context, R.raw.player_360_fragment_shader_for_bitmap));
            C0035b.m274a(f80a, "Load the bitmap_fragment_shader", 3);
        } else {
            C0035b.m274a(f80a, "Not correct VideoMode:" + i, 3);
            return;
        }
        this.f82c = this.f81b.m129a("aPosition");
        this.f83d = this.f81b.m130b("uMVPMatrix");
        this.f84e = this.f81b.m130b("uTextureMatrix");
        this.f85f = this.f81b.m129a("aTextureCoord");
        GLES20.glDisable(2929);
        this.f88i = new C0016d(180, 0.0f, 0.0f, 0.0f, 500.0f, 1, 1);
        GLES20.glUseProgram(this.f81b.m128a());
        GLES20.glEnableVertexAttribArray(this.f82c);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f82c, 3, 5126, false, this.f88i.m140b(), (Buffer) this.f88i.m139a());
        C0014b.m124a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f85f);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f85f, 2, 5126, false, this.f88i.m140b(), this.f88i.m139a().duplicate().position(3));
        C0014b.m124a("glVertexAttribPointer");
        this.f89j.position(0);
    }

    /* renamed from: a */
    public void m114a(int i, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, int i2, int i3, int i4, int i5, boolean z) {
        m111b();
        m109a(fArr, fArr2, fArr3, fArr4, fArr5, i5, z);
        m112b(i2, i);
        m108a(i4, i3);
    }

    /* renamed from: b */
    private void m111b() {
        GLES20.glClear(16384);
        C0014b.m124a("glClear");
    }

    /* renamed from: a */
    private void m108a(int i, int i2) {
        GLES20.glViewport(0, 0, i2, i);
        GLES20.glEnable(3089);
        GLES20.glScissor(0, 0, i2, i);
        GLES20.glDisable(3089);
        for (int i3 = 0; i3 < this.f88i.m142d().length; i3++) {
            GLES20.glDrawElements(4, this.f88i.m142d()[i3], 5123, this.f88i.m141c()[i3]);
            C0014b.m124a("glDrawElements");
        }
    }

    /* renamed from: a */
    private void m109a(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, int i, boolean z) {
        float[] fArr6 = new float[16];
        GLES20.glVertexAttribPointer(this.f82c, 3, 5126, false, this.f88i.m140b(), (Buffer) this.f88i.m139a());
        C0014b.m124a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f85f);
        C0014b.m124a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f85f, 2, 5126, false, this.f88i.m140b(), this.f88i.m139a().duplicate().position(3));
        C0014b.m124a("glVertexAttribPointer");
        Matrix.translateM(fArr, 0, 0.0f, 1.0f, 0.0f);
        float[] fArr7 = (float[]) fArr3.clone();
        if (z) {
            Matrix.multiplyMM(this.f86g, 0, fArr4, 0, m110a(i, fArr7), 0);
        } else {
            Matrix.multiplyMM(this.f86g, 0, fArr4, 0, fArr7, 0);
        }
        Matrix.multiplyMM(fArr7, 0, fArr5, 0, fArr2, 0);
        Matrix.multiplyMM(this.f87h, 0, this.f86g, 0, fArr7, 0);
        GLES20.glUniformMatrix4fv(this.f84e, 1, false, fArr, 0);
        C0014b.m124a("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.f83d, 1, false, this.f87h, 0);
        C0014b.m124a("glUniformMatrix4fv");
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
    private float[] m110a(int r8, float[] r9) {
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
            android.opengl.Matrix.translateM(r9, r1, r6, r6, r3)
            goto L9
        L20:
            r2 = 1132920832(0x43870000, float:270.0)
            r0 = r9
            r4 = r3
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            android.opengl.Matrix.translateM(r9, r1, r6, r3, r3)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.GifGenerate.C0012a.m110a(int, float[]):float[]");
    }

    /* renamed from: b */
    private void m112b(int i, int i2) {
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
    public void m113a() {
        this.f81b.m131b();
    }

    /* renamed from: a */
    public static String m107a(Context context, int i) {
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
