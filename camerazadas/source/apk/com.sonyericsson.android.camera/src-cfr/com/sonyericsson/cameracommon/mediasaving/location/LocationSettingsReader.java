/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.location;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

public class LocationSettingsReader {
    private static final String TAG = LocationSettingsReader.class.getSimpleName();
    boolean mIsGpsLocationAllowed;
    boolean mIsNetworkLocationAllowed;

    public static boolean isLocationProviderAllowed(Context object, String string) {
        if ((object = Settings.Secure.getString(object.getContentResolver(), "location_providers_allowed")) != null && object.contains((CharSequence)string)) {
            return true;
        }
        return false;
    }

    private void setIsGpsLocationAllowed(boolean bl) {
        this.mIsGpsLocationAllowed = bl;
    }

    private void setIsNetworkLocationAllowed(boolean bl) {
        this.mIsNetworkLocationAllowed = bl;
    }

    public boolean getIsGpsLocationAllowed() {
        return this.mIsGpsLocationAllowed;
    }

    public boolean getIsNetworkLocationAllowed() {
        return this.mIsNetworkLocationAllowed;
    }

    public void readLocationSettings(Context context) {
        this.setIsGpsLocationAllowed(LocationSettingsReader.isLocationProviderAllowed(context, "gps"));
        this.setIsNetworkLocationAllowed(LocationSettingsReader.isLocationProviderAllowed(context, "network"));
    }
}

