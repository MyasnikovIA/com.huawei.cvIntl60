package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import java.util.List;

/* loaded from: classes.dex */
public interface ChunkSource {
    void continueBuffering(long j);

    void disable(List<? extends MediaChunk> list);

    void enable(int i);

    void getChunkOperation(List<? extends MediaChunk> list, long j, ChunkOperationHolder chunkOperationHolder);

    MediaFormat getFormat(int i);

    int getTrackCount();

    void maybeThrowError();

    void onChunkLoadCompleted(Chunk chunk);

    void onChunkLoadError(Chunk chunk, Exception exc);

    boolean prepare();
}
