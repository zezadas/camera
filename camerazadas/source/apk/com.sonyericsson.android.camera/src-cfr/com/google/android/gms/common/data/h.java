/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.c;
import com.google.android.gms.common.data.d;
import java.util.NoSuchElementException;

public class h<T>
extends c<T> {
    private T Kr;

    public h(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override
    public T next() {
        if (!this.hasNext()) {
            throw new NoSuchElementException("Cannot advance the iterator beyond " + this.JW);
        }
        ++this.JW;
        if (this.JW == 0) {
            this.Kr = this.JV.get(0);
            if (!(this.Kr instanceof d)) {
                throw new IllegalStateException("DataBuffer reference of type " + this.Kr.getClass() + " is not movable");
            }
        } else {
            ((d)this.Kr).ap(this.JW);
        }
        return this.Kr;
    }
}

