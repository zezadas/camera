/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/*
 * Exception performing whole class analysis.
 */
public abstract class a
implements Releasable,
Result {
    protected final Status CM;
    protected final DataHolder II;

    protected a(DataHolder var1);

    @Override
    public Status getStatus();

    @Override
    public void release();
}

