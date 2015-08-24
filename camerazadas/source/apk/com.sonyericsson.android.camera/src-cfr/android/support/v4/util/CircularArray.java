/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

public class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int n) {
        if (n <= 0) {
            throw new IllegalArgumentException("capacity must be positive");
        }
        int n2 = n;
        if (Integer.bitCount(n) != 1) {
            n2 = 1 << Integer.highestOneBit(n) + 1;
        }
        this.mCapacityBitmask = n2 - 1;
        this.mElements = new Object[n2];
    }

    private void doubleCapacity() {
        int n = this.mElements.length;
        int n2 = n - this.mHead;
        int n3 = n << 1;
        if (n3 < 0) {
            throw new RuntimeException("Too big");
        }
        Object[] arrobject = new Object[n3];
        System.arraycopy(this.mElements, this.mHead, arrobject, 0, n2);
        System.arraycopy(this.mElements, 0, arrobject, n2, this.mHead);
        this.mElements = arrobject;
        this.mHead = 0;
        this.mTail = n;
        this.mCapacityBitmask = n3 - 1;
    }

    public final void addFirst(E e) {
        this.mHead = this.mHead - 1 & this.mCapacityBitmask;
        this.mElements[this.mHead] = e;
        if (this.mHead == this.mTail) {
            this.doubleCapacity();
        }
    }

    public final void addLast(E e) {
        this.mElements[this.mTail] = e;
        this.mTail = this.mTail + 1 & this.mCapacityBitmask;
        if (this.mTail == this.mHead) {
            this.doubleCapacity();
        }
    }

    public final E get(int n) {
        if (n < 0 || n >= this.size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int n2 = this.mHead;
        int n3 = this.mCapacityBitmask;
        return this.mElements[n2 + n & n3];
    }

    public final E getFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mHead];
    }

    public final E getLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mTail - 1 & this.mCapacityBitmask];
    }

    public final boolean isEmpty() {
        if (this.mHead == this.mTail) {
            return true;
        }
        return false;
    }

    public final E popFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.mElements[this.mHead];
        this.mElements[this.mHead] = null;
        this.mHead = this.mHead + 1 & this.mCapacityBitmask;
        return e;
    }

    public final E popLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int n = this.mTail - 1 & this.mCapacityBitmask;
        E e = this.mElements[n];
        this.mElements[n] = null;
        this.mTail = n;
        return e;
    }

    public final int size() {
        return this.mTail - this.mHead & this.mCapacityBitmask;
    }
}

