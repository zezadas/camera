/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller.parser;

import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import java.math.BigInteger;
import java.util.Arrays;

public class DINdefMessage {
    private static final int OFFSET_VERSION = 4;
    private static final int PASSWD_ATTR_HEAD = 2;
    private static final int PASSWD_ATTR_LENGTH = 2;
    private static final int SSID_ATTR_HEAD = 2;
    private static final int SSID_ATTR_LENGTH = 2;
    private static final String TAG = DINdefMessage.class.getSimpleName();
    private static final int VERSION_LENGTH = 1;
    private final int mMajorVersion;
    private final int mMinorVersion;
    private final String mPasswd;
    private final String mSsid;

    public DINdefMessage(NdefMessage ndefMessage) {
        ndefMessage = (NdefMessage)ndefMessage.getRecords()[0].getPayload();
        NdefMessage ndefMessage2 = ndefMessage[4];
        this.mMajorVersion = ndefMessage2 >> 4;
        this.mMinorVersion = (byte)(ndefMessage2 & 15);
        ndefMessage2 = (NdefMessage)new BigInteger(Arrays.copyOfRange((byte[])ndefMessage, 7, 9)).intValue();
        this.mSsid = new String(Arrays.copyOfRange((byte[])ndefMessage, 7 + 2, (int)(ndefMessage2 + 9)));
        reference var3_3 = ndefMessage2 + 9 + 2;
        ndefMessage2 = (NdefMessage)new BigInteger(Arrays.copyOfRange((byte[])ndefMessage, (int)var3_3, (int)(var3_3 + 2))).intValue();
        this.mPasswd = new String(Arrays.copyOfRange((byte[])ndefMessage, (int)var3_3, (int)((var3_3+=2) + ndefMessage2)));
    }

    public int getMajorVersion() {
        return this.mMajorVersion;
    }

    public int getMinorVersion() {
        return this.mMinorVersion;
    }

    public String getPasswd() {
        return this.mPasswd;
    }

    public String getSsid() {
        return this.mSsid;
    }
}

