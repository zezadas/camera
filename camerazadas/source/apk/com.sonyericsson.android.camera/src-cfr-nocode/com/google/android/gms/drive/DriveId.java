/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DriveId
implements SafeParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR;
    final int BR;
    final String Ni;
    final long Nj;
    final long Nk;
    private volatile String Nl;

    static;

    DriveId(int var1, String var2, long var3, long var5);

    public DriveId(String var1, long var2, long var4);

    public static DriveId bg(String var0);

    public static DriveId decodeFromString(String var0);

    static DriveId f(byte[] var0);

    @Override
    public int describeContents();

    public final String encodeToString();

    public boolean equals(Object var1);

    public String getResourceId();

    final byte[] hN();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

