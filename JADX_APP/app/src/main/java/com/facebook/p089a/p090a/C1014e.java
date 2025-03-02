package com.facebook.p089a.p090a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* renamed from: com.facebook.a.a.e */
/* loaded from: classes.dex */
public class C1014e implements SensorEventListener {

    /* renamed from: a */
    private a f5217a;

    /* renamed from: com.facebook.a.a.e$a */
    public interface a {
        /* renamed from: a */
        void mo5707a();
    }

    /* renamed from: a */
    public void m5706a(a aVar) {
        this.f5217a = aVar;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.f5217a != null) {
            double d = sensorEvent.values[0] / 9.80665f;
            double d2 = sensorEvent.values[1] / 9.80665f;
            double d3 = sensorEvent.values[2] / 9.80665f;
            if (Math.sqrt((d2 * d2) + (d * d) + (d3 * d3)) > 2.299999952316284d) {
                this.f5217a.mo5707a();
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }
}
