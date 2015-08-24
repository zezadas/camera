/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

/*
 * Exception performing whole class analysis.
 */
public class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray();

    public CircularArray(int var1);

    private void doubleCapacity();

    public final void addFirst(E var1);

    public final void addLast(E var1);

    public final E get(int var1);

    public final E getFirst();

    public final E getLast();

    public final boolean isEmpty();

    public final E popFirst();

    public final E popLast();

    public final int size();
}

