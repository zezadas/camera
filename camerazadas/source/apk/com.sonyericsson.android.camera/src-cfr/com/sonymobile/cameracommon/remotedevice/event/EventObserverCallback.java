/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.event;

import java.util.Set;

public interface EventObserverCallback {
    public void onAvailableApiSetChanged(Set<String> var1);

    public void onCameraStatusChanged(String var1);

    public void onErrorStopped();

    public void onShootModeChanged(String var1);
}

