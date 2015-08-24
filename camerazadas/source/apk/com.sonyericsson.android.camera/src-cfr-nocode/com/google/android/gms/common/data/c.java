/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import java.util.Iterator;

/*
 * Exception performing whole class analysis.
 */
public class c<T>
implements Iterator<T> {
    protected final DataBuffer<T> JV;
    protected int JW;

    public c(DataBuffer<T> var1);

    @Override
    public boolean hasNext();

    @Override
    public T next();

    @Override
    public void remove();
}

