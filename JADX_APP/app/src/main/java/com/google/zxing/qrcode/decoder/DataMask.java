package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
enum DataMask {
    DATA_MASK_000 { // from class: com.google.zxing.qrcode.decoder.DataMask.1
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }
    },
    DATA_MASK_001 { // from class: com.google.zxing.qrcode.decoder.DataMask.2
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }
    },
    DATA_MASK_010 { // from class: com.google.zxing.qrcode.decoder.DataMask.3
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    },
    DATA_MASK_011 { // from class: com.google.zxing.qrcode.decoder.DataMask.4
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    },
    DATA_MASK_100 { // from class: com.google.zxing.qrcode.decoder.DataMask.5
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    },
    DATA_MASK_101 { // from class: com.google.zxing.qrcode.decoder.DataMask.6
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 == 0;
        }
    },
    DATA_MASK_110 { // from class: com.google.zxing.qrcode.decoder.DataMask.7
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 < 3;
        }
    },
    DATA_MASK_111 { // from class: com.google.zxing.qrcode.decoder.DataMask.8
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
        }
    };

    abstract boolean isMasked(int i, int i2);

    /* synthetic */ DataMask(C15501 c15501) {
        this();
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$1 */
    enum C15501 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$2 */
    enum C15512 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$3 */
    enum C15523 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$4 */
    enum C15534 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$5 */
    enum C15545 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$6 */
    enum C15556 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 == 0;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$7 */
    enum C15567 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 < 3;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.DataMask$8 */
    enum C15578 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
        }
    }

    final void unmaskBitMatrix(BitMatrix bitMatrix, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    bitMatrix.flip(i3, i2);
                }
            }
        }
    }
}
