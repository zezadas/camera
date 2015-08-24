/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Parcelable;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionStatusCallback;

public class WifiStateChangedBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG = WifiStateChangedBroadcastReceiver.class.getSimpleName();
    private WifiConnectionStatusCallback mCallback = null;
    private Context mContext = null;
    private boolean mIsReceiveStarted = false;

    public WifiStateChangedBroadcastReceiver(Context context, WifiConnectionStatusCallback wifiConnectionStatusCallback) {
        this.mContext = context;
        this.mCallback = wifiConnectionStatusCallback;
    }

    public void initialize() {
        this.mIsReceiveStarted = false;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        this.mContext.registerReceiver(this, intentFilter);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onReceive(Context object, Intent intent) {
        if (!this.mIsReceiveStarted) return;
        object = intent.getAction();
        if (object.equals("android.net.wifi.supplicant.STATE_CHANGE")) {
            if (!intent.hasExtra("supplicantError")) return;
            {
                this.mCallback.onConnectionFailed();
                return;
            }
        }
        if (!object.equals("android.net.wifi.STATE_CHANGE") || (object = intent.getExtras()) == null || (object = (NetworkInfo)object.getParcelable("networkInfo")) == null) return;
        if (object.isConnected()) {
            this.mCallback.onConnected();
            return;
        }
        if (object.isConnectedOrConnecting()) {
            return;
        }
        this.mCallback.onDisconnected();
    }

    public void release() {
        this.mContext.unregisterReceiver(this);
        this.mContext = null;
        this.mCallback = null;
    }

    public void startReceiver() {
        this.mIsReceiveStarted = true;
    }

    public void stopReceiver() {
        this.mIsReceiveStarted = false;
    }
}

