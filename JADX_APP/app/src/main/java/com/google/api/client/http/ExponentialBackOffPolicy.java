package com.google.api.client.http;

import com.google.api.client.util.Beta;
import com.google.api.client.util.ExponentialBackOff;
import com.google.api.client.util.NanoClock;

@Beta
@Deprecated
/* loaded from: classes.dex */
public class ExponentialBackOffPolicy implements BackOffPolicy {
    public static final int DEFAULT_INITIAL_INTERVAL_MILLIS = 500;
    public static final int DEFAULT_MAX_ELAPSED_TIME_MILLIS = 900000;
    public static final int DEFAULT_MAX_INTERVAL_MILLIS = 60000;
    public static final double DEFAULT_MULTIPLIER = 1.5d;
    public static final double DEFAULT_RANDOMIZATION_FACTOR = 0.5d;
    private final ExponentialBackOff exponentialBackOff;

    public ExponentialBackOffPolicy() {
        this(new Builder());
    }

    protected ExponentialBackOffPolicy(Builder builder) {
        this.exponentialBackOff = builder.exponentialBackOffBuilder.build();
    }

    @Override // com.google.api.client.http.BackOffPolicy
    public boolean isBackOffRequired(int i) {
        switch (i) {
            case 500:
            case HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE /* 503 */:
                return true;
            case 501:
            case HttpStatusCodes.STATUS_CODE_BAD_GATEWAY /* 502 */:
            default:
                return false;
        }
    }

    @Override // com.google.api.client.http.BackOffPolicy
    public final void reset() {
        this.exponentialBackOff.reset();
    }

    @Override // com.google.api.client.http.BackOffPolicy
    public long getNextBackOffMillis() {
        return this.exponentialBackOff.nextBackOffMillis();
    }

    public final int getInitialIntervalMillis() {
        return this.exponentialBackOff.getInitialIntervalMillis();
    }

    public final double getRandomizationFactor() {
        return this.exponentialBackOff.getRandomizationFactor();
    }

    public final int getCurrentIntervalMillis() {
        return this.exponentialBackOff.getCurrentIntervalMillis();
    }

    public final double getMultiplier() {
        return this.exponentialBackOff.getMultiplier();
    }

    public final int getMaxIntervalMillis() {
        return this.exponentialBackOff.getMaxIntervalMillis();
    }

    public final int getMaxElapsedTimeMillis() {
        return this.exponentialBackOff.getMaxElapsedTimeMillis();
    }

    public final long getElapsedTimeMillis() {
        return this.exponentialBackOff.getElapsedTimeMillis();
    }

    public static Builder builder() {
        return new Builder();
    }

    @Beta
    @Deprecated
    public static class Builder {
        final ExponentialBackOff.Builder exponentialBackOffBuilder = new ExponentialBackOff.Builder();

        protected Builder() {
        }

        public ExponentialBackOffPolicy build() {
            return new ExponentialBackOffPolicy(this);
        }

        public final int getInitialIntervalMillis() {
            return this.exponentialBackOffBuilder.getInitialIntervalMillis();
        }

        public Builder setInitialIntervalMillis(int i) {
            this.exponentialBackOffBuilder.setInitialIntervalMillis(i);
            return this;
        }

        public final double getRandomizationFactor() {
            return this.exponentialBackOffBuilder.getRandomizationFactor();
        }

        public Builder setRandomizationFactor(double d) {
            this.exponentialBackOffBuilder.setRandomizationFactor(d);
            return this;
        }

        public final double getMultiplier() {
            return this.exponentialBackOffBuilder.getMultiplier();
        }

        public Builder setMultiplier(double d) {
            this.exponentialBackOffBuilder.setMultiplier(d);
            return this;
        }

        public final int getMaxIntervalMillis() {
            return this.exponentialBackOffBuilder.getMaxIntervalMillis();
        }

        public Builder setMaxIntervalMillis(int i) {
            this.exponentialBackOffBuilder.setMaxIntervalMillis(i);
            return this;
        }

        public final int getMaxElapsedTimeMillis() {
            return this.exponentialBackOffBuilder.getMaxElapsedTimeMillis();
        }

        public Builder setMaxElapsedTimeMillis(int i) {
            this.exponentialBackOffBuilder.setMaxElapsedTimeMillis(i);
            return this;
        }

        public final NanoClock getNanoClock() {
            return this.exponentialBackOffBuilder.getNanoClock();
        }

        public Builder setNanoClock(NanoClock nanoClock) {
            this.exponentialBackOffBuilder.setNanoClock(nanoClock);
            return this;
        }
    }
}
