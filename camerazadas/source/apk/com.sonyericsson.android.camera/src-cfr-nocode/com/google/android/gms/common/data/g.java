/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public abstract class g<T>
extends DataBuffer<T> {
    private boolean Kp;
    private ArrayList<Integer> Kq;

    protected g(DataHolder var1);

    private void gE();

    int au(int var1);

    protected int av(int var1);

    protected abstract T f(int var1, int var2);

    protected abstract String gD();

    protected String gF();

    @Override
    public final T get(int var1);

    @Override
    public int getCount();
}

