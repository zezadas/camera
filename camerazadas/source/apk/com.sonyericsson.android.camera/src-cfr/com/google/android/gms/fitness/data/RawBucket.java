/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class RawBucket
implements SafeParcelable {
    public static final Parcelable.Creator<RawBucket> CREATOR = new m();
    final int BR;
    final long KS;
    final List<RawDataSet> SD;
    final int SE;
    final boolean SF;
    final long Sr;
    final Session St;
    final int Tl;

    RawBucket(int n, long l, long l2, Session session, int n2, List<RawDataSet> list, int n3, boolean bl) {
        this.BR = n;
        this.KS = l;
        this.Sr = l2;
        this.St = session;
        this.Tl = n2;
        this.SD = list;
        this.SE = n3;
        this.SF = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public RawBucket(Bucket iterator, List<DataSource> list, List<DataType> list2) {
        this.BR = 2;
        this.KS = iterator.getStartTime(TimeUnit.MILLISECONDS);
        this.Sr = iterator.getEndTime(TimeUnit.MILLISECONDS);
        this.St = iterator.getSession();
        this.Tl = iterator.iB();
        this.SE = iterator.getBucketType();
        this.SF = iterator.iC();
        iterator = iterator.getDataSets();
        this.SD = new ArrayList<RawDataSet>(iterator.size());
        for (DataSet dataSet : iterator) {
            this.SD.add(new RawDataSet(dataSet, list, list2));
        }
    }

    private boolean a(RawBucket rawBucket) {
        if (this.KS == rawBucket.KS && this.Sr == rawBucket.Sr && this.Tl == rawBucket.Tl && n.equal(this.SD, rawBucket.SD) && this.SE == rawBucket.SE && this.SF == rawBucket.SF) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof RawBucket && this.a((RawBucket)object)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.KS, this.Sr, this.SE);
    }

    public String toString() {
        return n.h(this).a("startTime", this.KS).a("endTime", this.Sr).a("activity", this.Tl).a("dataSets", this.SD).a("bucketType", this.SE).a("serverHasMoreData", this.SF).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        m.a(this, parcel, n);
    }
}

