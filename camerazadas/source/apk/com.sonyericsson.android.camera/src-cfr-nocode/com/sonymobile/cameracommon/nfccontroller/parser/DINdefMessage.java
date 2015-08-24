/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller.parser;

import android.nfc.NdefMessage;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DINdefMessage {
    private static final int OFFSET_VERSION = 4;
    private static final int PASSWD_ATTR_HEAD = 2;
    private static final int PASSWD_ATTR_LENGTH = 2;
    private static final int SSID_ATTR_HEAD = 2;
    private static final int SSID_ATTR_LENGTH = 2;
    private static final String TAG;
    private static final int VERSION_LENGTH = 1;
    private final int mMajorVersion;
    private final int mMinorVersion;
    private final String mPasswd;
    private final String mSsid;

    static;

    public DINdefMessage(NdefMessage var1);

    public int getMajorVersion();

    public int getMinorVersion();

    public String getPasswd();

    public String getSsid();
}

