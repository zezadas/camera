/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public String getRequestId();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private String XC;
        private int aeh;
        private long aei;
        private short aej;
        private double aek;
        private double ael;
        private float aem;
        private int aen;
        private int aeo;

        public Builder();

        public Geofence build();

        public Builder setCircularRegion(double var1, double var3, float var5);

        public Builder setExpirationDuration(long var1);

        public Builder setLoiteringDelay(int var1);

        public Builder setNotificationResponsiveness(int var1);

        public Builder setRequestId(String var1);

        public Builder setTransitionTypes(int var1);
    }

}

