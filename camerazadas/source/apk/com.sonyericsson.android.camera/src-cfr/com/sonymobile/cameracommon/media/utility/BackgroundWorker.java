/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class BackgroundWorker {
    private static final int SHUTDOWN_TIMEOUT_MILLISECONDS = 2000;
    private final ExecutorService mExecutor;
    private final Handler mHandler;
    private Looper mLooper;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public BackgroundWorker(String object) {
        this.mLooper = null;
        object = new CountDownLatch(1);
        this.mExecutor = Executors.newSingleThreadExecutor();
        this.mExecutor.execute(new Runnable((CountDownLatch)object){
            final /* synthetic */ CountDownLatch val$readySignal;

            @Override
            public void run() {
                Looper.prepare();
                BackgroundWorker.this.mLooper = Looper.myLooper();
                this.val$readySignal.countDown();
                Looper.loop();
            }
        });
        try {
            object.await();
        }
        catch (InterruptedException var1_2) {}
        this.mHandler = new Handler(this.mLooper);
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public void quit() throws InterruptedException {
        this.mLooper.quitSafely();
        this.mExecutor.shutdown();
        this.mExecutor.awaitTermination(2000, TimeUnit.MILLISECONDS);
    }

}

