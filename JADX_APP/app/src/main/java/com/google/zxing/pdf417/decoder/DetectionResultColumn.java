package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

/* loaded from: classes.dex */
class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    DetectionResultColumn(BoundingBox boundingBox) {
        this.boundingBox = new BoundingBox(boundingBox);
        this.codewords = new Codeword[(boundingBox.getMaxY() - boundingBox.getMinY()) + 1];
    }

    final Codeword getCodewordNearby(int i) {
        Codeword codeword;
        Codeword codeword2;
        Codeword codeword3 = getCodeword(i);
        if (codeword3 == null) {
            int i2 = 1;
            while (true) {
                int i3 = i2;
                if (i3 < 5) {
                    int imageRowToCodewordIndex = imageRowToCodewordIndex(i) - i3;
                    if (imageRowToCodewordIndex < 0 || (codeword2 = this.codewords[imageRowToCodewordIndex]) == null) {
                        int imageRowToCodewordIndex2 = imageRowToCodewordIndex(i) + i3;
                        if (imageRowToCodewordIndex2 >= this.codewords.length || (codeword = this.codewords[imageRowToCodewordIndex2]) == null) {
                            i2 = i3 + 1;
                        } else {
                            return codeword;
                        }
                    } else {
                        return codeword2;
                    }
                } else {
                    return null;
                }
            }
        } else {
            return codeword3;
        }
    }

    final int imageRowToCodewordIndex(int i) {
        return i - this.boundingBox.getMinY();
    }

    final void setCodeword(int i, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(i)] = codeword;
    }

    final Codeword getCodeword(int i) {
        return this.codewords[imageRowToCodewordIndex(i)];
    }

    final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    final Codeword[] getCodewords() {
        return this.codewords;
    }

    public String toString() {
        int i;
        Formatter formatter = new Formatter();
        Codeword[] codewordArr = this.codewords;
        int length = codewordArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            Codeword codeword = codewordArr[i2];
            if (codeword == null) {
                i = i3 + 1;
                formatter.format("%3d:    |   %n", Integer.valueOf(i3));
            } else {
                i = i3 + 1;
                formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i3), Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
            }
            i2++;
            i3 = i;
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
