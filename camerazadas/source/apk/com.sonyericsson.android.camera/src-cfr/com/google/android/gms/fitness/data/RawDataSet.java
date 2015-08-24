/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.o;
import com.google.android.gms.fitness.data.t;
import java.util.List;

public final class RawDataSet
implements SafeParcelable {
    public static final Parcelable.Creator<RawDataSet> CREATOR = new o();
    final int BR;
    final boolean SF;
    final int Tm;
    final int To;
    final List<RawDataPoint> Tp;

    RawDataSet(int n, int n2, int n3, List<RawDataPoint> list, boolean bl) {
        this.BR = n;
        this.Tm = n2;
        this.To = n3;
        this.Tp = list;
        this.SF = bl;
    }

    public RawDataSet(DataSet dataSet, List<DataSource> list, List<DataType> list2) {
        this.BR = 2;
        this.Tp = dataSet.e(list);
        this.SF = dataSet.iC();
        this.Tm = t.a(dataSet.getDataSource(), list);
        this.To = t.a(dataSet.getDataType(), list2);
    }

    private boolean a(RawDataSet rawDataSet) {
        if (this.Tm == rawDataSet.Tm && this.To == rawDataSet.To && this.SF == rawDataSet.SF && n.equal(this.Tp, rawDataSet.Tp)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof RawDataSet && this.a((RawDataSet)object)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.Tm, this.To);
    }

    public String toString() {
        return String.format("RawDataSet{%s@[%s, %s]}", this.Tm, this.To, this.Tp);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        o.a(this, parcel, n);
    }
}

