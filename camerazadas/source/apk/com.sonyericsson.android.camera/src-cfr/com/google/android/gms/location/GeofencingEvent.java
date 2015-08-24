/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcelable;
import com.google.android.gms.internal.mc;
import com.google.android.gms.location.Geofence;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent {
    private final int aep;
    private final List<Geofence> aeq;
    private final Location aer;
    private final int tc;

    private GeofencingEvent(int n, int n2, List<Geofence> list, Location location) {
        this.tc = n;
        this.aep = n2;
        this.aeq = list;
        this.aer = location;
    }

    public static GeofencingEvent fromIntent(Intent intent) {
        if (intent == null) {
            return null;
        }
        return new GeofencingEvent(intent.getIntExtra("gms_error_code", -1), GeofencingEvent.getGeofenceTransition(intent), GeofencingEvent.getTriggeringGeofences(intent), (Location)intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int getGeofenceTransition(Intent intent) {
        int n = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (n == -1 || n != 1 && n != 2 && n != 4) {
            return -1;
        }
        return n;
    }

    private static List<Geofence> getTriggeringGeofences(Intent cloneable) {
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

    public int getErrorCode() {
        return this.tc;
    }

    public int getGeofenceTransition() {
        return this.aep;
    }

    public List<Geofence> getTriggeringGeofences() {
        return this.aeq;
    }

    public Location getTriggeringLocation() {
        return this.aer;
    }

    public boolean hasError() {
        if (this.tc != -1) {
            return true;
        }
        return false;
    }
}

