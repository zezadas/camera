/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 */
public class BackgroundWorker {
    private static final int SHUTDOWN_TIMEOUT_MILLISECONDS = 2000;
    private final ExecutorService mExecutor;
    private final Handler mHandler;
    private Looper mLooper;

    public BackgroundWorker(String var1);

    static /* synthetic */ Looper access$002(BackgroundWorker var0, Looper var1);

    public Handler getHandler();

    public void quit() throws InterruptedException;

}

