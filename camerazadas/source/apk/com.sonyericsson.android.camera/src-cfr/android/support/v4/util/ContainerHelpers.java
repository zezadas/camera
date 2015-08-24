/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

class ContainerHelpers {
    static final int[] EMPTY_INTS = new int[0];
    static final long[] EMPTY_LONGS = new long[0];
    static final Object[] EMPTY_OBJECTS = new Object[0];

    ContainerHelpers() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static int binarySearch(int[] arrn, int n, int n2) {
        int n3 = 0;
        int n4 = n - 1;
        n = n3;
        n3 = n4;
        while (n <= n3) {
            n4 = n + n3 >>> 1;
            int n5 = arrn[n4];
            if (n5 < n2) {
                n = n4 + 1;
                continue;
            }
            n3 = n4;
            if (n5 <= n2) return n3;
            n3 = n4 - 1;
        }
        return ~ n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static int binarySearch(long[] arrl, int n, long l) {
        int n2 = 0;
        int n3 = n - 1;
        n = n2;
        n2 = n3;
        while (n <= n2) {
            n3 = n + n2 >>> 1;
            long l2 = arrl[n3];
            if (l2 < l) {
                n = n3 + 1;
                continue;
            }
            n2 = n3;
            if (l2 <= l) return n2;
            n2 = n3 - 1;
        }
        return ~ n;
    }

    public static boolean equal(Object object, Object object2) {
        if (object == object2 || object != null && object.equals(object2)) {
            return true;
        }
        return false;
    }

    public static int idealByteArraySize(int n) {
        int n2 = 4;
        do {
            int n3 = n;
            if (n2 < 32) {
                if (n <= (1 << n2) - 12) {
                    n3 = (1 << n2) - 12;
                }
            } else {
                return n3;
            }
            ++n2;
        } while (true);
    }

    public static int idealIntArraySize(int n) {
        return ContainerHelpers.idealByteArraySize(n * 4) / 4;
    }

    public static int idealLongArraySize(int n) {
        return ContainerHelpers.idealByteArraySize(n * 8) / 8;
    }
}

