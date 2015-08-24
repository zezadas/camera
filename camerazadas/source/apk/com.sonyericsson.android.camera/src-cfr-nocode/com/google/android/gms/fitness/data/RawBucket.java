/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RawBucket
implements SafeParcelable {
    public static final Parcelable.Creator<RawBucket> CREATOR;
    final int BR;
    final long KS;
    final List<RawDataSet> SD;
    final int SE;
    final boolean SF;
    final long Sr;
    final Session St;
    final int Tl;

    static;

    RawBucket(int var1, long var2, long var4, Session var6, int var7, List<RawDataSet> var8, int var9, boolean var10);

    public RawBucket(Bucket var1, List<DataSource> var2, List<DataType> var3);

    private boolean a(RawBucket var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

