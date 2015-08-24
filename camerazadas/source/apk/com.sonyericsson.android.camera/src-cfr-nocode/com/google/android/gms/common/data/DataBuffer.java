/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.data.DataHolder;
import java.util.Iterator;

/*
 * Exception performing whole class analysis.
 */
public abstract class DataBuffer<T>
implements Releasable,
Iterable<T> {
    protected final DataHolder II;

    protected DataBuffer(DataHolder var1);

    @Deprecated
    public final void close();

    public int describeContents();

    public abstract T get(int var1);

    public int getCount();

    public Bundle gy();

    @Deprecated
    public boolean isClosed();

    @Override
    public Iterator<T> iterator();

    @Override
    public void release();

    public Iterator<T> singleRefIterator();
}

