/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.Geofence;
import java.util.List;

public interface GeofencingApi {
    public PendingResult<Status> addGeofences(GoogleApiClient var1, List<Geofence> var2, PendingIntent var3);

    public PendingResult<Status> removeGeofences(GoogleApiClient var1, PendingIntent var2);

    public PendingResult<Status> removeGeofences(GoogleApiClient var1, List<String> var2);
}

