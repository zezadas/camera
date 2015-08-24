/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

class ku<T extends Result>
implements PendingResult<T> {
    private final T Tx;

    ku(T t) {
        this.Tx = t;
    }

    @Override
    public void a(PendingResult.a a) {
        a.n(this.Tx.getStatus());
    }

    @Override
    public T await() {
        return this.Tx;
    }

    @Override
    public T await(long l, TimeUnit timeUnit) {
        return this.Tx;
    }

    @Override
    public void cancel() {
    }

    @Override
    public boolean isCanceled() {
        return false;
    }

    @Override
    public void setResultCallback(ResultCallback<T> resultCallback) {
        resultCallback.onResult(this.Tx);
    }

    @Override
    public void setResultCallback(ResultCallback<T> resultCallback, long l, TimeUnit timeUnit) {
        resultCallback.onResult(this.Tx);
    }
}

