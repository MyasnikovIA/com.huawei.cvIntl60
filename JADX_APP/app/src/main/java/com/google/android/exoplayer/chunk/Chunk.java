package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;

/* loaded from: classes.dex */
public abstract class Chunk implements Loader.Loadable {
    public static final int NO_PARENT_ID = -1;
    public static final int TRIGGER_ADAPTIVE = 3;
    public static final int TRIGGER_CUSTOM_BASE = 10000;
    public static final int TRIGGER_INITIAL = 1;
    public static final int TRIGGER_MANUAL = 2;
    public static final int TRIGGER_TRICK_PLAY = 4;
    public static final int TRIGGER_UNSPECIFIED = 0;
    public static final int TYPE_CUSTOM_BASE = 10000;
    public static final int TYPE_DRM = 3;
    public static final int TYPE_MANIFEST = 4;
    public static final int TYPE_MEDIA = 1;
    public static final int TYPE_MEDIA_INITIALIZATION = 2;
    public static final int TYPE_UNSPECIFIED = 0;
    protected final DataSource dataSource;
    public final DataSpec dataSpec;
    public final Format format;
    public final int parentId;
    public final int trigger;
    public final int type;

    public abstract long bytesLoaded();

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i, int i2, Format format, int i3) {
        this.dataSource = (DataSource) Assertions.checkNotNull(dataSource);
        this.dataSpec = (DataSpec) Assertions.checkNotNull(dataSpec);
        this.type = i;
        this.trigger = i2;
        this.format = format;
        this.parentId = i3;
    }
}
