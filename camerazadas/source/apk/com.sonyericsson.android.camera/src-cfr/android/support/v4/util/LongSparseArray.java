/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import android.support.v4.util.ContainerHelpers;

public class LongSparseArray<E>
implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage = false;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    /*
     * Enabled aggressive block sorting
     */
    public LongSparseArray(int n) {
        if (n == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            n = ContainerHelpers.idealLongArraySize(n);
            this.mKeys = new long[n];
            this.mValues = new Object[n];
        }
        this.mSize = 0;
    }

    private void gc() {
        int n = this.mSize;
        int n2 = 0;
        long[] arrl = this.mKeys;
        Object[] arrobject = this.mValues;
        for (int i = 0; i < n; ++i) {
            Object object = arrobject[i];
            int n3 = n2;
            if (object != DELETED) {
                if (i != n2) {
                    arrl[n2] = arrl[i];
                    arrobject[n2] = object;
                    arrobject[i] = null;
                }
                n3 = n2 + 1;
            }
            n2 = n3;
        }
        this.mGarbage = false;
        this.mSize = n2;
    }

    public void append(long l, E e) {
        int n;
        if (this.mSize != 0 && l <= this.mKeys[this.mSize - 1]) {
            this.put(l, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            this.gc();
        }
        if ((n = this.mSize) >= this.mKeys.length) {
            int n2 = ContainerHelpers.idealLongArraySize(n + 1);
            long[] arrl = new long[n2];
            Object[] arrobject = new Object[n2];
            System.arraycopy(this.mKeys, 0, arrl, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrl;
            this.mValues = arrobject;
        }
        this.mKeys[n] = l;
        this.mValues[n] = e;
        this.mSize = n + 1;
    }

    public void clear() {
        int n = this.mSize;
        Object[] arrobject = this.mValues;
        for (int i = 0; i < n; ++i) {
            arrobject[i] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public LongSparseArray<E> clone() {
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2 = null;
        try {
            longSparseArray2 = longSparseArray = (LongSparseArray)super.clone();
        }
        catch (CloneNotSupportedException var2_3) {
            return longSparseArray2;
        }
        longSparseArray.mKeys = (long[])this.mKeys.clone();
        longSparseArray2 = longSparseArray;
        longSparseArray.mValues = (Object[])this.mValues.clone();
        return longSparseArray;
    }

    public void delete(long l) {
        int n = ContainerHelpers.binarySearch(this.mKeys, this.mSize, l);
        if (n >= 0 && this.mValues[n] != DELETED) {
            this.mValues[n] = DELETED;
            this.mGarbage = true;
        }
    }

    public E get(long l) {
        return this.get(l, null);
    }

    public E get(long l, E e) {
        int n = ContainerHelpers.binarySearch(this.mKeys, this.mSize, l);
        if (n < 0 || this.mValues[n] == DELETED) {
            return e;
        }
        return (E)this.mValues[n];
    }

    public int indexOfKey(long l) {
        if (this.mGarbage) {
            this.gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, l);
    }

    public int indexOfValue(E e) {
        if (this.mGarbage) {
            this.gc();
        }
        for (int i = 0; i < this.mSize; ++i) {
            if (this.mValues[i] != e) continue;
            return i;
        }
        return -1;
    }

    public long keyAt(int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mKeys[n];
    }

    public void put(long l, E e) {
        int n = ContainerHelpers.binarySearch(this.mKeys, this.mSize, l);
        if (n >= 0) {
            this.mValues[n] = e;
            return;
        }
        int n2 = ~ n;
        if (n2 < this.mSize && this.mValues[n2] == DELETED) {
            this.mKeys[n2] = l;
            this.mValues[n2] = e;
            return;
        }
        n = n2;
        if (this.mGarbage) {
            n = n2;
            if (this.mSize >= this.mKeys.length) {
                this.gc();
                n = ~ ContainerHelpers.binarySearch(this.mKeys, this.mSize, l);
            }
        }
        if (this.mSize >= this.mKeys.length) {
            n2 = ContainerHelpers.idealLongArraySize(this.mSize + 1);
            long[] arrl = new long[n2];
            Object[] arrobject = new Object[n2];
            System.arraycopy(this.mKeys, 0, arrl, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrl;
            this.mValues = arrobject;
        }
        if (this.mSize - n != 0) {
            System.arraycopy(this.mKeys, n, this.mKeys, n + 1, this.mSize - n);
            System.arraycopy(this.mValues, n, this.mValues, n + 1, this.mSize - n);
        }
        this.mKeys[n] = l;
        this.mValues[n] = e;
        ++this.mSize;
    }

    public void remove(long l) {
        this.delete(l);
    }

    public void removeAt(int n) {
        if (this.mValues[n] != DELETED) {
            this.mValues[n] = DELETED;
            this.mGarbage = true;
        }
    }

    public void setValueAt(int n, E e) {
        if (this.mGarbage) {
            this.gc();
        }
        this.mValues[n] = e;
    }

    public int size() {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mSize;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        if (this.size() <= 0) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
        stringBuilder.append('{');
        int n = 0;
        do {
            if (n >= this.mSize) {
                stringBuilder.append('}');
                return stringBuilder.toString();
            }
            if (n > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(this.keyAt(n));
            stringBuilder.append('=');
            E e = this.valueAt(n);
            if (e != this) {
                stringBuilder.append(e);
            } else {
                stringBuilder.append("(this Map)");
            }
            ++n;
        } while (true);
    }

    public E valueAt(int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return (E)this.mValues[n];
    }
}

