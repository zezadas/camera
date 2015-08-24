/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.hm;
import com.google.android.gms.internal.hw;

/*
 * Exception performing whole class analysis.
 */
public abstract class hx<T>
extends hw.a {
    protected BaseImplementation.b<T> CH;

    public hx(BaseImplementation.b<T> var1);

    @Override
    public void a(Status var1);

    @Override
    public void a(Status var1, ParcelFileDescriptor var2);

    @Override
    public void a(Status var1, boolean var2);

    @Override
    public void a(hm.b var1);
}

