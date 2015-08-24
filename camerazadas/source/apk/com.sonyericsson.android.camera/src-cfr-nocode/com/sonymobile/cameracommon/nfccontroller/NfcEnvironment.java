/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

import android.content.Context;
import android.nfc.NfcAdapter;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NfcEnvironment {
    private boolean mIsNfcDeviceEnableInInitialized;
    private NfcAdapter mNfcAdapter;

    public NfcEnvironment();

    public void disable();

    public boolean enable();

    public void initialize(Context var1);

    public void release();
}

