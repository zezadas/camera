/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.Geofence;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class GeofencingEvent {
    private final int aep;
    private final List<Geofence> aeq;
    private final Location aer;
    private final int tc;

    private GeofencingEvent(int var1, int var2, List<Geofence> var3, Location var4);

    public static GeofencingEvent fromIntent(Intent var0);

    private static int getGeofenceTransition(Intent var0);

    private static List<Geofence> getTriggeringGeofences(Intent var0);

    public int getErrorCode();

    public int getGeofenceTransition();

    public List<Geofence> getTriggeringGeofences();

    public Location getTriggeringLocation();

    public boolean hasError();
}

