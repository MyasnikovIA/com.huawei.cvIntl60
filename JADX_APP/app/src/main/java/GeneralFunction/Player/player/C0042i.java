package GeneralFunction.Player.player;

import GeneralFunction.Player.player.SphericalVideoPlayer;
import android.content.Context;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* renamed from: GeneralFunction.Player.player.i */
/* loaded from: classes.dex */
public class C0042i {

    /* renamed from: a */
    private static final String f396a = C0042i.class.getSimpleName();

    /* renamed from: b */
    private GestureDetector f397b;

    /* renamed from: c */
    private ScaleGestureDetector f398c;

    /* renamed from: e */
    private SphericalVideoPlayer.InterfaceC0028b f400e;

    /* renamed from: h */
    private SphericalVideoPlayer.HandlerThreadC0033g f403h;

    /* renamed from: d */
    private int f399d = 0;

    /* renamed from: f */
    private C0041h f401f = new C0041h();

    /* renamed from: g */
    private boolean f402g = false;

    /* renamed from: i */
    private GestureDetector.SimpleOnGestureListener f404i = new GestureDetector.SimpleOnGestureListener() { // from class: GeneralFunction.Player.player.i.1
        AnonymousClass1() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (C0042i.this.f401f.f382s == 1 || C0042i.this.f401f.f382s == 3) {
                Message obtain = Message.obtain();
                SphericalVideoPlayer.HandlerThreadC0033g unused = C0042i.this.f403h;
                obtain.what = 19;
                C0042i.this.f400e.mo221a(obtain);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (C0042i.this.f401f.f307B) {
                if (C0042i.this.f401f.f331a == 6) {
                    C0042i.this.f401f.f307B = false;
                }
            } else if (C0042i.this.f401f.f382s == 1 || C0042i.this.f401f.f382s == 3) {
                Message obtain = Message.obtain();
                SphericalVideoPlayer.HandlerThreadC0033g unused = C0042i.this.f403h;
                obtain.what = 5;
                int i = C0042i.this.f401f.f382s;
                C0041h unused2 = C0042i.this.f401f;
                if (i == 3) {
                    obtain.obj = new C0040g(f, 0.0f, false, false);
                } else {
                    obtain.obj = new C0040g(f, f2, false, false);
                }
                C0042i.this.f400e.mo223b(obtain);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            C0042i.this.f400e.mo222a(motionEvent);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0020, code lost:
        
            if (r1 == 3) goto L21;
         */
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onFling(android.view.MotionEvent r7, android.view.MotionEvent r8, float r9, float r10) {
            /*
                r6 = this;
                r5 = 3
                r4 = 1
                r3 = 0
                r0 = 0
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 == r4) goto L22
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 != r5) goto L5b
            L22:
                float r1 = java.lang.Math.abs(r9)
                float r2 = java.lang.Math.abs(r10)
                int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                if (r1 <= 0) goto L5c
                r10 = r0
            L2f:
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 != r5) goto L5e
            L3e:
                android.os.Message r1 = android.os.Message.obtain()
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m397b(r2)
                r2 = 18
                r1.what = r2
                GeneralFunction.Player.player.g r2 = new GeneralFunction.Player.player.g
                r2.<init>(r9, r0, r3, r3)
                r1.obj = r2
                GeneralFunction.Player.player.i r0 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.SphericalVideoPlayer$b r0 = GeneralFunction.Player.player.C0042i.m398c(r0)
                r0.mo224c(r1)
            L5b:
                return r4
            L5c:
                r9 = r0
                goto L2f
            L5e:
                r0 = r10
                goto L3e
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.C0042i.AnonymousClass1.onFling(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
        }
    };

    public C0042i(Context context) {
        this.f397b = new GestureDetector(context, this.f404i);
        this.f398c = new ScaleGestureDetector(context, new a());
    }

    /* renamed from: GeneralFunction.Player.player.i$a */
    public class a implements ScaleGestureDetector.OnScaleGestureListener {
        public a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            C0042i.this.f402g = true;
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            C0042i.this.f401f.f307B = true;
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Math.abs((scaleGestureDetector.getCurrentSpan() - scaleGestureDetector.getPreviousSpan()) / (2 * scaleGestureDetector.getTimeDelta())) > 0.03d && scaleFactor != 1.0f) {
                C0042i.this.f401f.f307B = true;
                Message obtain = Message.obtain();
                SphericalVideoPlayer.HandlerThreadC0033g unused = C0042i.this.f403h;
                obtain.what = 6;
                obtain.obj = Float.valueOf(scaleFactor);
                C0042i.this.f400e.mo225d(obtain);
            }
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            C0042i.this.f402g = false;
        }
    }

    /* renamed from: a */
    public boolean m401a(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            this.f398c.onTouchEvent(motionEvent);
            switch (motionEvent.getAction()) {
                case 1:
                case 6:
                case 262:
                    if (!this.f402g) {
                        Message obtain = Message.obtain();
                        SphericalVideoPlayer.HandlerThreadC0033g handlerThreadC0033g = this.f403h;
                        obtain.what = 15;
                        this.f400e.mo226e(obtain);
                    }
                default:
                    return true;
            }
        } else if (motionEvent.getPointerCount() == 1) {
            this.f397b.onTouchEvent(motionEvent);
        }
        return true;
    }

    /* renamed from: a */
    public void m399a(SphericalVideoPlayer.InterfaceC0028b interfaceC0028b) {
        this.f400e = interfaceC0028b;
    }

    /* renamed from: a */
    public void m400a(C0041h c0041h, SphericalVideoPlayer.HandlerThreadC0033g handlerThreadC0033g) {
        this.f401f = c0041h;
        this.f403h = handlerThreadC0033g;
    }

    /* renamed from: GeneralFunction.Player.player.i$1 */
    class AnonymousClass1 extends GestureDetector.SimpleOnGestureListener {
        AnonymousClass1() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (C0042i.this.f401f.f382s == 1 || C0042i.this.f401f.f382s == 3) {
                Message obtain = Message.obtain();
                SphericalVideoPlayer.HandlerThreadC0033g unused = C0042i.this.f403h;
                obtain.what = 19;
                C0042i.this.f400e.mo221a(obtain);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (C0042i.this.f401f.f307B) {
                if (C0042i.this.f401f.f331a == 6) {
                    C0042i.this.f401f.f307B = false;
                }
            } else if (C0042i.this.f401f.f382s == 1 || C0042i.this.f401f.f382s == 3) {
                Message obtain = Message.obtain();
                SphericalVideoPlayer.HandlerThreadC0033g unused = C0042i.this.f403h;
                obtain.what = 5;
                int i = C0042i.this.f401f.f382s;
                C0041h unused2 = C0042i.this.f401f;
                if (i == 3) {
                    obtain.obj = new C0040g(f, 0.0f, false, false);
                } else {
                    obtain.obj = new C0040g(f, f2, false, false);
                }
                C0042i.this.f400e.mo223b(obtain);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            C0042i.this.f400e.mo222a(motionEvent);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            /*
                this = this;
                r5 = 3
                r4 = 1
                r3 = 0
                r0 = 0
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 == r4) goto L22
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 != r5) goto L5b
            L22:
                float r1 = java.lang.Math.abs(r9)
                float r2 = java.lang.Math.abs(r10)
                int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                if (r1 <= 0) goto L5c
                r10 = r0
            L2f:
                GeneralFunction.Player.player.i r1 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.h r1 = GeneralFunction.Player.player.C0042i.m395a(r1)
                int r1 = r1.f382s
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m395a(r2)
                if (r1 != r5) goto L5e
            L3e:
                android.os.Message r1 = android.os.Message.obtain()
                GeneralFunction.Player.player.i r2 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.C0042i.m397b(r2)
                r2 = 18
                r1.what = r2
                GeneralFunction.Player.player.g r2 = new GeneralFunction.Player.player.g
                r2.<init>(r9, r0, r3, r3)
                r1.obj = r2
                GeneralFunction.Player.player.i r0 = GeneralFunction.Player.player.C0042i.this
                GeneralFunction.Player.player.SphericalVideoPlayer$b r0 = GeneralFunction.Player.player.C0042i.m398c(r0)
                r0.mo224c(r1)
            L5b:
                return r4
            L5c:
                r9 = r0
                goto L2f
            L5e:
                r0 = r10
                goto L3e
            */
            throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.Player.player.C0042i.AnonymousClass1.onFling(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
        }
    }
}
