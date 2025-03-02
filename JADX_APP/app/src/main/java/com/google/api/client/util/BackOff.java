package com.google.api.client.util;

/* loaded from: classes.dex */
public interface BackOff {
    public static final long STOP = -1;
    public static final BackOff ZERO_BACKOFF = new BackOff() { // from class: com.google.api.client.util.BackOff.1
        C14511() {
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }

        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return 0L;
        }
    };
    public static final BackOff STOP_BACKOFF = new BackOff() { // from class: com.google.api.client.util.BackOff.2
        C14522() {
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }

        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return -1L;
        }
    };

    long nextBackOffMillis();

    void reset();

    /* renamed from: com.google.api.client.util.BackOff$1 */
    static class C14511 implements BackOff {
        C14511() {
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }

        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return 0L;
        }
    }

    /* renamed from: com.google.api.client.util.BackOff$2 */
    static class C14522 implements BackOff {
        C14522() {
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }

        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return -1L;
        }
    }
}
