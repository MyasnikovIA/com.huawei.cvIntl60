package android.support.v7.widget;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* renamed from: android.support.v7.widget.r */
/* loaded from: classes.dex */
class C0712r {

    /* renamed from: a */
    private static final int[] f3896a = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: b */
    private final ProgressBar f3897b;

    /* renamed from: c */
    private Bitmap f3898c;

    C0712r(ProgressBar progressBar) {
        this.f3897b = progressBar;
    }

    /* renamed from: a */
    void mo4356a(AttributeSet attributeSet, int i) {
        C0687bk m4167a = C0687bk.m4167a(this.f3897b.getContext(), attributeSet, f3896a, i, 0);
        Drawable m4176b = m4167a.m4176b(0);
        if (m4176b != null) {
            this.f3897b.setIndeterminateDrawable(m4352a(m4176b));
        }
        Drawable m4176b2 = m4167a.m4176b(1);
        if (m4176b2 != null) {
            this.f3897b.setProgressDrawable(m4353a(m4176b2, false));
        }
        m4167a.m4172a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private Drawable m4353a(Drawable drawable, boolean z) {
        if (drawable instanceof WrappedDrawable) {
            Drawable wrappedDrawable = ((WrappedDrawable) drawable).getWrappedDrawable();
            if (wrappedDrawable != null) {
                ((WrappedDrawable) drawable).setWrappedDrawable(m4353a(wrappedDrawable, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = m4353a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f3898c == null) {
                    this.f3898c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(m4354b());
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    /* renamed from: a */
    private Drawable m4352a(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            AnimationDrawable animationDrawable2 = new AnimationDrawable();
            animationDrawable2.setOneShot(animationDrawable.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m4353a = m4353a(animationDrawable.getFrame(i), true);
                m4353a.setLevel(10000);
                animationDrawable2.addFrame(m4353a, animationDrawable.getDuration(i));
            }
            animationDrawable2.setLevel(10000);
            return animationDrawable2;
        }
        return drawable;
    }

    /* renamed from: b */
    private Shape m4354b() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: a */
    Bitmap m4355a() {
        return this.f3898c;
    }
}
