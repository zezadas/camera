/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Parcelable;

public class ConnectivityChangedBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG = ConnectivityChangedBroadcastReceiver.class.getSimpleName();
    private final ConnectivityChangedCallback mCallback;
    private final Context mContext;
    private boolean mIsReleased = false;
    private String mTargetSsid = "";

    public ConnectivityChangedBroadcastReceiver(Context context, ConnectivityChangedCallback connectivityChangedCallback) {
        this.mContext = context;
        this.mCallback = connectivityChangedCallback;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isSameSsid(String string, String string2) {
        if (string == null && string2 == null) {
            return true;
        }
        if (string == null) return false;
        if (string2 == null) {
            return false;
        }
        if (("\"" + string + "\"").equals(string2)) return true;
        if (string.equals("\"" + string2 + "\"")) return true;
        return string.equals(string2);
    }

    public void initialize() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mContext.registerReceiver(this, intentFilter);
        this.mTargetSsid = "";
        this.mIsReleased = false;
    }

    @Override
    public void onReceive(Context arrnetworkInfo, Intent parcelable) {
        boolean bl = false;
        boolean bl2 = false;
        if ((arrnetworkInfo = (ConnectivityManager)arrnetworkInfo.getSystemService("connectivity")) != null) {
            parcelable = arrnetworkInfo.getActiveNetworkInfo();
            boolean bl3 = bl2;
            if (parcelable != null) {
                bl3 = bl2;
                if (ConnectivityChangedBroadcastReceiver.isSameSsid(parcelable.getExtraInfo(), this.mTargetSsid)) {
                    bl3 = parcelable.isAvailable();
                }
            }
            bl = bl3;
            if (!bl3) {
                arrnetworkInfo = arrnetworkInfo.getAllNetworkInfo();
                int n = arrnetworkInfo.length;
                int n2 = 0;
                do {
                    bl = bl3;
                    if (n2 >= n) break;
                    parcelable = arrnetworkInfo[n2];
                    if (ConnectivityChangedBroadcastReceiver.isSameSsid(parcelable.getExtraInfo(), this.mTargetSsid)) {
                        bl3 = parcelable.isAvailable();
                    }
                    ++n2;
                } while (true);
            }
        }
        if (!this.mIsReleased) {
            this.mCallback.onConnectivityChanged(bl);
        }
    }

    public void release() {
        this.mContext.unregisterReceiver(this);
        this.mIsReleased = true;
        this.mTargetSsid = "";
    }

    public void setTargetSsid(String string) {
        this.mTargetSsid = string;
    }

    public static interface ConnectivityChangedCallback {
        public void onConnectivityChanged(boolean var1);
    }

}

