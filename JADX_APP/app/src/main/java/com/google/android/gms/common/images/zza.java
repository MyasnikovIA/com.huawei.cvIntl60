package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.internal.zzsj;
import com.google.android.gms.internal.zzsk;
import com.google.android.gms.internal.zzsl;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class zza {

    /* renamed from: CD */
    final C1878zza f6242CD;

    /* renamed from: CF */
    protected int f6244CF;

    /* renamed from: CE */
    protected int f6243CE = 0;

    /* renamed from: CG */
    protected boolean f6245CG = false;

    /* renamed from: CH */
    private boolean f6246CH = true;

    /* renamed from: CI */
    private boolean f6247CI = false;

    /* renamed from: CJ */
    private boolean f6248CJ = true;

    /* renamed from: com.google.android.gms.common.images.zza$zza */
    static final class C1878zza {
        public final Uri uri;

        public C1878zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1878zza)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return zzz.equal(((C1878zza) obj).uri, this.uri);
        }

        public int hashCode() {
            return zzz.hashCode(this.uri);
        }
    }

    public static final class zzb extends zza {

        /* renamed from: CK */
        private WeakReference<ImageView> f6249CK;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzc.zzu(imageView);
            this.f6249CK = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzc.zzu(imageView);
            this.f6249CK = new WeakReference<>(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = (z2 || z3) ? false : true;
            if (z4 && (imageView instanceof zzsk)) {
                int zzauy = ((zzsk) imageView).zzauy();
                if (this.f6244CF != 0 && zzauy == this.f6244CF) {
                    return;
                }
            }
            boolean zzc = zzc(z, z2);
            Drawable zza = zzc ? zza(imageView.getDrawable(), drawable) : drawable;
            imageView.setImageDrawable(zza);
            if (imageView instanceof zzsk) {
                zzsk zzskVar = (zzsk) imageView;
                zzskVar.zzr(z3 ? this.f6242CD.uri : null);
                zzskVar.zzgi(z4 ? this.f6244CF : 0);
            }
            if (zzc) {
                ((zzsj) zza).startTransition(250);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.f6249CK.get();
            ImageView imageView2 = ((zzb) obj).f6249CK.get();
            return (imageView2 == null || imageView == null || !zzz.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.f6249CK.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    public static final class zzc extends zza {

        /* renamed from: CL */
        private WeakReference<ImageManager.OnImageLoadedListener> f6250CL;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzc.zzu(onImageLoadedListener);
            this.f6250CL = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.f6250CL.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.f6250CL.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzz.equal(onImageLoadedListener2, onImageLoadedListener) && zzz.equal(zzcVar.f6242CD, this.f6242CD);
        }

        public int hashCode() {
            return zzz.hashCode(this.f6242CD);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.f6250CL.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.f6242CD.uri, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.f6244CF = 0;
        this.f6242CD = new C1878zza(uri);
        this.f6244CF = i;
    }

    private Drawable zza(Context context, zzsl zzslVar, int i) {
        return context.getResources().getDrawable(i);
    }

    protected zzsj zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzsj) {
            drawable = ((zzsj) drawable).zzauw();
        }
        return new zzsj(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzc.zzu(bitmap);
        zza(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    void zza(Context context, zzsl zzslVar) {
        if (this.f6248CJ) {
            zza(null, false, true, false);
        }
    }

    void zza(Context context, zzsl zzslVar, boolean z) {
        zza(this.f6244CF != 0 ? zza(context, zzslVar, this.f6244CF) : null, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzc(boolean z, boolean z2) {
        return (!this.f6246CH || z2 || z) ? false : true;
    }

    public void zzgg(int i) {
        this.f6244CF = i;
    }
}
