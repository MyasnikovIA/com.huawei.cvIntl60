package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.util.Formatter;

/* loaded from: classes.dex */
final class DetectionResult {
    private static final int ADJUST_ROW_NUMBER_SKIP = 2;
    private final int barcodeColumnCount;
    private final BarcodeMetadata barcodeMetadata;
    private BoundingBox boundingBox;
    private final DetectionResultColumn[] detectionResultColumns;

    DetectionResult(BarcodeMetadata barcodeMetadata, BoundingBox boundingBox) {
        this.barcodeMetadata = barcodeMetadata;
        this.barcodeColumnCount = barcodeMetadata.getColumnCount();
        this.boundingBox = boundingBox;
        this.detectionResultColumns = new DetectionResultColumn[this.barcodeColumnCount + 2];
    }

    DetectionResultColumn[] getDetectionResultColumns() {
        adjustIndicatorColumnRowNumbers(this.detectionResultColumns[0]);
        adjustIndicatorColumnRowNumbers(this.detectionResultColumns[this.barcodeColumnCount + 1]);
        int i = PDF417Common.MAX_CODEWORDS_IN_BARCODE;
        while (true) {
            int adjustRowNumbers = adjustRowNumbers();
            if (adjustRowNumbers <= 0 || adjustRowNumbers >= i) {
                break;
            }
            i = adjustRowNumbers;
        }
        return this.detectionResultColumns;
    }

    private void adjustIndicatorColumnRowNumbers(DetectionResultColumn detectionResultColumn) {
        if (detectionResultColumn != null) {
            ((DetectionResultRowIndicatorColumn) detectionResultColumn).adjustCompleteIndicatorColumnRowNumbers(this.barcodeMetadata);
        }
    }

    private int adjustRowNumbers() {
        int adjustRowNumbersByRow = adjustRowNumbersByRow();
        if (adjustRowNumbersByRow == 0) {
            return 0;
        }
        for (int i = 1; i < this.barcodeColumnCount + 1; i++) {
            Codeword[] codewords = this.detectionResultColumns[i].getCodewords();
            for (int i2 = 0; i2 < codewords.length; i2++) {
                if (codewords[i2] != null && !codewords[i2].hasValidRowNumber()) {
                    adjustRowNumbers(i, i2, codewords);
                }
            }
        }
        return adjustRowNumbersByRow;
    }

    private int adjustRowNumbersByRow() {
        adjustRowNumbersFromBothRI();
        return adjustRowNumbersFromLRI() + adjustRowNumbersFromRRI();
    }

    private void adjustRowNumbersFromBothRI() {
        if (this.detectionResultColumns[0] != null && this.detectionResultColumns[this.barcodeColumnCount + 1] != null) {
            Codeword[] codewords = this.detectionResultColumns[0].getCodewords();
            Codeword[] codewords2 = this.detectionResultColumns[this.barcodeColumnCount + 1].getCodewords();
            for (int i = 0; i < codewords.length; i++) {
                if (codewords[i] != null && codewords2[i] != null && codewords[i].getRowNumber() == codewords2[i].getRowNumber()) {
                    for (int i2 = 1; i2 <= this.barcodeColumnCount; i2++) {
                        Codeword codeword = this.detectionResultColumns[i2].getCodewords()[i];
                        if (codeword != null) {
                            codeword.setRowNumber(codewords[i].getRowNumber());
                            if (!codeword.hasValidRowNumber()) {
                                this.detectionResultColumns[i2].getCodewords()[i] = null;
                            }
                        }
                    }
                }
            }
        }
    }

    private int adjustRowNumbersFromRRI() {
        int i;
        if (this.detectionResultColumns[this.barcodeColumnCount + 1] == null) {
            return 0;
        }
        Codeword[] codewords = this.detectionResultColumns[this.barcodeColumnCount + 1].getCodewords();
        int i2 = 0;
        for (int i3 = 0; i3 < codewords.length; i3++) {
            if (codewords[i3] != null) {
                int rowNumber = codewords[i3].getRowNumber();
                int i4 = this.barcodeColumnCount + 1;
                int i5 = 0;
                int i6 = i2;
                while (i4 > 0 && i5 < 2) {
                    Codeword codeword = this.detectionResultColumns[i4].getCodewords()[i3];
                    if (codeword != null) {
                        i = adjustRowNumberIfValid(rowNumber, i5, codeword);
                        if (!codeword.hasValidRowNumber()) {
                            i6++;
                        }
                    } else {
                        i = i5;
                    }
                    i4--;
                    i5 = i;
                }
                i2 = i6;
            }
        }
        return i2;
    }

    private int adjustRowNumbersFromLRI() {
        if (this.detectionResultColumns[0] == null) {
            return 0;
        }
        Codeword[] codewords = this.detectionResultColumns[0].getCodewords();
        int i = 0;
        for (int i2 = 0; i2 < codewords.length; i2++) {
            if (codewords[i2] != null) {
                int rowNumber = codewords[i2].getRowNumber();
                int i3 = 0;
                int i4 = i;
                for (int i5 = 1; i5 < this.barcodeColumnCount + 1 && i3 < 2; i5++) {
                    Codeword codeword = this.detectionResultColumns[i5].getCodewords()[i2];
                    if (codeword != null) {
                        i3 = adjustRowNumberIfValid(rowNumber, i3, codeword);
                        if (!codeword.hasValidRowNumber()) {
                            i4++;
                        }
                    }
                }
                i = i4;
            }
        }
        return i;
    }

    private static int adjustRowNumberIfValid(int i, int i2, Codeword codeword) {
        if (codeword != null && !codeword.hasValidRowNumber()) {
            if (codeword.isValidRowNumber(i)) {
                codeword.setRowNumber(i);
                return 0;
            }
            return i2 + 1;
        }
        return i2;
    }

    private void adjustRowNumbers(int i, int i2, Codeword[] codewordArr) {
        Codeword codeword = codewordArr[i2];
        Codeword[] codewords = this.detectionResultColumns[i - 1].getCodewords();
        Codeword[] codewords2 = this.detectionResultColumns[i + 1] != null ? this.detectionResultColumns[i + 1].getCodewords() : codewords;
        Codeword[] codewordArr2 = new Codeword[14];
        codewordArr2[2] = codewords[i2];
        codewordArr2[3] = codewords2[i2];
        if (i2 > 0) {
            codewordArr2[0] = codewordArr[i2 - 1];
            codewordArr2[4] = codewords[i2 - 1];
            codewordArr2[5] = codewords2[i2 - 1];
        }
        if (i2 > 1) {
            codewordArr2[8] = codewordArr[i2 - 2];
            codewordArr2[10] = codewords[i2 - 2];
            codewordArr2[11] = codewords2[i2 - 2];
        }
        if (i2 < codewordArr.length - 1) {
            codewordArr2[1] = codewordArr[i2 + 1];
            codewordArr2[6] = codewords[i2 + 1];
            codewordArr2[7] = codewords2[i2 + 1];
        }
        if (i2 < codewordArr.length - 2) {
            codewordArr2[9] = codewordArr[i2 + 2];
            codewordArr2[12] = codewords[i2 + 2];
            codewordArr2[13] = codewords2[i2 + 2];
        }
        for (int i3 = 0; i3 < 14 && !adjustRowNumber(codeword, codewordArr2[i3]); i3++) {
        }
    }

    private static boolean adjustRowNumber(Codeword codeword, Codeword codeword2) {
        if (codeword2 == null || !codeword2.hasValidRowNumber() || codeword2.getBucket() != codeword.getBucket()) {
            return false;
        }
        codeword.setRowNumber(codeword2.getRowNumber());
        return true;
    }

    int getBarcodeColumnCount() {
        return this.barcodeColumnCount;
    }

    int getBarcodeRowCount() {
        return this.barcodeMetadata.getRowCount();
    }

    int getBarcodeECLevel() {
        return this.barcodeMetadata.getErrorCorrectionLevel();
    }

    public void setBoundingBox(BoundingBox boundingBox) {
        this.boundingBox = boundingBox;
    }

    BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    void setDetectionResultColumn(int i, DetectionResultColumn detectionResultColumn) {
        this.detectionResultColumns[i] = detectionResultColumn;
    }

    DetectionResultColumn getDetectionResultColumn(int i) {
        return this.detectionResultColumns[i];
    }

    public String toString() {
        DetectionResultColumn detectionResultColumn = this.detectionResultColumns[0];
        if (detectionResultColumn == null) {
            detectionResultColumn = this.detectionResultColumns[this.barcodeColumnCount + 1];
        }
        Formatter formatter = new Formatter();
        for (int i = 0; i < detectionResultColumn.getCodewords().length; i++) {
            formatter.format("CW %3d:", Integer.valueOf(i));
            for (int i2 = 0; i2 < this.barcodeColumnCount + 2; i2++) {
                if (this.detectionResultColumns[i2] == null) {
                    formatter.format("    |   ", new Object[0]);
                } else {
                    Codeword codeword = this.detectionResultColumns[i2].getCodewords()[i];
                    if (codeword == null) {
                        formatter.format("    |   ", new Object[0]);
                    } else {
                        formatter.format(" %3d|%3d", Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
                    }
                }
            }
            formatter.format("%n", new Object[0]);
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
