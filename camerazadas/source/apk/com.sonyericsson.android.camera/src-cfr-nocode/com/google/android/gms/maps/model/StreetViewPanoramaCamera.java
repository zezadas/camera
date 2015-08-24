/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.q;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StreetViewPanoramaCamera
implements SafeParcelable {
    public static final q CREATOR;
    private final int BR;
    private StreetViewPanoramaOrientation akp;
    public final float bearing;
    public final float tilt;
    public final float zoom;

    static;

    public StreetViewPanoramaCamera(float var1, float var2, float var3);

    StreetViewPanoramaCamera(int var1, float var2, float var3, float var4);

    public static Builder builder();

    public static Builder builder(StreetViewPanoramaCamera var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public StreetViewPanoramaOrientation getOrientation();

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
        public float zoom;

        public Builder();

        public Builder(StreetViewPanoramaCamera var1);

        public Builder bearing(float var1);

        public StreetViewPanoramaCamera build();

        public Builder orientation(StreetViewPanoramaOrientation var1);

        public Builder tilt(float var1);

        public Builder zoom(float var1);
    }

}

