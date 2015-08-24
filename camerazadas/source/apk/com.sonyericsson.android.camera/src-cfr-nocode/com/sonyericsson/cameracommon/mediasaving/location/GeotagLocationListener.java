/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;

/*
 * Exception performing whole class analysis.
 */
public class GeotagLocationListener
implements LocationListener {
    private final GeotagManager mGeotagManager;
    private boolean mIsDisabled;
    private Location mLastLocation;
    public final String mProvider;
    private boolean mValid;

    public GeotagLocationListener(GeotagManager var1, String var2);

    public Location current();

    public boolean isDisabled();

    @Override
    public void onLocationChanged(Location var1);

    @Override
    public void onProviderDisabled(String var1);

    @Override
    public void onProviderEnabled(String var1);

    @Override
    public void onStatusChanged(String var1, int var2, Bundle var3);

    public void reset();
}

