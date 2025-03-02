package com.google.android.exoplayer;

/* loaded from: classes.dex */
public final class CodecCounters {
    public int codecInitCount;
    public int codecReleaseCount;
    public int droppedOutputBufferCount;
    public int inputBufferCount;
    public int maxConsecutiveDroppedOutputBufferCount;
    public int outputBuffersChangedCount;
    public int outputFormatChangedCount;
    public int renderedOutputBufferCount;
    public int skippedOutputBufferCount;

    public synchronized void ensureUpdated() {
    }

    public String getDebugString() {
        ensureUpdated();
        StringBuilder sb = new StringBuilder();
        sb.append("cic:").append(this.codecInitCount);
        sb.append(" crc:").append(this.codecReleaseCount);
        sb.append(" ibc:").append(this.inputBufferCount);
        sb.append(" ofc:").append(this.outputFormatChangedCount);
        sb.append(" obc:").append(this.outputBuffersChangedCount);
        sb.append(" ren:").append(this.renderedOutputBufferCount);
        sb.append(" sob:").append(this.skippedOutputBufferCount);
        sb.append(" dob:").append(this.droppedOutputBufferCount);
        sb.append(" mcdob:").append(this.maxConsecutiveDroppedOutputBufferCount);
        return sb.toString();
    }
}
