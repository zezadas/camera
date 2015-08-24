/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParcelableCollaborator
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableCollaborator> CREATOR;
    final int BR;
    final String NH;
    final boolean Rk;
    final boolean Rl;
    final String Rm;
    final String Rn;
    final String Ro;
    final String vL;

    static;

    ParcelableCollaborator(int var1, boolean var2, boolean var3, String var4, String var5, String var6, String var7, String var8);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

