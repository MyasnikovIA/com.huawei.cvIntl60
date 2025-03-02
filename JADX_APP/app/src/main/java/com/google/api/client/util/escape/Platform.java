package com.google.api.client.util.escape;

/* loaded from: classes.dex */
final class Platform {
    private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal<char[]>() { // from class: com.google.api.client.util.escape.Platform.1
        C14601() {
        }

        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[1024];
        }
    };

    private Platform() {
    }

    static char[] charBufferFromThreadLocal() {
        return DEST_TL.get();
    }

    /* renamed from: com.google.api.client.util.escape.Platform$1 */
    static class C14601 extends ThreadLocal<char[]> {
        C14601() {
        }

        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[1024];
        }
    }
}
