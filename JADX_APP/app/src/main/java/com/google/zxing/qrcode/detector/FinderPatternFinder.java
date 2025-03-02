package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    protected static final int MAX_MODULES = 57;
    protected static final int MIN_SKIP = 3;
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }

    protected final BitMatrix getImage() {
        return this.image;
    }

    protected final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    final FinderPatternInfo find(Map<DecodeHintType, ?> map) {
        int i;
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        boolean z2 = map != null && map.containsKey(DecodeHintType.PURE_BARCODE);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i2 = (height * 3) / 228;
        if (i2 < 3 || z) {
            i2 = 3;
        }
        boolean z3 = false;
        int[] iArr = new int[5];
        int i3 = i2 - 1;
        int i4 = i2;
        while (i3 < height && !z3) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            int i5 = 0;
            int i6 = 0;
            while (i6 < width) {
                if (this.image.get(i6, i3)) {
                    if ((i5 & 1) == 1) {
                        i5++;
                    }
                    iArr[i5] = iArr[i5] + 1;
                } else if ((i5 & 1) == 0) {
                    if (i5 == 4) {
                        if (foundPatternCross(iArr)) {
                            if (handlePossibleCenter(iArr, i3, i6, z2)) {
                                i4 = 2;
                                if (this.hasSkipped) {
                                    z3 = haveMultiplyConfirmedCenters();
                                } else {
                                    if (findRowSkip() > iArr[2]) {
                                        int i7 = i3 + ((r1 - iArr[2]) - 2);
                                        i = width - 1;
                                        i3 = i7;
                                    } else {
                                        i = i6;
                                    }
                                    i6 = i;
                                }
                                i5 = 0;
                                iArr[0] = 0;
                                iArr[1] = 0;
                                iArr[2] = 0;
                                iArr[3] = 0;
                                iArr[4] = 0;
                            } else {
                                iArr[0] = iArr[2];
                                iArr[1] = iArr[3];
                                iArr[2] = iArr[4];
                                iArr[3] = 1;
                                iArr[4] = 0;
                                i5 = 3;
                            }
                        } else {
                            iArr[0] = iArr[2];
                            iArr[1] = iArr[3];
                            iArr[2] = iArr[4];
                            iArr[3] = 1;
                            iArr[4] = 0;
                            i5 = 3;
                        }
                    } else {
                        i5++;
                        iArr[i5] = iArr[i5] + 1;
                    }
                } else {
                    iArr[i5] = iArr[i5] + 1;
                }
                i6++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i3, width, z2)) {
                i4 = iArr[0];
                if (this.hasSkipped) {
                    z3 = haveMultiplyConfirmedCenters();
                }
            }
            i3 += i4;
        }
        FinderPattern[] selectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(selectBestPatterns);
        return new FinderPatternInfo(selectBestPatterns);
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    protected static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((3.0f * f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    private int[] getCrossCheckStateCount() {
        this.crossCheckStateCount[0] = 0;
        this.crossCheckStateCount[1] = 0;
        this.crossCheckStateCount[2] = 0;
        this.crossCheckStateCount[3] = 0;
        this.crossCheckStateCount[4] = 0;
        return this.crossCheckStateCount;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if (r8 < r0) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        if (r9 < r0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        if (r7.image.get(r9 - r0, r8 - r0) != false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        if (r1[1] > r10) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        r1[1] = r1[1] + 1;
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r8 < r0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        if (r9 < r0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r1[1] <= r10) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        if (r8 < r0) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r9 < r0) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        if (r7.image.get(r9 - r0, r8 - r0) == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        if (r1[0] > r10) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        r1[0] = r1[0] + 1;
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        if (r1[0] <= r10) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0073, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0075, code lost:
    
        r2 = r7.image.getHeight();
        r3 = r7.image.getWidth();
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0084, code lost:
    
        if ((r8 + r0) >= r2) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0088, code lost:
    
        if ((r9 + r0) >= r3) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
    
        if (r7.image.get(r9 + r0, r8 + r0) == false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0096, code lost:
    
        r1[2] = r1[2] + 1;
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a2, code lost:
    
        if ((r8 + r0) >= r2) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a6, code lost:
    
        if ((r9 + r0) < r3) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ad, code lost:
    
        if ((r8 + r0) >= r2) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
    
        if ((r9 + r0) >= r3) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bd, code lost:
    
        if (r7.image.get(r9 + r0, r8 + r0) != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c2, code lost:
    
        if (r1[3] >= r10) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c4, code lost:
    
        r1[3] = r1[3] + 1;
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d0, code lost:
    
        if ((r8 + r0) >= r2) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d4, code lost:
    
        if ((r9 + r0) >= r3) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d9, code lost:
    
        if (r1[3] < r10) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e0, code lost:
    
        if ((r8 + r0) >= r2) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e4, code lost:
    
        if ((r9 + r0) >= r3) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f0, code lost:
    
        if (r7.image.get(r9 + r0, r8 + r0) == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f5, code lost:
    
        if (r1[4] >= r10) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f7, code lost:
    
        r1[4] = r1[4] + 1;
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0104, code lost:
    
        if (r1[4] < r10) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0106, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0123, code lost:
    
        if (java.lang.Math.abs(((((r1[0] + r1[1]) + r1[2]) + r1[3]) + r1[4]) - r11) >= (r11 * 2)) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0129, code lost:
    
        if (foundPatternCross(r1) == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x012b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00db, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00a8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x004d, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        if (r9 >= r0) goto L122;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean crossCheckDiagonal(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.crossCheckDiagonal(int, int, int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r4[1] > r14) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r1 < 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        if (r2.get(r13, r1) == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        if (r4[0] > r14) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        r4[0] = r4[0] + 1;
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r4[0] > r14) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        r1 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005c, code lost:
    
        if (r1 >= r3) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
    
        if (r2.get(r13, r1) == false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        r4[2] = r4[2] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        if (r1 == r3) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        if (r1 >= r3) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0076, code lost:
    
        if (r2.get(r13, r1) != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
    
        if (r4[3] >= r14) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007c, code lost:
    
        r4[3] = r4[3] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0085, code lost:
    
        if (r1 == r3) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
    
        if (r4[3] >= r14) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008b, code lost:
    
        if (r1 >= r3) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0091, code lost:
    
        if (r2.get(r13, r1) == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0095, code lost:
    
        if (r4[4] >= r14) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0097, code lost:
    
        r4[4] = r4[4] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a2, code lost:
    
        if (r4[4] >= r14) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bc, code lost:
    
        if ((java.lang.Math.abs(((((r4[0] + r4[1]) + r4[2]) + r4[3]) + r4[4]) - r15) * 5) >= (r15 * 2)) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c2, code lost:
    
        if (foundPatternCross(r4) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return centerFromEnd(r4, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float crossCheckVertical(int r12, int r13, int r14, int r15) {
        /*
            r11 = this;
            r10 = 4
            r9 = 3
            r8 = 1
            r7 = 0
            r0 = 2143289344(0x7fc00000, float:NaN)
            com.google.zxing.common.BitMatrix r2 = r11.image
            int r3 = r2.getHeight()
            int[] r4 = r11.getCrossCheckStateCount()
            r1 = r12
        L11:
            if (r1 < 0) goto L23
            boolean r5 = r2.get(r13, r1)
            if (r5 == 0) goto L23
            r5 = 2
            r6 = r4[r5]
            int r6 = r6 + 1
            r4[r5] = r6
            int r1 = r1 + (-1)
            goto L11
        L23:
            if (r1 >= 0) goto L26
        L25:
            return r0
        L26:
            if (r1 < 0) goto L3b
            boolean r5 = r2.get(r13, r1)
            if (r5 != 0) goto L3b
            r5 = r4[r8]
            if (r5 > r14) goto L3b
            r5 = r4[r8]
            int r5 = r5 + 1
            r4[r8] = r5
            int r1 = r1 + (-1)
            goto L26
        L3b:
            if (r1 < 0) goto L25
            r5 = r4[r8]
            if (r5 > r14) goto L25
        L41:
            if (r1 < 0) goto L56
            boolean r5 = r2.get(r13, r1)
            if (r5 == 0) goto L56
            r5 = r4[r7]
            if (r5 > r14) goto L56
            r5 = r4[r7]
            int r5 = r5 + 1
            r4[r7] = r5
            int r1 = r1 + (-1)
            goto L41
        L56:
            r1 = r4[r7]
            if (r1 > r14) goto L25
            int r1 = r12 + 1
        L5c:
            if (r1 >= r3) goto L6e
            boolean r5 = r2.get(r13, r1)
            if (r5 == 0) goto L6e
            r5 = 2
            r6 = r4[r5]
            int r6 = r6 + 1
            r4[r5] = r6
            int r1 = r1 + 1
            goto L5c
        L6e:
            if (r1 == r3) goto L25
        L70:
            if (r1 >= r3) goto L85
            boolean r5 = r2.get(r13, r1)
            if (r5 != 0) goto L85
            r5 = r4[r9]
            if (r5 >= r14) goto L85
            r5 = r4[r9]
            int r5 = r5 + 1
            r4[r9] = r5
            int r1 = r1 + 1
            goto L70
        L85:
            if (r1 == r3) goto L25
            r5 = r4[r9]
            if (r5 >= r14) goto L25
        L8b:
            if (r1 >= r3) goto La0
            boolean r5 = r2.get(r13, r1)
            if (r5 == 0) goto La0
            r5 = r4[r10]
            if (r5 >= r14) goto La0
            r5 = r4[r10]
            int r5 = r5 + 1
            r4[r10] = r5
            int r1 = r1 + 1
            goto L8b
        La0:
            r2 = r4[r10]
            if (r2 >= r14) goto L25
            r2 = r4[r7]
            r3 = r4[r8]
            int r2 = r2 + r3
            r3 = 2
            r3 = r4[r3]
            int r2 = r2 + r3
            r3 = r4[r9]
            int r2 = r2 + r3
            r3 = r4[r10]
            int r2 = r2 + r3
            int r2 = r2 - r15
            int r2 = java.lang.Math.abs(r2)
            int r2 = r2 * 5
            int r3 = r15 * 2
            if (r2 >= r3) goto L25
            boolean r2 = foundPatternCross(r4)
            if (r2 == 0) goto L25
            float r0 = centerFromEnd(r4, r1)
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.crossCheckVertical(int, int, int, int):float");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r4[1] > r14) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r1 < 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        if (r2.get(r1, r13) == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        if (r4[0] > r14) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        r4[0] = r4[0] + 1;
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r4[0] > r14) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        r1 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005c, code lost:
    
        if (r1 >= r3) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
    
        if (r2.get(r1, r13) == false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        r4[2] = r4[2] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        if (r1 == r3) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        if (r1 >= r3) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0076, code lost:
    
        if (r2.get(r1, r13) != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
    
        if (r4[3] >= r14) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007c, code lost:
    
        r4[3] = r4[3] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0085, code lost:
    
        if (r1 == r3) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
    
        if (r4[3] >= r14) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008b, code lost:
    
        if (r1 >= r3) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0091, code lost:
    
        if (r2.get(r1, r13) == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0095, code lost:
    
        if (r4[4] >= r14) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0097, code lost:
    
        r4[4] = r4[4] + 1;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a2, code lost:
    
        if (r4[4] >= r14) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ba, code lost:
    
        if ((java.lang.Math.abs(((((r4[0] + r4[1]) + r4[2]) + r4[3]) + r4[4]) - r15) * 5) >= r15) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c0, code lost:
    
        if (foundPatternCross(r4) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return centerFromEnd(r4, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float crossCheckHorizontal(int r12, int r13, int r14, int r15) {
        /*
            r11 = this;
            r10 = 4
            r9 = 3
            r8 = 1
            r7 = 0
            r0 = 2143289344(0x7fc00000, float:NaN)
            com.google.zxing.common.BitMatrix r2 = r11.image
            int r3 = r2.getWidth()
            int[] r4 = r11.getCrossCheckStateCount()
            r1 = r12
        L11:
            if (r1 < 0) goto L23
            boolean r5 = r2.get(r1, r13)
            if (r5 == 0) goto L23
            r5 = 2
            r6 = r4[r5]
            int r6 = r6 + 1
            r4[r5] = r6
            int r1 = r1 + (-1)
            goto L11
        L23:
            if (r1 >= 0) goto L26
        L25:
            return r0
        L26:
            if (r1 < 0) goto L3b
            boolean r5 = r2.get(r1, r13)
            if (r5 != 0) goto L3b
            r5 = r4[r8]
            if (r5 > r14) goto L3b
            r5 = r4[r8]
            int r5 = r5 + 1
            r4[r8] = r5
            int r1 = r1 + (-1)
            goto L26
        L3b:
            if (r1 < 0) goto L25
            r5 = r4[r8]
            if (r5 > r14) goto L25
        L41:
            if (r1 < 0) goto L56
            boolean r5 = r2.get(r1, r13)
            if (r5 == 0) goto L56
            r5 = r4[r7]
            if (r5 > r14) goto L56
            r5 = r4[r7]
            int r5 = r5 + 1
            r4[r7] = r5
            int r1 = r1 + (-1)
            goto L41
        L56:
            r1 = r4[r7]
            if (r1 > r14) goto L25
            int r1 = r12 + 1
        L5c:
            if (r1 >= r3) goto L6e
            boolean r5 = r2.get(r1, r13)
            if (r5 == 0) goto L6e
            r5 = 2
            r6 = r4[r5]
            int r6 = r6 + 1
            r4[r5] = r6
            int r1 = r1 + 1
            goto L5c
        L6e:
            if (r1 == r3) goto L25
        L70:
            if (r1 >= r3) goto L85
            boolean r5 = r2.get(r1, r13)
            if (r5 != 0) goto L85
            r5 = r4[r9]
            if (r5 >= r14) goto L85
            r5 = r4[r9]
            int r5 = r5 + 1
            r4[r9] = r5
            int r1 = r1 + 1
            goto L70
        L85:
            if (r1 == r3) goto L25
            r5 = r4[r9]
            if (r5 >= r14) goto L25
        L8b:
            if (r1 >= r3) goto La0
            boolean r5 = r2.get(r1, r13)
            if (r5 == 0) goto La0
            r5 = r4[r10]
            if (r5 >= r14) goto La0
            r5 = r4[r10]
            int r5 = r5 + 1
            r4[r10] = r5
            int r1 = r1 + 1
            goto L8b
        La0:
            r2 = r4[r10]
            if (r2 >= r14) goto L25
            r2 = r4[r7]
            r3 = r4[r8]
            int r2 = r2 + r3
            r3 = 2
            r3 = r4[r3]
            int r2 = r2 + r3
            r3 = r4[r9]
            int r2 = r2 + r3
            r3 = r4[r10]
            int r2 = r2 + r3
            int r2 = r2 - r15
            int r2 = java.lang.Math.abs(r2)
            int r2 = r2 * 5
            if (r2 >= r15) goto L25
            boolean r2 = foundPatternCross(r4)
            if (r2 == 0) goto L25
            float r0 = centerFromEnd(r4, r1)
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.crossCheckHorizontal(int, int, int, int):float");
    }

    protected final boolean handlePossibleCenter(int[] iArr, int i, int i2, boolean z) {
        boolean z2 = false;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        float centerFromEnd = centerFromEnd(iArr, i2);
        float crossCheckVertical = crossCheckVertical(i, (int) centerFromEnd, iArr[2], i3);
        if (Float.isNaN(crossCheckVertical)) {
            return false;
        }
        float crossCheckHorizontal = crossCheckHorizontal((int) centerFromEnd, (int) crossCheckVertical, iArr[2], i3);
        if (Float.isNaN(crossCheckHorizontal)) {
            return false;
        }
        if (z && !crossCheckDiagonal((int) crossCheckVertical, (int) crossCheckHorizontal, iArr[2], i3)) {
            return false;
        }
        float f = i3 / 7.0f;
        int i4 = 0;
        while (true) {
            if (i4 >= this.possibleCenters.size()) {
                break;
            }
            FinderPattern finderPattern = this.possibleCenters.get(i4);
            if (!finderPattern.aboutEquals(f, crossCheckVertical, crossCheckHorizontal)) {
                i4++;
            } else {
                this.possibleCenters.set(i4, finderPattern.combineEstimate(crossCheckVertical, crossCheckHorizontal, f));
                z2 = true;
                break;
            }
        }
        if (!z2) {
            FinderPattern finderPattern2 = new FinderPattern(crossCheckHorizontal, crossCheckVertical, f);
            this.possibleCenters.add(finderPattern2);
            if (this.resultPointCallback != null) {
                this.resultPointCallback.foundPossibleResultPoint(finderPattern2);
            }
        }
        return true;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    private boolean haveMultiplyConfirmedCenters() {
        float f;
        float f2 = 0.0f;
        int size = this.possibleCenters.size();
        float f3 = 0.0f;
        int i = 0;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i++;
                f = finderPattern.getEstimatedModuleSize() + f3;
            } else {
                f = f3;
            }
            f3 = f;
        }
        if (i < 3) {
            return false;
        }
        float f4 = f3 / size;
        Iterator<FinderPattern> it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            f2 += Math.abs(it.next().getEstimatedModuleSize() - f4);
        }
        return f2 <= 0.05f * f3;
    }

    private FinderPattern[] selectBestPatterns() {
        float f = 0.0f;
        int size = this.possibleCenters.size();
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (size > 3) {
            Iterator<FinderPattern> it = this.possibleCenters.iterator();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (it.hasNext()) {
                float estimatedModuleSize = it.next().getEstimatedModuleSize();
                f3 += estimatedModuleSize;
                f2 = (estimatedModuleSize * estimatedModuleSize) + f2;
            }
            float f4 = f3 / size;
            float sqrt = (float) Math.sqrt((f2 / size) - (f4 * f4));
            Collections.sort(this.possibleCenters, new FurthestFromAverageComparator(f4));
            float max = Math.max(0.2f * f4, sqrt);
            int i = 0;
            while (i < this.possibleCenters.size() && this.possibleCenters.size() > 3) {
                if (Math.abs(this.possibleCenters.get(i).getEstimatedModuleSize() - f4) > max) {
                    this.possibleCenters.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.possibleCenters.size() > 3) {
            Iterator<FinderPattern> it2 = this.possibleCenters.iterator();
            while (it2.hasNext()) {
                f += it2.next().getEstimatedModuleSize();
            }
            Collections.sort(this.possibleCenters, new CenterComparator(f / this.possibleCenters.size()));
            this.possibleCenters.subList(3, this.possibleCenters.size()).clear();
        }
        return new FinderPattern[]{this.possibleCenters.get(0), this.possibleCenters.get(1), this.possibleCenters.get(2)};
    }

    private static final class FurthestFromAverageComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        /* synthetic */ FurthestFromAverageComparator(float f, C15581 c15581) {
            this(f);
        }

        private FurthestFromAverageComparator(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            float abs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
            float abs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
            if (abs < abs2) {
                return -1;
            }
            return abs == abs2 ? 0 : 1;
        }
    }

    private static final class CenterComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        /* synthetic */ CenterComparator(float f, C15581 c15581) {
            this(f);
        }

        private CenterComparator(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            if (finderPattern2.getCount() == finderPattern.getCount()) {
                float abs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
                float abs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
                if (abs < abs2) {
                    return 1;
                }
                return abs == abs2 ? 0 : -1;
            }
            return finderPattern2.getCount() - finderPattern.getCount();
        }
    }
}
