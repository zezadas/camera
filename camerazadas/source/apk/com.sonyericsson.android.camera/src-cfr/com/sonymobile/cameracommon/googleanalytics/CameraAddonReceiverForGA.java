/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.googleanalytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;

public class CameraAddonReceiverForGA
extends BroadcastReceiver {
    public static final String ACTION_ADD_BUTTON_PRESSED = "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED";
    public static final String ACTION_APP_SELECTED = "com.sonymobile.camera.addon.action.APP_SELECTED";
    private static final String NEXT_MODE_NAME = "next_mode_name";
    private static final String NEXT_PACKAGE_NAME = "next_package_name";
    public static final String PERMISSION_CAMERA_ADDON_NOTIFY_GA = "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA";
    private static final String TAG = CameraAddonReceiverForGA.class.getSimpleName();

    private void sendGoogleAnalyticsAddonEvent(Context context, Event.AddonFW addonFW, String string) {
        GoogleAnalyticsUtil.getInstance().sendEvent(Event.Category.ADDON_FW, addonFW.toString(), string);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onReceive(Context context, Intent object) {
        String string = object.getAction();
        if (string == null) {
            return;
        }
        if (string.equals("com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED")) {
            this.sendGoogleAnalyticsAddonEvent(context, Event.AddonFW.ADD_BUTTON_PRESSED, null);
            return;
        }
        if (!string.equals("com.sonymobile.camera.addon.action.APP_SELECTED")) return;
        string = object.getStringExtra("next_package_name");
        object = object.getStringExtra("next_mode_name");
        object = string + "/" + (String)object;
        this.sendGoogleAnalyticsAddonEvent(context, Event.AddonFW.APP_SELECTED_ON_MODE_SELECTOR, (String)object);
    }
}

