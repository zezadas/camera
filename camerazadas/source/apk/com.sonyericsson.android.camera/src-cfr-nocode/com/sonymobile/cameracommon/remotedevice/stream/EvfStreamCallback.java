/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.stream;

public interface EvfStreamCallback {
    public void onEvfClosed(boolean var1);

    public void onEvfFrame(byte[] var1);

    public void onEvfOpened(boolean var1);
}

