/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.y;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class VisibleRegion
implements SafeParcelable {
    public static final y CREATOR;
    private final int BR;
    public final LatLng farLeft;
    public final LatLng farRight;
    public final LatLngBounds latLngBounds;
    public final LatLng nearLeft;
    public final LatLng nearRight;

    static;

    VisibleRegion(int var1, LatLng var2, LatLng var3, LatLng var4, LatLng var5, LatLngBounds var6);

    public VisibleRegion(LatLng var1, LatLng var2, LatLng var3, LatLng var4, LatLngBounds var5);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

