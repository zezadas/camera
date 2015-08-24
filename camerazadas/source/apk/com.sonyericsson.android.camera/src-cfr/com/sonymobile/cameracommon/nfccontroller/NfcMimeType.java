/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.nfccontroller;

public enum NfcMimeType {
    DI("application/x-sony-pmm");
    
    private final String mStringId;

    private NfcMimeType(String string2) {
        this.mStringId = string2;
    }

    public String getStringId() {
        return this.mStringId;
    }
}

