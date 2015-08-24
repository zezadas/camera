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
import android.os.Parcelable;
import java.util.Set;

public class NdefMessagePushReceiver {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = NdefMessagePushReceiver.class.getSimpleName();
    private Activity mActivity = null;
    private OnNdefMessageReceivedCallback mCallback = null;
    private Context mContext = null;
    private final NdefPushMessageCallback mDefaultPushMsgCallback;
    private boolean mIsReceiverRegistered = false;
    private IntentFilter mNdefMessageFilter = null;
    private final NdefMessageReceiver mNdefMsgReceiver;
    private NfcAdapter mNfcAdapter = null;
    private PendingIntent mPendingIntent = null;
    private IntentFilter[] mPendingIntentFilters = null;
    private NdefMessage mPushMessage = null;

    public NdefMessagePushReceiver(Context object, Activity activity) {
        this.mDefaultPushMsgCallback = new NdefPushMessageCallback();
        this.mNdefMsgReceiver = new NdefMessageReceiver();
        this.mContext = object;
        this.mActivity = activity;
        this.mNfcAdapter = NfcAdapter.getDefaultAdapter(this.mContext);
        if (this.mNfcAdapter == null) {
            throw new IllegalStateException("NFC is not supported.");
        }
        object = new Intent("android.nfc.action.NDEF_DISCOVERED");
        object.setPackage(this.mContext.getPackageName());
        this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, (Intent)object, 134217728);
    }

    public void disablePushMessage() {
        this.mPushMessage = null;
        this.mNfcAdapter.setNdefPushMessageCallback(null, this.mActivity, new Activity[0]);
        this.mNfcAdapter.setOnNdefPushCompleteCallback(null, this.mActivity, new Activity[0]);
    }

    public void disableReceiveNdefMessage() {
        if (this.mIsReceiverRegistered) {
            this.mContext.unregisterReceiver(this.mNdefMsgReceiver);
            this.mIsReceiverRegistered = false;
        }
        this.mNfcAdapter.disableForegroundDispatch(this.mActivity);
        this.mCallback = null;
    }

    public void enablePushMessage(NdefMessage ndefMessage, NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback, boolean bl) {
        this.mPushMessage = ndefMessage;
        this.enablePushMessage(this.mDefaultPushMsgCallback, onNdefPushCompleteCallback, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void enablePushMessage(NfcAdapter.CreateNdefMessageCallback createNdefMessageCallback, NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback, boolean bl) {
        if (bl) {
            this.mNfcAdapter.setNdefPushMessageCallback(createNdefMessageCallback, this.mActivity, 1);
        } else {
            this.mNfcAdapter.setNdefPushMessageCallback(createNdefMessageCallback, this.mActivity, new Activity[0]);
        }
        this.mNfcAdapter.setOnNdefPushCompleteCallback(onNdefPushCompleteCallback, this.mActivity, new Activity[0]);
    }

    public void enableReceiveNdefMessage(OnNdefMessageReceivedCallback object, Set<String> object22) {
        this.mCallback = object;
        this.mNdefMessageFilter = new IntentFilter("android.nfc.action.NDEF_DISCOVERED");
        try {
            for (Object object22 : object22) {
                this.mNdefMessageFilter.addDataType((String)object22);
            }
        }
        catch (IntentFilter.MalformedMimeTypeException var1_2) {
            var1_2.printStackTrace();
        }
        this.mPendingIntentFilters = new IntentFilter[]{this.mNdefMessageFilter};
        this.mNfcAdapter.enableForegroundDispatch(this.mActivity, this.mPendingIntent, this.mPendingIntentFilters, null);
        this.mContext.registerReceiver(this.mNdefMsgReceiver, this.mNdefMessageFilter);
        this.mIsReceiverRegistered = true;
    }

    public boolean isEnabled() {
        if (this.mNfcAdapter != null) {
            return this.mNfcAdapter.isEnabled();
        }
        return false;
    }

    public void reEnableForegroundDispatch() {
        if (this.mIsReceiverRegistered) {
            this.mNfcAdapter.enableForegroundDispatch(this.mActivity, this.mPendingIntent, this.mPendingIntentFilters, null);
        }
    }

    public void release() {
        this.mContext = null;
        this.mActivity = null;
        this.mNfcAdapter = null;
        this.mPendingIntent = null;
        this.mPendingIntentFilters = null;
        this.mNdefMessageFilter = null;
        this.mPushMessage = null;
        this.mCallback = null;
    }

    private class NdefMessageReceiver
    extends BroadcastReceiver {
        private NdefMessageReceiver() {
        }

        @Override
        public void onReceive(Context arrparcelable, Intent intent) {
            arrparcelable = intent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES");
            if (arrparcelable != null && arrparcelable.length > 0 && (arrparcelable = (NdefMessage)arrparcelable[0]) != null && NdefMessagePushReceiver.this.mCallback != null) {
                NdefMessagePushReceiver.this.mCallback.onNdefMessageReceived((NdefMessage)arrparcelable);
            }
        }
    }

    private class NdefPushMessageCallback
    implements NfcAdapter.CreateNdefMessageCallback {
        private NdefPushMessageCallback() {
        }

        @Override
        public NdefMessage createNdefMessage(NfcEvent nfcEvent) {
            return NdefMessagePushReceiver.this.mPushMessage;
        }
    }

    public static interface OnNdefMessageReceivedCallback {
        public void onNdefMessageReceived(NdefMessage var1);
    }

}

