/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

public interface FusedLocationProviderApi {
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";

    public Location getLastLocation(GoogleApiClient var1);

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient var1, PendingIntent var2);

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient var1, LocationListener var2);

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, PendingIntent var3);

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, LocationListener var3);

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, LocationListener var3, Looper var4);

    public PendingResult<Status> setMockLocation(GoogleApiClient var1, Location var2);

    public PendingResult<Status> setMockMode(GoogleApiClient var1, boolean var2);
}

