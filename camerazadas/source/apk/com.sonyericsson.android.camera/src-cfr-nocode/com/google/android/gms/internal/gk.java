/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public class gk<T>
implements Future<T> {
    private final Object mw;
    private boolean pS;
    private T wq;
    private boolean wr;

    public gk();

    public void a(T var1);

    @Override
    public boolean cancel(boolean var1);

    @Override
    public T get();

    @Override
    public T get(long var1, TimeUnit var3) throws TimeoutException;

    @Override
    public boolean isCancelled();

    @Override
    public boolean isDone();
}

