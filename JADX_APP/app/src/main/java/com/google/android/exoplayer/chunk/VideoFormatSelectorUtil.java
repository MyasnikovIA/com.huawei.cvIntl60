package com.google.android.exoplayer.chunk;

import android.content.Context;
import android.graphics.Point;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class VideoFormatSelectorUtil {
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;

    public static int[] selectVideoFormatsForDefaultDisplay(Context context, List<? extends FormatWrapper> list, String[] strArr, boolean z) {
        Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
        return selectVideoFormats(list, strArr, z, true, false, physicalDisplaySize.x, physicalDisplaySize.y);
    }

    public static int[] selectVideoFormats(List<? extends FormatWrapper> list, String[] strArr, boolean z, boolean z2, boolean z3, int i, int i2) {
        int i3;
        int i4 = Integer.MAX_VALUE;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i5 = 0;
        while (i5 < size) {
            Format format = list.get(i5).getFormat();
            if (isFormatPlayable(format, strArr, z, z3)) {
                arrayList.add(Integer.valueOf(i5));
                if (format.width > 0 && format.height > 0 && i > 0 && i2 > 0) {
                    Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z2, i, i2, format.width, format.height);
                    i3 = format.width * format.height;
                    if (format.width >= ((int) (maxVideoSizeInViewport.x * FRACTION_TO_CONSIDER_FULLSCREEN)) && format.height >= ((int) (maxVideoSizeInViewport.y * FRACTION_TO_CONSIDER_FULLSCREEN)) && i3 < i4) {
                        i5++;
                        i4 = i3;
                    }
                }
            }
            i3 = i4;
            i5++;
            i4 = i3;
        }
        if (i4 != Integer.MAX_VALUE) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                Format format2 = list.get(((Integer) arrayList.get(size2)).intValue()).getFormat();
                if (format2.width > 0 && format2.height > 0) {
                    if (format2.height * format2.width > i4) {
                        arrayList.remove(size2);
                    }
                }
            }
        }
        return Util.toArray(arrayList);
    }

    private static boolean isFormatPlayable(Format format, String[] strArr, boolean z, boolean z2) {
        if (strArr != null && !Util.contains(strArr, format.mimeType)) {
            return false;
        }
        if (z && (format.width >= 1280 || format.height >= 720)) {
            return false;
        }
        if (format.width > 0 && format.height > 0) {
            if (Util.SDK_INT >= 21) {
                String videoMediaMimeType = MimeTypes.getVideoMediaMimeType(format.codecs);
                if (MimeTypes.VIDEO_UNKNOWN.equals(videoMediaMimeType)) {
                    videoMediaMimeType = MimeTypes.VIDEO_H264;
                }
                if (format.frameRate > 0.0f) {
                    return MediaCodecUtil.isSizeAndRateSupportedV21(videoMediaMimeType, z2, format.width, format.height, format.frameRate);
                }
                return MediaCodecUtil.isSizeSupportedV21(videoMediaMimeType, z2, format.width, format.height);
            }
            if (format.width * format.height > MediaCodecUtil.maxH264DecodableFrameSize()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Point getMaxVideoSizeInViewport(boolean r4, int r5, int r6, int r7, int r8) {
        /*
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L2f
            if (r7 <= r8) goto L1f
            r2 = r0
        L7:
            if (r5 <= r6) goto L21
        L9:
            if (r2 == r0) goto L2f
            r1 = r5
            r2 = r6
        Ld:
            int r0 = r7 * r1
            int r3 = r8 * r2
            if (r0 < r3) goto L23
            android.graphics.Point r0 = new android.graphics.Point
            int r1 = r2 * r8
            int r1 = com.google.android.exoplayer.util.Util.ceilDivide(r1, r7)
            r0.<init>(r2, r1)
        L1e:
            return r0
        L1f:
            r2 = r1
            goto L7
        L21:
            r0 = r1
            goto L9
        L23:
            android.graphics.Point r0 = new android.graphics.Point
            int r2 = r1 * r7
            int r2 = com.google.android.exoplayer.util.Util.ceilDivide(r2, r8)
            r0.<init>(r2, r1)
            goto L1e
        L2f:
            r1 = r6
            r2 = r5
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.chunk.VideoFormatSelectorUtil.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    private VideoFormatSelectorUtil() {
    }
}
