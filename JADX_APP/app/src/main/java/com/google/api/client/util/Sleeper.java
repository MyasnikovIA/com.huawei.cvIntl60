package com.google.api.client.util;

/* loaded from: classes.dex */
public interface Sleeper {
    public static final Sleeper DEFAULT = new Sleeper() { // from class: com.google.api.client.util.Sleeper.1
        C14561() {
        }

        @Override // com.google.api.client.util.Sleeper
        public void sleep(long j) {
            Thread.sleep(j);
        }
    };

    void sleep(long j);

    /* renamed from: com.google.api.client.util.Sleeper$1 */
    static class C14561 implements Sleeper {
        C14561() {
        }

        @Override // com.google.api.client.util.Sleeper
        public void sleep(long j) {
            Thread.sleep(j);
        }
    }
}
