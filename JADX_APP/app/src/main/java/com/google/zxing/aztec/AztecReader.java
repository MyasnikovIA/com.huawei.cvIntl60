package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.Reader;
import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045 A[LOOP:0: B:16:0x0043->B:17:0x0045, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r10, java.util.Map<com.google.zxing.DecodeHintType, ?> r11) {
        /*
            r9 = this;
            r3 = 0
            r2 = 0
            com.google.zxing.aztec.detector.Detector r8 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r0 = r10.getBlackMatrix()
            r8.<init>(r0)
            r0 = 0
            com.google.zxing.aztec.AztecDetectorResult r0 = r8.detect(r0)     // Catch: com.google.zxing.NotFoundException -> L4d com.google.zxing.FormatException -> L54
            com.google.zxing.ResultPoint[] r1 = r0.getPoints()     // Catch: com.google.zxing.NotFoundException -> L4d com.google.zxing.FormatException -> L54
            com.google.zxing.aztec.decoder.Decoder r4 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L93 com.google.zxing.NotFoundException -> L95
            r4.<init>()     // Catch: com.google.zxing.FormatException -> L93 com.google.zxing.NotFoundException -> L95
            com.google.zxing.common.DecoderResult r5 = r4.decode(r0)     // Catch: com.google.zxing.FormatException -> L93 com.google.zxing.NotFoundException -> L95
            r4 = r1
            r6 = r2
            r7 = r2
        L20:
            if (r5 != 0) goto L97
            r0 = 1
            com.google.zxing.aztec.AztecDetectorResult r0 = r8.detect(r0)     // Catch: com.google.zxing.FormatException -> L5b com.google.zxing.NotFoundException -> L91
            com.google.zxing.ResultPoint[] r4 = r0.getPoints()     // Catch: com.google.zxing.FormatException -> L5b com.google.zxing.NotFoundException -> L91
            com.google.zxing.aztec.decoder.Decoder r1 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L5b com.google.zxing.NotFoundException -> L91
            r1.<init>()     // Catch: com.google.zxing.FormatException -> L5b com.google.zxing.NotFoundException -> L91
            com.google.zxing.common.DecoderResult r0 = r1.decode(r0)     // Catch: com.google.zxing.FormatException -> L5b com.google.zxing.NotFoundException -> L91
            r8 = r0
        L35:
            if (r11 == 0) goto L63
            com.google.zxing.DecodeHintType r0 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r0 = r11.get(r0)
            com.google.zxing.ResultPointCallback r0 = (com.google.zxing.ResultPointCallback) r0
            if (r0 == 0) goto L63
            int r2 = r4.length
            r1 = r3
        L43:
            if (r1 >= r2) goto L63
            r3 = r4[r1]
            r0.foundPossibleResultPoint(r3)
            int r1 = r1 + 1
            goto L43
        L4d:
            r0 = move-exception
            r1 = r2
        L4f:
            r5 = r2
            r4 = r1
            r6 = r2
            r7 = r0
            goto L20
        L54:
            r0 = move-exception
            r1 = r2
        L56:
            r5 = r2
            r4 = r1
            r6 = r0
            r7 = r2
            goto L20
        L5b:
            r0 = move-exception
        L5c:
            if (r7 == 0) goto L5f
            throw r7
        L5f:
            if (r6 == 0) goto L62
            throw r6
        L62:
            throw r0
        L63:
            com.google.zxing.Result r0 = new com.google.zxing.Result
            java.lang.String r1 = r8.getText()
            byte[] r2 = r8.getRawBytes()
            int r3 = r8.getNumBits()
            com.google.zxing.BarcodeFormat r5 = com.google.zxing.BarcodeFormat.AZTEC
            long r6 = java.lang.System.currentTimeMillis()
            r0.<init>(r1, r2, r3, r4, r5, r6)
            java.util.List r1 = r8.getByteSegments()
            if (r1 == 0) goto L85
            com.google.zxing.ResultMetadataType r2 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r0.putMetadata(r2, r1)
        L85:
            java.lang.String r1 = r8.getECLevel()
            if (r1 == 0) goto L90
            com.google.zxing.ResultMetadataType r2 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r0.putMetadata(r2, r1)
        L90:
            return r0
        L91:
            r0 = move-exception
            goto L5c
        L93:
            r0 = move-exception
            goto L56
        L95:
            r0 = move-exception
            goto L4f
        L97:
            r8 = r5
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }
}
