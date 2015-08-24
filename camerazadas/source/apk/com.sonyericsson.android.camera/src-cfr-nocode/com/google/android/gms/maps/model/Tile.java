/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.u;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Tile
implements SafeParcelable {
    public static final u CREATOR;
    private final int BR;
    public final byte[] data;
    public final int height;
    public final int width;

    static;

    Tile(int var1, int var2, int var3, byte[] var4);

    public Tile(int var1, int var2, byte[] var3);

    @Override
    public int describeContents();

    int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

