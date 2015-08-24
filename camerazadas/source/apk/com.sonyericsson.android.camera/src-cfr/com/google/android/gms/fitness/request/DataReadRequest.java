/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class DataReadRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataReadRequest> CREATOR = new g();
    public static final int NO_LIMIT = 0;
    private final int BR;
    private final long KS;
    private final List<DataType> SB;
    private final int SE;
    private final long Sr;
    private final List<DataSource> Uk;
    private final List<DataType> Uo;
    private final List<DataSource> Up;
    private final long Uq;
    private final DataSource Ur;
    private final int Us;
    private final boolean Ut;
    private final boolean Uu;
    private final boolean Uv;

    DataReadRequest(int n, List<DataType> list, List<DataSource> list2, long l, long l2, List<DataType> list3, List<DataSource> list4, int n2, long l3, DataSource dataSource, int n3, boolean bl, boolean bl2, boolean bl3) {
        this.BR = n;
        this.SB = Collections.unmodifiableList(list);
        this.Uk = Collections.unmodifiableList(list2);
        this.KS = l;
        this.Sr = l2;
        this.Uo = Collections.unmodifiableList(list3);
        this.Up = Collections.unmodifiableList(list4);
        this.SE = n2;
        this.Uq = l3;
        this.Ur = dataSource;
        this.Us = n3;
        this.Ut = bl;
        this.Uu = bl2;
        this.Uv = bl3;
    }

    private DataReadRequest(Builder builder) {
        this.BR = 2;
        this.SB = Collections.unmodifiableList(builder.SB);
        this.Uk = Collections.unmodifiableList(builder.Uk);
        this.KS = builder.KS;
        this.Sr = builder.Sr;
        this.Uo = Collections.unmodifiableList(builder.Uo);
        this.Up = Collections.unmodifiableList(builder.Up);
        this.SE = builder.SE;
        this.Uq = builder.Uq;
        this.Ur = builder.Ur;
        this.Us = builder.Us;
        this.Ut = builder.Ut;
        this.Uu = builder.Uu;
        this.Uv = builder.Uv;
    }

    private boolean a(DataReadRequest dataReadRequest) {
        if (this.SB.equals(dataReadRequest.SB) && this.Uk.equals(dataReadRequest.Uk) && this.KS == dataReadRequest.KS && this.Sr == dataReadRequest.Sr && this.SE == dataReadRequest.SE && this.Up.equals(dataReadRequest.Up) && this.Uo.equals(dataReadRequest.Uo) && n.equal(this.Ur, dataReadRequest.Ur) && this.Uq == dataReadRequest.Uq && this.Uv == dataReadRequest.Uv) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataReadRequest && this.a((DataReadRequest)object)) {
            return true;
        }
        return false;
    }

    public DataSource getActivityDataSource() {
        return this.Ur;
    }

    public List<DataSource> getAggregatedDataSources() {
        return this.Up;
    }

    public List<DataType> getAggregatedDataTypes() {
        return this.Uo;
    }

    public long getBucketDuration(TimeUnit timeUnit) {
        return timeUnit.convert(this.Uq, TimeUnit.MILLISECONDS);
    }

    public int getBucketType() {
        return this.SE;
    }

    public List<DataSource> getDataSources() {
        return this.Uk;
    }

    public List<DataType> getDataTypes() {
        return this.SB;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.Sr, TimeUnit.MILLISECONDS);
    }

    public int getLimit() {
        return this.Us;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.KS, TimeUnit.MILLISECONDS);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.SE, this.KS, this.Sr);
    }

    public long iD() {
        return this.KS;
    }

    public long iE() {
        return this.Sr;
    }

    public boolean jk() {
        return this.Ut;
    }

    public boolean jl() {
        return this.Uv;
    }

    public boolean jm() {
        return this.Uu;
    }

    public long jn() {
        return this.Uq;
    }

    public String toString() {
        Iterator iterator;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("DataReadRequest{");
        if (!this.SB.isEmpty()) {
            iterator = this.SB.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(((DataType)iterator.next()).iQ()).append(" ");
            }
        }
        if (!this.Uk.isEmpty()) {
            iterator = this.Uk.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(((DataSource)iterator.next()).toDebugString()).append(" ");
            }
        }
        if (this.SE != 0) {
            stringBuilder.append("bucket by ").append(Bucket.cy(this.SE));
            if (this.Uq > 0) {
                stringBuilder.append(" >").append(this.Uq).append("ms");
            }
            stringBuilder.append(": ");
        }
        if (!this.Uo.isEmpty()) {
            iterator = this.Uo.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(((DataType)iterator.next()).iQ()).append(" ");
            }
        }
        if (!this.Up.isEmpty()) {
            iterator = this.Up.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(((DataSource)iterator.next()).toDebugString()).append(" ");
            }
        }
        stringBuilder.append(String.format("(%tF %tT - %tF %tT)", this.KS, this.KS, this.Sr, this.Sr));
        if (this.Ur != null) {
            stringBuilder.append("activities: ").append(this.Ur.toDebugString());
        }
        if (this.Uv) {
            stringBuilder.append(" +server");
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }

    public static class Builder {
        private long KS;
        private List<DataType> SB = new ArrayList<DataType>();
        private int SE = 0;
        private long Sr;
        private List<DataSource> Uk = new ArrayList<DataSource>();
        private List<DataType> Uo = new ArrayList<DataType>();
        private List<DataSource> Up = new ArrayList<DataSource>();
        private long Uq = 0;
        private DataSource Ur;
        private int Us = 0;
        private boolean Ut = false;
        private boolean Uu = false;
        private boolean Uv = false;

        /*
         * Enabled aggressive block sorting
         */
        public Builder aggregate(DataSource dataSource, DataType dataType) {
            o.b(dataSource, (Object)"Attempting to add a null data source");
            boolean bl = !this.Uk.contains(dataSource);
            o.a(bl, "Cannot add the same data source for aggregated and detailed");
            DataType dataType2 = dataSource.getDataType();
            o.b(DataType.AGGREGATE_INPUT_TYPES.contains(dataType2), "Unsupported input data type specified for aggregation: %s", dataType2);
            o.b(DataType.getAggregatesForInput(dataType2).contains(dataType), "Invalid output aggregate data type specified: %s -> %s", dataType2, dataType);
            if (!this.Up.contains(dataSource)) {
                this.Up.add(dataSource);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder aggregate(DataType dataType, DataType dataType2) {
            o.b(dataType, (Object)"Attempting to use a null data type");
            boolean bl = !this.SB.contains(dataType);
            o.a(bl, "Cannot add the same data type as aggregated and detailed");
            o.b(DataType.AGGREGATE_INPUT_TYPES.contains(dataType), "Unsupported input data type specified for aggregation: %s", dataType);
            o.b(DataType.getAggregatesForInput(dataType).contains(dataType2), "Invalid output aggregate data type specified: %s -> %s", dataType, dataType2);
            if (!this.Uo.contains(dataType)) {
                this.Uo.add(dataType);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketByActivitySegment(int n, TimeUnit timeUnit) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            this.SE = 4;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketByActivitySegment(int n, TimeUnit timeUnit, DataSource dataSource) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            bl = dataSource != null;
            o.b(bl, (Object)"Invalid activity data source specified");
            o.b(dataSource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", dataSource);
            this.Ur = dataSource;
            this.SE = 4;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketByActivityType(int n, TimeUnit timeUnit) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            this.SE = 3;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketByActivityType(int n, TimeUnit timeUnit, DataSource dataSource) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            bl = dataSource != null;
            o.b(bl, (Object)"Invalid activity data source specified");
            o.b(dataSource.getDataType().equals(DataType.TYPE_ACTIVITY_SEGMENT), "Invalid activity data source specified: %s", dataSource);
            this.Ur = dataSource;
            this.SE = 3;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketBySession(int n, TimeUnit timeUnit) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            this.SE = 2;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder bucketByTime(int n, TimeUnit timeUnit) {
            boolean bl = this.SE == 0;
            o.b(bl, "Bucketing strategy already set to %s", this.SE);
            bl = n > 0;
            o.b(bl, "Must specify a valid minimum duration for an activity segment: %d", n);
            this.SE = 1;
            this.Uq = timeUnit.toMillis(n);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public DataReadRequest build() {
            boolean bl;
            block2 : {
                boolean bl2 = true;
                bl = !this.Uk.isEmpty() || !this.SB.isEmpty() || !this.Up.isEmpty() || !this.Uo.isEmpty();
                o.a(bl, "Must add at least one data source (aggregated or detailed)");
                bl = this.KS > 0;
                o.a(bl, "Invalid start time: %s", this.KS);
                bl = this.Sr > 0 && this.Sr > this.KS;
                o.a(bl, "Invalid end time: %s", this.Sr);
                boolean bl3 = this.Up.isEmpty() && this.Uo.isEmpty();
                if (bl3) {
                    bl = bl2;
                    if (this.SE == 0) break block2;
                }
                bl = !bl3 && this.SE != 0 ? bl2 : false;
            }
            o.a(bl, "Must specify a valid bucketing strategy while requesting aggregation");
            return new DataReadRequest(this);
        }

        public Builder enableServerQueries() {
            this.Uv = true;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder read(DataSource dataSource) {
            o.b(dataSource, (Object)"Attempting to add a null data source");
            boolean bl = !this.Up.contains(dataSource);
            o.b(bl, (Object)"Cannot add the same data source as aggregated and detailed");
            if (!this.Uk.contains(dataSource)) {
                this.Uk.add(dataSource);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder read(DataType dataType) {
            o.b(dataType, (Object)"Attempting to use a null data type");
            boolean bl = !this.Uo.contains(dataType);
            o.a(bl, "Cannot add the same data type as aggregated and detailed");
            if (!this.SB.contains(dataType)) {
                this.SB.add(dataType);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setLimit(int n) {
            boolean bl = n > 0;
            o.b(bl, "Invalid limit %d is specified", n);
            this.Us = n;
            return this;
        }

        public Builder setTimeRange(long l, long l2, TimeUnit timeUnit) {
            this.KS = timeUnit.toMillis(l);
            this.Sr = timeUnit.toMillis(l2);
            return this;
        }
    }

}

