/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.md;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

public class mc
implements SafeParcelable,
Geofence {
    public static final md CREATOR = new md();
    private final int BR;
    private final String XC;
    private final int aeh;
    private final short aej;
    private final double aek;
    private final double ael;
    private final float aem;
    private final int aen;
    private final int aeo;
    private final long afm;

    public mc(int n, String string, int n2, short s, double d, double d2, float f, long l, int n3, int n4) {
        mc.bY(string);
        mc.b(f);
        mc.a(d, d2);
        n2 = mc.ek(n2);
        this.BR = n;
        this.aej = s;
        this.XC = string;
        this.aek = d;
        this.ael = d2;
        this.aem = f;
        this.afm = l;
        this.aeh = n2;
        this.aen = n3;
        this.aeo = n4;
    }

    public mc(String string, int n, short s, double d, double d2, float f, long l, int n2, int n3) {
        this(1, string, n, s, d, d2, f, l, n2, n3);
    }

    private static void a(double d, double d2) {
        if (d > 90.0 || d < -90.0) {
            throw new IllegalArgumentException("invalid latitude: " + d);
        }
        if (d2 > 180.0 || d2 < -180.0) {
            throw new IllegalArgumentException("invalid longitude: " + d2);
        }
    }

    private static void b(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("invalid radius: " + f);
        }
    }

    private static void bY(String string) {
        if (string == null || string.length() > 100) {
            throw new IllegalArgumentException("requestId is null or too long: " + string);
        }
    }

    private static int ek(int n) {
        int n2 = n & 7;
        if (n2 == 0) {
            throw new IllegalArgumentException("No supported transition specified: " + n);
        }
        return n2;
    }

    private static String el(int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1: 
        }
        return "CIRCLE";
    }

    public static mc h(byte[] object) {
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall((byte[])object, 0, object.length);
        parcel.setDataPosition(0);
        object = CREATOR.cw(parcel);
        parcel.recycle();
        return object;
    }

    @Override
    public int describeContents() {
        md md = CREATOR;
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (!(object instanceof mc)) {
            return false;
        }
        object = (mc)object;
        if (this.aem != object.aem) {
            return false;
        }
        if (this.aek != object.aek) {
            return false;
        }
        if (this.ael != object.ael) {
            return false;
        }
        if (this.aej == object.aej) return true;
        return false;
    }

    public long getExpirationTime() {
        return this.afm;
    }

    public double getLatitude() {
        return this.aek;
    }

    public double getLongitude() {
        return this.ael;
    }

    public int getNotificationResponsiveness() {
        return this.aen;
    }

    @Override
    public String getRequestId() {
        return this.XC;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        long l = Double.doubleToLongBits(this.aek);
        int n = (int)(l ^ l >>> 32);
        l = Double.doubleToLongBits(this.ael);
        return ((((n + 31) * 31 + (int)(l ^ l >>> 32)) * 31 + Float.floatToIntBits(this.aem)) * 31 + this.aej) * 31 + this.aeh;
    }

    public short ma() {
        return this.aej;
    }

    public float mb() {
        return this.aem;
    }

    public int mc() {
        return this.aeh;
    }

    public int md() {
        return this.aeo;
    }

    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", mc.el(this.aej), this.XC, this.aeh, this.aek, this.ael, Float.valueOf(this.aem), this.aen / 1000, this.aeo, this.afm);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        md md = CREATOR;
        md.a(this, parcel, n);
    }
}

