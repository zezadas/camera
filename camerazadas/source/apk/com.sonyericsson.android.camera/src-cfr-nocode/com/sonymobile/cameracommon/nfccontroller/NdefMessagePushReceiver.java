/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.nfc.NdefMessage;
import android.nfc.NfcAdapter;
import android.nfc.NfcEvent;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NdefMessagePushReceiver {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private Activity mActivity;
    private OnNdefMessageReceivedCallback mCallback;
    private Context mContext;
    private final NdefPushMessageCallback mDefaultPushMsgCallback;
    private boolean mIsReceiverRegistered;
    private IntentFilter mNdefMessageFilter;
    private final NdefMessageReceiver mNdefMsgReceiver;
    private NfcAdapter mNfcAdapter;
    private PendingIntent mPendingIntent;
    private IntentFilter[] mPendingIntentFilters;
    private NdefMessage mPushMessage;

    static;

    public NdefMessagePushReceiver(Context var1, Activity var2);

    static /* synthetic */ NdefMessage access$100(NdefMessagePushReceiver var0);

    static /* synthetic */ OnNdefMessageReceivedCallback access$300(NdefMessagePushReceiver var0);

    public void disablePushMessage();

    public void disableReceiveNdefMessage();

    public void enablePushMessage(NdefMessage var1, NfcAdapter.OnNdefPushCompleteCallback var2, boolean var3);

    public void enablePushMessage(NfcAdapter.CreateNdefMessageCallback var1, NfcAdapter.OnNdefPushCompleteCallback var2, boolean var3);

    public void enableReceiveNdefMessage(OnNdefMessageReceivedCallback var1, Set<String> var2);

    public boolean isEnabled();

    public void reEnableForegroundDispatch();

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NdefMessageReceiver
    extends BroadcastReceiver {
        final /* synthetic */ NdefMessagePushReceiver this$0;

        private NdefMessageReceiver(NdefMessagePushReceiver var1);

        /* synthetic */ NdefMessageReceiver(NdefMessagePushReceiver var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NdefPushMessageCallback
    implements NfcAdapter.CreateNdefMessageCallback {
        final /* synthetic */ NdefMessagePushReceiver this$0;

        private NdefPushMessageCallback(NdefMessagePushReceiver var1);

        /* synthetic */ NdefPushMessageCallback(NdefMessagePushReceiver var1,  var2);

        @Override
        public NdefMessage createNdefMessage(NfcEvent var1);
    }

    public static interface OnNdefMessageReceivedCallback {
        public void onNdefMessageReceived(NdefMessage var1);
    }

}

