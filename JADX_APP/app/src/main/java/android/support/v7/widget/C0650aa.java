package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.RequiresApi;
import android.support.v7.widget.C0675az;

@RequiresApi(17)
/* renamed from: android.support.v7.widget.aa */
/* loaded from: classes.dex */
class C0650aa extends C0652ac {
    C0650aa() {
    }

    /* renamed from: android.support.v7.widget.aa$1 */
    class AnonymousClass1 implements C0675az.a {
        AnonymousClass1() {
        }

        @Override // android.support.v7.widget.C0675az.a
        /* renamed from: a */
        public void mo3838a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    @Override // android.support.v7.widget.C0652ac, android.support.v7.widget.InterfaceC0654ae
    /* renamed from: a */
    public void mo3837a() {
        C0675az.f3666a = new C0675az.a() { // from class: android.support.v7.widget.aa.1
            AnonymousClass1() {
            }

            @Override // android.support.v7.widget.C0675az.a
            /* renamed from: a */
            public void mo3838a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
