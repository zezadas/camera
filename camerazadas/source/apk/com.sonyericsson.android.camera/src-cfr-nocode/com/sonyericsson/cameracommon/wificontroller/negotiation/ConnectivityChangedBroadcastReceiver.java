/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ConnectivityChangedBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG;
    private final ConnectivityChangedCallback mCallback;
    private final Context mContext;
    private boolean mIsReleased;
    private String mTargetSsid;

    static;

    public ConnectivityChangedBroadcastReceiver(Context var1, ConnectivityChangedCallback var2);

    public static boolean isSameSsid(String var0, String var1);

    public void initialize();

    @Override
    public void onReceive(Context var1, Intent var2);

    public void release();

    public void setTargetSsid(String var1);

    public static interface ConnectivityChangedCallback {
        public void onConnectivityChanged(boolean var1);
    }

}

