/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.Value;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RawDataPoint
implements SafeParcelable {
    public static final Parcelable.Creator<RawDataPoint> CREATOR;
    final int BR;
    final long SG;
    final long SH;
    final Value[] SI;
    final long SK;
    final long SL;
    final int Tm;
    final int Tn;

    static;

    RawDataPoint(int var1, long var2, long var4, Value[] var6, int var7, int var8, long var9, long var11);

    RawDataPoint(DataPoint var1, List<DataSource> var2);

    private boolean a(RawDataPoint var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

