package com.google.api.client.util;

@Beta
/* loaded from: classes.dex */
public final class BackOffUtils {
    public static boolean next(Sleeper sleeper, BackOff backOff) {
        long nextBackOffMillis = backOff.nextBackOffMillis();
        if (nextBackOffMillis == -1) {
            return false;
        }
        sleeper.sleep(nextBackOffMillis);
        return true;
    }

    private BackOffUtils() {
    }
}
