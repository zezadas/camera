/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LongSparseArray<E>
implements Cloneable {
    private static final Object DELETED;
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    static;

    public LongSparseArray();

    public LongSparseArray(int var1);

    private void gc();

    public void append(long var1, E var3);

    public void clear();

    public LongSparseArray<E> clone();

    public void delete(long var1);

    public E get(long var1);

    public E get(long var1, E var3);

    public int indexOfKey(long var1);

    public int indexOfValue(E var1);

    public long keyAt(int var1);

    public void put(long var1, E var3);

    public void remove(long var1);

    public void removeAt(int var1);

    public void setValueAt(int var1, E var2);

    public int size();

    public String toString();

    public E valueAt(int var1);
}

