/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.content.Context;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.a;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CameraPosition
implements SafeParcelable {
    public static final a CREATOR;
    private final int BR;
    public final float bearing;
    public final LatLng target;
    public final float tilt;
    public final float zoom;

    static;

    CameraPosition(int var1, LatLng var2, float var3, float var4, float var5);

    public CameraPosition(LatLng var1, float var2, float var3, float var4);

    public static Builder builder();

    public static Builder builder(CameraPosition var0);

    public static CameraPosition createFromAttributes(Context var0, AttributeSet var1);

    public static final CameraPosition fromLatLngZoom(LatLng var0, float var1);

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
        private LatLng ajB;
        private float ajC;
        private float ajD;
        private float ajE;

        public Builder();

        public Builder(CameraPosition var1);

        public Builder bearing(float var1);

        public CameraPosition build();

        public Builder target(LatLng var1);

        public Builder tilt(float var1);

        public Builder zoom(float var1);
    }

}

