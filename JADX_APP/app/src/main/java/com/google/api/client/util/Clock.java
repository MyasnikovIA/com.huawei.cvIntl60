package com.google.api.client.util;

/* loaded from: classes.dex */
public interface Clock {
    public static final Clock SYSTEM = new Clock() { // from class: com.google.api.client.util.Clock.1
        C14541() {
        }

        @Override // com.google.api.client.util.Clock
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    };

    long currentTimeMillis();

    /* renamed from: com.google.api.client.util.Clock$1 */
    static class C14541 implements Clock {
        C14541() {
        }

        @Override // com.google.api.client.util.Clock
        public long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    }
}
