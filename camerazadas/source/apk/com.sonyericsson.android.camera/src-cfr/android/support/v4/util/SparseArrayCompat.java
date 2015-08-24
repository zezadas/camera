/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import android.support.v4.util.ContainerHelpers;

public class SparseArrayCompat<E>
implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage = false;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    /*
     * Enabled aggressive block sorting
     */
    public SparseArrayCompat(int n) {
        if (n == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            n = ContainerHelpers.idealIntArraySize(n);
            this.mKeys = new int[n];
            this.mValues = new Object[n];
        }
        this.mSize = 0;
    }

    private void gc() {
        int n = this.mSize;
        int n2 = 0;
        int[] arrn = this.mKeys;
        Object[] arrobject = this.mValues;
        for (int i = 0; i < n; ++i) {
            Object object = arrobject[i];
            int n3 = n2;
            if (object != DELETED) {
                if (i != n2) {
                    arrn[n2] = arrn[i];
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

    public void append(int n, E e) {
        int n2;
        if (this.mSize != 0 && n <= this.mKeys[this.mSize - 1]) {
            this.put(n, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            this.gc();
        }
        if ((n2 = this.mSize) >= this.mKeys.length) {
            int n3 = ContainerHelpers.idealIntArraySize(n2 + 1);
            int[] arrn = new int[n3];
            Object[] arrobject = new Object[n3];
            System.arraycopy(this.mKeys, 0, arrn, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrn;
            this.mValues = arrobject;
        }
        this.mKeys[n2] = n;
        this.mValues[n2] = e;
        this.mSize = n2 + 1;
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

    public SparseArrayCompat<E> clone() {
        SparseArrayCompat sparseArrayCompat;
        SparseArrayCompat sparseArrayCompat2 = null;
        try {
            sparseArrayCompat2 = sparseArrayCompat = (SparseArrayCompat)super.clone();
        }
        catch (CloneNotSupportedException var2_3) {
            return sparseArrayCompat2;
        }
        sparseArrayCompat.mKeys = (int[])this.mKeys.clone();
        sparseArrayCompat2 = sparseArrayCompat;
        sparseArrayCompat.mValues = (Object[])this.mValues.clone();
        return sparseArrayCompat;
    }

    public void delete(int n) {
        if ((n = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n)) >= 0 && this.mValues[n] != DELETED) {
            this.mValues[n] = DELETED;
            this.mGarbage = true;
        }
    }

    public E get(int n) {
        return this.get(n, null);
    }

    public E get(int n, E e) {
        if ((n = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n)) < 0 || this.mValues[n] == DELETED) {
            return e;
        }
        return (E)this.mValues[n];
    }

    public int indexOfKey(int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, n);
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

    public int keyAt(int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mKeys[n];
    }

    public void put(int n, E e) {
        int n2 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, n);
        if (n2 >= 0) {
            this.mValues[n2] = e;
            return;
        }
        int n3 = ~ n2;
        if (n3 < this.mSize && this.mValues[n3] == DELETED) {
            this.mKeys[n3] = n;
            this.mValues[n3] = e;
            return;
        }
        n2 = n3;
        if (this.mGarbage) {
            n2 = n3;
            if (this.mSize >= this.mKeys.length) {
                this.gc();
                n2 = ~ ContainerHelpers.binarySearch(this.mKeys, this.mSize, n);
            }
        }
        if (this.mSize >= this.mKeys.length) {
            n3 = ContainerHelpers.idealIntArraySize(this.mSize + 1);
            int[] arrn = new int[n3];
            Object[] arrobject = new Object[n3];
            System.arraycopy(this.mKeys, 0, arrn, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, arrobject, 0, this.mValues.length);
            this.mKeys = arrn;
            this.mValues = arrobject;
        }
        if (this.mSize - n2 != 0) {
            System.arraycopy(this.mKeys, n2, this.mKeys, n2 + 1, this.mSize - n2);
            System.arraycopy(this.mValues, n2, this.mValues, n2 + 1, this.mSize - n2);
        }
        this.mKeys[n2] = n;
        this.mValues[n2] = e;
        ++this.mSize;
    }

    public void remove(int n) {
        this.delete(n);
    }

    public void removeAt(int n) {
        if (this.mValues[n] != DELETED) {
            this.mValues[n] = DELETED;
            this.mGarbage = true;
        }
    }

    public void removeAtRange(int n, int n2) {
        n2 = Math.min(this.mSize, n + n2);
        for (; n < n2; ++n) {
            this.removeAt(n);
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

