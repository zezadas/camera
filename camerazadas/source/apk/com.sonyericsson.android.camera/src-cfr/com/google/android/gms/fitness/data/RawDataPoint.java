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
import com.google.android.gms.fitness.data.n;
import com.google.android.gms.fitness.data.t;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class RawDataPoint
implements SafeParcelable {
    public static final Parcelable.Creator<RawDataPoint> CREATOR = new n();
    final int BR;
    final long SG;
    final long SH;
    final Value[] SI;
    final long SK;
    final long SL;
    final int Tm;
    final int Tn;

    RawDataPoint(int n, long l, long l2, Value[] arrvalue, int n2, int n3, long l3, long l4) {
        this.BR = n;
        this.SG = l;
        this.SH = l2;
        this.Tm = n2;
        this.Tn = n3;
        this.SK = l3;
        this.SL = l4;
        this.SI = arrvalue;
    }

    RawDataPoint(DataPoint dataPoint, List<DataSource> list) {
        this.BR = 4;
        this.SG = dataPoint.getTimestamp(TimeUnit.NANOSECONDS);
        this.SH = dataPoint.getStartTime(TimeUnit.NANOSECONDS);
        this.SI = dataPoint.iG();
        this.Tm = t.a(dataPoint.getDataSource(), list);
        this.Tn = t.a(dataPoint.getOriginalDataSource(), list);
        this.SK = dataPoint.iH();
        this.SL = dataPoint.iI();
    }

    private boolean a(RawDataPoint rawDataPoint) {
        if (this.SG == rawDataPoint.SG && this.SH == rawDataPoint.SH && Arrays.equals(this.SI, rawDataPoint.SI) && this.Tm == rawDataPoint.Tm && this.Tn == rawDataPoint.Tn && this.SK == rawDataPoint.SK) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof RawDataPoint && this.a((RawDataPoint)object)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.n.hashCode(this.SG, this.SH);
    }

    public String toString() {
        return String.format("RawDataPoint{%s@[%s, %s](%d,%d)}", Arrays.toString(this.SI), this.SH, this.SG, this.Tm, this.Tn);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        n.a(this, parcel, n);
    }
}

