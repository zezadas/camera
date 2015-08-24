/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.request.DataReadRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataReadResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<DataReadResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final List<DataSet> SD;
    private final List<DataSource> SN;
    private final List<Bucket> UV;
    private int UW;
    private final List<DataType> UX;

    static;

    DataReadResult(int var1, List<RawDataSet> var2, Status var3, List<RawBucket> var4, int var5, List<DataSource> var6, List<DataType> var7);

    public DataReadResult(List<DataSet> var1, List<Bucket> var2, Status var3);

    public static DataReadResult a(Status var0, DataReadRequest var1);

    private void a(Bucket var1, List<Bucket> var2);

    private void a(DataSet var1, List<DataSet> var2);

    private boolean c(DataReadResult var1);

    public void b(DataReadResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<Bucket> getBuckets();

    public DataSet getDataSet(DataSource var1);

    public DataSet getDataSet(DataType var1);

    public List<DataSet> getDataSets();

    @Override
    public Status getStatus();

    int getVersionCode();

    public int hashCode();

    List<DataSource> iL();

    public int jH();

    List<RawBucket> jI();

    List<RawDataSet> jJ();

    List<DataType> jK();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

