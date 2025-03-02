package com.google.android.exoplayer.extractor;

/* loaded from: classes.dex */
public interface SeekMap {
    public static final SeekMap UNSEEKABLE = new SeekMap() { // from class: com.google.android.exoplayer.extractor.SeekMap.1
        C12041() {
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public boolean isSeekable() {
            return false;
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public long getPosition(long j) {
            return 0L;
        }
    };

    long getPosition(long j);

    boolean isSeekable();

    /* renamed from: com.google.android.exoplayer.extractor.SeekMap$1 */
    static class C12041 implements SeekMap {
        C12041() {
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public boolean isSeekable() {
            return false;
        }

        @Override // com.google.android.exoplayer.extractor.SeekMap
        public long getPosition(long j) {
            return 0L;
        }
    }
}
