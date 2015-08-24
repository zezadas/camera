/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

/*
 * Exception performing whole class analysis.
 */
public class g
implements DataEvent {
    private int FD;
    private DataItem avs;

    public g(DataEvent var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public DataItem getDataItem();

    @Override
    public int getType();

    @Override
    public boolean isDataValid();

    public DataEvent pW();
}

