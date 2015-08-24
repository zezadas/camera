/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.nfccontroller.NfcStateCallback;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NfcStateChangedReceiver {
    private static final String TAG;
    private Context mContext;
    private NfcStateCallback mStateCallback;
    private StateChangedReceiver mStateChangedReceiver;

    static;

    public NfcStateChangedReceiver();

    static /* synthetic */ NfcStateCallback access$100(NfcStateChangedReceiver var0);

    public void initialize(Context var1, NfcStateCallback var2);

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StateChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ NfcStateChangedReceiver this$0;

        private StateChangedReceiver(NfcStateChangedReceiver var1);

        /* synthetic */ StateChangedReceiver(NfcStateChangedReceiver var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

}

