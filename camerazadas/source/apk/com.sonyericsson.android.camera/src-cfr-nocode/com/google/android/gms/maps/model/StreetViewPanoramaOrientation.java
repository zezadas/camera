/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.t;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StreetViewPanoramaOrientation
implements SafeParcelable {
    public static final t CREATOR;
    private final int BR;
    public final float bearing;
    public final float tilt;

    static;

    public StreetViewPanoramaOrientation(float var1, float var2);

    StreetViewPanoramaOrientation(int var1, float var2, float var3);

    public static Builder builder();

    public static Builder builder(StreetViewPanoramaOrientation var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        public float bearing;
        public float tilt;

        public Builder();

        public Builder(StreetViewPanoramaOrientation var1);

        public Builder bearing(float var1);

        public StreetViewPanoramaOrientation build();

        public Builder tilt(float var1);
    }

}

