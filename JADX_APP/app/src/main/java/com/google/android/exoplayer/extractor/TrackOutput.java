package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.util.ParsableByteArray;

/* loaded from: classes.dex */
public interface TrackOutput {
    void format(MediaFormat mediaFormat);

    int sampleData(ExtractorInput extractorInput, int i, boolean z);

    void sampleData(ParsableByteArray parsableByteArray, int i);

    void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr);
}
