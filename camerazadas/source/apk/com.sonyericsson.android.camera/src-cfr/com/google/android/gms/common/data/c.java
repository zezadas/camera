/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.internal.o;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class c<T>
implements Iterator<T> {
    protected final DataBuffer<T> JV;
    protected int JW;

    public c(DataBuffer<T> dataBuffer) {
        this.JV = o.i(dataBuffer);
        this.JW = -1;
    }

    @Override
    public boolean hasNext() {
        if (this.JW < this.JV.getCount() - 1) {
            return true;
        }
        return false;
    }

    @Override
    public T next() {
        int n;
        if (!this.hasNext()) {
            throw new NoSuchElementException("Cannot advance the iterator beyond " + this.JW);
        }
        DataBuffer<T> dataBuffer = this.JV;
        this.JW = n = this.JW + 1;
        return dataBuffer.get(n);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}

