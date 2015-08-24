/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.c;
import com.google.android.gms.common.data.h;
import java.util.Iterator;

public abstract class DataBuffer<T>
implements Releasable,
Iterable<T> {
    protected final DataHolder II;

    protected DataBuffer(DataHolder dataHolder) {
        this.II = dataHolder;
        if (this.II != null) {
            this.II.e(this);
        }
    }

    @Deprecated
    public final void close() {
        this.release();
    }

    public int describeContents() {
        return 0;
    }

    public abstract T get(int var1);

    public int getCount() {
        if (this.II == null) {
            return 0;
        }
        return this.II.getCount();
    }

    public Bundle gy() {
        return this.II.gy();
    }

    @Deprecated
    public boolean isClosed() {
        if (this.II == null) {
            return true;
        }
        return this.II.isClosed();
    }

    @Override
    public Iterator<T> iterator() {
        return new c<T>(this);
    }

    @Override
    public void release() {
        if (this.II != null) {
            this.II.close();
        }
    }

    public Iterator<T> singleRefIterator() {
        return new h<T>(this);
    }
}

