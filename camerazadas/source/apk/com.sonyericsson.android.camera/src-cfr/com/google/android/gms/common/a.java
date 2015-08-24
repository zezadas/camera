/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a
implements ServiceConnection {
    boolean HC = false;
    private final BlockingQueue<IBinder> HD = new LinkedBlockingQueue<IBinder>();

    public IBinder fW() throws InterruptedException {
        if (this.HC) {
            throw new IllegalStateException();
        }
        this.HC = true;
        return this.HD.take();
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.HD.add(iBinder);
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
    }
}

