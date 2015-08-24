/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SparseArrayCompat<E>
implements Cloneable {
    private static final Object DELETED;
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    static;

    public SparseArrayCompat();

    public SparseArrayCompat(int var1);

    private void gc();

    public void append(int var1, E var2);

    public void clear();

    public SparseArrayCompat<E> clone();

    public void delete(int var1);

    public E get(int var1);

    public E get(int var1, E var2);

    public int indexOfKey(int var1);

    public int indexOfValue(E var1);

    public int keyAt(int var1);

    public void put(int var1, E var2);

    public void remove(int var1);

    public void removeAt(int var1);

    public void removeAtRange(int var1, int var2);

    public void setValueAt(int var1, E var2);

    public int size();

    public String toString();

    public E valueAt(int var1);
}

