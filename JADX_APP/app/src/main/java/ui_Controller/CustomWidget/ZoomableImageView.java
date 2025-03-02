package ui_Controller.CustomWidget;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class ZoomableImageView extends AppCompatImageView {

    /* renamed from: a */
    private Matrix f7318a;

    /* renamed from: b */
    private Matrix f7319b;

    /* renamed from: c */
    private int f7320c;

    /* renamed from: d */
    private final PointF f7321d;

    /* renamed from: e */
    private final PointF f7322e;

    /* renamed from: f */
    private float f7323f;

    /* renamed from: g */
    private float[] f7324g;

    /* renamed from: h */
    private int f7325h;

    /* renamed from: i */
    private int f7326i;

    /* renamed from: j */
    private float f7327j;

    /* renamed from: k */
    private float f7328k;

    /* renamed from: l */
    private float f7329l;

    /* renamed from: m */
    private int f7330m;

    /* renamed from: n */
    private ScaleGestureDetector f7331n;

    /* renamed from: o */
    private GestureDetector f7332o;

    /* renamed from: p */
    private boolean f7333p;

    public ZoomableImageView(Context context) {
        super(context);
        this.f7320c = 0;
        this.f7321d = new PointF();
        this.f7322e = new PointF();
        this.f7323f = 4.0f;
        this.f7327j = 1.0f;
        this.f7333p = false;
        m6985a(context);
    }

    public ZoomableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7320c = 0;
        this.f7321d = new PointF();
        this.f7322e = new PointF();
        this.f7323f = 4.0f;
        this.f7327j = 1.0f;
        this.f7333p = false;
        m6985a(context);
    }

    /* renamed from: a */
    private void m6985a(Context context) {
        super.setClickable(true);
        this.f7331n = new ScaleGestureDetector(context, new C1648b());
        this.f7332o = new GestureDetector(context, new C1647a());
        this.f7318a = new Matrix();
        this.f7319b = new Matrix();
        this.f7324g = new float[9];
        setImageMatrix(this.f7318a);
        setScaleType(ImageView.ScaleType.MATRIX);
        setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.CustomWidget.ZoomableImageView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ZoomableImageView.this.f7331n.onTouchEvent(motionEvent);
                ZoomableImageView.this.f7332o.onTouchEvent(motionEvent);
                PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                switch (motionEvent.getAction()) {
                    case 0:
                        ZoomableImageView.this.f7321d.set(pointF);
                        ZoomableImageView.this.f7322e.set(ZoomableImageView.this.f7321d);
                        ZoomableImageView.this.f7320c = 1;
                        break;
                    case 1:
                        ZoomableImageView.this.f7320c = 0;
                        int abs = (int) Math.abs(pointF.x - ZoomableImageView.this.f7322e.x);
                        int abs2 = (int) Math.abs(pointF.y - ZoomableImageView.this.f7322e.y);
                        if (abs < 3 && abs2 < 3) {
                            ZoomableImageView.this.performClick();
                            break;
                        }
                        break;
                    case 2:
                        if (ZoomableImageView.this.f7320c == 1) {
                            ZoomableImageView.this.f7318a.postTranslate(ZoomableImageView.this.m6986b(pointF.x - ZoomableImageView.this.f7321d.x, ZoomableImageView.this.f7325h, ZoomableImageView.this.f7328k * ZoomableImageView.this.f7327j), ZoomableImageView.this.m6986b(pointF.y - ZoomableImageView.this.f7321d.y, ZoomableImageView.this.f7326i, ZoomableImageView.this.f7329l * ZoomableImageView.this.f7327j));
                            ZoomableImageView.this.m6988b();
                            ZoomableImageView.this.f7321d.set(pointF.x, pointF.y);
                            break;
                        }
                        break;
                    case 6:
                        ZoomableImageView.this.f7320c = 0;
                        break;
                }
                ZoomableImageView.this.setImageMatrix(ZoomableImageView.this.f7318a);
                ZoomableImageView.this.invalidate();
                return false;
            }
        });
    }

    public void setMaxZoom(float f) {
        if (f == 0.0f) {
            this.f7323f = 4.0f;
        } else {
            this.f7323f = f;
        }
    }

    /* renamed from: a */
    public void m7002a(boolean z) {
        if (z) {
            setScaleType(ImageView.ScaleType.MATRIX);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
    }

    /* renamed from: a */
    public void m7001a() {
        this.f7318a.reset();
        this.f7327j = 1.0f;
        setImageMatrix(this.f7318a);
        this.f7333p = true;
    }

    /* renamed from: ui_Controller.CustomWidget.ZoomableImageView$b */
    private class C1648b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private C1648b() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            ZoomableImageView.this.f7320c = 2;
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            float f = ZoomableImageView.this.f7327j;
            ZoomableImageView.this.f7327j *= scaleFactor;
            if (ZoomableImageView.this.f7327j > ZoomableImageView.this.f7323f) {
                ZoomableImageView.this.f7327j = ZoomableImageView.this.f7323f;
                scaleFactor = ZoomableImageView.this.f7323f / f;
            } else if (ZoomableImageView.this.f7327j < 1.0f) {
                ZoomableImageView.this.f7327j = 1.0f;
                scaleFactor = 1.0f / f;
            }
            if (ZoomableImageView.this.f7328k * ZoomableImageView.this.f7327j <= ZoomableImageView.this.f7325h || ZoomableImageView.this.f7329l * ZoomableImageView.this.f7327j <= ZoomableImageView.this.f7326i) {
                ZoomableImageView.this.f7318a.postScale(scaleFactor, scaleFactor, ZoomableImageView.this.f7325h / 2, ZoomableImageView.this.f7326i / 2);
            } else {
                ZoomableImageView.this.f7318a.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            }
            ZoomableImageView.this.m6988b();
            return true;
        }
    }

    /* renamed from: ui_Controller.CustomWidget.ZoomableImageView$a */
    private class C1647a extends GestureDetector.SimpleOnGestureListener {
        private C1647a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (ZoomableImageView.this.getScaleType() == ImageView.ScaleType.MATRIX) {
                if (ZoomableImageView.this.f7327j == 1.0f) {
                    ZoomableImageView.this.f7327j = 2.0f;
                } else {
                    ZoomableImageView.this.f7327j = 1.0f;
                }
                ZoomableImageView.this.f7318a.set(ZoomableImageView.this.f7319b);
                if (ZoomableImageView.this.f7327j != 1.0d) {
                    ZoomableImageView.this.f7318a.postScale(ZoomableImageView.this.f7327j, ZoomableImageView.this.f7327j, ZoomableImageView.this.f7325h / 2, ZoomableImageView.this.f7326i / 2);
                }
            }
            return super.onDoubleTap(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6988b() {
        this.f7318a.getValues(this.f7324g);
        float f = this.f7324g[2];
        float f2 = this.f7324g[5];
        float m6980a = m6980a(f, this.f7325h, this.f7328k * this.f7327j);
        float m6980a2 = m6980a(f2, this.f7326i, this.f7329l * this.f7327j);
        if (m6980a != 0.0f || m6980a2 != 0.0f) {
            this.f7318a.postTranslate(m6980a, m6980a2);
        }
    }

    /* renamed from: a */
    private float m6980a(float f, float f2, float f3) {
        float f4;
        float f5;
        if (f3 <= f2) {
            f5 = f2 - f3;
            f4 = 0.0f;
        } else {
            f4 = f2 - f3;
            f5 = 0.0f;
        }
        if (f < f4) {
            return (-f) + f4;
        }
        if (f > f5) {
            return (-f) + f5;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public float m6986b(float f, float f2, float f3) {
        if (f3 <= f2) {
            return 0.0f;
        }
        return f;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f7325h = View.MeasureSpec.getSize(i);
        this.f7326i = View.MeasureSpec.getSize(i2);
        if ((this.f7330m != this.f7325h || this.f7330m != this.f7326i) && this.f7325h != 0 && this.f7326i != 0) {
            this.f7330m = this.f7326i;
            int i3 = this.f7325h;
            if (this.f7327j == 1.0f) {
                Drawable drawable = getDrawable();
                if (drawable != null && drawable.getIntrinsicWidth() != 0 && drawable.getIntrinsicHeight() != 0) {
                    int intrinsicWidth = drawable.getIntrinsicWidth();
                    int intrinsicHeight = drawable.getIntrinsicHeight();
                    Log.d("bmSize", "bmWidth: " + intrinsicWidth + " bmHeight : " + intrinsicHeight);
                    float min = Math.min(this.f7325h / intrinsicWidth, this.f7326i / intrinsicHeight);
                    this.f7318a.setScale(min, min);
                    float f = (this.f7326i - (intrinsicHeight * min)) / 2.0f;
                    float f2 = (this.f7325h - (intrinsicWidth * min)) / 2.0f;
                    this.f7318a.postTranslate(f2, f);
                    this.f7328k = this.f7325h - (f2 * 2.0f);
                    this.f7329l = this.f7326i - (f * 2.0f);
                    setImageMatrix(this.f7318a);
                    this.f7319b.set(this.f7318a);
                    this.f7333p = false;
                } else {
                    return;
                }
            } else if (this.f7333p) {
                m7001a();
                this.f7333p = false;
            }
            m6988b();
        }
    }
}
