package com.google.android.exoplayer.extractor.p095ts;

import com.google.android.exoplayer.util.Assertions;
import java.util.Arrays;

/* loaded from: classes.dex */
final class NalUnitTargetBuffer {
    private boolean isCompleted;
    private boolean isFilling;
    public byte[] nalData;
    public int nalLength;
    private final int targetType;

    public NalUnitTargetBuffer(int i, int i2) {
        this.targetType = i;
        this.nalData = new byte[i2 + 3];
        this.nalData[2] = 1;
    }

    public void reset() {
        this.isFilling = false;
        this.isCompleted = false;
    }

    public boolean isCompleted() {
        return this.isCompleted;
    }

    public void startNalUnit(int i) {
        Assertions.checkState(!this.isFilling);
        this.isFilling = i == this.targetType;
        if (this.isFilling) {
            this.nalLength = 3;
            this.isCompleted = false;
        }
    }

    public void appendToNalUnit(byte[] bArr, int i, int i2) {
        if (this.isFilling) {
            int i3 = i2 - i;
            if (this.nalData.length < this.nalLength + i3) {
                this.nalData = Arrays.copyOf(this.nalData, (this.nalLength + i3) * 2);
            }
            System.arraycopy(bArr, i, this.nalData, this.nalLength, i3);
            this.nalLength = i3 + this.nalLength;
        }
    }

    public boolean endNalUnit(int i) {
        if (!this.isFilling) {
            return false;
        }
        this.nalLength -= i;
        this.isFilling = false;
        this.isCompleted = true;
        return true;
    }
}
