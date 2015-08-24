/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.md;
import com.google.android.gms.location.Geofence;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class mc
implements SafeParcelable,
Geofence {
    public static final md CREATOR;
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

    static;

    public mc(int var1, String var2, int var3, short var4, double var5, double var7, float var9, long var10, int var12, int var13);

    public mc(String var1, int var2, short var3, double var4, double var6, float var8, long var9, int var11, int var12);

    private static void a(double var0, double var2);

    private static void b(float var0);

    private static void bY(String var0);

    private static int ek(int var0);

    private static String el(int var0);

    public static mc h(byte[] var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public long getExpirationTime();

    public double getLatitude();

    public double getLongitude();

    public int getNotificationResponsiveness();

    @Override
    public String getRequestId();

    public int getVersionCode();

    public int hashCode();

    public short ma();

    public float mb();

    public int mc();

    public int md();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

