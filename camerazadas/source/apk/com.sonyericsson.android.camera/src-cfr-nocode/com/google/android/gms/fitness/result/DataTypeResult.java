/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataTypeResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<DataTypeResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final DataType Sp;

    static;

    DataTypeResult(int var1, Status var2, DataType var3);

    public DataTypeResult(Status var1, DataType var2);

    public static DataTypeResult F(Status var0);

    private boolean b(DataTypeResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public DataType getDataType();

    @Override
    public Status getStatus();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

