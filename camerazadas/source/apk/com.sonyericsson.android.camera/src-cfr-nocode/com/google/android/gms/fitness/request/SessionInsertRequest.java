/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.Session;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SessionInsertRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SessionInsertRequest> CREATOR;
    private final int BR;
    private final List<DataSet> SD;
    private final Session St;
    private final List<DataPoint> UL;

    static;

    SessionInsertRequest(int var1, Session var2, List<DataSet> var3, List<DataPoint> var4);

    private SessionInsertRequest(Builder var1);

    /* synthetic */ SessionInsertRequest(Builder var1,  var2);

    private boolean a(SessionInsertRequest var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<DataPoint> getAggregateDataPoints();

    public List<DataSet> getDataSets();

    public Session getSession();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private List<DataSet> SD;
        private Session St;
        private List<DataPoint> UL;
        private List<DataSource> UM;

        public Builder();

        static /* synthetic */ Session a(Builder var0);

        static /* synthetic */ List b(Builder var0);

        static /* synthetic */ List c(Builder var0);

        private void d(DataPoint var1);

        private void e(DataPoint var1);

        private void f(DataPoint var1);

        private void jy();

        public Builder addAggregateDataPoint(DataPoint var1);

        public Builder addDataSet(DataSet var1);

        public SessionInsertRequest build();

        public Builder setSession(Session var1);
    }

}

