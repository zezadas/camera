/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.ContainerHelpers;
import java.util.Map;

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

    public SimpleArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SimpleArrayMap(int n) {
        if (n == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            this.allocArrays(n);
        }
        this.mSize = 0;
    }

    public SimpleArrayMap(SimpleArrayMap simpleArrayMap) {
        this();
        if (simpleArrayMap != null) {
            this.putAll(simpleArrayMap);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void allocArrays(int n) {
        if (n == 8) {
            synchronized (ArrayMap.class) {
                if (mTwiceBaseCache != null) {
                    Object[] arrobject;
                    this.mArray = arrobject = mTwiceBaseCache;
                    mTwiceBaseCache = (Object[])arrobject[0];
                    this.mHashes = (int[])arrobject[1];
                    arrobject[1] = null;
                    arrobject[0] = null;
                    --mTwiceBaseCacheSize;
                    return;
                }
            }
        } else if (n == 4) {
            synchronized (ArrayMap.class) {
                if (mBaseCache != null) {
                    Object[] arrobject;
                    this.mArray = arrobject = mBaseCache;
                    mBaseCache = (Object[])arrobject[0];
                    this.mHashes = (int[])arrobject[1];
                    arrobject[1] = null;
                    arrobject[0] = null;
                    --mBaseCacheSize;
                    return;
                }
            }
        }
        this.mHashes = new int[n];
        this.mArray = new Object[n << 1];
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static void freeArrays(int[] var0, Object[] var1_1, int var2_2) {
        if (var0.length != 8) ** GOTO lbl7
        // MONITORENTER : android.support.v4.util.ArrayMap.class
        if (SimpleArrayMap.mTwiceBaseCacheSize >= 10) ** GOTO lbl18
        var1_1[0] = SimpleArrayMap.mTwiceBaseCache;
        var1_1[1] = var0;
        ** GOTO lbl13
lbl7: // 1 sources:
        if (var0.length != 4) return;
        // MONITORENTER : android.support.v4.util.ArrayMap.class
        if (SimpleArrayMap.mBaseCacheSize >= 10) ** GOTO lbl25
        var1_1[0] = SimpleArrayMap.mBaseCache;
        var1_1[1] = var0;
        ** GOTO lbl20
lbl13: // 2 sources:
        for (var2_2 = (var2_2 << 1) - 1; var2_2 >= 2; --var2_2) {
            var1_1[var2_2] = null;
        }
        SimpleArrayMap.mTwiceBaseCache = var1_1;
        ++SimpleArrayMap.mTwiceBaseCacheSize;
lbl18: // 2 sources:
        // MONITOREXIT : android.support.v4.util.ArrayMap.class
        return;
lbl20: // 2 sources:
        for (var2_2 = (var2_2 << 1) - 1; var2_2 >= 2; --var2_2) {
            var1_1[var2_2] = null;
        }
        SimpleArrayMap.mBaseCache = var1_1;
        ++SimpleArrayMap.mBaseCacheSize;
lbl25: // 2 sources:
        // MONITOREXIT : android.support.v4.util.ArrayMap.class
    }

    public void clear() {
        if (this.mSize != 0) {
            SimpleArrayMap.freeArrays(this.mHashes, this.mArray, this.mSize);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean containsKey(Object object) {
        if (object == null) {
            if (this.indexOfNull() >= 0) return true;
            return false;
        }
        if (this.indexOf(object, object.hashCode()) < 0) return false;
        return true;
    }

    public boolean containsValue(Object object) {
        if (this.indexOfValue(object) >= 0) {
            return true;
        }
        return false;
    }

    public void ensureCapacity(int n) {
        if (this.mHashes.length < n) {
            int[] arrn = this.mHashes;
            Object[] arrobject = this.mArray;
            this.allocArrays(n);
            if (this.mSize > 0) {
                System.arraycopy(arrn, 0, this.mHashes, 0, this.mSize);
                System.arraycopy(arrobject, 0, this.mArray, 0, this.mSize << 1);
            }
            SimpleArrayMap.freeArrays(arrn, arrobject, this.mSize);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Map)) return false;
        object = (Map)object;
        if (this.size() != object.size()) {
            return false;
        }
        try {
            for (int i = 0; i < this.mSize; ++i) {
                K k = this.keyAt(i);
                V v = this.valueAt(i);
                Object v2 = object.get(k);
                if (v == null) {
                    if (v2 != null) return false;
                    if (object.containsKey(k)) continue;
                    return false;
                }
                boolean bl = v.equals(v2);
                if (bl) continue;
                return false;
            }
            return true;
        }
        catch (NullPointerException var1_2) {
            return false;
        }
        catch (ClassCastException var1_3) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public V get(Object object) {
        int n = object == null ? this.indexOfNull() : this.indexOf(object, object.hashCode());
        if (n >= 0) {
            return (V)this.mArray[(n << 1) + 1];
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int[] arrn = this.mHashes;
        Object[] arrobject = this.mArray;
        int n = 0;
        int n2 = 0;
        int n3 = 1;
        int n4 = this.mSize;
        while (n2 < n4) {
            Object object = arrobject[n3];
            int n5 = arrn[n2];
            int n6 = object == null ? 0 : object.hashCode();
            n+=n6 ^ n5;
            ++n2;
            n3+=2;
        }
        return n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    int indexOf(Object object, int n) {
        int n2;
        int n3 = this.mSize;
        if (n3 == 0) {
            return -1;
        }
        int n4 = n2 = ContainerHelpers.binarySearch(this.mHashes, n3, n);
        if (n2 < 0) return n4;
        n4 = n2;
        if (object.equals(this.mArray[n2 << 1])) return n4;
        for (n4 = n2 + 1; n4 < n3 && this.mHashes[n4] == n; ++n4) {
            if (!object.equals(this.mArray[n4 << 1])) continue;
            return n4;
        }
        --n2;
        for (; n2 >= 0; --n2) {
            if (this.mHashes[n2] != n) return ~ n4;
            if (!object.equals(this.mArray[n2 << 1])) continue;
            return n2;
        }
        return ~ n4;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    int indexOfNull() {
        int n;
        int n2 = this.mSize;
        if (n2 == 0) {
            return -1;
        }
        int n3 = n = ContainerHelpers.binarySearch(this.mHashes, n2, 0);
        if (n < 0) return n3;
        n3 = n;
        if (this.mArray[n << 1] == null) return n3;
        for (n3 = n + 1; n3 < n2 && this.mHashes[n3] == 0; ++n3) {
            if (this.mArray[n3 << 1] != null) continue;
            return n3;
        }
        --n;
        for (; n >= 0; --n) {
            if (this.mHashes[n] != 0) return ~ n3;
            if (this.mArray[n << 1] != null) continue;
            return n;
        }
        return ~ n3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    int indexOfValue(Object object) {
        int n = this.mSize * 2;
        Object[] arrobject = this.mArray;
        if (object == null) {
            for (int i = 1; i < n; i+=2) {
                if (arrobject[i] != null) continue;
                return i >> 1;
            }
            return -1;
        }
        for (int i = 1; i < n; i+=2) {
            if (!object.equals(arrobject[i])) continue;
            return i >> 1;
        }
        return -1;
    }

    public boolean isEmpty() {
        if (this.mSize <= 0) {
            return true;
        }
        return false;
    }

    public K keyAt(int n) {
        return (K)this.mArray[n << 1];
    }

    /*
     * Enabled aggressive block sorting
     */
    public V put(K object, V v) {
        int n;
        int n2;
        int n3 = 8;
        if (object == null) {
            n = 0;
            n2 = this.indexOfNull();
        } else {
            n = object.hashCode();
            n2 = this.indexOf(object, n);
        }
        if (n2 >= 0) {
            n2 = (n2 << 1) + 1;
            object = this.mArray[n2];
            this.mArray[n2] = v;
            return (V)object;
        }
        int n4 = ~ n2;
        if (this.mSize >= this.mHashes.length) {
            if (this.mSize >= 8) {
                n2 = this.mSize + (this.mSize >> 1);
            } else {
                n2 = n3;
                if (this.mSize < 4) {
                    n2 = 4;
                }
            }
            int[] arrn = this.mHashes;
            Object[] arrobject = this.mArray;
            this.allocArrays(n2);
            if (this.mHashes.length > 0) {
                System.arraycopy(arrn, 0, this.mHashes, 0, arrn.length);
                System.arraycopy(arrobject, 0, this.mArray, 0, arrobject.length);
            }
            SimpleArrayMap.freeArrays(arrn, arrobject, this.mSize);
        }
        if (n4 < this.mSize) {
            System.arraycopy(this.mHashes, n4, this.mHashes, n4 + 1, this.mSize - n4);
            System.arraycopy(this.mArray, n4 << 1, this.mArray, n4 + 1 << 1, this.mSize - n4 << 1);
        }
        this.mHashes[n4] = n;
        this.mArray[n4 << 1] = object;
        this.mArray[(n4 << 1) + 1] = v;
        ++this.mSize;
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int n = simpleArrayMap.mSize;
        this.ensureCapacity(this.mSize + n);
        if (this.mSize == 0) {
            if (n <= 0) return;
            System.arraycopy(simpleArrayMap.mHashes, 0, this.mHashes, 0, n);
            System.arraycopy(simpleArrayMap.mArray, 0, this.mArray, 0, n << 1);
            this.mSize = n;
            return;
        }
        for (int i = 0; i < n; ++i) {
            this.put(simpleArrayMap.keyAt(i), simpleArrayMap.valueAt(i));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public V remove(Object object) {
        int n = object == null ? this.indexOfNull() : this.indexOf(object, object.hashCode());
        if (n >= 0) {
            return this.removeAt(n);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public V removeAt(int n) {
        int n2 = 8;
        Object object = this.mArray[(n << 1) + 1];
        if (this.mSize <= 1) {
            SimpleArrayMap.freeArrays(this.mHashes, this.mArray, this.mSize);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            return (V)object;
        }
        if (this.mHashes.length > 8 && this.mSize < this.mHashes.length / 3) {
            if (this.mSize > 8) {
                n2 = this.mSize + (this.mSize >> 1);
            }
            int[] arrn = this.mHashes;
            Object[] arrobject = this.mArray;
            this.allocArrays(n2);
            --this.mSize;
            if (n > 0) {
                System.arraycopy(arrn, 0, this.mHashes, 0, n);
                System.arraycopy(arrobject, 0, this.mArray, 0, n << 1);
            }
            if (n >= this.mSize) return (V)object;
            {
                System.arraycopy(arrn, n + 1, this.mHashes, n, this.mSize - n);
                System.arraycopy(arrobject, n + 1 << 1, this.mArray, n << 1, this.mSize - n << 1);
                return (V)object;
            }
        }
        --this.mSize;
        if (n < this.mSize) {
            System.arraycopy(this.mHashes, n + 1, this.mHashes, n, this.mSize - n);
            System.arraycopy(this.mArray, n + 1 << 1, this.mArray, n << 1, this.mSize - n << 1);
        }
        this.mArray[this.mSize << 1] = null;
        this.mArray[(this.mSize << 1) + 1] = null;
        return (V)object;
    }

    public V setValueAt(int n, V v) {
        n = (n << 1) + 1;
        Object object = this.mArray[n];
        this.mArray[n] = v;
        return (V)object;
    }

    public int size() {
        return this.mSize;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        if (this.isEmpty()) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
        stringBuilder.append('{');
        int n = 0;
        do {
            Object object;
            if (n >= this.mSize) {
                stringBuilder.append('}');
                return stringBuilder.toString();
            }
            if (n > 0) {
                stringBuilder.append(", ");
            }
            if ((object = this.keyAt(n)) != this) {
                stringBuilder.append(object);
            } else {
                stringBuilder.append("(this Map)");
            }
            stringBuilder.append('=');
            object = this.valueAt(n);
            if (object != this) {
                stringBuilder.append(object);
            } else {
                stringBuilder.append("(this Map)");
            }
            ++n;
        } while (true);
    }

    public V valueAt(int n) {
        return (V)this.mArray[(n << 1) + 1];
    }
}

