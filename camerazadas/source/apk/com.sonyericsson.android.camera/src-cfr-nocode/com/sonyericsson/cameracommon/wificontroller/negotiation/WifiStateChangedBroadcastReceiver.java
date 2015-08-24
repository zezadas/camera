/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionStatusCallback;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WifiStateChangedBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG;
    private WifiConnectionStatusCallback mCallback;
    private Context mContext;
    private boolean mIsReceiveStarted;

    static;

    public WifiStateChangedBroadcastReceiver(Context var1, WifiConnectionStatusCallback var2);

    public void initialize();

    @Override
    public void onReceive(Context var1, Intent var2);

    public void release();

    public void startReceiver();

    public void stopReceiver();
}

