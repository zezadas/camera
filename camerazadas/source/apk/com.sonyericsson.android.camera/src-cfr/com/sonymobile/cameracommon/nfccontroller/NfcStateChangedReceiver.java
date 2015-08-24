/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.sonymobile.cameracommon.nfccontroller.NfcStateCallback;

public class NfcStateChangedReceiver {
    private static final String TAG = NfcStateChangedReceiver.class.getSimpleName();
    private Context mContext;
    private NfcStateCallback mStateCallback;
    private StateChangedReceiver mStateChangedReceiver;

    public NfcStateChangedReceiver() {
        this.mStateChangedReceiver = new StateChangedReceiver();
    }

    public void initialize(Context object, NfcStateCallback nfcStateCallback) {
        this.mContext = object;
        this.mStateCallback = nfcStateCallback;
        object = new IntentFilter("android.nfc.action.ADAPTER_STATE_CHANGED");
        this.mContext.registerReceiver(this.mStateChangedReceiver, (IntentFilter)object);
    }

    public void release() {
        if (this.mContext != null) {
            this.mContext.unregisterReceiver(this.mStateChangedReceiver);
            this.mContext = null;
        }
    }

    private class StateChangedReceiver
    extends BroadcastReceiver {
        private StateChangedReceiver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onReceive(Context context, Intent intent) {
            int n = intent.getIntExtra("android.nfc.extra.ADAPTER_STATE", -1);
            if (n == 3) {
                NfcStateChangedReceiver.this.mStateCallback.onTurnOn();
                return;
            } else {
                if (n != 1) return;
                {
                    NfcStateChangedReceiver.this.mStateCallback.onTurnOff();
                    return;
                }
            }
        }
    }

}

