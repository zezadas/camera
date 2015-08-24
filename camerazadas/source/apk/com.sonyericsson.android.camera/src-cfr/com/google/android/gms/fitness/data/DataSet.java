/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawDataPoint;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.data.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class DataSet
implements SafeParcelable {
    public static final Parcelable.Creator<DataSet> CREATOR = new f();
    private final int BR;
    private boolean SF = false;
    private final List<DataPoint> SM;
    private final List<DataSource> SN;
    private final DataType Sp;
    private final DataSource Sq;

    /*
     * Enabled aggressive block sorting
     */
    DataSet(int n, DataSource iterator, DataType safeParcelable, List<RawDataPoint> list, List<DataSource> list2, boolean bl) {
        void var4_6;
        List list3;
        void var6_8;
        this.BR = n;
        this.Sq = iterator;
        this.Sp = safeParcelable;
        this.SF = var6_8;
        this.SM = new ArrayList<DataPoint>(var4_6.size());
        if (n < 2) {
            list3 = Collections.singletonList(iterator);
        }
        this.SN = list3;
        iterator = var4_6.iterator();
        while (iterator.hasNext()) {
            RawDataPoint rawDataPoint = (RawDataPoint)iterator.next();
            this.SM.add(new DataPoint(this.SN, rawDataPoint));
        }
        return;
    }

    private DataSet(DataSource dataSource, DataType dataType) {
        this.BR = 3;
        this.Sq = o.i(dataSource);
        this.Sp = o.i(dataType);
        this.SM = new ArrayList<DataPoint>();
        this.SN = new ArrayList<DataSource>();
        this.SN.add(this.Sq);
    }

    public DataSet(RawDataSet rawDataSet, List<DataSource> list, List<DataType> list2) {
        this(3, DataSet.b(list, rawDataSet.Tm), DataSet.b(list2, rawDataSet.To), rawDataSet.Tp, list, rawDataSet.SF);
    }

    private boolean a(DataSet dataSet) {
        if (n.equal(this.Sp, dataSet.Sp) && n.equal(this.Sq, dataSet.Sq) && n.equal(this.SM, dataSet.SM) && this.SF == dataSet.SF) {
            return true;
        }
        return false;
    }

    private static <T> T b(List<T> list, int n) {
        if (n >= 0 && n < list.size()) {
            return list.get(n);
        }
        return null;
    }

    public static DataSet create(DataSource dataSource) {
        o.b(dataSource, (Object)"DataSource should be specified");
        return new DataSet(dataSource, dataSource.getDataType());
    }

    public void a(Iterable<DataPoint> object) {
        object = object.iterator();
        while (object.hasNext()) {
            this.b((DataPoint)object.next());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void add(DataPoint dataPoint) {
        DataSource dataSource = dataPoint.getDataSource();
        o.b(dataSource.getStreamIdentifier().equals(this.Sq.getStreamIdentifier()), "Conflicting data sources found %s vs %s", dataSource, this.Sq);
        o.b(dataPoint.getDataType().getName().equals(this.Sp.getName()), "Conflicting data types found %s vs %s", dataPoint.getDataType(), this.Sp);
        boolean bl = dataPoint.getTimestamp(TimeUnit.NANOSECONDS) > 0;
        o.b(bl, "Data point does not have the timestamp set: %s", dataPoint);
        bl = dataPoint.getStartTime(TimeUnit.NANOSECONDS) <= dataPoint.getEndTime(TimeUnit.NANOSECONDS);
        o.b(bl, "Data point with start time greater than end time found: %s", dataPoint);
        this.b(dataPoint);
    }

    public void addAll(Iterable<DataPoint> object) {
        object = object.iterator();
        while (object.hasNext()) {
            this.add((DataPoint)object.next());
        }
    }

    public void b(DataPoint safeParcelable) {
        this.SM.add((DataPoint)safeParcelable);
        safeParcelable = safeParcelable.getOriginalDataSource();
        if (!(safeParcelable == null || this.SN.contains(safeParcelable))) {
            this.SN.add((DataSource)safeParcelable);
        }
    }

    public DataPoint createDataPoint() {
        return DataPoint.create(this.Sq);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    List<RawDataPoint> e(List<DataSource> list) {
        ArrayList<RawDataPoint> arrayList = new ArrayList<RawDataPoint>(this.SM.size());
        Iterator<DataPoint> iterator = this.SM.iterator();
        while (iterator.hasNext()) {
            arrayList.add(new RawDataPoint(iterator.next(), list));
        }
        return arrayList;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof DataSet && this.a((DataSet)object)) {
            return true;
        }
        return false;
    }

    public List<DataPoint> getDataPoints() {
        return Collections.unmodifiableList(this.SM);
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    public DataType getDataType() {
        return this.Sp;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Sp, this.Sq);
    }

    public boolean iC() {
        return this.SF;
    }

    List<RawDataPoint> iK() {
        return this.e(this.SN);
    }

    List<DataSource> iL() {
        return this.SN;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        Object object = this.iK();
        String string = this.Sq.toDebugString();
        if (this.SM.size() < 10) {
            do {
                return String.format("DataSet{%s %s}", string, object);
                break;
            } while (true);
        }
        object = String.format("%d data points, first 5: %s", this.SM.size(), object.subList(0, 5));
        return String.format("DataSet{%s %s}", string, object);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }
}

