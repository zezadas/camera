/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataReadRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataReadRequest> CREATOR;
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

    static;

    DataReadRequest(int var1, List<DataType> var2, List<DataSource> var3, long var4, long var6, List<DataType> var8, List<DataSource> var9, int var10, long var11, DataSource var13, int var14, boolean var15, boolean var16, boolean var17);

    private DataReadRequest(Builder var1);

    /* synthetic */ DataReadRequest(Builder var1,  var2);

    private boolean a(DataReadRequest var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public DataSource getActivityDataSource();

    public List<DataSource> getAggregatedDataSources();

    public List<DataType> getAggregatedDataTypes();

    public long getBucketDuration(TimeUnit var1);

    public int getBucketType();

    public List<DataSource> getDataSources();

    public List<DataType> getDataTypes();

    public long getEndTime(TimeUnit var1);

    public int getLimit();

    public long getStartTime(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public long iD();

    public long iE();

    public boolean jk();

    public boolean jl();

    public boolean jm();

    public long jn();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private long KS;
        private List<DataType> SB;
        private int SE;
        private long Sr;
        private List<DataSource> Uk;
        private List<DataType> Uo;
        private List<DataSource> Up;
        private long Uq;
        private DataSource Ur;
        private int Us;
        private boolean Ut;
        private boolean Uu;
        private boolean Uv;

        public Builder();

        static /* synthetic */ List a(Builder var0);

        static /* synthetic */ List b(Builder var0);

        static /* synthetic */ long c(Builder var0);

        static /* synthetic */ long d(Builder var0);

        static /* synthetic */ List e(Builder var0);

        static /* synthetic */ List f(Builder var0);

        static /* synthetic */ int g(Builder var0);

        static /* synthetic */ long h(Builder var0);

        static /* synthetic */ DataSource i(Builder var0);

        static /* synthetic */ int j(Builder var0);

        static /* synthetic */ boolean k(Builder var0);

        static /* synthetic */ boolean l(Builder var0);

        static /* synthetic */ boolean m(Builder var0);

        public Builder aggregate(DataSource var1, DataType var2);

        public Builder aggregate(DataType var1, DataType var2);

        public Builder bucketByActivitySegment(int var1, TimeUnit var2);

        public Builder bucketByActivitySegment(int var1, TimeUnit var2, DataSource var3);

        public Builder bucketByActivityType(int var1, TimeUnit var2);

        public Builder bucketByActivityType(int var1, TimeUnit var2, DataSource var3);

        public Builder bucketBySession(int var1, TimeUnit var2);

        public Builder bucketByTime(int var1, TimeUnit var2);

        public DataReadRequest build();

        public Builder enableServerQueries();

        public Builder read(DataSource var1);

        public Builder read(DataType var1);

        public Builder setLimit(int var1);

        public Builder setTimeRange(long var1, long var3, TimeUnit var5);
    }

}

