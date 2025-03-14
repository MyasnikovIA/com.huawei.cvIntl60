package com.google.android.exoplayer.extractor.webm;

import com.google.android.exoplayer.extractor.ExtractorInput;

/* loaded from: classes.dex */
interface EbmlReader {
    public static final int TYPE_BINARY = 4;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_MASTER = 1;
    public static final int TYPE_STRING = 3;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_UNSIGNED_INT = 2;

    void init(EbmlReaderOutput ebmlReaderOutput);

    boolean read(ExtractorInput extractorInput);

    void reset();
}
