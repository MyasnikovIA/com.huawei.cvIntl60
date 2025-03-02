package GeneralFunction.Player.player;

import GeneralFunction.C0052d;
import GeneralFunction.C0074i;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Message;
import android.view.WindowManager;

/* renamed from: GeneralFunction.Player.player.f */
/* loaded from: classes.dex */
public class C0039f {

    /* renamed from: c */
    private SensorManager f286c;

    /* renamed from: d */
    private Sensor f287d;

    /* renamed from: e */
    private Sensor f288e;

    /* renamed from: g */
    private a f290g;

    /* renamed from: h */
    private b f291h;

    /* renamed from: j */
    private WindowManager f293j;

    /* renamed from: k */
    private c f294k;

    /* renamed from: a */
    private String f284a = "MotionStrategy";

    /* renamed from: b */
    private int f285b = 0;

    /* renamed from: f */
    private boolean f289f = false;

    /* renamed from: i */
    private C0041h f292i = new C0041h();

    /* renamed from: GeneralFunction.Player.player.f$c */
    public interface c {
        /* renamed from: a */
        void mo227a(Message message);
    }

    /* renamed from: a */
    public void m376a(String str, int i) {
        C0052d.m465a(this.f284a, str, i);
    }

    /* renamed from: a */
    public void m374a(c cVar) {
        this.f294k = cVar;
    }

    /* renamed from: a */
    protected void m375a(Context context, C0041h c0041h) {
        if (this.f289f) {
            m376a("registerSensor 2 time!!", 0);
            return;
        }
        this.f289f = true;
        this.f293j = (WindowManager) context.getSystemService("window");
        m366a(context);
        m372b();
        this.f292i = c0041h;
    }

    /* renamed from: a */
    public void m373a() {
        if (!this.f289f) {
            m376a("unregisterSensor 2 time!!", 0);
        }
        this.f289f = false;
        switch (this.f285b) {
            case 1:
                this.f286c.unregisterListener(this.f290g);
                break;
            case 2:
                this.f286c.unregisterListener(this.f291h);
                break;
        }
    }

    /* renamed from: a */
    private void m366a(Context context) {
        this.f286c = (SensorManager) context.getSystemService("sensor");
        this.f285b = 1;
        if (this.f287d == null) {
            this.f287d = this.f286c.getDefaultSensor(11);
            if (this.f287d == null) {
                this.f285b = 2;
                this.f287d = this.f286c.getDefaultSensor(2);
                this.f288e = this.f286c.getDefaultSensor(1);
            }
        }
    }

    /* renamed from: b */
    private void m372b() {
        switch (this.f285b) {
            case 1:
                this.f290g = new a();
                this.f286c.registerListener(this.f290g, this.f287d, 0);
                break;
            case 2:
                this.f291h = new b();
                this.f286c.registerListener(this.f291h, this.f287d, 3);
                this.f286c.registerListener(this.f291h, this.f288e, 3);
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000f, code lost:
    
        return r0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float[] m369a(float[] r7, int r8) {
        /*
            r6 = this;
            r5 = 130(0x82, float:1.82E-43)
            r4 = 129(0x81, float:1.81E-43)
            r1 = 16
            r3 = 2
            r2 = 1
            float[] r0 = new float[r1]
            float[] r1 = new float[r1]
            switch(r8) {
                case 0: goto L10;
                case 1: goto L1e;
                case 2: goto L17;
                case 3: goto L25;
                default: goto Lf;
            }
        Lf:
            return r0
        L10:
            android.hardware.SensorManager.getRotationMatrixFromVector(r1, r7)
            android.hardware.SensorManager.remapCoordinateSystem(r1, r4, r5, r0)
            goto Lf
        L17:
            android.hardware.SensorManager.getRotationMatrixFromVector(r1, r7)
            android.hardware.SensorManager.remapCoordinateSystem(r1, r2, r3, r0)
            goto Lf
        L1e:
            android.hardware.SensorManager.getRotationMatrixFromVector(r1, r7)
            android.hardware.SensorManager.remapCoordinateSystem(r1, r5, r2, r0)
            goto Lf
        L25:
            android.hardware.SensorManager.getRotationMatrixFromVector(r1, r7)
            android.hardware.SensorManager.remapCoordinateSystem(r1, r3, r4, r0)
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.C0039f.m369a(float[], int):float[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0012, code lost:
    
        return r0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float[] m370a(float[] r9, float[] r10, int r11) {
        /*
            r8 = this;
            r2 = 1132920832(0x43870000, float:270.0)
            r6 = 0
            r1 = 0
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            r0 = 16
            float[] r0 = new float[r0]
            r5 = 16
            float[] r5 = new float[r5]
            switch(r11) {
                case 0: goto L13;
                case 1: goto L25;
                case 2: goto L1d;
                case 3: goto L34;
                default: goto L12;
            }
        L12:
            return r0
        L13:
            android.hardware.SensorManager.getRotationMatrix(r0, r6, r10, r9)
            r2 = 1119092736(0x42b40000, float:90.0)
            r5 = r4
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            goto L12
        L1d:
            android.hardware.SensorManager.getRotationMatrix(r0, r6, r10, r9)
            r5 = r4
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            goto L12
        L25:
            android.hardware.SensorManager.getRotationMatrix(r5, r6, r10, r9)
            r6 = 130(0x82, float:1.82E-43)
            r7 = 131(0x83, float:1.84E-43)
            android.hardware.SensorManager.remapCoordinateSystem(r5, r6, r7, r0)
            r5 = r4
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            goto L12
        L34:
            android.hardware.SensorManager.getRotationMatrix(r5, r6, r10, r9)
            r6 = 2
            r7 = 3
            android.hardware.SensorManager.remapCoordinateSystem(r5, r6, r7, r0)
            r5 = r4
            android.opengl.Matrix.rotateM(r0, r1, r2, r3, r4, r5)
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.C0039f.m370a(float[], float[], int):float[]");
    }

    /* renamed from: GeneralFunction.Player.player.f$a */
    public class a implements SensorEventListener {
        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.accuracy != 0) {
                Message obtain = Message.obtain();
                obtain.what = 7;
                obtain.obj = C0039f.this.m369a(sensorEvent.values, C0039f.this.f293j.getDefaultDisplay().getRotation());
                C0039f.this.f294k.mo227a(obtain);
            }
        }
    }

    /* renamed from: GeneralFunction.Player.player.f$b */
    public class b implements SensorEventListener {

        /* renamed from: b */
        private float[] f297b = null;

        /* renamed from: c */
        private float[] f298c = null;

        /* renamed from: d */
        private float[] f299d = null;

        /* renamed from: e */
        private int f300e = 0;

        public b() {
        }

        /* renamed from: a */
        private float m377a(float f, float f2) {
            if (Math.abs(f - f2) <= 3.141592653589793d) {
                return (0.2f * (f - f2)) + f2;
            }
            if (f2 > 0.0f) {
                return (float) ((0.2f * ((6.283185307179586d - f2) + f)) + f2);
            }
            return (float) (f2 - (0.2f * ((f2 + 6.283185307179586d) - f)));
        }

        /* renamed from: a */
        private float m378a(float f, float f2, float f3) {
            return (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 2) {
                this.f297b = sensorEvent.values;
            } else if (sensorEvent.sensor.getType() == 1) {
                this.f298c = sensorEvent.values;
            }
            if (this.f297b != null && this.f298c != null) {
                float[] m370a = C0039f.this.m370a(this.f297b, this.f298c, C0039f.this.f293j.getDefaultDisplay().getRotation());
                if (this.f299d != null) {
                    this.f300e++;
                    float[] m690a = C0074i.m690a(m370a);
                    float[] m690a2 = C0074i.m690a(this.f299d);
                    if (this.f300e > 0) {
                        this.f300e = 0;
                        if (Math.abs(m378a(m690a[0], m690a[1], m690a[2]) - m378a(m690a2[0], m690a2[1], m690a2[2])) > Math.toRadians(2.0d)) {
                            this.f299d = C0074i.m689a(m377a(m690a[0], m690a2[0]), m377a(m690a[1], m690a2[1]), m377a(m690a[2], m690a2[2]));
                            Message obtain = Message.obtain();
                            obtain.what = 7;
                            obtain.obj = this.f299d.clone();
                            C0039f.this.f294k.mo227a(obtain);
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.f299d = (float[]) m370a.clone();
                Message obtain2 = Message.obtain();
                obtain2.what = 7;
                obtain2.obj = m370a.clone();
                C0039f.this.f294k.mo227a(obtain2);
            }
        }
    }
}
