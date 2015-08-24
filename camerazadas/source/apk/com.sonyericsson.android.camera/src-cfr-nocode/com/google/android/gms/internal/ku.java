/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 */
class ku<T extends Result>
implements PendingResult<T> {
    private final T Tx;

    ku(T var1);

    @Override
    public void a(PendingResult.a var1);

    @Override
    public T await();

    @Override
    public T await(long var1, TimeUnit var3);

    @Override
    public void cancel();

    @Override
    public boolean isCanceled();

    @Override
    public void setResultCallback(ResultCallback<T> var1);

    @Override
    public void setResultCallback(ResultCallback<T> var1, long var2, TimeUnit var4);
}

