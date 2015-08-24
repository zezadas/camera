/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

public final class Pools {
    private Pools();

    public static interface Pool<T> {
        public T acquire();

        public boolean release(T var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class SimplePool<T>
    implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int var1);

        private boolean isInPool(T var1);

        @Override
        public T acquire();

        @Override
        public boolean release(T var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class SynchronizedPool<T>
    extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int var1);

        @Override
        public T acquire();

        @Override
        public boolean release(T var1);
    }

}

