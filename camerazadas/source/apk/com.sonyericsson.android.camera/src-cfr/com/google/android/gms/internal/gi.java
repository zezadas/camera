/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gs;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@ez
public final class gi {
    private static final ThreadFactory wh = new ThreadFactory(){
        private final AtomicInteger wl = new AtomicInteger(1);

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AdWorker #" + this.wl.getAndIncrement());
        }
    };
    private static final ExecutorService wi = Executors.newFixedThreadPool(10, wh);

    public static Future<Void> a(final Runnable runnable) {
        return gi.submit(new Callable<Void>(){

            @Override
            public /* synthetic */ Object call() throws Exception {
                return this.dj();
            }

            public Void dj() {
                runnable.run();
                return null;
            }
        });
    }

    public static <T> Future<T> submit(Callable<T> object) {
        try {
            object = wi.submit(new Callable<T>((Callable)object){
                final /* synthetic */ Callable wk;

                @Override
                public T call() throws Exception {
                    Object v;
                    try {
                        Process.setThreadPriority(10);
                        v = this.wk.call();
                    }
                    catch (Exception var1_2) {
                        gb.e(var1_2);
                        return null;
                    }
                    return (T)v;
                }
            });
            return object;
        }
        catch (RejectedExecutionException var0_1) {
            gs.d("Thread execution is rejected.", var0_1);
            return new gl<Object>(null);
        }
    }

}

