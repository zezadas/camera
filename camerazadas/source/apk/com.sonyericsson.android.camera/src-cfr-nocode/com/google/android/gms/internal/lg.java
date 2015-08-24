/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class lg
implements SafeParcelable {
    public static final Parcelable.Creator<lg> CREATOR;
    private final int BR;
    private final List<DataType> SB;

    static;

    lg(int var1, List<DataType> var2);

    @Override
    public int describeContents();

    public List<DataType> getDataTypes();

    int getVersionCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

