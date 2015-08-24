/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.g;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LatLngBounds
implements SafeParcelable {
    public static final g CREATOR;
    private final int BR;
    public final LatLng northeast;
    public final LatLng southwest;

    static;

    LatLngBounds(int var1, LatLng var2, LatLng var3);

    public LatLngBounds(LatLng var1, LatLng var2);

    private static double b(double var0, double var2);

    public static Builder builder();

    private static double c(double var0, double var2);

    private boolean c(double var1);

    static /* synthetic */ double d(double var0, double var2);

    private boolean d(double var1);

    static /* synthetic */ double e(double var0, double var2);

    public boolean contains(LatLng var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public LatLng getCenter();

    int getVersionCode();

    public int hashCode();

    public LatLngBounds including(LatLng var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private double ajY;
        private double ajZ;
        private double aka;
        private double akb;

        public Builder();

        private boolean d(double var1);

        public LatLngBounds build();

        public Builder include(LatLng var1);
    }

}

