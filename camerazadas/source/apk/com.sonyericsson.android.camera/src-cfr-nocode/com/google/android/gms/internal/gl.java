/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 */
@ez
public class gl<T>
implements Future<T> {
    private final T wq;

    public gl(T var1);

    @Override
    public boolean cancel(boolean var1);

    @Override
    public T get();

    @Override
    public T get(long var1, TimeUnit var3);

    @Override
    public boolean isCancelled();

    @Override
    public boolean isDone();
}

