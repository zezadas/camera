/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ez
public class gk<T>
implements Future<T> {
    private final Object mw = new Object();
    private boolean pS = false;
    private T wq = null;
    private boolean wr = false;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(T t) {
        Object object = this.mw;
        synchronized (object) {
            if (this.wr) {
                throw new IllegalStateException("Provided CallbackFuture with multiple values.");
            }
            this.wr = true;
            this.wq = t;
            this.mw.notifyAll();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean cancel(boolean bl) {
        if (!bl) {
            return false;
        }
        Object object = this.mw;
        synchronized (object) {
            if (this.wr) {
                return false;
            }
            this.pS = true;
            this.wr = true;
            this.mw.notifyAll();
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public T get() {
        Object object = this.mw;
        synchronized (object) {
            boolean bl = this.wr;
            if (!bl) {
                try {
                    this.mw.wait();
                }
                catch (InterruptedException var3_3) {}
            }
            if (this.pS) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            T t = this.wq;
            return t;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public T get(long l, TimeUnit timeUnit) throws TimeoutException {
        Object object = this.mw;
        synchronized (object) {
            boolean bl = this.wr;
            if (!bl) {
                try {
                    l = timeUnit.toMillis(l);
                    if (l != 0) {
                        this.mw.wait(l);
                    }
                }
                catch (InterruptedException var3_3) {}
            }
            if (!this.wr) {
                throw new TimeoutException("CallbackFuture timed out.");
            }
            if (this.pS) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            timeUnit = this.wq;
            return (T)timeUnit;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean isCancelled() {
        Object object = this.mw;
        synchronized (object) {
            return this.pS;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean isDone() {
        Object object = this.mw;
        synchronized (object) {
            return this.wr;
        }
    }
}

