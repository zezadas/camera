/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataPoint;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RawDataSet
implements SafeParcelable {
    public static final Parcelable.Creator<RawDataSet> CREATOR;
    final int BR;
    final boolean SF;
    final int Tm;
    final int To;
    final List<RawDataPoint> Tp;

    static;

    RawDataSet(int var1, int var2, int var3, List<RawDataPoint> var4, boolean var5);

    public RawDataSet(DataSet var1, List<DataSource> var2, List<DataType> var3);

    private boolean a(RawDataSet var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

