/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@ez
public class gl<T>
implements Future<T> {
    private final T wq;

    public gl(T t) {
        this.wq = t;
    }

    @Override
    public boolean cancel(boolean bl) {
        return false;
    }

    @Override
    public T get() {
        return this.wq;
    }

    @Override
    public T get(long l, TimeUnit timeUnit) {
        return this.wq;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public boolean isDone() {
        return true;
    }
}

