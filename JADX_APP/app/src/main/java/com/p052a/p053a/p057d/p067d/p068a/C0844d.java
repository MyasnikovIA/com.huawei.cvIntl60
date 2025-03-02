package com.p052a.p053a.p057d.p067d.p068a;

import android.graphics.Bitmap;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0809c;
import com.p052a.p053a.p057d.InterfaceC0888l;

/* renamed from: com.a.a.d.d.a.d */
/* loaded from: classes.dex */
public class C0844d implements InterfaceC0888l<Bitmap> {

    /* renamed from: a */
    public static final C0885i<Integer> f4601a = C0885i.m5107a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: b */
    public static final C0885i<Bitmap.CompressFormat> f4602b = C0885i.m5106a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0068 A[Catch: all -> 0x00e2, TRY_LEAVE, TryCatch #3 {all -> 0x00e2, blocks: (B:3:0x003c, B:18:0x005c, B:11:0x005f, B:13:0x0068, B:39:0x00de, B:37:0x00e1, B:29:0x00d2), top: B:2:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.OutputStream] */
    @Override // com.p052a.p053a.p057d.InterfaceC0839d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo4918a(com.p052a.p053a.p057d.p060b.InterfaceC0804s<android.graphics.Bitmap> r10, java.io.File r11, com.p052a.p053a.p057d.C0886j r12) {
        /*
            r9 = this;
            java.lang.Object r0 = r10.mo4880c()
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            android.graphics.Bitmap$CompressFormat r5 = r9.m4974a(r0, r12)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "encode: ["
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r0.getWidth()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "x"
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r0.getHeight()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "] "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r5)
            java.lang.String r1 = r1.toString()
            android.support.v4.os.TraceCompat.beginSection(r1)
            long r6 = com.p052a.p053a.p081j.C0950d.m5397a()     // Catch: java.lang.Throwable -> Le2
            com.a.a.d.i<java.lang.Integer> r1 = com.p052a.p053a.p057d.p067d.p068a.C0844d.f4601a     // Catch: java.lang.Throwable -> Le2
            java.lang.Object r1 = r12.m5115a(r1)     // Catch: java.lang.Throwable -> Le2
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> Le2
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> Le2
            r4 = 0
            r3 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.IOException -> Lbe java.lang.Throwable -> Lda
            r2.<init>(r11)     // Catch: java.io.IOException -> Lbe java.lang.Throwable -> Lda
            r0.compress(r5, r1, r2)     // Catch: java.lang.Throwable -> Lec java.io.IOException -> Lee
            r2.close()     // Catch: java.lang.Throwable -> Lec java.io.IOException -> Lee
            r1 = 1
            if (r2 == 0) goto L5f
            r2.close()     // Catch: java.lang.Throwable -> Le2 java.io.IOException -> Le7
        L5f:
            java.lang.String r2 = "BitmapEncoder"
            r3 = 2
            boolean r2 = android.util.Log.isLoggable(r2, r3)     // Catch: java.lang.Throwable -> Le2
            if (r2 == 0) goto Lba
            java.lang.String r2 = "BitmapEncoder"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le2
            r3.<init>()     // Catch: java.lang.Throwable -> Le2
            java.lang.String r4 = "Compressed with type: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r4 = " of size "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            int r4 = com.p052a.p053a.p081j.C0955i.m5418a(r0)     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r4 = " in "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            double r4 = com.p052a.p053a.p081j.C0950d.m5396a(r6)     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r4 = ", options format: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            com.a.a.d.i<android.graphics.Bitmap$CompressFormat> r4 = com.p052a.p053a.p057d.p067d.p068a.C0844d.f4602b     // Catch: java.lang.Throwable -> Le2
            java.lang.Object r4 = r12.m5115a(r4)     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r4 = ", hasAlpha: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le2
            boolean r0 = r0.hasAlpha()     // Catch: java.lang.Throwable -> Le2
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch: java.lang.Throwable -> Le2
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Le2
            android.util.Log.v(r2, r0)     // Catch: java.lang.Throwable -> Le2
        Lba:
            android.support.v4.os.TraceCompat.endSection()
            return r1
        Lbe:
            r1 = move-exception
            r2 = r3
        Lc0:
            java.lang.String r3 = "BitmapEncoder"
            r8 = 3
            boolean r3 = android.util.Log.isLoggable(r3, r8)     // Catch: java.lang.Throwable -> Lec
            if (r3 == 0) goto Ld0
            java.lang.String r3 = "BitmapEncoder"
            java.lang.String r8 = "Failed to encode Bitmap"
            android.util.Log.d(r3, r8, r1)     // Catch: java.lang.Throwable -> Lec
        Ld0:
            if (r2 == 0) goto Lf0
            r2.close()     // Catch: java.io.IOException -> Ld7 java.lang.Throwable -> Le2
            r1 = r4
            goto L5f
        Ld7:
            r1 = move-exception
            r1 = r4
            goto L5f
        Lda:
            r0 = move-exception
            r2 = r3
        Ldc:
            if (r2 == 0) goto Le1
            r2.close()     // Catch: java.lang.Throwable -> Le2 java.io.IOException -> Lea
        Le1:
            throw r0     // Catch: java.lang.Throwable -> Le2
        Le2:
            r0 = move-exception
            android.support.v4.os.TraceCompat.endSection()
            throw r0
        Le7:
            r2 = move-exception
            goto L5f
        Lea:
            r1 = move-exception
            goto Le1
        Lec:
            r0 = move-exception
            goto Ldc
        Lee:
            r1 = move-exception
            goto Lc0
        Lf0:
            r1 = r4
            goto L5f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p057d.p067d.p068a.C0844d.mo4918a(com.a.a.d.b.s, java.io.File, com.a.a.d.j):boolean");
    }

    /* renamed from: a */
    private Bitmap.CompressFormat m4974a(Bitmap bitmap, C0886j c0886j) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) c0886j.m5115a(f4602b);
        if (compressFormat == null) {
            if (bitmap.hasAlpha()) {
                return Bitmap.CompressFormat.PNG;
            }
            return Bitmap.CompressFormat.JPEG;
        }
        return compressFormat;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0888l
    /* renamed from: a */
    public EnumC0809c mo4971a(C0886j c0886j) {
        return EnumC0809c.TRANSFORMED;
    }
}
