/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.result.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class DataReadResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<DataReadResult> CREATOR = new b();
    private final int BR;
    private final Status CM;
    private final List<DataSet> SD;
    private final List<DataSource> SN;
    private final List<Bucket> UV;
    private int UW;
    private final List<DataType> UX;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    DataReadResult(int n, List<RawDataSet> iterator, Status safeParcelable22, List<RawBucket> list, int n2, List<DataSource> list2, List<DataType> list3) {
        this.BR = n;
        this.CM = safeParcelable22;
        this.UW = n2;
        this.SN = list2;
        this.UX = list3;
        this.SD = new ArrayList<DataSet>(iterator.size());
        for (SafeParcelable safeParcelable22 : iterator) {
            this.SD.add(new DataSet((RawDataSet)safeParcelable22, list2, list3));
        }
        this.UV = new ArrayList<Bucket>(list.size());
        for (SafeParcelable safeParcelable22 : list) {
            this.UV.add(new Bucket((RawBucket)safeParcelable22, list2, list3));
        }
    }

    public DataReadResult(List<DataSet> list, List<Bucket> list2, Status status) {
        this.BR = 5;
        this.SD = list;
        this.CM = status;
        this.UV = list2;
        this.UW = 1;
        this.SN = new ArrayList<DataSource>();
        this.UX = new ArrayList<DataType>();
    }

    public static DataReadResult a(Status status, DataReadRequest object) {
        ArrayList<DataSet> arrayList = new ArrayList<DataSet>();
        Iterator<DataSource> object22 = object.getDataSources().iterator();
        while (object22.hasNext()) {
            arrayList.add(DataSet.create(object22.next()));
        }
        for (DataType dataType : object.getDataTypes()) {
            arrayList.add(DataSet.create(new DataSource.Builder().setDataType(dataType).setType(1).setName("Default").build()));
        }
        return new DataReadResult(arrayList, Collections.<Bucket>emptyList(), status);
    }

    private void a(Bucket object, List<Bucket> object22) {
        block2 : {
            for (Object object22 : object22) {
                if (!object22.b((Bucket)object)) continue;
                object = object.getDataSets().iterator();
                while (object.hasNext()) {
                    this.a((DataSet)object.next(), object22.getDataSets());
                }
                break block2;
            }
            this.UV.add((Bucket)object);
        }
    }

    private void a(DataSet dataSet, List<DataSet> list) {
        for (DataSet dataSet2 : list) {
            if (!dataSet2.getDataSource().equals(dataSet.getDataSource())) continue;
            dataSet2.a(dataSet.getDataPoints());
            return;
        }
        list.add(dataSet);
    }

    private boolean c(DataReadResult dataReadResult) {
        if (this.CM.equals(dataReadResult.CM) && n.equal(this.SD, dataReadResult.SD) && n.equal(this.UV, dataReadResult.UV)) {
            return true;
        }
        return false;
    }

    public void b(DataReadResult object) {
        Iterator<DataSet> iterator = object.getDataSets().iterator();
        while (iterator.hasNext()) {
            this.a(iterator.next(), this.SD);
        }
        object = object.getBuckets().iterator();
        while (object.hasNext()) {
            this.a((Bucket)object.next(), this.UV);
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataReadResult && this.c((DataReadResult)object)) {
            return true;
        }
        return false;
    }

    public List<Bucket> getBuckets() {
        return this.UV;
    }

    public DataSet getDataSet(DataSource dataSource) {
        for (DataSet dataSet : this.SD) {
            if (!dataSource.equals(dataSet.getDataSource())) continue;
            return dataSet;
        }
        throw new IllegalArgumentException(String.format("Attempting to read data for %s, which was not requested", dataSource.getStreamIdentifier()));
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.SD) {
            if (!dataType.equals(dataSet.getDataType())) continue;
            return dataSet;
        }
        throw new IllegalArgumentException(String.format("Attempting to read data for %s, which was not requested", dataType.getName()));
    }

    public List<DataSet> getDataSets() {
        return this.SD;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.SD, this.UV);
    }

    List<DataSource> iL() {
        return this.SN;
    }

    public int jH() {
        return this.UW;
    }

    List<RawBucket> jI() {
        ArrayList<RawBucket> arrayList = new ArrayList<RawBucket>(this.UV.size());
        Iterator<Bucket> iterator = this.UV.iterator();
        while (iterator.hasNext()) {
            arrayList.add(new RawBucket(iterator.next(), this.SN, this.UX));
        }
        return arrayList;
    }

    List<RawDataSet> jJ() {
        ArrayList<RawDataSet> arrayList = new ArrayList<RawDataSet>(this.SD.size());
        Iterator<DataSet> iterator = this.SD.iterator();
        while (iterator.hasNext()) {
            arrayList.add(new RawDataSet(iterator.next(), this.SN, this.UX));
        }
        return arrayList;
    }

    List<DataType> jK() {
        return this.UX;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        n.a a = n.h(this).a("status", this.CM);
        Object object = this.SD.size() > 5 ? "" + this.SD.size() + " data sets" : this.SD;
        a = a.a("dataSets", object);
        if (this.UV.size() > 5) {
            object = "" + this.UV.size() + " buckets";
            return a.a("buckets", object).toString();
        }
        object = this.UV;
        return a.a("buckets", object).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

