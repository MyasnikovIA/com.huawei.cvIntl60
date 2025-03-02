package GeneralFunction;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;

/* renamed from: GeneralFunction.k */
/* loaded from: classes.dex */
public class C0079k {

    /* renamed from: a */
    private static float f643a = 1.0f;

    /* renamed from: a */
    public static int m784a(Context context, float f) {
        return (int) ((f / Math.ceil(context.getResources().getDisplayMetrics().scaledDensity)) + 0.5d);
    }

    /* renamed from: a */
    public static void m785a() {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(36.0f);
        paint.getTextBounds("P", 0, 1, rect);
        f643a = 36.0f / rect.height();
        C0052d.m465a("", "CCC_InitFontSize_TextSize:36.0,result.height():" + rect.height(), 4);
    }
}
