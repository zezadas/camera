/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.b;

public final class LocationRequest
implements SafeParcelable {
    public static final b CREATOR = new b();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    private final int BR;
    boolean UK;
    long aei;
    long aes;
    long aet;
    int aeu;
    float aev;
    long aew;
    int mPriority;

    public LocationRequest() {
        this.BR = 1;
        this.mPriority = 102;
        this.aes = 3600000;
        this.aet = 600000;
        this.UK = false;
        this.aei = Long.MAX_VALUE;
        this.aeu = Integer.MAX_VALUE;
        this.aev = 0.0f;
        this.aew = 0;
    }

    LocationRequest(int n, int n2, long l, long l2, boolean bl, long l3, int n3, float f, long l4) {
        this.BR = n;
        this.mPriority = n2;
        this.aes = l;
        this.aet = l2;
        this.UK = bl;
        this.aei = l3;
        this.aeu = n3;
        this.aev = f;
        this.aew = l4;
    }

    private static void a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("invalid displacement: " + f);
        }
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void eb(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("invalid quality: " + n);
            }
            case 100: 
            case 102: 
            case 104: 
            case 105: 
        }
    }

    public static String ec(int n) {
        switch (n) {
            default: {
                return "???";
            }
            case 100: {
                return "PRIORITY_HIGH_ACCURACY";
            }
            case 102: {
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            }
            case 104: {
                return "PRIORITY_LOW_POWER";
            }
            case 105: 
        }
        return "PRIORITY_NO_POWER";
    }

    private static void v(long l) {
        if (l < 0) {
            throw new IllegalArgumentException("invalid interval: " + l);
        }
    }

    @Override
    public int describeContents() {
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
        if (!(object instanceof LocationRequest)) {
            return false;
        }
        object = (LocationRequest)object;
        if (this.mPriority != object.mPriority) return false;
        if (this.aes != object.aes) return false;
        if (this.aet != object.aet) return false;
        if (this.UK != object.UK) return false;
        if (this.aei != object.aei) return false;
        if (this.aeu != object.aeu) return false;
        if (this.aev == object.aev) return true;
        return false;
    }

    public long getExpirationTime() {
        return this.aei;
    }

    public long getFastestInterval() {
        return this.aet;
    }

    public long getInterval() {
        return this.aes;
    }

    public int getNumUpdates() {
        return this.aeu;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public float getSmallestDisplacement() {
        return this.aev;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mPriority, this.aes, this.aet, this.UK, this.aei, this.aeu, Float.valueOf(this.aev));
    }

    /*
     * Enabled aggressive block sorting
     */
    public LocationRequest setExpirationDuration(long l) {
        long l2 = SystemClock.elapsedRealtime();
        this.aei = l > Long.MAX_VALUE - l2 ? Long.MAX_VALUE : l2 + l;
        if (this.aei < 0) {
            this.aei = 0;
        }
        return this;
    }

    public LocationRequest setExpirationTime(long l) {
        this.aei = l;
        if (this.aei < 0) {
            this.aei = 0;
        }
        return this;
    }

    public LocationRequest setFastestInterval(long l) {
        LocationRequest.v(l);
        this.UK = true;
        this.aet = l;
        return this;
    }

    public LocationRequest setInterval(long l) {
        LocationRequest.v(l);
        this.aes = l;
        if (!this.UK) {
            this.aet = (long)((double)this.aes / 6.0);
        }
        return this;
    }

    public LocationRequest setNumUpdates(int n) {
        if (n <= 0) {
            throw new IllegalArgumentException("invalid numUpdates: " + n);
        }
        this.aeu = n;
        return this;
    }

    public LocationRequest setPriority(int n) {
        LocationRequest.eb(n);
        this.mPriority = n;
        return this;
    }

    public LocationRequest setSmallestDisplacement(float f) {
        LocationRequest.a(f);
        this.aev = f;
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[").append(LocationRequest.ec(this.mPriority));
        if (this.mPriority != 105) {
            stringBuilder.append(" requested=");
            stringBuilder.append("" + this.aes + "ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append("" + this.aet + "ms");
        if (this.aei != Long.MAX_VALUE) {
            long l = this.aei;
            long l2 = SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append("" + (l - l2) + "ms");
        }
        if (this.aeu != Integer.MAX_VALUE) {
            stringBuilder.append(" num=").append(this.aeu);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

