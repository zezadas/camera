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
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.List;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Bucket
implements SafeParcelable {
    public static final Parcelable.Creator<Bucket> CREATOR;
    public static final int TYPE_ACTIVITY_SEGMENT = 4;
    public static final int TYPE_ACTIVITY_TYPE = 3;
    public static final int TYPE_SESSION = 2;
    public static final int TYPE_TIME = 1;
    private final int BR;
    private final long KS;
    private final int SC;
    private final List<DataSet> SD;
    private final int SE;
    private boolean SF;
    private final long Sr;
    private final Session St;

    static;

    Bucket(int var1, long var2, long var4, Session var6, int var7, List<DataSet> var8, int var9, boolean var10);

    public Bucket(RawBucket var1, List<DataSource> var2, List<DataType> var3);

    private static List<DataSet> a(List<RawDataSet> var0, List<DataSource> var1, List<DataType> var2);

    private boolean a(Bucket var1);

    public static String cy(int var0);

    public boolean b(Bucket var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getActivity();

    public int getBucketType();

    public DataSet getDataSet(DataType var1);

    public List<DataSet> getDataSets();

    public long getEndTime(TimeUnit var1);

    public Session getSession();

    public long getStartTime(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public int iB();

    public boolean iC();

    public long iD();

    public long iE();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

