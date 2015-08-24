/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import com.google.android.gms.maps.model.s;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StreetViewPanoramaLocation
implements SafeParcelable {
    public static final s CREATOR;
    private final int BR;
    public final StreetViewPanoramaLink[] links;
    public final String panoId;
    public final LatLng position;

    static;

    StreetViewPanoramaLocation(int var1, StreetViewPanoramaLink[] var2, LatLng var3, String var4);

    public StreetViewPanoramaLocation(StreetViewPanoramaLink[] var1, LatLng var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

