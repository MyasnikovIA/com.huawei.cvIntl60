package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t);
    }

    private Pools() {
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i];
        }

        @Override // android.support.v4.util.Pools.Pool
        public T acquire() {
            if (this.mPoolSize <= 0) {
                return null;
            }
            int i = this.mPoolSize - 1;
            T t = (T) this.mPool[i];
            this.mPool[i] = null;
            this.mPoolSize--;
            return t;
        }

        @Override // android.support.v4.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (isInPool(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.mPoolSize >= this.mPool.length) {
                return false;
            }
            this.mPool[this.mPoolSize] = t;
            this.mPoolSize++;
            return true;
        }

        private boolean isInPool(@NonNull T t) {
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i) {
            super(i);
            this.mLock = new Object();
        }

        @Override // android.support.v4.util.Pools.SimplePool, android.support.v4.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.mLock) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // android.support.v4.util.Pools.SimplePool, android.support.v4.util.Pools.Pool
        public boolean release(@NonNull T t) {
            boolean release;
            synchronized (this.mLock) {
                release = super.release(t);
            }
            return release;
        }
    }
}
