/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.Value;
import com.google.android.gms.fitness.data.e;
import com.google.android.gms.internal.kj;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class DataPoint
implements SafeParcelable {
    public static final Parcelable.Creator<DataPoint> CREATOR = new e();
    private final int BR;
    private long SG;
    private long SH;
    private final Value[] SI;
    private DataSource SJ;
    private long SK;
    private long SL;
    private final DataSource Sq;

    DataPoint(int n, DataSource dataSource, long l, long l2, Value[] arrvalue, DataSource dataSource2, long l3, long l4) {
        this.BR = n;
        this.Sq = dataSource;
        this.SJ = dataSource2;
        this.SG = l;
        this.SH = l2;
        this.SI = arrvalue;
        this.SK = l3;
        this.SL = l4;
    }

    private DataPoint(DataSource iterator) {
        this.BR = 4;
        this.Sq = o.b(iterator, (Object)"Data source cannot be null");
        iterator = iterator.getDataType().getFields();
        this.SI = new Value[iterator.size()];
        iterator = iterator.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            Field field = (Field)iterator.next();
            this.SI[n] = new Value(field.getFormat());
            ++n;
        }
    }

    DataPoint(List<DataSource> list, RawDataPoint rawDataPoint) {
        this(4, DataPoint.a(list, rawDataPoint.Tm), rawDataPoint.SG, rawDataPoint.SH, rawDataPoint.SI, DataPoint.a(list, rawDataPoint.Tn), rawDataPoint.SK, rawDataPoint.SL);
    }

    private static DataSource a(List<DataSource> list, int n) {
        if (n >= 0 && n < list.size()) {
            return list.get(n);
        }
        return null;
    }

    private boolean a(DataPoint dataPoint) {
        if (n.equal(this.Sq, dataPoint.Sq) && this.SG == dataPoint.SG && this.SH == dataPoint.SH && Arrays.equals(this.SI, dataPoint.SI) && n.equal(this.SJ, dataPoint.SJ)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void cA(int n) {
        List<Field> list = this.getDataType().getFields();
        int n2 = list.size();
        boolean bl = n == n2;
        o.b(bl, "Attempting to insert %s values, but needed %s: %s", n, n2, list);
    }

    public static DataPoint create(DataSource dataSource) {
        return new DataPoint(dataSource);
    }

    public static DataPoint extract(Intent intent) {
        if (intent == null) {
            return null;
        }
        return c.a(intent, "com.google.android.gms.fitness.EXTRA_DATA_POINT", CREATOR);
    }

    private boolean iF() {
        if (this.getDataType() == DataType.TYPE_LOCATION_SAMPLE) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataPoint && this.a((DataPoint)object)) {
            return true;
        }
        return false;
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    public DataType getDataType() {
        return this.Sq.getDataType();
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.SG, TimeUnit.NANOSECONDS);
    }

    public DataSource getOriginalDataSource() {
        return this.SJ;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.SH, TimeUnit.NANOSECONDS);
    }

    public long getTimestamp(TimeUnit timeUnit) {
        return timeUnit.convert(this.SG, TimeUnit.NANOSECONDS);
    }

    public long getTimestampNanos() {
        return this.SG;
    }

    public Value getValue(Field field) {
        int n = this.getDataType().indexOf(field);
        return this.SI[n];
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Sq, this.SG, this.SH);
    }

    public Value[] iG() {
        return this.SI;
    }

    public long iH() {
        return this.SK;
    }

    public long iI() {
        return this.SL;
    }

    public long iJ() {
        return this.SH;
    }

    public /* varargs */ DataPoint setFloatValues(float ... arrf) {
        this.cA(arrf.length);
        for (int i = 0; i < arrf.length; ++i) {
            this.SI[i].setFloat(arrf[i]);
        }
        return this;
    }

    public /* varargs */ DataPoint setIntValues(int ... arrn) {
        this.cA(arrn.length);
        for (int i = 0; i < arrn.length; ++i) {
            this.SI[i].setInt(arrn[i]);
        }
        return this;
    }

    public DataPoint setTimeInterval(long l, long l2, TimeUnit timeUnit) {
        this.SH = timeUnit.toNanos(l);
        this.SG = timeUnit.toNanos(l2);
        return this;
    }

    public DataPoint setTimestamp(long l, TimeUnit timeUnit) {
        this.SG = timeUnit.toNanos(l);
        if (this.iF() && kj.a(timeUnit)) {
            Log.w("Fitness", "Storing location at more than millisecond granularity is not supported. Extra precision is lost as the value is converted to milliseconds.");
            this.SG = kj.a(this.SG, TimeUnit.NANOSECONDS, TimeUnit.MILLISECONDS);
        }
        return this;
    }

    public String toString() {
        return String.format("DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}", Arrays.toString(this.SI), this.SH, this.SG, this.SK, this.SL, this.Sq, this.SJ);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        e.a(this, parcel, n);
    }
}

