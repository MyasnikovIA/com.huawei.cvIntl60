package com.google.android.exoplayer.util.extensions;

import java.lang.Exception;

/* loaded from: classes.dex */
public interface Decoder<I, O, E extends Exception> {
    I dequeueInputBuffer();

    O dequeueOutputBuffer();

    void flush();

    void queueInputBuffer(I i);

    void release();
}
