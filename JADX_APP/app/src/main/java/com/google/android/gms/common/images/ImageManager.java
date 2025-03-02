package com.google.android.gms.common.images;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzsl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class ImageManager {

    /* renamed from: Co */
    private static final Object f6222Co = new Object();

    /* renamed from: Cp */
    private static HashSet<Uri> f6223Cp = new HashSet<>();

    /* renamed from: Cq */
    private static ImageManager f6224Cq;

    /* renamed from: Cr */
    private static ImageManager f6225Cr;

    /* renamed from: Ct */
    private final zzb f6227Ct;

    /* renamed from: Cu */
    private final zzsl f6228Cu;

    /* renamed from: Cv */
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> f6229Cv;

    /* renamed from: Cw */
    private final Map<Uri, ImageReceiver> f6230Cw;

    /* renamed from: Cx */
    private final Map<Uri, Long> f6231Cx;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: Cs */
    private final ExecutorService f6226Cs = Executors.newFixedThreadPool(4);

    @KeepName
    private final class ImageReceiver extends ResultReceiver {

        /* renamed from: Cy */
        private final ArrayList<com.google.android.gms.common.images.zza> f6232Cy;
        private final Uri mUri;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.f6232Cy = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.f6226Cs.execute(ImageManager.this.new zzc(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzauv() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        public void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzhs("ImageReceiver.addImageRequest() must be called in the main thread");
            this.f6232Cy.add(zzaVar);
        }

        public void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzhs("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.f6232Cy.remove(zzaVar);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    @TargetApi(11)
    private static final class zza {
        static int zza(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class zzb extends LruCache<zza.C1878zza, Bitmap> {
        public zzb(Context context) {
            super(zzbz(context));
        }

        @TargetApi(11)
        private static int zzbz(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((((context.getApplicationInfo().flags & 1048576) != 0) && zzs.zzayn()) ? zza.zza(activityManager) : activityManager.getMemoryClass()) * 1048576 * 0.33f);
        }

        @Override // android.support.v4.util.LruCache
        /* renamed from: zza */
        public int sizeOf(zza.C1878zza c1878zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        @Override // android.support.v4.util.LruCache
        /* renamed from: zza */
        public void entryRemoved(boolean z, zza.C1878zza c1878zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c1878zza, bitmap, bitmap2);
        }
    }

    private final class zzc implements Runnable {

        /* renamed from: CA */
        private final ParcelFileDescriptor f6234CA;
        private final Uri mUri;

        public zzc(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.f6234CA = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzht("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmap = null;
            if (this.f6234CA != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.f6234CA.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.mUri);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf).toString(), e);
                    z = true;
                }
                try {
                    this.f6234CA.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(ImageManager.this.new zzf(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.mUri);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf2).length() + 32).append("Latch interrupted while posting ").append(valueOf2).toString());
            }
        }
    }

    private final class zzd implements Runnable {

        /* renamed from: CB */
        private final com.google.android.gms.common.images.zza f6236CB;

        public zzd(com.google.android.gms.common.images.zza zzaVar) {
            this.f6236CB = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzhs("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f6229Cv.get(this.f6236CB);
            if (imageReceiver != null) {
                ImageManager.this.f6229Cv.remove(this.f6236CB);
                imageReceiver.zzc(this.f6236CB);
            }
            zza.C1878zza c1878zza = this.f6236CB.f6242CD;
            if (c1878zza.uri == null) {
                this.f6236CB.zza(ImageManager.this.mContext, ImageManager.this.f6228Cu, true);
                return;
            }
            Bitmap zza = ImageManager.this.zza(c1878zza);
            if (zza != null) {
                this.f6236CB.zza(ImageManager.this.mContext, zza, true);
                return;
            }
            Long l = (Long) ImageManager.this.f6231Cx.get(c1878zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.f6236CB.zza(ImageManager.this.mContext, ImageManager.this.f6228Cu, true);
                    return;
                }
                ImageManager.this.f6231Cx.remove(c1878zza.uri);
            }
            this.f6236CB.zza(ImageManager.this.mContext, ImageManager.this.f6228Cu);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.f6230Cw.get(c1878zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = ImageManager.this.new ImageReceiver(c1878zza.uri);
                ImageManager.this.f6230Cw.put(c1878zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.f6236CB);
            if (!(this.f6236CB instanceof zza.zzc)) {
                ImageManager.this.f6229Cv.put(this.f6236CB, imageReceiver2);
            }
            synchronized (ImageManager.f6222Co) {
                if (!ImageManager.f6223Cp.contains(c1878zza.uri)) {
                    ImageManager.f6223Cp.add(c1878zza.uri);
                    imageReceiver2.zzauv();
                }
            }
        }
    }

    @TargetApi(14)
    private static final class zze implements ComponentCallbacks2 {

        /* renamed from: Ct */
        private final zzb f6238Ct;

        public zze(zzb zzbVar) {
            this.f6238Ct = zzbVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.f6238Ct.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.f6238Ct.evictAll();
            } else if (i >= 20) {
                this.f6238Ct.trimToSize(this.f6238Ct.size() / 2);
            }
        }
    }

    private final class zzf implements Runnable {

        /* renamed from: CC */
        private boolean f6239CC;
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch zzank;

        public zzf(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.f6239CC = z;
            this.zzank = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.f6232Cy;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                if (z) {
                    zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.f6231Cx.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.zza(ImageManager.this.mContext, ImageManager.this.f6228Cu, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.f6229Cv.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzhs("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.f6227Ct != null) {
                if (this.f6239CC) {
                    ImageManager.this.f6227Ct.evictAll();
                    System.gc();
                    this.f6239CC = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.f6227Ct.put(new zza.C1878zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f6230Cw.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zzank.countDown();
            synchronized (ImageManager.f6222Co) {
                ImageManager.f6223Cp.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.f6227Ct = new zzb(this.mContext);
            if (zzs.zzayq()) {
                zzaut();
            }
        } else {
            this.f6227Ct = null;
        }
        this.f6228Cu = new zzsl();
        this.f6229Cv = new HashMap();
        this.f6230Cw = new HashMap();
        this.f6231Cx = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzg(context, false);
    }

    public Bitmap zza(zza.C1878zza c1878zza) {
        if (this.f6227Ct == null) {
            return null;
        }
        return this.f6227Ct.get(c1878zza);
    }

    @TargetApi(14)
    private void zzaut() {
        this.mContext.registerComponentCallbacks(new zze(this.f6227Ct));
    }

    public static ImageManager zzg(Context context, boolean z) {
        if (z) {
            if (f6225Cr == null) {
                f6225Cr = new ImageManager(context, true);
            }
            return f6225Cr;
        }
        if (f6224Cq == null) {
            f6224Cq = new ImageManager(context, false);
        }
        return f6224Cq;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzgg(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzgg(i);
        zza(zzcVar);
    }

    public void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzc.zzhs("ImageManager.loadImage() must be called in the main thread");
        new zzd(zzaVar).run();
    }
}
