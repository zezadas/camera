/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;

@Deprecated
public final class LocationStatusCodes {
    public static final int ERROR = 1;
    public static final int GEOFENCE_NOT_AVAILABLE = 1000;
    public static final int GEOFENCE_TOO_MANY_GEOFENCES = 1001;
    public static final int GEOFENCE_TOO_MANY_PENDING_INTENTS = 1002;
    public static final int SUCCESS = 0;

    private LocationStatusCodes() {
    }

    public static int ef(int n) {
        if (n >= 0 && n <= 1 || 1000 <= n && n <= 1002) {
            return n;
        }
        return 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Status eg(int n) {
        switch (n) {
            default: {
                do {
                    return new Status(n);
                    break;
                } while (true);
            }
            case 1: 
        }
        n = 13;
        return new Status(n);
    }
}

