/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import java.util.List;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataDeleteRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataDeleteRequest> CREATOR;
    private final int BR;
    private final long KS;
    private final List<DataType> SB;
    private final long Sr;
    private final List<DataSource> Uk;
    private final List<Session> Ul;
    private final boolean Um;
    private final boolean Un;

    static;

    DataDeleteRequest(int var1, long var2, long var4, List<DataSource> var6, List<DataType> var7, List<Session> var8, boolean var9, boolean var10);

    private DataDeleteRequest(Builder var1);

    /* synthetic */ DataDeleteRequest(Builder var1,  var2);

    private boolean a(DataDeleteRequest var1);

    public boolean deleteAllData();

    public boolean deleteAllSessions();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<DataSource> getDataSources();

    public List<DataType> getDataTypes();

    public long getEndTime(TimeUnit var1);

    public List<Session> getSessions();

    public long getStartTime(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public long iD();

    public long iE();

    public boolean jg();

    public boolean jh();

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
        private long Sr;
        private List<DataSource> Uk;
        private List<Session> Ul;
        private boolean Um;
        private boolean Un;

        public Builder();

        static /* synthetic */ long a(Builder var0);

        static /* synthetic */ long b(Builder var0);

        static /* synthetic */ List c(Builder var0);

        static /* synthetic */ List d(Builder var0);

        static /* synthetic */ List e(Builder var0);

        static /* synthetic */ boolean f(Builder var0);

        static /* synthetic */ boolean g(Builder var0);

        private void ji();

        public Builder addDataSource(DataSource var1);

        public Builder addDataType(DataType var1);

        public Builder addSession(Session var1);

        public DataDeleteRequest build();

        public Builder deleteAllData();

        public Builder deleteAllSessions();

        public Builder setTimeInterval(long var1, long var3, TimeUnit var5);
    }

}

