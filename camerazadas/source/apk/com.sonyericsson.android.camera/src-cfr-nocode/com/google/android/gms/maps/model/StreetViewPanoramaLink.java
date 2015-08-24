/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.r;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StreetViewPanoramaLink
implements SafeParcelable {
    public static final r CREATOR;
    private final int BR;
    public final float bearing;
    public final String panoId;

    static;

    StreetViewPanoramaLink(int var1, String var2, float var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

