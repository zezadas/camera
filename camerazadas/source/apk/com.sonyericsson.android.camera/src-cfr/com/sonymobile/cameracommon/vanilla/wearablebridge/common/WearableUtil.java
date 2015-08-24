/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class WearableUtil {
    public static boolean isGooglePlayServiceAvailable(Context context) {
        return WearableUtil.isGooglePlayServiceAvailable(context, -1);
    }

    public static boolean isGooglePlayServiceAvailable(Context context, int n) {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0 && 6171000 >= n) {
            return true;
        }
        return false;
    }
}

