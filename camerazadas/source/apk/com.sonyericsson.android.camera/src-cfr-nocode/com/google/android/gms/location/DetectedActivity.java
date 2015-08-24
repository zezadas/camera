/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.DetectedActivityCreator;
import java.util.Comparator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DetectedActivity
implements SafeParcelable {
    public static final DetectedActivityCreator CREATOR;
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    public static final Comparator<DetectedActivity> aee;
    private final int BR;
    int aef;
    int aeg;

    static;

    public DetectedActivity(int var1, int var2);

    public DetectedActivity(int var1, int var2, int var3);

    private int ea(int var1);

    @Override
    public int describeContents();

    public int getConfidence();

    public int getType();

    public int getVersionCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

}

