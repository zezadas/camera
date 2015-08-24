/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

public class TakenStatusPhoto {
    private static final String TAG = TakenStatusPhoto.class.getSimpleName();
    protected byte[] mImage;

    public TakenStatusPhoto() {
    }

    public TakenStatusPhoto(TakenStatusPhoto takenStatusPhoto) {
        this.mImage = takenStatusPhoto.mImage;
    }

    public void log() {
    }
}

