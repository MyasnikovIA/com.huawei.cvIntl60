package com.google.android.exoplayer.util.extensions;

/* loaded from: classes.dex */
public abstract class Buffer {
    public static final int FLAG_DECODE_ONLY = 2;
    public static final int FLAG_END_OF_STREAM = 1;
    private int flags;

    public void reset() {
        this.flags = 0;
    }

    public final void setFlag(int i) {
        this.flags |= i;
    }

    public final boolean getFlag(int i) {
        return (this.flags & i) == i;
    }
}
