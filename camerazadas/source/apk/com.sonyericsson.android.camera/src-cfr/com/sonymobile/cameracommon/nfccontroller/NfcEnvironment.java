/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

import android.content.Context;
import android.nfc.NfcAdapter;

public class NfcEnvironment {
    private boolean mIsNfcDeviceEnableInInitialized = false;
    private NfcAdapter mNfcAdapter;

    public void disable() {
        this.mNfcAdapter.disable();
    }

    public boolean enable() {
        if (!this.mNfcAdapter.isEnabled()) {
            return this.mNfcAdapter.enable();
        }
        return true;
    }

    public void initialize(Context context) {
        this.mNfcAdapter = NfcAdapter.getDefaultAdapter(context);
        if (!this.mNfcAdapter.isEnabled()) {
            this.mIsNfcDeviceEnableInInitialized = false;
            return;
        }
        this.mIsNfcDeviceEnableInInitialized = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void release() {
        if (this.mIsNfcDeviceEnableInInitialized) {
            this.enable();
        } else {
            this.disable();
        }
        this.mNfcAdapter = null;
    }
}

