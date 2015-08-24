/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
@Deprecated
public class LocationClient
implements GooglePlayServicesClient {
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";
    private final lz aea;

    public LocationClient(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3);

    public static int getErrorCode(Intent var0);

    public static int getGeofenceTransition(Intent var0);

    public static List<Geofence> getTriggeringGeofences(Intent var0);

    public static Location getTriggeringLocation(Intent var0);

    public static boolean hasError(Intent var0);

    public void addGeofences(List<Geofence> var1, PendingIntent var2, OnAddGeofencesResultListener var3);

    @Override
    public void connect();

    @Override
    public void disconnect();

    public Location getLastLocation();

    @Override
    public boolean isConnected();

    @Override
    public boolean isConnecting();

    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener var1);

    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public void removeGeofences(PendingIntent var1, OnRemoveGeofencesResultListener var2);

    public void removeGeofences(List<String> var1, OnRemoveGeofencesResultListener var2);

    public void removeLocationUpdates(PendingIntent var1);

    public void removeLocationUpdates(LocationListener var1);

    public void requestLocationUpdates(LocationRequest var1, PendingIntent var2);

    public void requestLocationUpdates(LocationRequest var1, LocationListener var2);

    public void requestLocationUpdates(LocationRequest var1, LocationListener var2, Looper var3);

    public void setMockLocation(Location var1);

    public void setMockMode(boolean var1);

    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public static interface OnAddGeofencesResultListener {
        public void onAddGeofencesResult(int var1, String[] var2);
    }

    public static interface OnRemoveGeofencesResultListener {
        public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2);

        public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2);
    }

}

