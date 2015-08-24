/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class il
implements SafeParcelable {
    public static final Parcelable.Creator<il> CREATOR;
    private final int BR;
    private double FA;
    private boolean FB;
    private int GB;
    private int GC;
    private ApplicationMetadata GN;

    static;

    public il();

    il(int var1, double var2, boolean var4, int var5, ApplicationMetadata var6, int var7);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public double fE();

    public boolean fM();

    public int fN();

    public int fO();

    public ApplicationMetadata getApplicationMetadata();

    public int getVersionCode();

    public int hashCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

