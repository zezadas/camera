/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.mc;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public String getRequestId();

    public static final class Builder {
        private String XC = null;
        private int aeh = 0;
        private long aei = Long.MIN_VALUE;
        private short aej = -1;
        private double aek;
        private double ael;
        private float aem;
        private int aen = 0;
        private int aeo = -1;

        public Geofence build() {
            if (this.XC == null) {
                throw new IllegalArgumentException("Request ID not set.");
            }
            if (this.aeh == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((this.aeh & 4) != 0 && this.aeo < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            }
            if (this.aei == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (this.aej == -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            if (this.aen < 0) {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            }
            return new mc(this.XC, this.aeh, 1, this.aek, this.ael, this.aem, this.aei, this.aen, this.aeo);
        }

        public Builder setCircularRegion(double d, double d2, float f) {
            this.aej = 1;
            this.aek = d;
            this.ael = d2;
            this.aem = f;
            return this;
        }

        public Builder setExpirationDuration(long l) {
            if (l < 0) {
                this.aei = -1;
                return this;
            }
            this.aei = SystemClock.elapsedRealtime() + l;
            return this;
        }

        public Builder setLoiteringDelay(int n) {
            this.aeo = n;
            return this;
        }

        public Builder setNotificationResponsiveness(int n) {
            this.aen = n;
            return this;
        }

        public Builder setRequestId(String string) {
            this.XC = string;
            return this;
        }

        public Builder setTransitionTypes(int n) {
            this.aeh = n;
            return this;
        }
    }

}

