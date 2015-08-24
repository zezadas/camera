/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

public final class Pools {
    private Pools() {
    }

    public static interface Pool<T> {
        public T acquire();

        public boolean release(T var1);
    }

    public static class SimplePool<T>
    implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int n) {
            if (n <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[n];
        }

        private boolean isInPool(T t) {
            for (int i = 0; i < this.mPoolSize; ++i) {
                if (this.mPool[i] != t) continue;
                return true;
            }
            return false;
        }

        @Override
        public T acquire() {
            if (this.mPoolSize > 0) {
                int n = this.mPoolSize - 1;
                Object object = this.mPool[n];
                this.mPool[n] = null;
                --this.mPoolSize;
                return (T)object;
            }
            return null;
        }

        @Override
        public boolean release(T t) {
            if (this.isInPool(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.mPoolSize < this.mPool.length) {
                this.mPool[this.mPoolSize] = t;
                ++this.mPoolSize;
                return true;
            }
            return false;
        }
    }

    public static class SynchronizedPool<T>
    extends SimplePool<T> {
        private final Object mLock = new Object();

        public SynchronizedPool(int n) {
            super(n);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public T acquire() {
            Object object = this.mLock;
            synchronized (object) {
                Object t = super.acquire();
                return t;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public boolean release(T t) {
            Object object = this.mLock;
            synchronized (object) {
                return super.release(t);
            }
        }
    }

}

