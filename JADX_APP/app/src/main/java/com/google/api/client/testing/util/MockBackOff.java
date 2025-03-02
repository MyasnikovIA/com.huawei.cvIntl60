package com.google.api.client.testing.util;

import com.google.api.client.util.BackOff;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;

@Beta
/* loaded from: classes.dex */
public class MockBackOff implements BackOff {
    private long backOffMillis;
    private int maxTries = 10;
    private int numTries;

    @Override // com.google.api.client.util.BackOff
    public void reset() {
        this.numTries = 0;
    }

    @Override // com.google.api.client.util.BackOff
    public long nextBackOffMillis() {
        if (this.numTries >= this.maxTries || this.backOffMillis == -1) {
            return -1L;
        }
        this.numTries++;
        return this.backOffMillis;
    }

    public MockBackOff setBackOffMillis(long j) {
        Preconditions.checkArgument(j == -1 || j >= 0);
        this.backOffMillis = j;
        return this;
    }

    public MockBackOff setMaxTries(int i) {
        Preconditions.checkArgument(i >= 0);
        this.maxTries = i;
        return this;
    }

    public final int getMaxTries() {
        return this.numTries;
    }

    public final int getNumberOfTries() {
        return this.numTries;
    }
}
