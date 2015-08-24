/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraAddonReceiverForGA
extends BroadcastReceiver {
    public static final String ACTION_ADD_BUTTON_PRESSED = "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED";
    public static final String ACTION_APP_SELECTED = "com.sonymobile.camera.addon.action.APP_SELECTED";
    private static final String NEXT_MODE_NAME = "next_mode_name";
    private static final String NEXT_PACKAGE_NAME = "next_package_name";
    public static final String PERMISSION_CAMERA_ADDON_NOTIFY_GA = "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA";
    private static final String TAG;

    static;

    public CameraAddonReceiverForGA();

    private void sendGoogleAnalyticsAddonEvent(Context var1, Event.AddonFW var2, String var3);

    @Override
    public void onReceive(Context var1, Intent var2);
}

