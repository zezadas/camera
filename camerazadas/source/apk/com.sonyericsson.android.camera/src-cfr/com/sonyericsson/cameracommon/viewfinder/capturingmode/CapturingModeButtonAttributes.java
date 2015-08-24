/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.capturingmode;

public class CapturingModeButtonAttributes {
    private final int mIconId;
    private final String mName;
    private final int mTextId;

    public CapturingModeButtonAttributes(String string, int n, int n2) {
        this.mName = string;
        this.mIconId = n;
        this.mTextId = n2;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public String getName() {
        return this.mName;
    }

    public int getTextId() {
        return this.mTextId;
    }
}

