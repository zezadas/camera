/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.i;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LatLng
implements SafeParcelable {
    public static final i CREATOR;
    private final int BR;
    public final double latitude;
    public final double longitude;

    static;

    public LatLng(double var1, double var3);

    LatLng(int var1, double var2, double var4);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

