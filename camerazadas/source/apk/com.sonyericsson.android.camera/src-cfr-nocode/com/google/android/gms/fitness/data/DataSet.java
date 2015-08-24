/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.RawDataSet;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class DataSet
implements SafeParcelable {
    public static final Parcelable.Creator<DataSet> CREATOR;
    private final int BR;
    private boolean SF;
    private final List<DataPoint> SM;
    private final List<DataSource> SN;
    private final DataType Sp;
    private final DataSource Sq;

    static;

    DataSet(int var1, DataSource var2, DataType var3, List<RawDataPoint> var4, List<DataSource> var5, boolean var6);

    private DataSet(DataSource var1, DataType var2);

    public DataSet(RawDataSet var1, List<DataSource> var2, List<DataType> var3);

    private boolean a(DataSet var1);

    private static <T> T b(List<T> var0, int var1);

    public static DataSet create(DataSource var0);

    public void a(Iterable<DataPoint> var1);

    public void add(DataPoint var1);

    public void addAll(Iterable<DataPoint> var1);

    public void b(DataPoint var1);

    public DataPoint createDataPoint();

    @Override
    public int describeContents();

    List<RawDataPoint> e(List<DataSource> var1);

    public boolean equals(Object var1);

    public List<DataPoint> getDataPoints();

    public DataSource getDataSource();

    public DataType getDataType();

    int getVersionCode();

    public int hashCode();

    public boolean iC();

    List<RawDataPoint> iK();

    List<DataSource> iL();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

