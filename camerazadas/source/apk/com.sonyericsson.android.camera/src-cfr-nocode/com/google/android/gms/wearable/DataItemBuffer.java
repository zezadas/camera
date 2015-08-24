/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.wearable.DataItem;

/*
 * Exception performing whole class analysis.
 */
public class DataItemBuffer
extends g<DataItem>
implements Result {
    private final Status CM;

    public DataItemBuffer(DataHolder var1);

    @Override
    protected /* synthetic */ Object f(int var1, int var2);

    @Override
    protected String gD();

    @Override
    public Status getStatus();

    protected DataItem q(int var1, int var2);
}

