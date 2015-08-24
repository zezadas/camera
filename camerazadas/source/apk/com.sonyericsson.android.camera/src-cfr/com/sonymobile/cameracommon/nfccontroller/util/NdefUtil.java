/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller.util;

import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import java.nio.charset.Charset;

public class NdefUtil {
    public static NdefRecord createMimeNdefRecord(String string, String string2) {
        return new NdefRecord(2, string.getBytes(Charset.forName("US-ASCII")), null, string2.getBytes());
    }

    public static /* varargs */ NdefMessage createNdefMessage(NdefRecord ... arrndefRecord) {
        return new NdefMessage(arrndefRecord);
    }
}

