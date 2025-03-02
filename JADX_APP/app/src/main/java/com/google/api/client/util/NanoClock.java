package com.google.api.client.util;

/* loaded from: classes.dex */
public interface NanoClock {
    public static final NanoClock SYSTEM = new NanoClock() { // from class: com.google.api.client.util.NanoClock.1
        C14551() {
        }

        @Override // com.google.api.client.util.NanoClock
        public long nanoTime() {
            return System.nanoTime();
        }
    };

    long nanoTime();

    /* renamed from: com.google.api.client.util.NanoClock$1 */
    static class C14551 implements NanoClock {
        C14551() {
        }

        @Override // com.google.api.client.util.NanoClock
        public long nanoTime() {
            return System.nanoTime();
        }
    }
}
