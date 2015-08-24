/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;

public class GeotagLocationListener
implements LocationListener {
    private final GeotagManager mGeotagManager;
    private boolean mIsDisabled = false;
    private Location mLastLocation;
    public final String mProvider;
    private boolean mValid;

    public GeotagLocationListener(GeotagManager geotagManager, String string) {
        this.mGeotagManager = geotagManager;
        this.mProvider = string;
        this.mLastLocation = new Location(this.mProvider);
    }

    public Location current() {
        if (this.mValid) {
            return this.mLastLocation;
        }
        return null;
    }

    public boolean isDisabled() {
        return this.mIsDisabled;
    }

    @Override
    public void onLocationChanged(Location location) {
        this.mIsDisabled = false;
        if (location.getLatitude() == 0.0 && location.getLongitude() == 0.0) {
            return;
        }
        this.mLastLocation.set(location);
        this.mValid = true;
        this.mGeotagManager.notifyStatus();
    }

    @Override
    public void onProviderDisabled(String string) {
        this.mValid = false;
        this.mIsDisabled = true;
        this.mGeotagManager.notifyStatus();
    }

    @Override
    public void onProviderEnabled(String string) {
        this.mIsDisabled = false;
    }

    @Override
    public void onStatusChanged(String string, int n, Bundle bundle) {
        this.mIsDisabled = false;
        if (n != 0 || this.mValid) {
            return;
        }
        this.mGeotagManager.notifyStatus();
    }

    public void reset() {
        this.mValid = false;
        this.mIsDisabled = false;
    }
}

