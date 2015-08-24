/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.location;

import android.content.Context;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LocationSettingsReader {
    private static final String TAG;
    boolean mIsGpsLocationAllowed;
    boolean mIsNetworkLocationAllowed;

    static;

    public LocationSettingsReader();

    public static boolean isLocationProviderAllowed(Context var0, String var1);

    private void setIsGpsLocationAllowed(boolean var1);

    private void setIsNetworkLocationAllowed(boolean var1);

    public boolean getIsGpsLocationAllowed();

    public boolean getIsNetworkLocationAllowed();

    public void readLocationSettings(Context var1);
}

