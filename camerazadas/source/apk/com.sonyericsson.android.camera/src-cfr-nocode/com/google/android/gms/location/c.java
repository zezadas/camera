/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.d;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class c
implements SafeParcelable {
    public static final d CREATOR;
    private final int BR;
    int aex;
    int aey;
    long aez;

    static;

    c(int var1, int var2, int var3, long var4);

    private String ee(int var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

