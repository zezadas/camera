/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.Value;
import java.util.List;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class DataPoint
implements SafeParcelable {
    public static final Parcelable.Creator<DataPoint> CREATOR;
    private final int BR;
    private long SG;
    private long SH;
    private final Value[] SI;
    private DataSource SJ;
    private long SK;
    private long SL;
    private final DataSource Sq;

    static;

    DataPoint(int var1, DataSource var2, long var3, long var5, Value[] var7, DataSource var8, long var9, long var11);

    private DataPoint(DataSource var1);

    DataPoint(List<DataSource> var1, RawDataPoint var2);

    private static DataSource a(List<DataSource> var0, int var1);

    private boolean a(DataPoint var1);

    private void cA(int var1);

    public static DataPoint create(DataSource var0);

    public static DataPoint extract(Intent var0);

    private boolean iF();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public DataSource getDataSource();

    public DataType getDataType();

    public long getEndTime(TimeUnit var1);

    public DataSource getOriginalDataSource();

    public long getStartTime(TimeUnit var1);

    public long getTimestamp(TimeUnit var1);

    public long getTimestampNanos();

    public Value getValue(Field var1);

    public int getVersionCode();

    public int hashCode();

    public Value[] iG();

    public long iH();

    public long iI();

    public long iJ();

    public /* varargs */ DataPoint setFloatValues(float ... var1);

    public /* varargs */ DataPoint setIntValues(int ... var1);

    public DataPoint setTimeInterval(long var1, long var3, TimeUnit var5);

    public DataPoint setTimestamp(long var1, TimeUnit var3);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

