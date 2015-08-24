/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ig
implements SafeParcelable {
    public static final Parcelable.Creator<ig> CREATOR;
    private final int BR;
    private String Gn;

    static;

    public ig();

    ig(int var1, String var2);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String fy();

    public int getVersionCode();

    public int hashCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

