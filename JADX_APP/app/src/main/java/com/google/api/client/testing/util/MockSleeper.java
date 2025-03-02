package com.google.api.client.testing.util;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Sleeper;

@Beta
/* loaded from: classes.dex */
public class MockSleeper implements Sleeper {
    private int count;
    private long lastMillis;

    @Override // com.google.api.client.util.Sleeper
    public void sleep(long j) {
        this.count++;
        this.lastMillis = j;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getLastMillis() {
        return this.lastMillis;
    }
}
