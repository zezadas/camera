/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

/*
 * Exception performing whole class analysis.
 */
public class SimpleArrayMap<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";
    static Object[] mBaseCache;
    static int mBaseCacheSize;
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    public SimpleArrayMap();

    public SimpleArrayMap(int var1);

    public SimpleArrayMap(SimpleArrayMap var1);

    private void allocArrays(int var1);

    private static void freeArrays(int[] var0, Object[] var1, int var2);

    public void clear();

    public boolean containsKey(Object var1);

    public boolean containsValue(Object var1);

    public void ensureCapacity(int var1);

    public boolean equals(Object var1);

    public V get(Object var1);

    public int hashCode();

    int indexOf(Object var1, int var2);

    int indexOfNull();

    int indexOfValue(Object var1);

    public boolean isEmpty();

    public K keyAt(int var1);

    public V put(K var1, V var2);

    public void putAll(SimpleArrayMap<? extends K, ? extends V> var1);

    public V remove(Object var1);

    public V removeAt(int var1);

    public V setValueAt(int var1, V var2);

    public int size();

    public String toString();

    public V valueAt(int var1);
}

