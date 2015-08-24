/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.s;
import com.google.android.gms.internal.kj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class SessionInsertRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SessionInsertRequest> CREATOR = new s();
    private final int BR;
    private final List<DataSet> SD;
    private final Session St;
    private final List<DataPoint> UL;

    SessionInsertRequest(int n, Session session, List<DataSet> list, List<DataPoint> list2) {
        this.BR = n;
        this.St = session;
        this.SD = Collections.unmodifiableList(list);
        this.UL = Collections.unmodifiableList(list2);
    }

    private SessionInsertRequest(Builder builder) {
        this.BR = 1;
        this.St = builder.St;
        this.SD = Collections.unmodifiableList(builder.SD);
        this.UL = Collections.unmodifiableList(builder.UL);
    }

    private boolean a(SessionInsertRequest sessionInsertRequest) {
        if (n.equal(this.St, sessionInsertRequest.St) && n.equal(this.SD, sessionInsertRequest.SD) && n.equal(this.UL, sessionInsertRequest.UL)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof SessionInsertRequest && this.a((SessionInsertRequest)object)) {
            return true;
        }
        return false;
    }

    public List<DataPoint> getAggregateDataPoints() {
        return this.UL;
    }

    public List<DataSet> getDataSets() {
        return this.SD;
    }

    public Session getSession() {
        return this.St;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.St, this.SD, this.UL);
    }

    public String toString() {
        return n.h(this).a("session", this.St).a("dataSets", this.SD).a("aggregateDataPoints", this.UL).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        s.a(this, parcel, n);
    }

    public static class Builder {
        private List<DataSet> SD = new ArrayList<DataSet>();
        private Session St;
        private List<DataPoint> UL = new ArrayList<DataPoint>();
        private List<DataSource> UM = new ArrayList<DataSource>();

        private void d(DataPoint dataPoint) {
            this.f(dataPoint);
            this.e(dataPoint);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void e(DataPoint dataPoint) {
            long l = this.St.getStartTime(TimeUnit.NANOSECONDS);
            long l2 = this.St.getEndTime(TimeUnit.NANOSECONDS);
            long l3 = dataPoint.getStartTime(TimeUnit.NANOSECONDS);
            long l4 = dataPoint.getEndTime(TimeUnit.NANOSECONDS);
            if (l3 != 0 && l4 != 0) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                long l5 = l4;
                if (l4 > l2) {
                    l5 = kj.a(l4, TimeUnit.NANOSECONDS, timeUnit);
                }
                boolean bl = l3 >= l && l5 <= l2;
                o.a(bl, "Data point %s has start and end times outside session interval [%d, %d]", dataPoint, l, l2);
                if (l5 != dataPoint.getEndTime(TimeUnit.NANOSECONDS)) {
                    Log.w("Fitness", String.format("Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[]{dataPoint.getEndTime(TimeUnit.NANOSECONDS), l5, timeUnit}));
                    dataPoint.setTimeInterval(l3, l5, TimeUnit.NANOSECONDS);
                }
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private void f(DataPoint dataPoint) {
            long l = this.St.getStartTime(TimeUnit.NANOSECONDS);
            long l2 = this.St.getEndTime(TimeUnit.NANOSECONDS);
            long l3 = dataPoint.getTimestamp(TimeUnit.NANOSECONDS);
            if (l3 != 0) {
                long l4;
                block4 : {
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    if (l3 >= l) {
                        l4 = l3;
                        if (l3 <= l2) break block4;
                    }
                    l4 = kj.a(l3, TimeUnit.NANOSECONDS, timeUnit);
                }
                boolean bl = l4 >= l && l4 <= l2;
                o.a(bl, "Data point %s has time stamp outside session interval [%d, %d]", dataPoint, l, l2);
                if (dataPoint.getTimestamp(TimeUnit.NANOSECONDS) != l4) {
                    Log.w("Fitness", String.format("Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[]{dataPoint.getTimestamp(TimeUnit.NANOSECONDS), l4, timeUnit}));
                    dataPoint.setTimestamp(l4, TimeUnit.NANOSECONDS);
                }
            }
        }

        private void jy() {
            Iterator iterator = this.SD.iterator();
            while (iterator.hasNext()) {
                Iterator<DataPoint> iterator2 = iterator.next().getDataPoints().iterator();
                while (iterator2.hasNext()) {
                    this.d(iterator2.next());
                }
            }
            iterator = this.UL.iterator();
            while (iterator.hasNext()) {
                this.d((DataPoint)iterator.next());
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addAggregateDataPoint(DataPoint dataPoint) {
            boolean bl = dataPoint != null;
            o.b(bl, (Object)"Must specify a valid aggregate data point.");
            long l = dataPoint.getStartTime(TimeUnit.NANOSECONDS);
            long l2 = dataPoint.getEndTime(TimeUnit.NANOSECONDS);
            bl = l > 0 && l2 > l;
            o.b(bl, "Aggregate data point should have valid start and end times: %s", dataPoint);
            DataSource dataSource = dataPoint.getDataSource();
            bl = !this.UM.contains(dataSource);
            o.a(bl, "Data set/Aggregate data point for this data source %s is already added.", dataSource);
            this.UM.add(dataSource);
            this.UL.add(dataPoint);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addDataSet(DataSet dataSet) {
            boolean bl = true;
            boolean bl2 = dataSet != null;
            o.b(bl2, (Object)"Must specify a valid data set.");
            DataSource dataSource = dataSet.getDataSource();
            bl2 = !this.UM.contains(dataSource);
            o.a(bl2, "Data set for this data source %s is already added.", dataSource);
            bl2 = !dataSet.getDataPoints().isEmpty() ? bl : false;
            o.b(bl2, (Object)"No data points specified in the input data set.");
            this.UM.add(dataSource);
            this.SD.add(dataSet);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public SessionInsertRequest build() {
            boolean bl = true;
            boolean bl2 = this.St != null;
            o.a(bl2, "Must specify a valid session.");
            bl2 = this.St.getEndTime(TimeUnit.MILLISECONDS) != 0 ? bl : false;
            o.a(bl2, "Must specify a valid end time, cannot insert a continuing session.");
            this.jy();
            return new SessionInsertRequest(this);
        }

        public Builder setSession(Session session) {
            this.St = session;
            return this;
        }
    }

}

