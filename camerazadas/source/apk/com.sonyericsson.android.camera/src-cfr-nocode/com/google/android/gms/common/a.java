/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class a
implements ServiceConnection {
    boolean HC;
    private final BlockingQueue<IBinder> HD;

    public a();

    public IBinder fW() throws InterruptedException;

    @Override
    public void onServiceConnected(ComponentName var1, IBinder var2);

    @Override
    public void onServiceDisconnected(ComponentName var1);
}

