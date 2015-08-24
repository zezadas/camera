/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.FitnessActivities;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Bucket
implements SafeParcelable {
    public static final Parcelable.Creator<Bucket> CREATOR = new d();
    public static final int TYPE_ACTIVITY_SEGMENT = 4;
    public static final int TYPE_ACTIVITY_TYPE = 3;
    public static final int TYPE_SESSION = 2;
    public static final int TYPE_TIME = 1;
    private final int BR;
    private final long KS;
    private final int SC;
    private final List<DataSet> SD;
    private final int SE;
    private boolean SF = false;
    private final long Sr;
    private final Session St;

    Bucket(int n, long l, long l2, Session session, int n2, List<DataSet> list, int n3, boolean bl) {
        this.BR = n;
        this.KS = l;
        this.Sr = l2;
        this.St = session;
        this.SC = n2;
        this.SD = list;
        this.SE = n3;
        this.SF = bl;
    }

    public Bucket(RawBucket rawBucket, List<DataSource> list, List<DataType> list2) {
        this(2, rawBucket.KS, rawBucket.Sr, rawBucket.St, rawBucket.Tl, Bucket.a(rawBucket.SD, list, list2), rawBucket.SE, rawBucket.SF);
    }

    private static List<DataSet> a(List<RawDataSet> object, List<DataSource> list, List<DataType> list2) {
        ArrayList<DataSet> arrayList = new ArrayList<DataSet>(object.size());
        object = object.iterator();
        while (object.hasNext()) {
            arrayList.add(new DataSet((RawDataSet)object.next(), list, list2));
        }
        return arrayList;
    }

    private boolean a(Bucket bucket) {
        if (this.KS == bucket.KS && this.Sr == bucket.Sr && this.SC == bucket.SC && n.equal(this.SD, bucket.SD) && this.SE == bucket.SE && this.SF == bucket.SF) {
            return true;
        }
        return false;
    }

    public static String cy(int n) {
        switch (n) {
            default: {
                return "bug";
            }
            case 1: {
                return "time";
            }
            case 3: {
                return "type";
            }
            case 4: {
                return "segment";
            }
            case 2: {
                return "session";
            }
            case 0: 
        }
        return "unknown";
    }

    public boolean b(Bucket bucket) {
        if (this.KS == bucket.KS && this.Sr == bucket.Sr && this.SC == bucket.SC && this.SE == bucket.SE) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof Bucket && this.a((Bucket)object)) {
            return true;
        }
        return false;
    }

    public String getActivity() {
        return FitnessActivities.getName(this.SC);
    }

    public int getBucketType() {
        return this.SE;
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.SD) {
            if (!dataSet.getDataType().equals(dataType)) continue;
            return dataSet;
        }
        return null;
    }

    public List<DataSet> getDataSets() {
        return this.SD;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.Sr, TimeUnit.MILLISECONDS);
    }

    public Session getSession() {
        return this.St;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.KS, TimeUnit.MILLISECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.KS, this.Sr, this.SC, this.SE);
    }

    public int iB() {
        return this.SC;
    }

    public boolean iC() {
        if (this.SF) {
            return true;
        }
        Iterator<DataSet> iterator = this.SD.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().iC()) continue;
            return true;
        }
        return false;
    }

    public long iD() {
        return this.KS;
    }

    public long iE() {
        return this.Sr;
    }

    public String toString() {
        return n.h(this).a("startTime", this.KS).a("endTime", this.Sr).a("activity", this.SC).a("dataSets", this.SD).a("bucketType", Bucket.cy(this.SE)).a("serverHasMoreData", this.SF).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

