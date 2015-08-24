/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.b;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LocationRequest
implements SafeParcelable {
    public static final b CREATOR;
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

    static;

    public LocationRequest();

    LocationRequest(int var1, int var2, long var3, long var5, boolean var7, long var8, int var10, float var11, long var12);

    private static void a(float var0);

    public static LocationRequest create();

    private static void eb(int var0);

    public static String ec(int var0);

    private static void v(long var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public long getExpirationTime();

    public long getFastestInterval();

    public long getInterval();

    public int getNumUpdates();

    public int getPriority();

    public float getSmallestDisplacement();

    int getVersionCode();

    public int hashCode();

    public LocationRequest setExpirationDuration(long var1);

    public LocationRequest setExpirationTime(long var1);

    public LocationRequest setFastestInterval(long var1);

    public LocationRequest setInterval(long var1);

    public LocationRequest setNumUpdates(int var1);

    public LocationRequest setPriority(int var1);

    public LocationRequest setSmallestDisplacement(float var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

