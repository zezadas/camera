/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.lz;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mc;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public class LocationClient
implements GooglePlayServicesClient {
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";
    private final lz aea;

    public LocationClient(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea = new lz(context, connectionCallbacks, onConnectionFailedListener, "location");
    }

    public static int getErrorCode(Intent intent) {
        return intent.getIntExtra("gms_error_code", -1);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int getGeofenceTransition(Intent intent) {
        int n = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (n == -1 || n != 1 && n != 2 && n != 4) {
            return -1;
        }
        return n;
    }

    public static List<Geofence> getTriggeringGeofences(Intent cloneable) {
        Object object = (ArrayList)cloneable.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (object == null) {
            return null;
        }
        cloneable = new ArrayList(object.size());
        object = object.iterator();
        while (object.hasNext()) {
            cloneable.add(mc.h((byte[])object.next()));
        }
        return cloneable;
    }

    public static Location getTriggeringLocation(Intent intent) {
        return (Location)intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location");
    }

    public static boolean hasError(Intent intent) {
        return intent.hasExtra("gms_error_code");
    }

    public void addGeofences(List<Geofence> object, PendingIntent pendingIntent, OnAddGeofencesResultListener onAddGeofencesResultListener) {
        ArrayList<mc> arrayList = null;
        if (object != null) {
            arrayList = new ArrayList<mc>();
            for (Geofence geofence : object) {
                o.b(geofence instanceof mc, (Object)"Geofence must be created using Geofence.Builder.");
                arrayList.add((mc)geofence);
            }
        }
        try {
            this.aea.addGeofences(arrayList, pendingIntent, onAddGeofencesResultListener);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    @Override
    public void connect() {
        this.aea.connect();
    }

    @Override
    public void disconnect() {
        this.aea.disconnect();
    }

    public Location getLastLocation() {
        return this.aea.getLastLocation();
    }

    @Override
    public boolean isConnected() {
        return this.aea.isConnected();
    }

    @Override
    public boolean isConnecting() {
        return this.aea.isConnecting();
    }

    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        return this.aea.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.aea.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.aea.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void removeGeofences(PendingIntent pendingIntent, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
        try {
            this.aea.removeGeofences(pendingIntent, onRemoveGeofencesResultListener);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void removeGeofences(List<String> list, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
        try {
            this.aea.removeGeofences(list, onRemoveGeofencesResultListener);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) {
        try {
            this.aea.removeLocationUpdates(pendingIntent);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void removeLocationUpdates(LocationListener locationListener) {
        try {
            this.aea.removeLocationUpdates(locationListener);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        try {
            this.aea.b(ma.b(locationRequest), pendingIntent);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener) {
        try {
            this.aea.a(ma.b(locationRequest), locationListener);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        try {
            this.aea.a(ma.b(locationRequest), locationListener, looper);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void setMockLocation(Location location) {
        try {
            this.aea.setMockLocation(location);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void setMockMode(boolean bl) {
        try {
            this.aea.setMockMode(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new IllegalStateException(var2_2);
        }
    }

    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.aea.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    public static interface OnAddGeofencesResultListener {
        public void onAddGeofencesResult(int var1, String[] var2);
    }

    public static interface OnRemoveGeofencesResultListener {
        public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2);

        public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2);
    }

}

