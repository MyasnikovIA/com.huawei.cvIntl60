package android.support.design.p045g;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.List;

/* renamed from: android.support.design.g.d */
/* loaded from: classes.dex */
public class C0188d {

    /* renamed from: a */
    public float f1179a;

    /* renamed from: b */
    public float f1180b;

    /* renamed from: c */
    public float f1181c;

    /* renamed from: d */
    public float f1182d;

    /* renamed from: e */
    private final List<c> f1183e;

    /* renamed from: android.support.design.g.d$c */
    public static abstract class c {

        /* renamed from: g */
        protected final Matrix f1193g = new Matrix();

        /* renamed from: a */
        public abstract void mo1526a(Matrix matrix, Path path);
    }

    /* renamed from: a */
    public void m1522a(float f, float f2) {
        this.f1179a = f;
        this.f1180b = f2;
        this.f1181c = f;
        this.f1182d = f2;
        this.f1183e.clear();
    }

    /* renamed from: b */
    public void m1525b(float f, float f2) {
        b bVar = new b();
        bVar.f1191a = f;
        bVar.f1192b = f2;
        this.f1183e.add(bVar);
        this.f1181c = f;
        this.f1182d = f2;
    }

    /* renamed from: a */
    public void m1523a(float f, float f2, float f3, float f4, float f5, float f6) {
        a aVar = new a(f, f2, f3, f4);
        aVar.f1189e = f5;
        aVar.f1190f = f6;
        this.f1183e.add(aVar);
        this.f1181c = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(f5 + f6))));
        this.f1182d = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(f5 + f6))));
    }

    /* renamed from: a */
    public void m1524a(Matrix matrix, Path path) {
        int size = this.f1183e.size();
        for (int i = 0; i < size; i++) {
            this.f1183e.get(i).mo1526a(matrix, path);
        }
    }

    /* renamed from: android.support.design.g.d$b */
    public static class b extends c {

        /* renamed from: a */
        private float f1191a;

        /* renamed from: b */
        private float f1192b;

        @Override // android.support.design.p045g.C0188d.c
        /* renamed from: a */
        public void mo1526a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f1193g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f1191a, this.f1192b);
            path.transform(matrix);
        }
    }

    /* renamed from: android.support.design.g.d$a */
    public static class a extends c {

        /* renamed from: h */
        private static final RectF f1184h = new RectF();

        /* renamed from: a */
        public float f1185a;

        /* renamed from: b */
        public float f1186b;

        /* renamed from: c */
        public float f1187c;

        /* renamed from: d */
        public float f1188d;

        /* renamed from: e */
        public float f1189e;

        /* renamed from: f */
        public float f1190f;

        public a(float f, float f2, float f3, float f4) {
            this.f1185a = f;
            this.f1186b = f2;
            this.f1187c = f3;
            this.f1188d = f4;
        }

        @Override // android.support.design.p045g.C0188d.c
        /* renamed from: a */
        public void mo1526a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f1193g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f1184h.set(this.f1185a, this.f1186b, this.f1187c, this.f1188d);
            path.arcTo(f1184h, this.f1189e, this.f1190f, false);
            path.transform(matrix);
        }
    }
}
